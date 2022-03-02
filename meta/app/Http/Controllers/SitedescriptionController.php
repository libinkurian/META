<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sitedescription;

class SitedescriptionController extends Controller
{
    public function listsitedescription()
    {
        $site= Sitedescription::all();

        return response()->json([
            'status_code' => '200',
            'data' => $site,
        ]);
    }

    public function addsitedescription(Request $request)
    {
        $validatedData = $request->validate([
            'language_id' => 'required',
            'header_text' => 'required',
            'slogan_text' => 'required',
            'footer_text' => 'required',
            'tag_title' => 'required',
            'tag_description' => 'required',
            'tag_keywords' => 'required',
            'geographical_address' => 'required',
        ]);

        Sitedescription::create([
            'language_id'=> $validatedData['language_id'],
            'header_text' => $validatedData['header_text'],
            'slogan_text' => $validatedData['slogan_text'],
            'footer_text' => $validatedData['footer_text'],
            'tag_title' => $validatedData['tag_title'],
            'tag_description' => $validatedData['tag_description'],
            'tag_keywords' => $validatedData['tag_keywords'],
            'geographical_address' => $validatedData['geographical_address'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Site description added successfully!'
        ]);
    }
}
