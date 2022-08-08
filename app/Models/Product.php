<?php

namespace App\Models;

use A17\Twill\Models\Behaviors\HasBlocks;
use A17\Twill\Models\Behaviors\HasRelated;
use A17\Twill\Models\Behaviors\HasTranslation;
use A17\Twill\Models\Behaviors\HasSlug;
use A17\Twill\Models\Behaviors\HasMedias;
use A17\Twill\Models\Behaviors\HasPosition;
use A17\Twill\Models\Behaviors\Sortable;
use A17\Twill\Models\Model;
use A17\Twill\Repositories\BlockRepository;
use Database\Factories\ProductFactory;

class Product extends Model implements Sortable
{
    use HasBlocks, HasTranslation, HasSlug, HasMedias, HasPosition, HasRelated;

    const DEFAULT_TEMPLATE = 'product';
    const AVAILABLE_BLOCKS = '';
    const AVAILABLE_TEMPLATES = [
        [
            'value' => 'product',
            'label' => 'Product Specs',
            'block_selection' => ['product-specs'],
        ],
    ];


    protected $fillable = [
        'published',
        'title',
        'price',
        'brand_id',
//        'code',
        'description',
        'position',
        'category_id',
    ];
    
    public $translatedAttributes = [
        'title',
        'description',
        'active',
    ];
    
    public $slugAttributes = [
        'title',
    ];
    
    public $mediasParams = [
        'cover' => [
            'no_crop' => [
                [
                    'name' => 'no_crop',
                    'ratio' => 0,
                ],
            ],
            'default' => [
                [
                    'name' => 'default',
                    'ratio' => 16 / 9,
                ],
            ],
            'mobile' => [
                [
                    'name' => 'mobile',
                    'ratio' => 1,
                ],
            ],
            'flexible' => [
                [
                    'name' => 'free',
                    'ratio' => 0,
                ],
                [
                    'name' => 'landscape',
                    'ratio' => 16 / 9,
                ],
                [
                    'name' => 'portrait',
                    'ratio' => 3 / 5,
                ],
            ],
        ],
        'slideshow' => [
            'no_crop' => [
                [
                    'name' => 'no_crop',
                    'ratio' => 0,
                ],
            ],
        ],
    ];

    public function categories()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function brands()
    {
        return $this->belongsTo(Brand::class, 'brand_id', 'id');
    }

    /**
     * Create a new factory instance for the model.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    protected static function newFactory()
    {
        return ProductFactory::new();
    }

    public function getTemplateLabelAttribute()
    {

        return 'product';
    }

    public function getBlockSelectionAttribute() {

        return ['product-specs'];

    }

    public function prefillBlockSelection()
    {
        $i = 1;
        if($this->template_block_selection){
            foreach ($this->template_block_selection as $blockType) {
                app(BlockRepository::class)->create([
                    'blockable_id' => $this->id,
                    'blockable_type' => static::class,
                    'position' => $i++,
                    'content' => '{}',
                    'type' => $blockType,
                ]);
            }
        }

    }

}
