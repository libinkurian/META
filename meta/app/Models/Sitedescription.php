<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sitedescription extends Model
{
    use HasFactory;
    protected $table ='uhb_site_description';

    public $timestamps = false;

    protected $fillable = [
        'language_id', 'header_text', 'slogan_text', 'footer_text',
        'tag_title', 'tag_description', 'tag_keywords', 'geographical_address'
    ];
}
