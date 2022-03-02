<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Galleryalbumitemsdescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_gallery_album_items_description';
    public $timestamps = false;

    protected $fillable = [
        'gallery_album_item_id', 'language_id', 'name', 'description'
    ];
}
