<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roombeds extends Model
{
    use HasFactory;
    protected $table = 'roombeds';

    public $timestamps = false;

    protected $fillable = [
        'room_id',
        'single_beds',
        'double_beds',
        'doublebed_size',
        'foldable_bed_flag',
    ];
}
