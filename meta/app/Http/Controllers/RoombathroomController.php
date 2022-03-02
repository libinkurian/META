<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Roombathroom;

class RoombathroomController extends Controller
{
    public function addroombathroom($room_id, Request $request)
    {
        Roombathroom::create([
            'room_id' => $room_id,
            'bathfacility_id' => $request->bathfacility_id,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Bathroom added successfully!'
        ]);
    }

    public function listroombathroom($room_id)
    {
        $data = Roombathroom::where('room_id', $room_id)->get()->all();
        
        return response()->json([
            'status_code' => '200',
            'data' => $data
        ]);
    }
}
