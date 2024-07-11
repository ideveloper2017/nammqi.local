<?php

return [
    [
        'name' => 'Counterups',
        'flag' => 'counterup.index',
    ],
    [
        'name' => 'Create',
        'flag' => 'counterup.create',
        'parent_flag' => 'counterup.index',
    ],
    [
        'name' => 'Edit',
        'flag' => 'counterup.edit',
        'parent_flag' => 'counterup.index',
    ],
    [
        'name' => 'Delete',
        'flag' => 'counterup.destroy',
        'parent_flag' => 'counterup.index',
    ],
];
