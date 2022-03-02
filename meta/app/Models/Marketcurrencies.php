<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Marketcurrencies extends Model
{
    use HasFactory;
    protected $table = 'marketcurrencies';
    public $timestamps = false;

    protected $fillable = [
        'currency', 'showprice_with_tax', 'market', 'default_display_currency',
        'is_default'
    ];
}
