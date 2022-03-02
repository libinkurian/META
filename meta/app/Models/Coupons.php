<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coupons extends Model
{
    use HasFactory;

    protected $table = 'uhb_coupons';
    public $timestamps = false;
    
    protected $fillable = [
        'hotel_id', 'customer_id', 'coupon_code', 'date_started', 'date_finished',
        'discount_percent', 'max_amount', 'times_used', 'comments', 'is_active'
    ];
}
