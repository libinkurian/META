<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Booking;
use App\Models\Bookingrooms;
use Carbon\Carbon;

class BookingController extends Controller
{
    public function bookings()
    {
        $bookings = Booking::all();

        return response()->json([
            'status' => 200,
            'data' =>$bookings
        ]);
    }

    public function addbookings(Request $request)
    {

        Booking::create([
            'booking_number' => $request->booking_number,
            'hotel_reservation_id' => $request->hotel_reservation_id,
            'booking_description' => $request->booking_description,
            'discount_percent' => $request->discount_percent,
            'discount_fee' => $request->discount_fee,
            'guests_discount' => $request->guests_discount,
            'nights_discount' => $request->nights_discount,
            'order_price' => $request->order_price,
            'pre_payment_type' => $request->pre_payment_type,
            'pre_payment_value' => $request->pre_payment_value,
            'vat_fee' => $request->vat_fee,
            'vat_percent' => $request->vat_percent,
            'initial_fee' => $request->initial_fee,
            'guest_tax' => $request->guest_tax,
            'payment_sum' => $request->payment_sum,
            'additional_payment' => $request->additional_payment,
            'currency' => $request->currency,
            'rooms_amount' => $request->rooms_amount,
            'customer_id' => $request->customer_id,
            'is_admin_reservation' => $request->is_admin_reservation,
            'created_by_admin_id' => $request->created_by_admin_id,
            'transaction_number' => $request->transaction_number,
            'created_date' => Carbon::now(),
            'payment_date' => $request->payment_date,
            'cancel_payment_date' => $request->cancel_payment_date,
            'payment_type' => $request->payment_type,
            'payment_method' => $request->payment_method,
            'coupon_code' => $request->coupon_code,
            'discount_campaign_id' => $request->discount_campaign_id,
            'additional_info' => $request->additional_info,
            'regional_menager_comment' => $request->regional_menager_comment,
            'extras' => $request->extras,
            'extras_fee' => $request->extras_fee,
            'cc_type' => $request->cc_type,
            'cc_holder_name' => $request->cc_holder_name,
            'cc_number' => $request->cc_number,
            'cc_expires_month' => $request->cc_expires_month,
            'cc_expires_year' => $request->cc_expires_year,
            'cc_cvv_code' => $request->cc_cvv_code,
            'status' => $request->status,
            'status_changed' => $request->status_changed,
            'status_description' => $request->status_description,
            'affiliate_id' => $request->affiliate_id,
            'email_sent' => $request->email_sent,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Booking done successfully!",
        ]);
    }

    public function bookingrooms()
    {
        $bookingrooms = Bookingrooms::all();

        return response()->json([
            'status' => 200,
            'data' =>$bookingrooms
        ]);
    }

    public function addbookingrooms(Request $request)
    {
        $validatedData = $request->validate([
            'booking_number' => 'required',
            'hotel_id' => 'required',
            'room_id' => 'required',
            'room_numbers' => 'required',
            'checkin' => 'required',
            'checkout' => 'required',
            'adults' => 'required',
            'children' => 'required',
            'rooms' => 'required',
            'price' => 'required',
            'discount' => 'required',
            'extra_beds' => 'required',
            'extra_beds_charge' => 'required',
            'meal_plan_id' => 'required',
            'meal_plan_price' => 'required',
            'email_notify' => 'required',
        ]);

        Bookingrooms::create([
            'booking_number' => $validatedData['booking_number'],
            'hotel_id' => $validatedData['hotel_id'],
            'room_id' => $validatedData['room_id'],
            'room_numbers' => $validatedData['room_numbers'],
            'checkin' => $validatedData['checkin'],
            'checkout' => $validatedData['checkout'],
            'adults' => $validatedData['adults'],
            'children' => $validatedData['children'],
            'rooms' => $validatedData['rooms'],
            'price' => $validatedData['price'],
            'discount' => $validatedData['discount'],
            'extra_beds' => $validatedData['extra_beds'],
            'extra_beds_charge' => $validatedData['extra_beds_charge'],
            'meal_plan_id' => $validatedData['meal_plan_id'],
            'meal_plan_price' => $validatedData['meal_plan_price'],
            'email_notify' => $validatedData['email_notify'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Room booked successfully!",
        ]);
    }
}
