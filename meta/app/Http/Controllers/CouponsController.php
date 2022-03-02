<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Coupons;

class CouponsController extends Controller
{
    public function coupons()
    {
        $coupons = Coupons::all();
        
        return response()->json([
            'status' => '200',
            'data' => $coupons
        ]);
    }

    public function addcoupons(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id' => 'required',
            'customer_id' => 'required',
            'coupon_code' => 'required',
            'date_started' => 'required',
            'date_finished' => 'required',
            'discount_percent' => 'required',
            'max_amount' => 'required',
            'times_used' => 'required',
            'comments' => 'required',
            'is_active' => 'required',
        ]);

        Coupons::create([
            'hotel_id' => $validatedData['hotel_id'],
            'customer_id' => $validatedData['customer_id'],
            'coupon_code' => $validatedData['coupon_code'],
            'date_started' => $validatedData['date_started'],
            'date_finished' => $validatedData['date_finished'],
            'discount_percent' => $validatedData['discount_percent'],
            'max_amount' => $validatedData['max_amount'],
            'times_used' => $validatedData['times_used'],
            'comments' => $validatedData['comments'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Coupon added successfully!",
        ]);
    }
}
