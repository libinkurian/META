<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Roombeds;

class RoombedsController extends Controller
{
    
    public function addroombeds(Request $request)
    {
        foreach ($request->beds as $bed) {
            $roombeds=new Roombeds();
            $roombeds->room_id = $request->room_id;
            $roombeds->single_beds = $bed['single_beds'];
            $roombeds->double_beds = $bed['double_beds'];
            $roombeds->doublebed_size = $request->doublebed_size;
            $roombeds->foldable_bed_flag = $request->foldable_bed_flag;
            $roombeds->save();
        }

        return response()->json([
            'status' => '200',
            'message' => 'Beds added successfully!',
        ]);
    }
    // public function addroombeds($room_id, Request $request)
    // {
    //     Roombeds::create([
    //         'room_id' => $room_id,
    //         'single_beds' => $request->single_beds,
    //         'double_beds' => $request->double_beds,
    //         'doublebed_size' => $request->doublebed_size,
    //         'foldable_bed_flag'=> $request->foldable_bed_flag
    //     ]);

    //     return response()->json([
    //         'status_code' => '200',
    //         'message' => 'Beds added successfully!'
    //     ]);
    // }

    public function listroombeds($room_id)
    {
        $data = Roombeds::where('room_id', $room_id)->get()->all();
        
        return response()->json([
            'status_code' => '200',
            'data' => $data
        ]);
    }
}
