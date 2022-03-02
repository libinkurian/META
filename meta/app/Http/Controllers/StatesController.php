<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\States;

class StatesController extends Controller
{
    public function liststates()
    {
        $states = States::all();

        return response()->json([
            'status_code' => '200',
            'data' => $states,
        ]);
    }

    public function addstate(Request $request)
    {
        $validatedData = $request->validate([
            'country_id' => 'required',
            'abbrv' => 'required',
            'name' => 'required',
            'is_active' => 'required',
            'priority_order' => 'required',
        ]);

        States::create([
            'country_id'=> $validatedData['country_id'],
            'abbrv' => $validatedData['abbrv'],
            'name' => $validatedData['name'],
            'is_active' => $validatedData['is_active'],
            'priority_order' => $validatedData['priority_order'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'State added successfully!'
        ]);
    }
}
