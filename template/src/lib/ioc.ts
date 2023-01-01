import { inject } from "react-declarative";

import ApiService from "./services/base/ApiService";
import AlertService from "./services/base/AlertService";
import RouterService from "./services/base/RouterService";
import ErrorService from "./services/base/ErrorService";

import TodoDbService from "./services/db/TodoDbService";

import TodoViewService from "./services/view/TodoViewService";

import TYPES from './types';
import "./config";

const baseServices = {
    apiService: inject<ApiService>(TYPES.apiService),
    alertService: inject<AlertService>(TYPES.alertService),
    routerService: inject<RouterService>(TYPES.routerService),
    errorService: inject<ErrorService>(TYPES.errorService),
};

const dbServices = {
    todoDbService: inject<TodoDbService>(TYPES.todoDbService),
};

const viewServices = {
    todoViewService: inject<TodoViewService>(TYPES.todoViewService),
};

const ioc = {
    ...baseServices,
    ...dbServices,
    ...viewServices,
};

window.addEventListener('unhandledrejection', () => {
    ioc.routerService.push('/error-page');
});

/*window.addEventListener('error', () => {
    ioc.routerService.push('/error-page');
});*/

// if (process.env.REACT_APP_STAGE === 'dev') {
    (window as any).ioc = ioc;
// }

export default ioc;
