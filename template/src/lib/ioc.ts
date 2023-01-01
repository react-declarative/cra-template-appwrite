import { inject } from "react-declarative";

import ApiService from "./services/ApiService";
import AlertService from "./services/AlertService";
import RouterService from "./services/RouterService";

import TYPES from './types';
import "./config";

const ioc = {
    apiService: inject<ApiService>(TYPES.apiService),
    alertService: inject<AlertService>(TYPES.alertService),
    routerService: inject<RouterService>(TYPES.routerService),
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
