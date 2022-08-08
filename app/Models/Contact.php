<?php

namespace App\Models;

use A17\Twill\Models\Behaviors\HasPosition;
use A17\Twill\Models\Behaviors\Sortable;
use A17\Twill\Models\Model;

class Contact extends Model implements Sortable
{
    use HasPosition;

    const UNREAD = 'unread';
    const READ = 'read';

    protected $fillable = [
        'published',
        'name',
        'status',
        'surname',
        'text',
        'email',
        'phone',
        'position',
    ];
}
