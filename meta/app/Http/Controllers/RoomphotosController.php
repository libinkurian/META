<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Roomphotos;

class RoomphotosController extends Controller
{
    public function addroomphotos($room_id, Request $request)
    {
        $photo_url = time().'.'.$request->photo_url->getClientOriginalName();
        $request->photo_url->move(public_path('images/rooms'), $photo_url);

        Roomphotos::create([
            'room_id' => $room_id,
            'photo_url' => 'images/rooms/'.$photo_url,
            'title' => $request->title,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Photos added successfully!'
        ]);
    }

    public function listroomphotos($room_id)
    {
        
        $data = Roomphotos::where('room_id', $room_id)->get()->all();
        foreach($data as $key=>$value){
            $photo_url=asset($value['photo_url']);
           $value['photo_url']= $photo_url;
        }
        return response()->json([
            'status_code' => '200',
            'data' => $data
        ]);
    }
}
