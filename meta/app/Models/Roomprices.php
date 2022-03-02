<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roomprices extends Model
{
    use HasFactory;
    protected $table = 'uhb_rooms_prices';

    public $timestamps = false;

    protected $fillable = [
        'room_id',
        'date_from',
        'date_to',
        'adults',
        'children',
        'extra_bed_charge',
        'mon',
        'tue',
        'wed',
        'thu',
        'fri',
        'sat',
        'sun',
        'is_default',
    ];
}
