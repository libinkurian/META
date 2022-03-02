<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customers extends Model
{
    use HasFactory;
    protected $table = 'uhb_customers';
    public $timestamps = false;

    protected $fillable = [
        'group_id', 'customer_type', 'first_name', 'last_name', 'birth_date', 'company',
        'logo', 'url', 'b_address', 'b_address_2', 'b_city', 'b_state', 'b_country',
        'b_zipcode', 'phone', 'fax', 'email', 'user_name', 'user_password', 'profile_photo',
        'profile_photo_thumb', 'preferred_language', 'date_created', 'date_lastlogin',
        'created_by_admin_id', 'registered_from_ip', 'last_logged_ip', 'email_notifications',
        'notification_status_changed', 'orders_count', 'rooms_count', 'reviews_count',
        'balance', 'is_active', 'is_removed', 'comments', 'registration_code'
    ];
}
