<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roomservices extends Model
{
    use HasFactory;
    protected $table = 'roomservices';
    public $timestamps = false;

    protected $fillable = [
        'room_id','service_id', 'frequency'
    ];
}
