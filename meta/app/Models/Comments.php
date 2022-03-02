<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    use HasFactory;
    protected $table = 'uhb_comments';
    public $timestamps = false;
  
    protected $fillable = [
        'article_id', 'user_id', 'user_name', 'user_email', 'comment_text', 'date_created',
        'is_published', 'date_published'
    ];
}
