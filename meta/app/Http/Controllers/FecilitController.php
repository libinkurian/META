<?php

namespace App\Http\Controllers;

use App\Models\Fecilit;
use App\Models\Facilitydescription;
use Illuminate\Http\Request;

class FecilitController extends Controller
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
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'priority_order' => 'required',
            'code' => 'required',
            'icon_image' => 'required',
            'is_active' => 'required',
        ]);

        $icon_image = time().'.'.$validatedData['icon_image']->getClientOriginalName();
        $validatedData['icon_image']->move(public_path('images/facility'), $icon_image);

        Fecilit::create([
            'priority_order' => $validatedData['priority_order'],
            'code' => $validatedData['code'],
            'icon_image' => $icon_image,
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Facilities added successfully!",
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Fecilit  $fecilit
     * @return \Illuminate\Http\Response
     */
    public function show(Fecilit $fecilit)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Fecilit  $fecilit
     * @return \Illuminate\Http\Response
     */
    public function edit(Fecilit $fecilit)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Fecilit  $fecilit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Fecilit $fecilit)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Fecilit  $fecilit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Fecilit $fecilit)
    {
        //
    }
      public function hotelfecilities(Request $request)
    {
        $Fecilities= Fecilit::where('hotel_id','0')->where('hotel_id', $request->hotel_id)->get()->all();
        $data['fecilities']=$Fecilities;
       
        return response()->json(compact('data'),200);
    }

     public function listfecilities(Request $request)
    {
       $Fecilities= Fecilit::where('hotel_id','=', $request->id)
                    ->orwhere('hotel_id','=',0)->get()->all();
            $data1['fecilities']=$Fecilities;

            return response()->json(compact('data1'),200);
    }
      public function hotel_listfecilities(Request $request)
        {
            $Fecilities= Fecilit::where('hotel_id','=', $request->id)
                    ->orwhere('hotel_id','=',0)->get()->all();
            $data1['fecilities']=$Fecilities;

            return response()->json(compact('data1'),200);
        }
    public function listfecilitiesdescription()
    {
        $Facility= Facilitydescription::all();

        return response()->json([
            'status_code' => '200',
            'data' => $Facility,
        ]);
    }

    public function addfecilitiesdescription(Request $request)
    {
        $validatedData = $request->validate([
            'room_facility_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        Facilitydescription::create([
            'room_facility_id' => $validatedData['room_facility_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }
    
    public function addhotelfacilities(Request $request){
    //   $validatedData = $request->validate([           
    //         'code' => 'required',
    //           'priority_order' => 'required',
    //           'is_active' => 'required',
    //          'hotel_id' => 'required',
    //           'icon_image' => 'required'
    //     ]);
    //     $icon_image = time().'.'.$validatedData['icon_image']->getClientOriginalName();
    //     $validatedData['icon_image']->move(public_path('images/facility'), $icon_image);
          Fecilit::create([
            'priority_order' => $request['priority_order'],
            'code' => $request['code'],
            'icon_image' => "icon_image",
            'is_active' =>$request['is_active'],
            'hotel_id'=>$request->id  
        ]);
          return response()->json([
            'status_code' => '200',
            'message' => "Custom facilitie added successfully!",
        ]);
    }
}
