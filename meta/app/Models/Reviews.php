<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reviews extends Model
{
    use HasFactory;
    protected $table = 'uhb_reviews';
    public $timestamps = false;
  
    protected $fillable = [
        'hotel_id', 'customer_id', 'title', 'positive_comments', 'negative_comments',
        'admin_answer', 'rating_cleanliness', 'rating_room_comfort', 'rating_location',
        'rating_service', 'rating_sleep_quality', 'rating_price', 'evaluation', 'travel_type',
        'passenger_type', 'image_file_1', 'image_file_1_thumb', 'image_file_2',
        'image_file_2_thumb', 'image_file_3', 'image_file_3_thumb', 'date_created',
        'is_active', 'priority_order'
    ];
}
