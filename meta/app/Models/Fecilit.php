<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Fecilit extends Model
{
    use HasFactory;
    protected $table = "uhb_room_facilities";
    public $timestamps = false;

    protected $fillable = [
        'priority_order', 'code', 'icon_image', 'is_active','hotel_id'
    ];
}
