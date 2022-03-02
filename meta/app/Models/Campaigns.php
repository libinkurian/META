<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Campaigns extends Model
{
    use HasFactory;
    protected $table = 'uhb_campaigns';
    public $timestamps = false;

    protected $fillable = [
        'hotel_id', 'group_id', 'campaign_type', 'campaign_name', 'check_by',
        'campaign_rooms', 'campaign_mealplan', 'campaign_rate', 'same_price',
        'fixed_price', 'price_week', 'discount_flag', 'discount_price',
        'discount_unit', 'increment_status', 'increment_type', 'increment_adult',
        'increment_child', 'increment_unit', 'free_night', 'free_night_type',
        'free_night_condition', 'booking_night_wend', 'booking_night_wend_percent',
        'booking_night_fromto', 'booking_wend_fromto', 'addtional_disc',
        'additinal_disc_minstay', 'additional_disc_perc', 'early_booking',
        'early_booking_uptodays', 'early_booking_percent', 'lastmin_booking',
        'lastmin_booking_hours', 'lastmin_booking_percent', 'is_promotional',
        'show_promo_code', 'is_adv_booking', 'advbooking_days', 'cancel_policy',
        'cancel_policy_rad', 'min_stay', 'minstay_status', 'max_stay', 'min_stay_combo',
        'maxstay_valied', 'maxstay_condition', 'min_num_rooms', 'min_rooms_combo',
        'close_order', 'close_order_num', 'max_reser_byday', 'max_quan_rooms_pernight',
        'lastmin_active', 'last_hours', 'only_night_wend', 'night_from_to',
        'wend_from_to', 'start_date', 'finish_date', 'discount_percent',
        'priority_order', 'is_active'
    ];
}
