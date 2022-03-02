<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Privilages;

class PrivilagesController extends Controller
{
    public function listprivilages()
    {
        $privilages = Privilages::all();

        return response()->json([
            'status_code' => '200',
            'data' => $privilages,
        ]);
    }

    public function privilage(Request $request)
    {
        $validatedData = $request->validate([
            'code' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        Privilages::create([
            'code' => $validatedData['code'],
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Privilage added successfully!",
        ]);
    }
}
