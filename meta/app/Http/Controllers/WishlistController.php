<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Wishlist;
use Carbon\Carbon;

class WishlistController extends Controller
{
    public function wishlist()
    {
        $wishlist = Wishlist::all();

        return response()->json([
            'status' => '200',
            'data' => $wishlist
        ]);
    }

    public function addwishlist(Request $request)
    {
        $validatedData = $request->validate([
            'customer_id' => 'required',
            'item_id' => 'required',
            'item_type' => 'required',
        ]);

        Wishlist::create([
            'customer_id' => $validatedData['customer_id'],
            'item_id' => $validatedData['item_id'],
            'item_type' => $validatedData['item_type'],
            'date_added' => Carbon::now(),
        ]);

        return response()->json([
            'status' => '200',
            'message' => 'Wishlist added successfully!'
        ]);
    }
}
