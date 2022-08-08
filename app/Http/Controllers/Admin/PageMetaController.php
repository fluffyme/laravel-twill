<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\ModuleController as BaseModuleController;
use App\Repositories\PageRepository;

class PageMetaController extends BaseModuleController
{
    protected $moduleName = 'pages.metas';

    protected $modelName = 'PageMeta';

    protected $indexOptions = [
        'permalink' => false,
    ];

    protected function getParentModuleForeignKey()
    {
        return 'page_id';
    }

    protected function indexData($request)
    {
        $page = app(PageRepository::class)->getById(request('page'));

        return [
            'breadcrumb' => [
                [
                    'label' => 'Pages',
                    'url' => moduleRoute('pages', '', 'index'),
                ],
                [
                    'label' => $page->title,
                    'url' => moduleRoute('pages', '', 'edit', $page->id),
                ],
                [
                    'label' => 'Seo Fields',
                ],
            ],
        ];
    }

    protected function formData($request)
    {
        $page = app(PageRepository::class)->getById(request('page'));

        return [
            'breadcrumb' => [
                [
                    'label' => 'Pages',
                    'url' => moduleRoute('pages', '', 'index'),
                ],
                [
                    'label' => $page->title,
                    'url' => moduleRoute('pages', '', 'edit', $page->id),
                ],
                [
                    'label' => 'Seo Fields',
                    'url' => moduleRoute('pages.metas', '', 'index'),
                ],
                [
                    'label' => 'Edit',
                ],
            ],
        ];
    }
}
