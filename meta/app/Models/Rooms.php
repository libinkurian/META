<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rooms extends Model
{
    use HasFactory;
    protected $table = 'rooms';

    public $timestamps = false;

    protected $fillable = [
        'hotel_id',
        'room_name',
        'num_rooms',
        'area_sqmtr',
        'room_type',
        'max_adults',
        'max_extra_beds',
        'max_children',
        'room_short_description',
        'room_long_description',
        'room_count',
        'default_price',
        'extra_bed_charge',
        'beds',
        'room_area',
        'bed_types',
        'bed_count',
        'number_of_views',
        'is_active'
    ];
}
