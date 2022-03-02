<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotelimages extends Model
{
    use HasFactory;
    protected $table = 'uhb_hotel_images';
    public $timestamps = false;

    protected $fillable = [
        'hotel_id', 'item_file', 'item_file_thumb', 'image_title', 'priority_order', 'is_active'
    ];
}
