<?php

namespace App\Repositories;

use A17\Twill\Repositories\Behaviors\HandleBlocks;
use A17\Twill\Repositories\Behaviors\HandleTranslations;
use A17\Twill\Repositories\Behaviors\HandleSlugs;
use A17\Twill\Repositories\Behaviors\HandleMedias;
use A17\Twill\Repositories\ModuleRepository;
use App\Models\Product;

class ProductRepository extends ModuleRepository
{
    use HandleBlocks, HandleTranslations, HandleSlugs, HandleMedias;

    protected $relatedBrowsers = ['categories', 'brands', 'productAtributes'];

    public function __construct(Product $model)
    {
        $this->model = $model;
    }

    public function afterSave($object, $fields)
    {

        if ($fields) {

//            if (array_key_exists('browsers', $fields)) {
//
//                $product_id = $object['id'];
//                if ($fields['browsers']) {
//
//                    $product = Product::find($product_id);
//                    $product->title = $object['title'];
//
//                    if (array_key_exists('categories', $fields['browsers'])) {
//                        if ($fields['browsers']['categories']) {
//                            $category_id = $fields['browsers']['categories'][0]['id'];
//                            if($category_id){
//                                $product->category_id = $category_id;
//                            }else{
//                                $product->category_id = null;
//                            }
//
//                        }
//                    }

//                    if (array_key_exists('brands', $fields['browsers'])) {
//                        if ($fields['browsers']['brands']) {
//                            $brand_id = $fields['browsers']['brands'][0]['id'];
//                            if($brand_id) {
//                                $product->brand_id = $brand_id;
//                            }else{
//                                $product->brand_id = null;
//                            }
//
//                        }
//                    }
//                    $product->save();

                    $this->updateBrowser($object, $fields, 'brands');
                    $this->updateBrowser($object, $fields, 'categories');

//                }
//
//            }
        }

        parent::afterSave($object, $fields);

        if ($object->wasRecentlyCreated) {
            $object->prefillBlockSelection();
        }
    }
}
