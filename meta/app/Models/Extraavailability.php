<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Extraavailability extends Model
{
    use HasFactory;
    protected $table = 'uhb_extras_availability';
    public $timestamps = false;
  
    protected $fillable = [
        'extra_id', 'available_date', 'type'
    ];
}
