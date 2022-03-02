<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Galleryalbums extends Model
{
    use HasFactory;
    protected $table = 'uhb_gallery_albums';
    public $timestamps = false;

    protected $fillable = [
        'album_code', 'album_type', 'priority_order', 'is_active'
    ];
}
