<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotelslocations extends Model
{
    use HasFactory;
    protected $table = 'uhb_hotels_locations';
    public $timestamps = false;

    protected $fillable = [
        'country_id', 'priority_order', 'is_active'
    ];
}
