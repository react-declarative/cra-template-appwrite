import { makeAutoObservable } from "mobx";
import { inject } from "react-declarative";

import RouterService from "./RouterService";

import TYPES from "../../types";

export class ErrorService {

    private readonly routerService = inject<RouterService>(TYPES.routerService);

    constructor() {
        makeAutoObservable(this);
    };

    handleGlobalError = (e: Error) => {
        console.error(e);
        this.routerService.push('/error-page');
    };

};

export default ErrorService;
