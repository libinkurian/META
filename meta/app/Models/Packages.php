<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Packages extends Model
{
    use HasFactory;
    protected $table = 'uhb_packages';
    public $timestamps = false;

    protected $fillable = [
        'hotel_id', 'package_name', 'start_date', 'finish_date', 'minimum_nights', 
        'maximum_nights', 'minimum_rooms', 'maximum_rooms', 'cancel_reservation_day',
        'is_active'
    ];
}
