<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Countriesdescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_countries_description';
    public $timestamps = false;
   
    protected $fillable = [
        'country_id', 'language_id', 'name'
    ];
}
