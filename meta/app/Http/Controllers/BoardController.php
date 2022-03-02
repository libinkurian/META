<?php

namespace App\Http\Controllers;

use App\Models\Board;
use Illuminate\Http\Request;

class BoardController extends Controller
{
    public function open()
    {
        $data = "This data is open and can be accessed without the client being authenticated";
        return response()->json(compact('data'), 200);

    }

    public function closed()
    {
        $data = "Only authorized users can see this";
        return response()->json(compact('data'), 200);
    }

    public function listBoards()
    {
        $Board                   = Board::all();
        $data['Boardfecilities'] = $Board;
        return response()->json(compact('data'), 200);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id'          => 'required',
            'language_id'       => 'required',
            'name'              => 'required',
            'address'           => 'required',
            'name_center_point' => 'required',
            'description'       => 'required',
            'preferences'       => 'required',
        ]);

        Hotel::create([
            'hotel_id'          => $validatedData['hotel_id'],
            'language_id'       => $validatedData['language_id'],
            'name'              => $validatedData['name'],
            'address'           => $validatedData['address'],
            'name_center_point' => $validatedData['name_center_point'],
            'description'       => $validatedData['description'],
            'preferences'       => $validatedData['preferences'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message'     => "Hotel added successfully!",
        ]);
    }

}
