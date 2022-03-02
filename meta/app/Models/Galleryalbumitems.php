<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Galleryalbumitems extends Model
{
    use HasFactory;
    protected $table = 'uhb_gallery_album_items';
    public $timestamps = false;

    protected $fillable = [
        'album_code', 'item_file', 'item_file_thumb', 'priority_order', 'is_active'
    ];
}
