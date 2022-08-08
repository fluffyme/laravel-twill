<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\ModuleController as BaseModuleController;

class SubscriberController extends BaseModuleController
{
    protected $moduleName = 'subscribers';

    protected $indexOptions = [
        'permalink' => false,
    ];

    protected $titleColumnKey = 'email';
}
