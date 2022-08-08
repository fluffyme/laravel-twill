<?php

namespace App\Models;

use A17\Twill\Models\Behaviors\HasBlocks;
use A17\Twill\Models\Behaviors\HasTranslation;
use A17\Twill\Models\Behaviors\HasSlug;
use A17\Twill\Models\Behaviors\HasMedias;
use A17\Twill\Models\Behaviors\HasFiles;
use A17\Twill\Models\Behaviors\HasPosition;
use A17\Twill\Models\Behaviors\Sortable;
use A17\Twill\Models\Model;
use A17\Twill\Repositories\BlockRepository;
use App\Models\Slugs\PageSlug;
use App\Repositories\PageRepository;

class Page extends Model implements Sortable
{
    use HasBlocks, HasTranslation, HasSlug, HasMedias, HasFiles, HasPosition;

    const DEFAULT_TEMPLATE = 'text';
    const AVAILABLE_BLOCKS = '';
    const AVAILABLE_TEMPLATES = [
        [
            'value' => 'main',
            'label' => 'Main Page',
            'block_selection' => ['main-page'],
        ],
        [
            'value' => 'about',
            'label' => 'About Us',
            'block_selection' => ['section-about', 'section-partners', 'about-video'],
        ],
        [
            'value' => 'catalog',
            'label' => 'Catalog',
            'block_selection' => [''],
        ],
        [
            'value' => 'news',
            'label' => 'News',
            'block_selection' => [''],
        ],
        [
            'value' => 'services',
            'label' => 'Services',
            'block_selection' => ['section-gallery'],
        ],
        [
            'value' => 'contacts',
            'label' => 'Contacts',
            'block_selection' => ['section-contacts', 'contact-form', 'contact-map'],
        ],
        [
            'value' => 'privacy',
            'label' => 'Privacy Policy',
            'block_selection' => ['text'],
        ],

        [
            'value' => 'terms',
            'label' => 'Terms of Use',
            'block_selection' => ['text'],
        ],
        [
            'value' => 'text',
            'label' => 'Text Page',
            'block_selection' => ['text'],
        ],
    ];

    protected $fillable = [
        'published',
        'title',
        'template',
        'description',
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

    /**
     * Relations
     */

    public function slug()
    {
        return $this->hasMany(PageSlug::class);
    }

//    public function menus()
//    {
//        return $this->belongsToMany(Menu::class, 'menu_page');
//    }

    public function metas()
    {
        return $this->hasMany(PageMeta::class, 'page_id');
    }

    public function scopePublished($query)
    {

        return $query->where('published', "=", 1);
    }

    public function getSingleMetaAttribute()
    {
        return $this->metas()->first();
    }

    public function getTemplateLabelAttribute()
    {
        $template = collect(static::AVAILABLE_TEMPLATES)->firstWhere('value', $this->template);

        return $template['label'] ?? '';
    }

    public function getBlockSelectionAttribute() {

        $availableBlocks = [];
        $templateToSearch = $this->template;

        foreach(self::AVAILABLE_TEMPLATES as $template) {
            if(in_array($templateToSearch,$template)) {
                $availableBlocks = $template['block_selection'];
            }
        }

        return $availableBlocks;

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

    public function resolveRouteBinding($slug, $field = null)
    {
        $page= app(PageRepository::class)->forSlug($slug);

        abort_if(! $page, 404);

        return $page;
    }

//    /**
//     * @param \Illuminate\Database\Eloquent\Builder $query
//     * @param string $slug
//     * @return \Illuminate\Database\Eloquent\Builder
//     */
//    public function scopeForSlug($query, $slug)
//    {
//        return $query->whereHas('slugs', function ($query) use ($slug) {
//            $query->whereSlug($slug);
//            $query->whereActive(true);
////            $query->whereLocale(app()->getLocale());
//        })->with(['slugs']);
//    }
}
