import { createRoot } from 'react-dom/client';

import { ThemeProvider } from '@mui/material/styles';
import { CacheProvider } from "@emotion/react";
import { TssCacheProvider } from "tss-react";

import createCache from "@emotion/cache";

import { ModalProvider } from "react-declarative";
import { ErrorBoundary } from "react-declarative";
import { LoaderProvider } from "./hooks/useLoader";

import "./polyfills";

import App from "./components/App";
import AlertProvider from "./components/AlertProvider";

import THEME_DARK from "./config/theme";

import ioc from './lib/ioc';

const container = document.getElementById('root')!;

const muiCache = createCache({
  "key": "mui",
  "prepend": true
});

const tssCache = createCache({
  "key": "tss"
});

const wrappedApp = (
  <ErrorBoundary history={ioc.routerService} onError={ioc.errorService.handleGlobalError}>
    <CacheProvider value={muiCache}>
      <TssCacheProvider value={tssCache}> 
        <ThemeProvider theme={THEME_DARK}>
          <ModalProvider>
            <AlertProvider>
              <LoaderProvider>
                <App />
              </LoaderProvider>
            </AlertProvider>
          </ModalProvider>
        </ThemeProvider>
      </TssCacheProvider>
    </CacheProvider>
  </ErrorBoundary>
);

const root = createRoot(container);

root.render(wrappedApp);
