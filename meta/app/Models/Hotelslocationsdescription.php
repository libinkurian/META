<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotelslocationsdescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_hotels_locations_description';
    public $timestamps = false;

    protected $fillable = [
        'hotel_location_id', 'language_id', 'name'
    ];
}
