<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Extra;
use App\Models\Extraavailability;

class ExtraitemsController extends Controller
{
    public function listextra($hotel_id)
    {
        $extraitems = Extra::where('hotel_id',$hotel_id)->get();

        return response()->json([
            'status' => '200',
            'data' => $extraitems
        ]);
    }

    public function addextra($hotel_id,Request $request)
    {
        $validatedData = $request->validate([
           
            'name' => 'required',
            'description' => 'required',
            
        ]);
$message="";
if(isset($request->id))
{
     $extra=Extra::find($request->id);
     $extra->name=$validatedData['name'];
      $extra->description=$validatedData['description'];
     $extra->save();
    $message="Item updated successfully!";
}else
{
        Extra::create([
         
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
            'hotel_id' => $hotel_id
          
        ]);
        $message="Item added successfully!";
}

        return response()->json([
            'status_code' => '200',
            'message' => $message
        ]);
    }
    
    public function updateextra(Request $request)
    {
       $availabledate=$request->availabledate;
       if(is($availabledate))
       {
           $this.addextraavailability($availabledate);
       }
       $roomsandboards=$request->roomsandboards;
       if(is($roomsandboards))
       {
           $this.addroomsandboards($roomsandboards);
       }
       $prices=$request->prices;
       if(is($prices))
       {
           $this.addextraprices($prices);
       } 
       
        
    }
    
    public function addextraavailability($availabledate)
    {

        
        foreach ($availabledate as $key=>$value){
             Extraavailability::create([
            'extra_id' => $value['extra_id'],
            'available_date' => $value['available_date'],
            'type' =>$value['type'],
        ]);
        }

        return response()->json([
            'status_code' => '200',
            'message' => "Available dates added successfully!",
        ]);
    }
    
     public function addroomsandboards($roomsandboards)
    {

        
        foreach ($roomsandboards as $key=>$value){
             Extraavailability::create([
            'extra_id' => $value['extra_id'],
            'available_date' => $value['available_date'],
            'type' =>$value['type'],
        ]);
        }

        return response()->json([
            'status_code' => '200',
            'message' => "Available dates added successfully!",
        ]);
    }
     public function addprices($prices)
    {

        
        foreach ($availabledate as $key=>$value){
             Extraavailability::create([
            'extra_id' => $value['extra_id'],
            'available_date' => $value['available_date'],
            'type' =>$value['type'],
        ]);
        }

        return response()->json([
            'status_code' => '200',
            'message' => "Available dates added successfully!",
        ]);
    }
}
