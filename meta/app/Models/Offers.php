<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offers extends Model
{
    use HasFactory;
    protected $table = 'offers';
    public $timestamps = false;

    protected $fillable = [
        'hotel_id', 'title', 'description', 'dstay_status', 'dcheckin_status',
        'dcheckout_status', 'dreserve_status', 'status'
    ];
}
