<?php

namespace App\Models;

use A17\Twill\Models\Behaviors\HasTranslation;
use A17\Twill\Models\Behaviors\HasMedias;
use A17\Twill\Models\Model;

class PageMeta extends Model 
{
    use HasTranslation, HasMedias;

    protected $fillable = [
        'published',
        'title',
        'description',
        'keywords',
        'og_title',
        'og_description',
        'og_type',
        'og_url',
        'page_id',
    ];
    
    public $translatedAttributes = [
        'title',
        'description',
        'keywords',
        'og_title',
        'og_description',
        'active',
    ];
    
    public $mediasParams = [
        'cover' => [
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

    public function page()
    {
        return $this->belongsTo(Page::class);
    }
}
