<?php

namespace App\Http\Controllers;

use App\Models\Extra;
use Illuminate\Http\Request;

class ExtraController extends Controller
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
            'hotel_id' => 'required',
            'checkforDays' => 'required',
            'reservation_type' => 'required',
            'rooms' => 'required',
            'rates' => 'required',
            'price_type' => 'required',
            'price_per_num_persons' => 'required',
            'price' => 'required',
            'price2' => 'required',
            'price3' => 'required',
            'price4' => 'required',
            'price5' => 'required',
            'price6' => 'required',
            'price7' => 'required',
            'price8' => 'required',
            'price9' => 'required',
            'price10' => 'required',
            'price11' => 'required',
            'price12' => 'required',
            'canChooseDaysToApplyAux' => 'required',
            'ageCategory' => 'required',
            'minStay' => 'required',
            'maxStay' => 'required',
            'daysInAdvance' => 'required',
            'maximum_count' => 'required',
            'image' => 'required',
            'provider' => 'required',
            'notifyEmail' => 'required',
            'priority_order' => 'required',
            'is_active' => 'required',
        ]);

        $image = time().'.'.$validatedData['image']->getClientOriginalName();
        $validatedData['image']->move(public_path('images/extras'), $image);

        Extra::create([
            'hotel_id' => $validatedData['hotel_id'],
            'checkforDays' => $validatedData['checkforDays'],
            'reservation_type' => $validatedData['reservation_type'],
            'rooms' => json_encode($validatedData['rooms']),
            'rates' => json_encode($validatedData['rates']),
            'price_type' => $validatedData['price_type'],
            'price_per_num_persons' => json_encode($validatedData['price_per_num_persons']),
            'price' => $validatedData['price'],
            'price2' => $validatedData['price2'],
            'price3' => $validatedData['price3'],
            'price4' => $validatedData['price4'],
            'price5' => $validatedData['price5'],
            'price6' => $validatedData['price6'],
            'price7' => $validatedData['price7'],
            'price8' => $validatedData['price8'],
            'price9' => $validatedData['price9'],
            'price10' => $validatedData['price10'],
            'price11' => $validatedData['price11'],
            'price12' => $validatedData['price12'],
            'canChooseDaysToApplyAux' => $validatedData['canChooseDaysToApplyAux'],
            'ageCategory' => $validatedData['ageCategory'],
            'minStay' => $validatedData['minStay'],
            'maxStay' => $validatedData['maxStay'],
            'daysInAdvance' => $validatedData['daysInAdvance'],
            'maximum_count' => $validatedData['maximum_count'],
            'image' => $image,
            'provider' => $validatedData['provider'],
            'notifyEmail' => $validatedData['notifyEmail'],
            'priority_order' => $validatedData['priority_order'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Extras added successfully!",
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Extra  $extra
     * @return \Illuminate\Http\Response
     */
    public function show(Extra $extra)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Extra  $extra
     * @return \Illuminate\Http\Response
     */
    public function edit(Extra $extra)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Extra  $extra
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Extra $extra)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Extra  $extra
     * @return \Illuminate\Http\Response
     */
    public function destroy(Extra $extra)
    {
        //
    }

    public function extra()
    {
        $extra = Extra::all();

        return response()->json([
            'status' => '200',
            'data' => $extra
        ]);
    }
}
