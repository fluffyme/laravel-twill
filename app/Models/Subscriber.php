<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use A17\Twill\Models\Model;

class Subscriber extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = [
        'published',
        'email',
    ];
}
