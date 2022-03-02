<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Rates;

class RatesController extends Controller
{
    public function listrates()
    {
        $rates = Rates::all();

        return response()->json([
            'status_code' => '200',
            'data' => $rates,
        ]);
    }

    public function rate(Request $request)
    {
        $validatedData = $request->validate([
            'priority_order' => 'required',
            'hotel_id' => 'required',
            'public_name' => 'required',
            'internal_name' => 'required',
            'currency' => 'required',
            'is_active' => 'required',
        ]);

        Rates::create([
            'priority_order' => $validatedData['priority_order'],
            'hotel_id' => $validatedData['hotel_id'],
            'public_name' => $validatedData['public_name'],
            'internal_name' => $validatedData['internal_name'],
            'currency' => $validatedData['currency'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Rate added successfully!",
        ]);
    }
}
