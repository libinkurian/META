<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ratelist;

class RatelistController extends Controller
{
    public function listratelist($hotel_id)
    {
        $data = Ratelist::where('hotel_id', $hotel_id)->get()->all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }
     public function updateratelist(Request $request)
    {
             $ratelist = Ratelist::whereId($request->id)->first();
             $ratelist["public_name"]=$request->public_name;
            $ratelist["internal_name"]=$request->internal_name;
            $ratelist["min_lead_days"]=$request->min_lead_days;
            $ratelist["currency"]=$request->currency;
            $ratelist["markets"]=$request->markets;
            $ratelist["confidential"]=$request->confidential;
            $ratelist["loyaltymemebers"]=$request->loyaltymemebers;
            $ratelist["assign_rooms"]=$request->assign_rooms;
            $ratelist["boards"]=$request->boards;
            $ratelist["assigned_policies"]=$request->assigned_policies;
            $ratelist["default_policy"]=$request->default_policy;
            $ratelist["ref_cal"]=$request->ref_cal;
            $ratelist["status"]=$request->status;

            $ratelist->update();
                 return response()->json([
                        'status_code' => '200',
                        'message' => "Rate Updates successfully!",
                    ]);
                
                
    }

public function deleterate($id,Request $request)
    {
           $rate=Ratelist::whereId($request->id)->first();
            
           $rate->delete();
           
                 return response()->json([
                        'status_code' => '200',
                        'message' => "Rate Deleted successfully!",
                    ]);
                
                
    }
    public function addratelist($hotel_id, Request $request)
    {
 
    
        Ratelist::create([
            'hotel_id' => $hotel_id,
            'public_name' => $request->public_name,
            'internal_name' => $request->internal_name,
            'min_lead_days' => $request->min_lead_days,
            'currency' => $request->currency,
            'markets' => $request->markets,
            'confidential' => $request->confidential,
            'loyaltymemebers' => $request->loyaltymemebers,
            'assign_rooms' => json_encode($request->assign_rooms),
            'boards' => json_encode($request->boards),
            'assigned_policies' => json_encode($request->assigned_policies),
            'default_policy' => $request->default_policy,
            'ref_cal' => $request->ref_cal,
            'status' => $request->status,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Rate added successfully!",
        ]);
    }
}
