import { makeAutoObservable } from "mobx";
import { inject } from "react-declarative";

import TodoDbService, { ITodoDto } from "../db/TodoDbService";
import ApiService from "../base/ApiService";

import TYPES from "../../types";

export class TodoViewService {

    private readonly todoDbService = inject<TodoDbService>(TYPES.todoDbService);
    private readonly apiService = inject<ApiService>(TYPES.apiService);

    constructor() {
        makeAutoObservable(this);
    };

    create = async ({ title, completed }: { title: string; completed: boolean; }) => {
        const result = await this.todoDbService.create({
            userId: this.apiService.session.userId,
            completed,
            title,
        });
        return {
            id: result.$id,
            title: result.title,
            userId: result.userId,
            completed: result.completed,
        };
    };

    read = async (id: string) => {
        const result = await this.todoDbService.findById(id);
        return {
            id: result.$id,
            title: result.title,
            userId: result.userId,
            completed: result.completed,
        };
    };

    list = async () => {
        const userId = this.apiService.session.userId;
        const { documents } = await this.todoDbService.findByUserId(userId);
        return documents.map(({
            $id: id,
            title,
            userId,
            completed,
        }) => ({
            id,
            title,
            userId,
            completed,
        }));
    };

};

export default TodoViewService;
