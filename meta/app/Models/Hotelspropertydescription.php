<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotelspropertydescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_hotels_property_types_description';
    public $timestamps = false;

    protected $fillable = [
        'hotel_property_id', 'language_id', 'name'
    ];
}
