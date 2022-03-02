<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Offerdreserve;

class OfferdreserveController extends Controller
{
    public function listofferdreserve()
    {
        $data = Offerdreserve::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addofferdreserve(Request $request)
    {
        Offerdreserve::create([
            'offer_id' => $request->offer_id,
            'date' => $request->date
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Offer_avail_dreserve added successfully!',
        ]);
    }
}
