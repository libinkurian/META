<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rates extends Model
{
    use HasFactory;
    protected $table = 'uhb_rates';
    public $timestamps = false;

    protected $fillable = [
        'priority_order', 'hotel_id', 'public_name', 'internal_name', 'currency', 'is_active'
    ];
}
