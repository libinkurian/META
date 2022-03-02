<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Extraitems extends Model
{
    use HasFactory;
    protected $table = 'uhb_extrasitems';
    public $timestamps = false;
  
    protected $fillable = [
        'extra_id', 'Parent_id', 'language_id', 'name', 'subtitle', 
        'description', 'conditions','hotel_id'
    ];
}
