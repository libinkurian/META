<?php

namespace App\Http\Controllers;
use App\Models\Hotel;
use App\Models\Hotelspropertytypes;
use App\Models\Hotelspropertydescription;
use App\Models\Hotelimages;

use Illuminate\Http\Request;

class HotelController extends Controller
{
    public function open() 
    {
        $data = "This data is open and can be accessed without the client being authenticated";
        return response()->json(compact('data'),200);

    }

    public function closed() 
    {
        $data = "Only authorized users can see this";
        return response()->json(compact('data'),200);
    }
    public function listhotels()
    {
        $Hotels= Hotel::all();
        $data['hotels']=$Hotels;
        return response()->json(compact('data'),200);
    }
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
            'address' => 'required',
            'name_center_point' => 'required',
            'description' => 'required',
            'preferences' => 'required',
        ]);

        Hotel::create([
            'hotel_id' => $validatedData['hotel_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
            'address' => $validatedData['address'],
            'name_center_point' => $validatedData['name_center_point'],
            'description' => $validatedData['description'],
            'preferences' => $validatedData['preferences'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Hotel added successfully!",
        ]);
    }

    public function hotelspropertytypes()
    {
        $types = Hotelspropertytypes::all();

        return response()->json([
            'status' => '200',
            'data' => $types
        ]);
    }

    public function addhotelspropertytypes(Request $request)
    {
        $validatedData = $request->validate([
            'property_code' => 'required',
            'priority_order' => 'required',
            'is_default' => 'required',
            'is_active' => 'required',
        ]);

        Hotelspropertytypes::create([
            'property_code' => $validatedData['property_code'],
            'priority_order' => $validatedData['priority_order'],
            'is_default' => $validatedData['is_default'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Property type added successfully!",
        ]);
    }

    public function hotelspropertydescription()
    {
        $description = Hotelspropertydescription::all();

        return response()->json([
            'status' => '200',
            'data' => $description
        ]);
    }

    public function addhotelspropertydescription(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_property_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
        ]);

        Hotelspropertydescription::create([
            'hotel_property_id' => $validatedData['hotel_property_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }

    public function hotelimages()
    {
        $hotelimages = Hotelimages::all();

        return response()->json([
            'status' => '200',
            'data' => $hotelimages
        ]);
    }

    public function addhotelimages(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id' => 'required',
            'item_file' => 'required',
            'item_file_thumb' => 'required',
            'image_title' => 'required',
            'priority_order' => 'required',
            'is_active' => 'required',
        ]);

        $item_file = time().'.'.$validatedData['item_file']->getClientOriginalName();
        $validatedData['item_file']->move(public_path('images/hotels'), $item_file);

        $item_file_thumb = time().'.'.$validatedData['item_file_thumb']->getClientOriginalName();
        $validatedData['item_file_thumb']->move(public_path('images/hotels'), $item_file_thumb);

        Hotelimages::create([
            'hotel_id' => $validatedData['hotel_id'],
            'item_file' => $item_file,
            'item_file_thumb' => $item_file_thumb,
            'image_title' => $validatedData['image_title'],
            'priority_order' => $validatedData['priority_order'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Image added successfully!",
        ]);
    }

}