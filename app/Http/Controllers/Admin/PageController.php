<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\ModuleController as BaseModuleController;

class PageController extends BaseModuleController
{
    protected $moduleName = 'pages';

    protected $indexOptions = [
    ];

    protected $indexColumns = [
        'title' => [
            'title' => 'Title',
            'field' => 'title',
        ],
        'metas' => [
            'title' => 'Seo Fields',
            'nested' => 'metas',
        ],
    ];
}
