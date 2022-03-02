<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Extradescription;

class ExtradescriptionController extends Controller
{
    public function extradescription()
    {
        $description = Extradescription::all();

        return response()->json([
            'status' => '200',
            'data' => $description
        ]);
    }

    public function addextradescription(Request $request)
    {
        $validatedData = $request->validate([
            'extra_id' => 'required',
            'parent_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
            'subtitle' => 'required',
            'description' => 'required',
            'conditions' => 'required',
        ]);

        Extradescription::create([
            'extra_id' => $validatedData['extra_id'],
            'parent_id' => $validatedData['parent_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
            'subtitle' => $validatedData['subtitle'],
            'description' => $validatedData['description'],
            'conditions' => $validatedData['conditions'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }
}
