import { makeAutoObservable } from "mobx";
import { Models, Query } from 'appwrite';
import { inject } from "react-declarative";

import ApiService from "../base/ApiService";

import { 
    CC_DB_TODO_COLLECTION_ID,
    CC_DB_TODO_DATABASE_ID,
} from "../../../config/params";

import TYPES from "../../types";

export interface ITodoDto {
    userId: string;
    title: string;
    completed: boolean;
}

export interface ITodoDocument extends Models.Document, ITodoDto {
}

export class TodoDbService {

    private readonly apiService = inject<ApiService>(TYPES.apiService);

    constructor() {
        makeAutoObservable(this);
    };

    findById = async (id: string) => {
        return await this.apiService.databases.getDocument<ITodoDocument>(
            CC_DB_TODO_DATABASE_ID,
            CC_DB_TODO_COLLECTION_ID,
            id,
        );
    };

    findByUserId = async (userId: string) => {
        return await this.apiService.databases.listDocuments<ITodoDocument>(
            CC_DB_TODO_DATABASE_ID,
            CC_DB_TODO_COLLECTION_ID,
            [
                Query.equal('userId', userId),
            ],
        );
    };

    create = async (payload: ITodoDto) => {
        return await this.apiService.databases.createDocument<ITodoDocument>(
            CC_DB_TODO_DATABASE_ID,
            CC_DB_TODO_COLLECTION_ID,
            'unique()',
            payload,
        );
    };

    update = async (id: string, payload: Partial<ITodoDto>) => {
        return await this.apiService.databases.updateDocument<ITodoDocument>(
            CC_DB_TODO_DATABASE_ID,
            CC_DB_TODO_COLLECTION_ID,
            id,
            payload,
        );
    };

    remove = async (id: string) => {
        return await this.apiService.databases.deleteDocument(
            CC_DB_TODO_DATABASE_ID,
            CC_DB_TODO_COLLECTION_ID,
            id,
        );
    };

};

export default TodoDbService;
