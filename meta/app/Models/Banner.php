<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    protected $table = 'uhb_banners';
    public $timestamps = false;
    
    protected $fillable = [
        'page', 'image_file', 'image_file_thumb', 'priority_order', 'link_url', 'is_active'
    ];
}
