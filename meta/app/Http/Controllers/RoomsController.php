<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Rooms;
use App\Models\Bathroom;
use App\Models\Roomfacilities;
use App\Models\Roombathroom;

class RoomsController extends Controller
{
    public function addrooms($hotel_id, Request $request)
    {
       
        
        Rooms::create([
            'hotel_id' => $hotel_id,
            'room_name' => $request->room_name,
            'num_rooms' => $request->num_rooms,
            'area_sqmtr' => $request->area_sqmtr,
            'room_type'=> $request->room_type,
            'max_adults'=> $request->max_adults,
            'max_extra_beds'=> $request->max_extra_beds,
             'max_children'=> $request->max_children,
              'room_short_description'=> $request->room_short_description,
              'room_long_description'=> $request->room_long_description,
              'room_count'=> $request->room_count,
              'default_price'=> $request->default_price,
              'extra_bed_charge'=> $request->extra_bed_charge,
              'beds'=> $request->beds,
              'room_area'=> $request->room_area,
              'bed_types'=>$request->bed_types,
              'number_of_views'=> $request->number_of_views,
              'is_active'=> $request->is_active
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Room added successfully!'
        ]);
    }

    public function listrooms($hotel_id)
    {
        $data = Rooms::where('hotel_id', $hotel_id)->get()->all();
        foreach($data as $key => $value){
        $fec=Roomfacilities::where("room_id",$value['id']);
        $fecarr=$fec->pluck('facility_id')->toArray();
        $value['fecilities']=$fecarr;
        
         $bathfec=Roombathroom::where("room_id",$value['id']);
        $bathfecarr=$bathfec->pluck('bathfacility_id')->toArray();
        $value['bathfecilities']=$bathfecarr;
        }
        
        return response()->json([
            'status_code' => '200',
            'data' => $data
        ]);
    }

    public function listroomsfecilitystatus($hotel_id)
        {
            $data = Rooms::where('hotel_id', $hotel_id)->get()->all();
            $fecilities=Fecilit::where("hotel_id",$hotel_id)->get()->all();
            $fecilities=$fecilities->pluck('id')->toArray();

            return response()->json([
                        'status_code' => '200',
                        'data' => $data
                    ]);
        }
        
         public function addroombathfacilities(Request $request)
    {

        $facility=$request->bathroomfacilities;
        foreach($facility as $key=>$value){
             foreach ($value['facility'] as $key1=>$value1){
               
                Roombathroom::where(
                'room_id',$value['room_id']
                )->delete();
            }
            
            foreach ($value['facility'] as $key1=>$value1){
               
                Roombathroom::create([
                'room_id' =>$value['room_id'],
                'bathfacility_id' => $value1
                ]);
            }
        }

        return response()->json([
            'status_code' => '200',
            'message' => 'Bath room Facilities added successfully!'
        ]);
    }

        
       
}
