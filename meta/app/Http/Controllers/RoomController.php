<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Room;
use App\Models\RoomType;
use App\Models\Fecilities;
use App\Models\Roombeds;
use App\Models\Roombathrooms;
use App\Models\Roomprices;
use App\Models\Roomavailability;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store($hotel_id, Request $request)
    {
        $validatedData = $request->validate([
            'room_type' => 'required',
            'room_short_description' => 'required',
            'room_long_description' => 'required',
            'room_count' => 'required',
            'max_adults' => 'required',
            'max_extra_beds' => 'required',
            'max_children' => 'required',
            'default_price' => 'required',
            'extra_bed_charge' => 'required',
            'discount_night_type' => 'required',
            'discount_night_3' => 'required',
            'discount_night_4' => 'required',
            'discount_night_5' => 'required',
            'discount_guests_type' => 'required',
            'discount_guests_3' => 'required',
            'discount_guests_4' => 'required',
            'discount_guests_5' => 'required',
            'refund_money_type' => 'required',
            'refund_money_value' => 'required',
            'default_availability' => 'required',
            'beds' => 'required',
            'bathrooms' => 'required',
            'room_area' => 'required',
            'bed_types' => 'required',
            'double_bed_size' => 'required',
            'sofa' => 'required',
            'facilities' => 'required',
            'square_metres' => 'required',
            'bathroom_facilities' => 'required',
            'room_icon' => 'required',
            'room_icon_thumb' => 'required',
            'room_picture_1' => 'required',
            'room_picture_1_thumb' => 'required',
            'room_picture_2' => 'required',
            'room_picture_2_thumb' => 'required',
            'room_picture_3' => 'required',
            'room_picture_3_thumb' => 'required',
            'room_picture_4' => 'required',
            'room_picture_4_thumb' => 'required',
            'room_picture_5' => 'required',
            'room_picture_5_thumb' => 'required',
            'priority_order' => 'required',
            'number_of_views' => 'required',
            'is_active' => 'required',
        ]);

        foreach($validatedData['facilities'] as $facility)
        { 
            $facilities[] = $facility;  
        }

        $room_icon = time().'.'.$validatedData['room_icon']->getClientOriginalName();
        $validatedData['room_icon']->move(public_path('images/rooms'), $room_icon);
        
        $room_icon_thumb = time().'.'.$validatedData['room_icon_thumb']->getClientOriginalName();
        $validatedData['room_icon_thumb']->move(public_path('images/rooms'), $room_icon_thumb);

        $room_picture_1 = time().'.'.$validatedData['room_picture_1']->getClientOriginalName();
        $validatedData['room_picture_1']->move(public_path('images/rooms'), $room_picture_1);

        $room_picture_1_thumb = time().'.'.$validatedData['room_picture_1_thumb']->getClientOriginalName();
        $validatedData['room_picture_1_thumb']->move(public_path('images/rooms'), $room_picture_1_thumb);

        $room_picture_2 = time().'.'.$validatedData['room_picture_2']->getClientOriginalName();
        $validatedData['room_picture_2']->move(public_path('images/rooms'), $room_picture_2);

        $room_picture_2_thumb = time().'.'.$validatedData['room_picture_2_thumb']->getClientOriginalName();
        $validatedData['room_picture_2_thumb']->move(public_path('images/rooms'), $room_picture_2_thumb);

        $room_picture_3 = time().'.'.$validatedData['room_picture_3']->getClientOriginalName();
        $validatedData['room_picture_3']->move(public_path('images/rooms'), $room_picture_3);

        $room_picture_3_thumb = time().'.'.$validatedData['room_picture_3_thumb']->getClientOriginalName();
        $validatedData['room_picture_3_thumb']->move(public_path('images/rooms'), $room_picture_3_thumb);

        $room_picture_4 = time().'.'.$validatedData['room_picture_4']->getClientOriginalName();
        $validatedData['room_picture_4']->move(public_path('images/rooms'), $room_picture_4);

        $room_picture_4_thumb = time().'.'.$validatedData['room_picture_4_thumb']->getClientOriginalName();
        $validatedData['room_picture_4_thumb']->move(public_path('images/rooms'), $room_picture_4_thumb);

        $room_picture_5 = time().'.'.$validatedData['room_picture_5']->getClientOriginalName();
        $validatedData['room_picture_5']->move(public_path('images/rooms'), $room_picture_5);

        $room_picture_5_thumb = time().'.'.$validatedData['room_picture_5_thumb']->getClientOriginalName();
        $validatedData['room_picture_5_thumb']->move(public_path('images/rooms'), $room_picture_5_thumb);

        Room::create([
            'hotel_id' => $hotel_id,
            'room_type' => $validatedData['room_type'],
            'room_short_description' => $validatedData['room_short_description'],
            'room_long_description' => $validatedData['room_long_description'],
            'room_count' => $validatedData['room_count'],
            'max_adults' => $validatedData['max_adults'],
            'max_extra_beds' => $validatedData['max_extra_beds'],
            'max_children' => $validatedData['max_children'],
            'default_price' => $validatedData['default_price'],
            'extra_bed_charge' => $validatedData['extra_bed_charge'],
            'discount_night_type' => $validatedData['discount_night_type'],
            'discount_night_3' => $validatedData['discount_night_3'],
            'discount_night_4' => $validatedData['discount_night_4'],
            'discount_night_5' => $validatedData['discount_night_5'],
            'discount_guests_type' => $validatedData['discount_guests_type'],
            'discount_guests_3' => $validatedData['discount_guests_3'],
            'discount_guests_4' => $validatedData['discount_guests_4'],
            'discount_guests_5' => $validatedData['discount_guests_5'],
            'refund_money_type' => $validatedData['refund_money_type'],
            'refund_money_value' => $validatedData['refund_money_value'],
            'default_availability' => $validatedData['default_availability'],
            'beds' => $validatedData['beds'],
            'bathrooms' => $validatedData['bathrooms'],
            'room_area' => $validatedData['room_area'],
            'bed_types' => json_encode($validatedData['bed_types']),
            'double_bed_size' => $validatedData['double_bed_size'],
            'sofa' => $validatedData['sofa'],
            'facilities' => $facilities,
            'square_metres' => $validatedData['square_metres'],
            'bathroom_facilities' => $validatedData['bathroom_facilities'],
            'room_icon' => $room_icon,
            'room_icon_thumb' => $room_icon_thumb,
            'room_picture_1' => $room_picture_1,
            'room_picture_1_thumb' => $room_picture_1_thumb,
            'room_picture_2' => $room_picture_2,
            'room_picture_2_thumb' => $room_picture_2_thumb,
            'room_picture_3' => $room_picture_3,
            'room_picture_3_thumb' => $room_picture_3_thumb,
            'room_picture_4' => $room_picture_4,
            'room_picture_4_thumb' => $room_picture_4_thumb,
            'room_picture_5' => $room_picture_5,
            'room_picture_5_thumb' => $room_picture_5_thumb,
            'priority_order' => $validatedData['priority_order'],
            'number_of_views' => $validatedData['number_of_views'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Room added successfully!",
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function show(Room $room)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function edit(Room $room)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Room $room)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function destroy(Room $room)
    {
        //
    }
    
     public function listrooms($hotel_id)
    {
       // $data = RoomType::where('room_id', $room_id)->get();
        $data= Room::where('hotel_id',$hotel_id)->get()->all();
       //  $data['rooms']=$Rooms;
        return response()->json(compact('data'),200);
    }
     public function listroomstypes($room_id)
    {
        $data = RoomType::where('room_id', $room_id)->get();
        // $Rooms= RoomType::all();
        // $data['rooms']=$Rooms;
        return response()->json(compact('data'),200);
    }
    public function listhotelrooms($hotel_id, Request $request) {
    //   $hotel_id=$request->get('hotel_id');
        $Rooms= Room::where('hotel_id', $hotel_id)->get();
        $data['rooms']=$Rooms;
        return response()->json(compact('data'),200);
    }   
    public function storeroomtypes($room_id, Request $request)
    {
        // $validatedData = $request->validate([
        //     'language_id' => 'required',
        //     'room_type' => 'required',
        //     'room_short_description' => 'required',
        //     'room_long_description' => 'required',
        // ]);

        RoomType::create([
            'room_id' => $room_id,
            'language_id' => $request->language_id,
            'room_type' => $request->room_type,
            'room_short_description' => $request->room_short_description,
            'room_long_description' => $request->room_long_description,
            'single_beds' => $request->single_beds,
            'double_beds' => $request->double_beds,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Room type added successfully!",
        ]);
    }

    public function listroombeds()
    {
        $roombeds = Roombeds::all();

        return response()->json([
            'status_code' => '200',
            'data' => $roombeds,
        ]);
    }

    public function addroombeds(Request $request)
    {
        $validatedData = $request->validate([
            'priority_order' => 'required',
            'code' => 'required',
            'icon_image' => 'required',
            'is_active' => 'required',
        ]);

        $icon_image = time().'.'.$validatedData['icon_image']->getClientOriginalName();
        $validatedData['icon_image']->move(public_path('images/beds'), $icon_image);

        Roombeds::create([
            'priority_order' => $validatedData['priority_order'],
            'code' => $validatedData['code'],
            'icon_image' => $icon_image,
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Bed added successfully!'
        ]);
    }

    public function listroombathrooms()
    {
        $roombathrooms = Roombathrooms::all();

        return response()->json([
            'status_code' => '200',
            'data' => $roombathrooms
        ]);
    }

    public function addroombathrooms(Request $request)
    {
        $validatedData = $request->validate([
            'priority_order' => 'required',
            'code' => 'required',
            'icon_image' => 'required',
            'is_active' => 'required',
        ]);

        $icon_image = time().'.'.$validatedData['icon_image']->getClientOriginalName();
        $validatedData['icon_image']->move(public_path('images/bathrooms'));

        Roombathrooms::create([
            'priority_order' => $validatedData['priority_order'],
            'code' => $validatedData['code'],
            'icon_image' => $icon_image,
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Bathroom added successfully!'
        ]);
    }

    public function listroomprices()
    {
        $roomprices = Roomprices::all();

        return response()->json([
            'status' => '200',
            'data' => $roomprices
        ]);
    }

    public function addroomprices(Request $request)
    {
        $validatedData = $request->validate([
            'room_id' => 'required',
            'date_from' => 'required',
            'date_to' => 'required',
            'adults' => 'required',
            'children' => 'required',
            'extra_bed_charge' => 'required',
            'mon' => 'required',
            'tue' => 'required',
            'wed' => 'required',
            'thu' => 'required',
            'fri' => 'required',
            'sat' => 'required',
            'sun' => 'required',
            'is_default' => 'required',
        ]);
        
        Roomprices::create([
            'room_id' => $validatedData['room_id'],
            'date_from' => $validatedData['date_from'],
            'date_to' => $validatedData['date_to'],
            'adults' => $validatedData['adults'],
            'children' => $validatedData['children'],
            'extra_bed_charge' => $validatedData['extra_bed_charge'],
            'mon' => $validatedData['mon'],
            'tue' => $validatedData['tue'],
            'wed' => $validatedData['wed'],
            'thu' => $validatedData['thu'],
            'fri' => $validatedData['fri'],
            'sat' => $validatedData['sat'],
            'sun' => $validatedData['sun'],
            'is_default' => $validatedData['is_default'],
        ]);

        return response()->json([
            'status' => '200',
            'message' => 'Price added successfully!'
        ]);
    }

    public function listroomavailability()
    {
        $availability = Roomavailability::all();

        return response()->json([
            'status' => '200',
            'data' => $availability
        ]);
    }

    public function addroomsavailability(Request $request)
    {
        $validatedData = $request->validate([
            'room_id' => 'required',
            'y' => 'required',
            'm' => 'required',
            'd1' => 'required',
            'a1' => 'required',
            'd2' => 'required',
            'a2' => 'required',
            'd3' => 'required',
            'a3' => 'required',
            'd4' => 'required',
            'a4' => 'required',
            'd5' => 'required',
            'a5' => 'required',
            'd6' => 'required',
            'a6' => 'required',
            'd7' => 'required',
            'a7' => 'required',
            'd8' => 'required',
            'a8' => 'required',
            'd9' => 'required',
            'a9' => 'required',
            'd10' => 'required',
            'a10' => 'required',
            'd11' => 'required',
            'a11' => 'required',
            'd12' => 'required',
            'a12' => 'required',
            'd13' => 'required',
            'a13' => 'required',
            'd14' => 'required',
            'a14' => 'required',
            'd15' => 'required',
            'a15' => 'required',
            'd16' => 'required',
            'a16' => 'required',
            'd17' => 'required',
            'a17' => 'required',
            'd18' => 'required',
            'a18' => 'required',
            'd19' => 'required',
            'a19' => 'required',
            'd20' => 'required',
            'a20' => 'required',
            'd21' => 'required',
            'a21' => 'required',
            'd22' => 'required',
            'a22' => 'required',
            'd23' => 'required',
            'a23' => 'required',
            'd24' => 'required',
            'a24' => 'required',
            'd25' => 'required',
            'a25' => 'required',
            'd26' => 'required',
            'a26' => 'required',
            'd27' => 'required',
            'a27' => 'required',
            'd28' => 'required',
            'a28' => 'required',
            'd29' => 'required',
            'a29' => 'required',
            'd30' => 'required',
            'a30' => 'required',
            'd31' => 'required',
            'a31' => 'required'
        ]);

        Roomavailability::create([
            'room_id' => $validatedData['room_id'],
            'y' => $validatedData['y'],
            'm' => $validatedData['m'],
            'd1' => $validatedData['d1'],
            'a1' => $validatedData['a1'],
            'd2' => $validatedData['d2'],
            'a2' => $validatedData['a2'],
            'd3' => $validatedData['d3'],
            'a3' => $validatedData['a3'],
            'd4' => $validatedData['d4'],
            'a4' => $validatedData['a4'],
            'd5' => $validatedData['a4'],
            'a5' => $validatedData['a4'],
            'd6' => $validatedData['a4'],
            'a6' => $validatedData['a4'],
            'd7' => $validatedData['a4'],
            'a7' => $validatedData['a7'],
            'd8' => $validatedData['d8'],
            'a8' => $validatedData['a8'],
            'd9' => $validatedData['d9'],
            'a9' => $validatedData['a9'],
            'd10' => $validatedData['d10'],
            'a10' => $validatedData['a10'],
            'd11' => $validatedData['d11'],
            'a11' => $validatedData['a11'],
            'd12' => $validatedData['d12'],
            'a12' => $validatedData['a12'],
            'd13' => $validatedData['d13'],
            'a13' => $validatedData['a13'],
            'd14' => $validatedData['d14'],
            'a14' => $validatedData['a14'],
            'd15' => $validatedData['d15'],
            'a15' => $validatedData['a15'],
            'd16' => $validatedData['d16'],
            'a16' => $validatedData['a16'],
            'd17' => $validatedData['d17'],
            'a17' => $validatedData['a17'],
            'd18' => $validatedData['d18'],
            'a18' => $validatedData['a18'],
            'd19' => $validatedData['d19'],
            'a19' => $validatedData['a19'],
            'd20' => $validatedData['d20'],
            'a20' => $validatedData['a20'],
            'd21' => $validatedData['d21'],
            'a21' => $validatedData['a21'],
            'd22' => $validatedData['d22'],
            'a22' => $validatedData['a22'],
            'd23' => $validatedData['d23'],
            'a23' => $validatedData['a23'],
            'd24' => $validatedData['d24'],
            'a24' => $validatedData['a24'],
            'd25' => $validatedData['d25'],
            'a25' => $validatedData['a25'],
            'd26' => $validatedData['d26'],
            'a26' => $validatedData['a26'],
            'd27' => $validatedData['d27'],
            'a27' => $validatedData['a27'],
            'd28' => $validatedData['d28'],
            'a28' => $validatedData['a28'],
            'd29' => $validatedData['d29'],
            'a29' => $validatedData['a29'],
            'd30' => $validatedData['d30'],
            'a30' => $validatedData['a30'],
            'd31' => $validatedData['d31'],
            'a31' => $validatedData['a31']
        ]);

        return response()->json([
            'status' => '200',
            'message' => 'Availability added successfully!'
        ]);
    }
}
