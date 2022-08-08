<?php

namespace App\Repositories;


use A17\Twill\Repositories\ModuleRepository;
use App\Models\ProductOrder;

class ProductOrderRepository extends ModuleRepository
{
    

    public function __construct(ProductOrder $model)
    {
        $this->model = $model;
    }
}
