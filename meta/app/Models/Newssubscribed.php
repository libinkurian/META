<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Newssubscribed extends Model
{
    use HasFactory;
    protected $table = 'uhb_news_subscribed';
    public $timestamps = false;

    protected $fillable = [
        'email', 'date_subscribed'
    ];
}
