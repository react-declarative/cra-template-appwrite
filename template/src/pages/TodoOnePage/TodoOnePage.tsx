import { observer } from 'mobx-react';
import { useState } from 'react';
import {
    Breadcrumbs,
    FetchView,
    RecordView,
    ActionTrigger,
    useReloadTrigger,
    IActionTrigger
} from 'react-declarative';

import ioc from '../../lib/ioc';

interface ITodoOnePageProps {
    id: string;
}

const actions: IActionTrigger[] = [
    {
        label: 'Mark as complete',
        action: 'complete-action',
    }
];

const handleBack = () => {
    ioc.routerService.push('/todos');
};

export const TodoOnePage = observer(({
    id,
}: ITodoOnePageProps) => {

    const { reloadTrigger, doReload } = useReloadTrigger();
    
    const [search, setSearch] = useState('');

    const state = async () => await ioc.todoDbService.findById(id);

    const handleAction = async (action: string) => {
        if (action === 'complete-action') {
            await ioc.todoDbService.update(id, {
                completed: true,
            });
            doReload();
        }
    };

    return (
        <>
            <Breadcrumbs
                title='Todos'
                subtitle={id}
                onBack={handleBack}
            />
            <ActionTrigger
                sx={{ pb: 1 }}
                actions={actions}
                onAction={handleAction}
            />
            <FetchView state={state} deps={[reloadTrigger]}>
                {(data) => (
                    <RecordView
                        onSearchChanged={(search) => setSearch(search)}
                        search={search}
                        data={data}
                    />
                )}
            </FetchView>
        </>
    );
});

export default TodoOnePage;
