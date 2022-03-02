<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Offerdstay;

class OfferdstayController extends Controller
{
    public function listofferdstays()
    {
        $data = Offerdstay::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addofferdstays(Request $request)
    {
        Offerdstay::create([
            'offer_id' => $request->offer_id,
            'date' => $request->date
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Offer_avail_dstay added successfully!',
        ]);
    }
}
