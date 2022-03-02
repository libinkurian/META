<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;
    protected $table ='uhb_rooms';

    public $timestamps = false;

    protected $fillable =[
        'hotel_id', 'room_type', 'room_short_description',
        'room_long_description', 'room_count', 'max_adults',
        'max_extra_beds', 'max_children', 'default_price',
        'extra_bed_charge', 'discount_night_type', 'discount_night_3',
        'discount_night_4', 'discount_night_5', 'discount_guests_type',
        'discount_guests_3', 'discount_guests_4', 'discount_guests_5',
        'refund_money_type', 'refund_money_value', 'default_availability',
        'beds', 'bathrooms', 'room_area', 'bed_types', 'double_bed_size',
        'sofa', 'facilities', 'square_metres', 'bathroom_facilities',
        'room_icon', 'room_icon_thumb', 'room_picture_1', 'room_picture_1_thumb',
        'room_picture_2', 'room_picture_2_thumb', 'room_picture_3',
        'room_picture_3_thumb', 'room_picture_4', 'room_picture_4_thumb',
        'room_picture_5', 'room_picture_5_thumb', 'priority_order',
        'number_of_views', 'is_active'
    ];

    public function setFacilitiesAttribute($value)
    {
        $this->attributes['facilities'] = json_encode($value);
    }
}
