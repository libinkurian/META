<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menuplans extends Model
{
    use HasFactory;
    protected $table = 'uhb_meal_plans';
    public $timestamps = false;

    protected $fillable = [
        'hotel_id', 'price', 'charge_type', 'priority_order', 'is_active', 
        'is_default'
    ];
}
