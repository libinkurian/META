<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Offerdcheckin extends Model
{
    use HasFactory;
    protected $table = 'offerdcheckins';
    public $timestamps = false;

    protected $fillable = [
        'offer_id', 'date'
    ];
}
