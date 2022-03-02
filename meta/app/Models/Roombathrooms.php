<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roombathrooms extends Model
{
    use HasFactory;
    protected $table = 'uhb_room_bathrooms';

    public $timestamps = false;

    protected $fillable = [
        'priority_order', 'code', 'icon_image', 'is_active'
    ];
}
