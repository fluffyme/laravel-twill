<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\ModuleController as BaseModuleController;

class ServiceOrderController extends BaseModuleController
{
    protected $moduleName = 'serviceOrders';

    protected $indexOptions = [
        'permalink' => false,
    ];

    protected $titleColumnKey = 'name';

    protected $indexColumns = [
        'name' => [
            'title' => 'Name',
            'field' => 'name',
        ],
        'status' => [
            'title' => 'Status',
            'field' => 'status',
            'sort' => true, // column is sortable
        ],
    ];
}
