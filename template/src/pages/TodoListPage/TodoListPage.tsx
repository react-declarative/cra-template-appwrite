import { 
    List,
    FieldType,
    ColumnType,
    ActionType,
    TypedField,
    IColumn,
    IField,
    IListAction,
    useArrayPaginator,
    SelectionMode,
    useActionModal,
    useSubject,
} from 'react-declarative';
import { observer } from 'mobx-react';

import Delete from '@mui/icons-material/Delete';
import Add from '@mui/icons-material/Add';

import ioc from '../../lib/ioc';

import useLoader from '../../hooks/useLoader';

const filters: TypedField[] = [
    {
        type: FieldType.Text,
        name: 'title',
        title: 'Title',
    },
    {
        type: FieldType.Checkbox,
        name: 'completed',
        title: 'Completed',
    },
];

const columns: IColumn[] = [
    {
        type: ColumnType.Text,
        field: 'id',
        headerName: 'ID',
        secondary: true,
        width: () => 150,
    },
    {
        type: ColumnType.Text,
        headerName: 'Title',
        primary: true,
        field: 'title',
        width: (fullWidth) => Math.max(fullWidth - 450, 200),
    },
    {
        type: ColumnType.CheckBox,
        headerName: 'Completed',
        primary: true,
        field: 'completed',
        width: () => 100,
    },
    {
        type: ColumnType.Action,
        headerName: 'Actions',
        sortable: false,
        width: () => 100,
    },
];

const actions: IListAction[] = [
    {
        type: ActionType.Add,
    },
    {
        type: ActionType.Menu,
        options: [
            {
                action: 'add-action',
                label: 'Create new row',
                icon: Add,
            },
            {
                action: 'update-now',
            },
            {
                action: 'resort-action',
            },
        ],
    }
];

const rowActions = [
    {
        label: 'Remove action',
        action: 'remove-action',
        icon: Delete,
    },
];

const createFields: IField[] = [
    {
        type: FieldType.Text,
        name: 'title',
        title: 'Title',
    }
];

const heightRequest = () => window.innerHeight - 75;

export const TodoListPage = observer(() => {

    const { setLoader } = useLoader();

    const reloadSubject = useSubject<void>();

    const handleCreate = async (data: { title: string; } | null) => {
        if (!data) {
            return true;
        }
        try {
            await ioc.todoViewService.create(data.title);
            reloadSubject.next();
            return true;
        } catch {
            return false;
        }
    };

    const {
        pickData,
        render,
    } = useActionModal({
        title: 'Todo creation',
        fields: createFields,
        handler: () => ({
            title: 'Another boring todo item',
        }),
        onSubmit: handleCreate,
        fallback: ioc.errorService.handleGlobalError,
    });

    const handler = useArrayPaginator(async () => await ioc.todoViewService.list(), {
        onLoadStart: () => setLoader(true),
        onLoadEnd: () => setLoader(false),
        fallback: ioc.errorService.handleGlobalError,
    });

    const handleRowActionsClick = (action: string, row: any) => {
        alert(JSON.stringify({ row, action }, null, 2));
    };

    const handleAction = (action: string) => {
        if (action === 'add-action') {
            pickData();
        }
    };

    const handleClick = (row: any) => {
        ioc.routerService.push(`/todos/${row.id}`);
    };

    return (
        <>
            <List
                title="Todo list"
                filterLabel="Filters"
                heightRequest={heightRequest}
                rowActions={rowActions}
                actions={actions}
                filters={filters}
                columns={columns}
                handler={handler}
                onRowAction={handleRowActionsClick}
                onRowClick={handleClick}
                onAction={handleAction}
                reloadSubject={reloadSubject}
                selectionMode={SelectionMode.Multiple}
            />
            {render()}
        </>
    );
});

export default TodoListPage;
