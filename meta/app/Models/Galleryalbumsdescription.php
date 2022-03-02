<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Galleryalbumsdescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_gallery_albums_description';
    public $timestamps = false;

    protected $fillable = [
        'gallery_album_id', 'language_id', 'name', 'description'
    ];
}
