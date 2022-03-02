<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Roomservices;
use App\Models\Services;


class RoomservicesController extends Controller
{
     public function listservices($hotel_id)
    {
        $data = Services::all();
        $i=0;
        foreach($data as $services)
        {
           $roomservice=Roomservices::where([['hotel_id','=',$hotel_id],['service_id','=',$services['id']]])->get();
           //$fq=$roomservice['frequency'];
           $data[$i]['frequency']=$roomservice[0]['frequency'];
           $i=$i+1;
        }
        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
        
     }
    
    public function listhotelservices($hotel_id)
    {
    
      if(!empty($hotel_id)){    
        
       // $data = Roomservices::all();
       
       
        
        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
        
        
      }
      
      
    }

    public function addroomservices(Request $request)
    {
        $i=1;
         foreach ($request->services as $service) {
             if($i==1)
             {
             Roomservices::where('hotel_id',$service['hotel_id'])->delete();
             }
            $roomservice=new Roomservices();
            $roomservice->hotel_id = $service['hotel_id'];
            $roomservice->service_id = $service['service_id'];
            $roomservice->frequency = $service['frequency'];
            $roomservice->save();
            $i=$i+1;
        }
        

        return response()->json([
            'status_code' => '200',
            'message' => "Room services added successfully!",
        ]);
    }
}
