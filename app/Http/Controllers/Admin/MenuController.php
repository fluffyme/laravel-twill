<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\NestedModuleController as BaseModuleController;

class MenuController extends BaseModuleController
{
    protected $moduleName = 'menus';

    protected $indexOptions = [
        'permalink' => false,
        'reorder' => true,
    ];

    protected $showOnlyParentItemsInBrowsers = true;

    protected $nestedItemsDepth = 1;
}
