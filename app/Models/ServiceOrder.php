<?php

namespace App\Models;

use A17\Twill\Models\Behaviors\HasPosition;
use A17\Twill\Models\Behaviors\HasRelated;
use A17\Twill\Models\Behaviors\Sortable;
use A17\Twill\Models\Model;

class ServiceOrder extends Model implements Sortable
{
    use HasPosition, HasRelated;

    const UNREAD = 'unread';
    const READ = 'read';

    protected $fillable = [
        'published',
        'name',
        'phone',
        'service_id',
        'length',
        'width',
        'status',
        'position',
    ];

    public function services()
    {
        return $this->belongsTo(Service::class, 'service_id');
    }
    
}
