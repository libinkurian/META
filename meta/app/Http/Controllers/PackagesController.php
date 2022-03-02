<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Packages;

class PackagesController extends Controller
{
    public function listpackages()
    {
        $packages = Packages::all();

        return response()->json([
            'status_code' => '200',
            'data' => $packages,
        ]);
    }

    public function package(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id' => 'required',
            'package_name' => 'required',
            'start_date' => 'required',
            'finish_date' => 'required',
            'minimum_nights' => 'required',
            'maximum_nights' => 'required',
            'minimum_rooms' => 'required',
            'maximum_rooms' => 'required',
            'cancel_reservation_day' => 'required',
            'is_active' => 'required',
        ]);

        Packages::create([
            'hotel_id' => $validatedData['hotel_id'],
            'package_name' => $validatedData['package_name'],
            'start_date' => $validatedData['start_date'],
            'finish_date' => $validatedData['finish_date'],
            'minimum_nights' => $validatedData['minimum_nights'],
            'maximum_nights' => $validatedData['maximum_nights'],
            'minimum_rooms' => $validatedData['minimum_rooms'],
            'maximum_rooms' => $validatedData['maximum_rooms'],
            'cancel_reservation_day' => $validatedData['cancel_reservation_day'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Package added successfully!",
        ]);
    }
}
