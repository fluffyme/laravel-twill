<?php

namespace App\Repositories;

use A17\Twill\Repositories\Behaviors\HandleTranslations;
use A17\Twill\Repositories\Behaviors\HandleSlugs;
use A17\Twill\Repositories\Behaviors\HandleMedias;
use A17\Twill\Repositories\Behaviors\HandleNesting;
use A17\Twill\Repositories\ModuleRepository;
use App\Models\Category;

class CategoryRepository extends ModuleRepository
{
    use HandleTranslations, HandleSlugs, HandleMedias, HandleNesting;

    public function __construct(Category $model)
    {
        $this->model = $model;
    }

    protected $relatedBrowsers = ['categories'];

    public function afterSave($object, $fields)
    {
        if (array_key_exists('browsers', $fields)) {

            $category_id = $object['id'];

            if ($fields['browsers']) {

                if ($fields['browsers']['categories']){
                    $parent_id = $fields['browsers']['categories'][0]['id'];

                    $category = Category::find($category_id);

                    $category->title = $object['title'];

                    $category->parent_id = $parent_id;

                    $category->save();
                }

            }

        }

        $this->updateBrowser($object, $fields, 'parent');
        parent::afterSave($object, $fields);
    }
}
