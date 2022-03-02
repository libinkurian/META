<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offerdcheckout extends Model
{
    use HasFactory;
    protected $table = 'offerdcheckouts';
    public $timestamps = false;

    protected $fillable = [
        'offer_id', 'date'
    ];
}
