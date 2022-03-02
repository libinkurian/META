<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Extraavailability;

class ExtraavailabilityController extends Controller
{
    public function extraavailability()
    {
        $availability = Extraavailability::all();

        return response()->json([
            'status' => '200',
            'data' => $availability
        ]);
    }

    public function addextraavailability(Request $request)
    {
        $validatedData = $request->validate([
            'extra_id' => 'required',
            'available_date' => 'required',
            'description' => 'required',
        ]);

        Extraavailability::create([
            'extra_id' => $validatedData['extra_id'],
            'available_date' => $validatedData['available_date'],
            'description' => $validatedData['description'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Availability added successfully!",
        ]);
    }
}
