<?php

namespace App\Repositories;

use A17\Twill\Repositories\Behaviors\HandleTranslations;
use A17\Twill\Repositories\Behaviors\HandleNesting;
use A17\Twill\Repositories\ModuleRepository;
use App\Models\ProductAtribute;

class ProductAtributeRepository extends ModuleRepository
{
    use HandleTranslations, HandleNesting;

    public function __construct(ProductAtribute $model)
    {
        $this->model = $model;
    }

    protected $relatedBrowsers = ['productAtributes'];

    public function afterSave($object, $fields)
    {
        if (array_key_exists('browsers', $fields)) {

            $attribute_id = $object['id'];

            if ($fields['browsers']) {

                if ($fields['browsers']['productAtributes']){
                    $parent_id = $fields['browsers']['productAtributes'][0]['id'];

                    $attribute = ProductAtribute::find($attribute_id);

                    $attribute->title = $object['title'];

                    $attribute->parent_id = $parent_id;

                    $attribute->save();
                }

            }

        }

        $this->updateBrowser($object, $fields, 'parent');
        parent::afterSave($object, $fields);
    }
}
