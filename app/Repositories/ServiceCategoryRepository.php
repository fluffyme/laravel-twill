<?php

namespace App\Repositories;

use A17\Twill\Repositories\Behaviors\HandleTranslations;
use A17\Twill\Repositories\Behaviors\HandleSlugs;
use A17\Twill\Repositories\Behaviors\HandleMedias;
use A17\Twill\Repositories\ModuleRepository;
use App\Models\ServiceCategory;

class ServiceCategoryRepository extends ModuleRepository
{
    use HandleTranslations, HandleSlugs, HandleMedias;

    public function __construct(ServiceCategory $model)
    {
        $this->model = $model;
    }
}
