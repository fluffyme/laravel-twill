<?php

namespace App\Models;

use A17\Twill\Models\Behaviors\HasRelated;
use A17\Twill\Models\Behaviors\HasTranslation;
use A17\Twill\Models\Behaviors\HasSlug;
use A17\Twill\Models\Behaviors\HasMedias;
use A17\Twill\Models\Behaviors\HasPosition;
use A17\Twill\Models\Behaviors\HasNesting;
use A17\Twill\Models\Behaviors\Sortable;
use A17\Twill\Models\Model;
use App\Models\Slugs\CategorySlug;
use App\Repositories\CategoryRepository;

class Category extends Model implements Sortable
{
    use HasTranslation, HasSlug, HasMedias, HasPosition, HasNesting, HasRelated;

    protected $fillable = [
        'published',
        'title',
        'description',
//        'menu_item',
        'position',
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
    ];

    public function slug()
    {
        return $this->hasMany(CategorySlug::class);
    }

    public function children()
    {
        return $this->hasMany(self::class, 'parent_id', 'id');
    }

    public function parent()
    {
        return $this->belongsTo(self::class, 'parent_id');
    }

    public function products()
    {
        return $this->hasMany(Product::class, 'category_id', 'id');
    }

    public function resolveRouteBinding($slug, $field = null)
    {
        $cat = app(CategoryRepository::class)->forSlug($slug);

        abort_if(! $cat, 404);

        return $cat;
    }
}
