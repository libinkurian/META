<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Facilitydescription extends Model
{
    use HasFactory;
    protected $table = "uhb_room_facilities_description";
    public $timestamps = false;

    protected $fillable = [
        'room_facility_id', 'language_id', 'name', 'description'
    ];
}
