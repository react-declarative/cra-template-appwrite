import { ISwitchItem } from 'react-declarative';

import TodoListPage from '../pages/TodoListPage';
import TodoOnePage from '../pages/TodoOnePage';

import ErrorPage from '../pages/ErrorPage';
import LoginPage from '../pages/LoginPage';

import ioc from '../lib/ioc';

export const routes: ISwitchItem[] = [
  {
    path: '/',
    prefetch: async () => {
      await ioc.apiService.prefetch();
    },
    redirect: () => {
      if (ioc.apiService.isAuthorized) {
        return "/todos";
      }
      return "/login-page";
    },
  },
  {
    path: '/todos',
    element: TodoListPage,
  },
  {
    path: '/todos/:id',
    element: TodoOnePage,
  },
  {
    path: '/error-page',
    element: ErrorPage,
  },
  {
    path: '/login-page',
    element: LoginPage,
  },
  {
    path: '/unauthorized-page',
    element: ErrorPage,
  }
];

export default routes;
