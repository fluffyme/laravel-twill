<?php

namespace App\Repositories;

use A17\Twill\Repositories\Behaviors\HandleTranslations;
use A17\Twill\Repositories\Behaviors\HandleNesting;
use A17\Twill\Repositories\ModuleRepository;
use App\Models\Menu;

class MenuRepository extends ModuleRepository
{
    use HandleTranslations, HandleNesting;

    protected $relatedBrowsers = ['parent', 'pages', 'categories'];


    public function __construct(Menu $model)
    {
        $this->model = $model;
    }

    public function afterSave($object, $fields) {

        //register parent
        if (array_key_exists('browsers', $fields)) {

            $menu_id = $object['id'];

            if($fields['browsers']['parent']) {

                $parent_id = $fields['browsers']['parent'][0]['id'];

                $menu = Menu::find($menu_id);

                $menu->title = $object['title'];

                $menu->parent_id = $parent_id;

                $menu->save();
            }

        }

        parent::afterSave($object, $fields);
    }

    public function getFormFields($object) {

        $fields = parent::getFormFields($object);

        // return fields
        return $fields;
    }
}
