<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Offerdcheckin;

class OfferdcheckinController extends Controller
{
    public function listofferdcheckin()
    {
        $data = Offerdcheckin::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addofferdcheckin(Request $request)
    {
        Offerdcheckin::create([
            'offer_id' => $request->offer_id,
            'date' => $request->date
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Offer_avail_dcheckin added successfully!',
        ]);
    }
}
