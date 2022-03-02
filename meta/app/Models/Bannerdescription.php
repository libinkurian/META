<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bannerdescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_banners_description';

    public $timestamps = false;
    
    protected $fillable = [
        'banner_id', 'language_id', 'image_text'
    ];
}
