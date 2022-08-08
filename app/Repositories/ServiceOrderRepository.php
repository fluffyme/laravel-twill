<?php

namespace App\Repositories;


use A17\Twill\Repositories\ModuleRepository;
use App\Models\ServiceOrder;

class ServiceOrderRepository extends ModuleRepository
{
    

    public function __construct(ServiceOrder $model)
    {
        $this->model = $model;
    }

    protected $relatedBrowsers = ['services'];

    public function afterSave($object, $fields)
    {
        if (array_key_exists('browsers', $fields)) {

            $service_order_id = $object['id'];

            if ($fields['browsers']) {

                if ($fields['browsers']['services']){
                    $service_id = $fields['browsers']['services'][0]['id'];

                    $serviceOrder = ServiceOrder::find($service_order_id);

                    $serviceOrder->name = $object['name'];

                    $serviceOrder->service_id = $service_id;

                    $serviceOrder->save();
                }

            }

        }

        $this->updateBrowser($object, $fields, 'services');
        parent::afterSave($object, $fields);
    }

    public function getFormFields($object)
    {

        $fields = parent::getFormFields($object);
        $fields['browsers']['services'] = $this->getFormFieldsForBrowser($object, 'services','services');
        return $fields;
    }
}
