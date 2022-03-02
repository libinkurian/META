<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Policies;

class PoliciesController extends Controller
{
    public function listpolicies()
    {
        $data = Policies::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addpolicies(Request $request)
    {
        Policies::create([
            'description' => $request->description,
            'heading' => $request->heading,
            'content' => $request->content,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Policies added successfully!",
        ]);
    }
}
