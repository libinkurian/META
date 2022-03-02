<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menus extends Model
{
    use HasFactory;
    protected $table = 'uhb_menus';
    public $timestamps = false;

    protected $fillable = [
        'menu_code', 'language_id', 'menu_name', 'menu_placement', 'menu_order', 'access_level'
    ];
}
