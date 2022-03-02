<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomType extends Model
{
    use HasFactory;
    protected $table ='uhb_rooms_description';
    public $timestamps = false;
    protected $fillable = [
        'room_id', 'language_id', 'room_type', 
        'room_short_description', 'room_long_description', 'single_beds', 'double_beds'
    ];
    
}
