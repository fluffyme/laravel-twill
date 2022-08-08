<?php

namespace App\Http\Controllers\Admin;

use A17\Twill\Http\Controllers\Admin\NestedModuleController as BaseModuleController;

class CategoryController extends BaseModuleController
{
    protected $moduleName = 'categories';

    protected $indexOptions = [
        'reorder' => true,
    ];

    protected $showOnlyParentItemsInBrowsers = false;

    protected $nestedItemsDepth = 1;

    protected function form($id, $item = null)
    {
        $item = $this->repository->getById($id, $this->formWith, $this->formWithCount);

        $this->permalinkBase = $item->ancestorsSlug;

        return parent::form($id, $item);
    }
}
