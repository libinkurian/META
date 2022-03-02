<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Campaigns;
use App\Models\Comments;
use Carbon\Carbon;

class CampaignsController extends Controller
{
    public function campaigns()
    {
        $campaigns = Campaigns::all();

        return response()->json([
            'status' => 200,
            'data' => $campaigns
        ]);
    }

    public function addcampaigns(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id' => 'required',
            'group_id' => 'required',
            'campaign_type' => 'required',
            'campaign_name' => 'required',
            'check_by' => 'required',
            'campaign_rooms' => 'required',
            'campaign_mealplan' => 'required',
            'campaign_rate' => 'required',
            'same_price' => 'required',
            'fixed_price' => 'required',
            'price_week' => 'required',
            'discount_flag' => 'required',
            'discount_price' => 'required',
            'discount_unit' => 'required',
            'increment_status' => 'required',
            'increment_type' => 'required',
            'increment_adult' => 'required',
            'increment_child' => 'required',
            'increment_unit' => 'required',
            'free_night' => 'required',
            'free_night_type' => 'required',
            'free_night_condition' => 'required',
            'booking_night_wend' => 'required',
            'booking_night_wend_percent' => 'required',
            'booking_night_fromto' => 'required',
            'booking_wend_fromto' => 'required',
            'addtional_disc' => 'required',
            'additinal_disc_minstay' => 'required',
            'additional_disc_perc' => 'required',
            'early_booking' => 'required',
            'early_booking_uptodays' => 'required',
            'early_booking_percent' => 'required',
            'lastmin_booking' => 'required',
            'lastmin_booking_hours' => 'required',
            'lastmin_booking_percent' => 'required',
            'is_promotional' => 'required',
            'show_promo_code' => 'required',
            'is_adv_booking' => 'required',
            'advbooking_days' => 'required',
            'cancel_policy' => 'required',
            'cancel_policy_rad' => 'required',
            'min_stay' => 'required',
            'minstay_status' => 'required',
            'max_stay' => 'required',
            'min_stay_combo' => 'required',
            'maxstay_valied' => 'required',
            'maxstay_condition' => 'required',
            'min_num_rooms' => 'required',
            'min_rooms_combo' => 'required',
            'close_order' => 'required',
            'close_order_num' => 'required',
            'max_reser_byday' => 'required',
            'max_quan_rooms_pernight' => 'required',
            'lastmin_active' => 'required',
            'last_hours' => 'required',
            'only_night_wend' => 'required',
            'night_from_to' => 'required',
            'wend_from_to' => 'required',
            'start_date' => 'required',
            'finish_date' => 'required',
            'discount_percent' => 'required',
            'priority_order' => 'required',
            'is_active' => 'required',
        ]);

        Campaigns::create([
            'hotel_id' => $validatedData['hotel_id'],
            'group_id' => $validatedData['group_id'],
            'campaign_type' => $validatedData['campaign_type'],
            'campaign_name' => $validatedData['campaign_name'],
            'check_by' => $validatedData['check_by'],
            'campaign_rooms' =>  json_encode($validatedData['campaign_rooms']),
            'campaign_mealplan' => json_encode($validatedData['campaign_mealplan']),
            'campaign_rate' => json_encode($validatedData['campaign_rate']),
            'same_price' => $validatedData['same_price'],
            'fixed_price' => $validatedData['fixed_price'],
            'price_week' => $validatedData['price_week'],
            'discount_flag' => $validatedData['discount_flag'],
            'discount_price' =>  $validatedData['discount_price'],
            'discount_unit' => $validatedData['discount_unit'],
            'increment_status' => $validatedData['increment_status'],
            'increment_type' => $validatedData['increment_type'],
            'increment_adult' => $validatedData['increment_adult'],
            'increment_child' => $validatedData['increment_child'],
            'increment_unit' => $validatedData['increment_unit'],
            'free_night' => $validatedData['free_night'],
            'free_night_type' =>  $validatedData['free_night_type'],
            'free_night_condition' => $validatedData['free_night_condition'],
            'booking_night_wend' => $validatedData['booking_night_wend'],
            'booking_night_wend_percent' => $validatedData['booking_night_wend_percent'],
            'booking_night_fromto' => $validatedData['booking_night_fromto'],
            'booking_wend_fromto' => $validatedData['booking_wend_fromto'],
            'addtional_disc' => $validatedData['addtional_disc'],
            'additinal_disc_minstay' => $validatedData['additinal_disc_minstay'],
            'additional_disc_perc' =>  $validatedData['additional_disc_perc'],
            'early_booking' => $validatedData['early_booking'],
            'early_booking_uptodays' => $validatedData['early_booking_uptodays'],
            'early_booking_percent' => $validatedData['early_booking_percent'],
            'lastmin_booking' => $validatedData['lastmin_booking'],
            'lastmin_booking_hours' => $validatedData['lastmin_booking_hours'],
            'lastmin_booking_percent' => $validatedData['lastmin_booking_percent'],
            'is_promotional' =>  $validatedData['is_promotional'],
            'show_promo_code' => $validatedData['show_promo_code'],
            'is_adv_booking' => $validatedData['is_adv_booking'],
            'advbooking_days' => $validatedData['advbooking_days'],
            'cancel_policy' => $validatedData['cancel_policy'],
            'cancel_policy_rad' => $validatedData['cancel_policy_rad'],
            'min_stay' => $validatedData['min_stay'],
            'minstay_status' => $validatedData['minstay_status'],
            'max_stay' =>  $validatedData['max_stay'],
            'min_stay_combo' => $validatedData['min_stay_combo'],
            'maxstay_valied' => $validatedData['maxstay_valied'],
            'maxstay_condition' => $validatedData['maxstay_condition'],
            'min_num_rooms' => $validatedData['min_num_rooms'],
            'min_rooms_combo' => $validatedData['min_rooms_combo'],
            'close_order' => $validatedData['close_order'],
            'close_order_num' => $validatedData['close_order_num'],
            'max_reser_byday' => $validatedData['max_reser_byday'],
            'max_quan_rooms_pernight' =>  $validatedData['max_quan_rooms_pernight'],
            'lastmin_active' => $validatedData['lastmin_active'],
            'last_hours' => $validatedData['last_hours'],
            'only_night_wend' => $validatedData['only_night_wend'],
            'night_from_to' => $validatedData['night_from_to'],
            'wend_from_to' => $validatedData['wend_from_to'],
            'start_date' => $validatedData['start_date'],
            'finish_date' => $validatedData['finish_date'],
            'discount_percent' =>  $validatedData['discount_percent'],
            'priority_order' => $validatedData['priority_order'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Campaign added successfully!",
        ]);
    }

    public function comments()
    {
        $comments = Comments::all();

        return response()->json([
            'status' => 200,
            'data' => $comments
        ]);
    }

    public function addcomments(Request $request)
    {
        $validatedData = $request->validate([
            'article_id' => 'required',
            'user_id' => 'required',
            'user_name' => 'required',
            'user_email' => 'required',
            'comment_text' => 'required',
            'is_published' => 'required',
        ]);

        Comments::create([
            'article_id' => $validatedData['article_id'],
            'user_id' => $validatedData['user_id'],
            'user_name' => $validatedData['user_name'],
            'user_email' => $validatedData['user_email'],
            'comment_text' => $validatedData['comment_text'],
            'date_created' =>  Carbon::now(),
            'is_published' => $validatedData['is_published'],
            'date_published' => Carbon::now(),
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Comment added successfully!",
        ]);
    }
}
