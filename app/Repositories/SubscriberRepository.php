<?php

namespace App\Repositories;


use A17\Twill\Repositories\ModuleRepository;
use App\Models\Subscriber;

class SubscriberRepository extends ModuleRepository
{
    

    public function __construct(Subscriber $model)
    {
        $this->model = $model;
    }
}
