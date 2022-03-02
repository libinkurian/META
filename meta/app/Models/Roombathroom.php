<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roombathroom extends Model
{
    use HasFactory;
    protected $table = 'roombathrooms';

    public $timestamps = false;

    protected $fillable = [
        'room_id',
        'bathfacility_id',
    ];
}
