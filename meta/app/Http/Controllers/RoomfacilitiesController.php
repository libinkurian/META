<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Roomfacilities;
use App\Models\Rooms;
use App\Models\Fecilities;


class RoomfacilitiesController extends Controller
{
    public function addroomfacilities(Request $request)
    {

        $facility= $request->roomfacilities;
        foreach($facility as $key=>$value){
            
            foreach ($value['facility'] as $key1=>$value1){
                $roomfecilitylist=Roomfacilities::where('room_id',$value['room_id'])->delete();
               
              
            }
            foreach ($value['facility'] as $key1=>$value1){
               
               
                Roomfacilities::create([
                'room_id' => $value['room_id'],
                'facility_id' => $value1
                ]);
            }
        }

        return response()->json([
            'status_code' => '200',
            'message' => 'Facilities added successfully!'
        ]);
    }

    public function listroomfacilities($room_id)
    {
        $data = Roomfacilities::where('room_id', $room_id)->get()->all();

        return response()->json([
            'status_code' => '200',
            'data' => $data
        ]);
    }

     public function listroomfacilitiesall($hotel_id)
        {
            $rooms=Rooms::where('hotel_id', $hotel_id)->get()->all();
            foreach($rooms as $key=>$value)
            {
            echo $value["id"];
            $data = Roomfacilities::where('room_id', $value['id'])->get()->all();
            }


            return response()->json([
                'status_code' => '200',
                'data' => $data
            ]);
        }
        
         public function listroomcustomefacilities($hotel_id)
        {
            $fecilities=Fecilities::where('hotel_id', $hotel_id)->get()->all();
//            foreach($fecilities as $key=>$value)
//            {
//            echo $value["id"];
//            $data = Roomfacilities::where('room_id', $value['id'])->get()->all();
//            }


            return response()->json([
                'status_code' => '200',
                'data' => $fecilities
            ]);
        }
        
         public function addhotelfacilities($hotel_id, Request $request)
    {

        $facility_id =  $request->hotel_id ;

       // foreach ($facility_id as $key=>$value){

            Fecilities::create([
            'priority_order' => $request->priority_order,
            'code' => $request->code,
            'icon_image' => $request->icon_image,
                'is_active'=>$request->is_active,
                'hotel_id'=>$hotel_id
        ]);

       // }

        return response()->json([
            'status_code' => '200',
            'message' => 'Custome Facility added successfully!'
        ]);
    }
}
