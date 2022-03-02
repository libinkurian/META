<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    use HasFactory;
    protected $table = 'uhb_wishlist';

    public $timestamps = false;

    protected $fillable = [
        'customer_id', 'item_id', 'item_type', 'date_added'
    ];
}
