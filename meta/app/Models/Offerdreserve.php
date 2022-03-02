<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offerdreserve extends Model
{
    use HasFactory;
    protected $table = 'offerdreserves';
    public $timestamps = false;

    protected $fillable = [
        'offer_id', 'date'
    ];
}
