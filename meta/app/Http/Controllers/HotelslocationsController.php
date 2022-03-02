<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Hotelslocations;
use App\Models\Hotelslocationsdescription;

class HotelslocationsController extends Controller
{
    public function hotelslocations()
    {
        $hotelslocations = Hotelslocations::all();

        return response()->json([
            'status' => '200',
            'data' => $hotelslocations
        ]);
    }

    public function addhotelslocations(Request $request)
    {
        $validatedData = $request->validate([
            'country_id' => 'required',
            'priority_order' => 'required',
            'is_active' => 'required',
        ]);

        Hotelslocations::create([
            'country_id' => $validatedData['country_id'],
            'priority_order' => $validatedData['priority_order'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Location added successfully!",
        ]);
    }

    public function hotelslocationsdescription()
    {
        $description = Hotelslocationsdescription::all();

        return response()->json([
            'status' => '200',
            'data' => $description
        ]);
    }

    public function addhotelslocationsdescription(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_location_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
        ]);

        Hotelslocationsdescription::create([
            'hotel_location_id' => $validatedData['hotel_location_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }
}
