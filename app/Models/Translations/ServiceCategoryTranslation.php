<?php

namespace App\Models\Translations;

use A17\Twill\Models\Model;
use App\Models\ServiceCategory;

class ServiceCategoryTranslation extends Model
{
    protected $baseModuleModel = ServiceCategory::class;
}
