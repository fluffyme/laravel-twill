<?php

namespace App\Repositories;

use A17\Twill\Repositories\Behaviors\HandleTranslations;
use A17\Twill\Repositories\Behaviors\HandleSlugs;
use A17\Twill\Repositories\Behaviors\HandleMedias;
use A17\Twill\Repositories\ModuleRepository;
use App\Models\Service;

class ServiceRepository extends ModuleRepository
{
    use HandleTranslations, HandleSlugs, HandleMedias;

    protected $relatedBrowsers = ['serviceCategories'];

    public function __construct(Service $model)
    {
        $this->model = $model;
    }

    public function afterSave($object, $fields)
    {
        if ($fields) {

            if (array_key_exists('browsers', $fields)) {

                $service_id = $object['id'];
                if ($fields['browsers']) {
                    if (array_key_exists('serviceCategories', $fields['browsers'] )) {

                        if($fields['browsers']['serviceCategories']) {
                            $category_id = $fields['browsers']['serviceCategories'][0]['id'];

                            $service = Service::find($service_id);

                            $service->title = $object['title'];

                            $service->service_category_id = $category_id;

                            $service->save();
                        }


                    }
                }

            }
        }

        parent::afterSave($object, $fields);

//        if ($object->wasRecentlyCreated) {
//            $object->prefillBlockSelection();
//        }
    }
}
