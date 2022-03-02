<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Offerdcheckout;

class OfferdcheckoutController extends Controller
{
    public function listofferdcheckout()
    {
        $data = Offerdcheckout::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addofferdcheckout(Request $request)
    {
        Offerdcheckout::create([
            'offer_id' => $request->offer_id,
            'date' => $request->date
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Offer_avail_dcheckout added successfully!',
        ]);
    }
}
