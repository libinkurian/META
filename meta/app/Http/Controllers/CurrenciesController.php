<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Currencies;

class CurrenciesController extends Controller
{
    public function listcurrencies()
    {
        $currencies = Currencies::all();

        return response()->json([
            'status' => '200',
            'data' => $currencies
        ]);
    }

    public function currencies(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'symbol' => 'required',
            'code' => 'required',
            'rate' => 'required',
            'decimals' => 'required',
            'symbol_placement' => 'required',
            'primary_order' => 'required',
            'is_default' => 'required',
            'is_active' => 'required',
            'date_lastupdate' => 'required',
        ]);

        Currencies::create([
            'name' => $validatedData['name'],
            'symbol' => $validatedData['symbol'],
            'code' => $validatedData['code'],
            'rate' => $validatedData['rate'],
            'decimals' => $validatedData['decimals'],
            'symbol_placement' => $validatedData['symbol_placement'],
            'primary_order' => $validatedData['primary_order'],
            'is_default' => $validatedData['is_default'],
            'is_active' => $validatedData['is_active'],
            'date_lastupdate' => $validatedData['date_lastupdate'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Currency added successfully!",
        ]);
    }
}
