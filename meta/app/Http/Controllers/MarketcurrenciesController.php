<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Marketcurrencies;

class MarketcurrenciesController extends Controller
{
    public function listmarketcurrencies()
    {
        $data = Marketcurrencies::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addmarketcurrencies(Request $request)
    {
        Marketcurrencies::create([
            'currency' => $request->currency,
            'showprice_with_tax' => $request->showprice_with_tax,
            'market' => $request->market,
            'default_display_currency' => $request->default_display_currency,
            'is_default' => $request->is_default,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Currency added successfully!",
        ]);
    }
}
