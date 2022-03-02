<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bathroom extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table="uhb_room_bathrooms";
    //hotel_location_id`, `property_type_id`, `hotel_group_id`, `phone`, `fax`, `email`, `time_zone`, `map_code`, `latitude`, `longitude`, `latitude_center`, `longitude_center`, `distance_center`, `hotel_image`, `hotel_currency`, `tax_included`, `hotel_image_thumb`, `agent_commision`, `stars`, `facilities`, `cancel_reservation_day`, `priority_order`, `number_of_views`, `is_default`, `is_active`
    protected $fillable = [
        'id', 'priority_order', 'code', 'icon_image', 'is_active','hotel_id'
    ];
}
