<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\NestedModuleController as BaseModuleController;

class ProductAtributeController extends BaseModuleController
{
    protected $moduleName = 'productAtributes';

    protected $indexOptions = [
        'permalink' => false,
        'reorder' => true,
    ];

    protected $showOnlyParentItemsInBrowsers = true;

    protected $nestedItemsDepth = 1;
}
