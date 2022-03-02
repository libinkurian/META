<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Currencies extends Model
{
    use HasFactory;
    protected $table = 'uhb_currencies';
    public $timestamps = false;

    protected $fillable = [
        'name', 'symbol', 'code', 'rate', 'decimals', 'symbol_placement',
        'primary_order', 'is_default', 'is_active', 'date_lastupdate'
    ];
}
