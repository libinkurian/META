<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offerdstay extends Model
{
    use HasFactory;
    protected $table = 'offerdstays';
    public $timestamps = false;

    protected $fillable = [
        'offer_id', 'date'
    ];
}
