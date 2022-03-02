<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    protected $table = 'uhb_news';
    public $timestamps = false;

    protected $fillable = [
        'news_code', 'language_id', 'type', 'header_text', 'body_text',
        'date_created', 'is_active'
    ];
}
