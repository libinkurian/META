<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Roomdescription;

class RoomdescriptionController extends Controller
{
    public function addroomdescription($room_id, Request $request)
    {
        Roomdescription::create([
            'room_id' => $room_id,
            'room_description' => $request->room_description,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Description added successfully!'
        ]);
    }

    public function listroomdescription($room_id)
    {
        $data = Roomdescription::where('room_id', $room_id)->get()->all();
        
        return response()->json([
            'status_code' => '200',
            'data' => $data
        ]);
    }
}
