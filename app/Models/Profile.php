<?php

namespace App\Models;

use A17\Twill\Models\Behaviors\HasPosition;
use A17\Twill\Models\Behaviors\Sortable;
use A17\Twill\Models\Model;

class Profile extends Model implements Sortable
{
    use HasPosition;

    protected $fillable = [
        'published',
        'name',
        'description',
//        'position',
        'is_vip',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
}
