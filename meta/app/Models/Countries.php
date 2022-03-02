<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Countries extends Model
{
    use HasFactory;
    protected $table = 'uhb_countries';
    public $timestamps = false;
  
    protected $fillable = [
        'abbrv', 'is_active', 'is_default', 'vat_value', 'priority_order'
    ];
}
