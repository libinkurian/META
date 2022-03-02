<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Offers;

class OffersController extends Controller
{
    public function listoffer($hotel_id)
    {
        $data = Offers::where('hotel_id', $hotel_id)->get()->all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addoffer($hotel_id, Request $request)
    {
        Offers::create([
            'hotel_id' => $hotel_id,
            'title' => $request->title,
            'description' => $request->description,
            'dstay_status' => $request->dstay_status,
            'dcheckin_status' => $request->dcheckin_status,
            'dcheckout_status' => $request->dcheckout_status,
            'dreserve_status' => $request->dreserve_status,
            'status' => $request->status,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Offer added successfully!",
        ]);
    }
}
