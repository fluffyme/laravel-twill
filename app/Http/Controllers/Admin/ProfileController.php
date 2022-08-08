<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\ModuleController as BaseModuleController;

class ProfileController extends BaseModuleController
{
    protected $moduleName = 'profiles';

    protected $titleColumnKey = 'name';

    protected $indexOptions = [
        'permalink' => false,
        'create' => false,
        'delete' => false,
    ];
}
