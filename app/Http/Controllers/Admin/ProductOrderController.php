<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\ModuleController as BaseModuleController;

class ProductOrderController extends BaseModuleController
{
    protected $moduleName = 'productOrders';

    protected $indexOptions = [
        'permalink' => false,
    ];
}
