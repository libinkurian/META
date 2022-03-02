<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Extradescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_extras_description';
    public $timestamps = false;
  
    protected $fillable = [
        'extra_id', 'parent_id', 'language_id', 'name', 'subtitle',
        'description', 'conditions'
    ];
}
