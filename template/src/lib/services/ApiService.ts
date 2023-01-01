import { makeAutoObservable, runInAction } from "mobx";
import { Client, Account, Models, Role } from 'appwrite';
import { inject, singleshot } from "react-declarative";

import AlertService from "./AlertService";

import { 
    CC_APPWRITE_ENDPOINT,
    CC_APPWRITE_PROJECT,
} from "../../config/params";

import TYPES from "../types";

const handleReload = () => {
    const { href, origin, protocol } = window.location;
    if (protocol !== 'file:') {
        const url = new URL(href, origin);
        url.pathname = '/';
        url.search = '';
        url.hash = '';
        window.location.href = url.toString();
    } else {
        window.location.reload();
    }
};

class ApiService {

    private readonly alertService = inject<AlertService>(TYPES.alertService);

    private _client: Client = null as never;
    private _account: Account = null as never;
    private _session: Models.Session | null = null;

    get client() {
        return this._client;
    };

    get account() {
        return this._account;
    };

    get session() {
        return this._session!;
    };

    get isAuthorized() {
        return !!this._session;
    };

    private getCurrentSession = async () => {
        try {
            return await this._account.getSession('current');
        } catch {
            return null;
        }
    };

    constructor() {
        makeAutoObservable(this);
        this.init();
    };

    private init = singleshot(async () => {
        const client = new Client();
        client
            .setEndpoint(CC_APPWRITE_ENDPOINT)
            .setProject(CC_APPWRITE_PROJECT)
            .setLocale('en-US');
        const account = new Account(client);
        const session = await this.getCurrentSession();
        runInAction(() => {
            this._client = client;
            this._account = account;
            this._session = session;
        });
    });

    public login = async ({ email, password }: { email: string, password: string }) => {
        try {
            const session = await this.account.createEmailSession(email, password);
            runInAction(() => {
                this._session = session;
            });
            return true;
        } catch (e: any) {
            this.alertService.notify(e.message);
            return false;
        }
    };

    public logout = async () => {
        await this.account.deleteSession('current');
        handleReload();
    };

    public prefetch = async () => {
        await this.init();
    };

};

export default ApiService;
