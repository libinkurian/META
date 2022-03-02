<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roomfacilities extends Model
{
    use HasFactory;
    protected $table = 'roomfacilities';

    public $timestamps = false;

    protected $fillable = [
        'room_id',
        'facility_id',
        'featured_id',
    ];
}
