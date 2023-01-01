import { provide } from 'react-declarative';

import ApiService from './services/ApiService';
import AlertService from './services/AlertService';
import RouterService from './services/RouterService';

import TYPES from './types';

provide(TYPES.apiService, () => new ApiService());
provide(TYPES.alertService, () => new AlertService());
provide(TYPES.routerService, () => new RouterService());
