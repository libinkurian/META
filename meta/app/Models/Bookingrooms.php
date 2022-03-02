<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bookingrooms extends Model
{
    use HasFactory;
    protected $table = 'uhb_bookings_rooms';
    
    public $timestamps = false;
    
    protected $fillable = [
        'booking_number', 'hotel_id', 'room_id', 'room_numbers', 
        'checkin', 'checkout', 'adults', 'children', 'rooms', 'price',
        'discount', 'extra_beds', 'extra_beds_charge', 'meal_plan_id',
        'meal_plan_price', 'email_notify'
    ];
}
