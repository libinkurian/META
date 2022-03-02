<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotelspropertytypes extends Model
{
    use HasFactory;
    protected $table = 'uhb_hotels_property_types';
    public $timestamps = false;

    protected $fillable = [
        'property_code', 'priority_order', 'is_default', 'is_active'
    ];
}
