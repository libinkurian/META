<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Countries;
use App\Models\Countriesdescription;

class CountriesController extends Controller
{
    public function countries()
    {
        $countries = Countries::all();

        return response()->json([
            'status' => 200,
            'data' => $countries
        ]);
    }

    public function countriesdescription()
    {
        $countriesdescription = Countriesdescription::all();

        return response()->json([
            'status' => 200,
            'data' => $countriesdescription
        ]);
    }

    public function addcountry(Request $request)
    {
        $validatedData = $request->validate([
            'abbrv' => 'required',
            'is_active' => 'required',
            'is_default' => 'required',
            'vat_value' => 'required',
            'priority_order' => 'required',
        ]);

        Countries::create([
            'abbrv' => $validatedData['abbrv'],
            'is_active' => $validatedData['is_active'],
            'is_default' => $validatedData['is_default'],
            'vat_value' => $validatedData['vat_value'],
            'priority_order' => $validatedData['priority_order'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Country added successfully!",
        ]);
    }

    public function addcountrydescription(Request $request)
    {
        $validatedData = $request->validate([
            'country_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
        ]);

        Countriesdescription::create([
            'country_id' => $validatedData['country_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }
}
