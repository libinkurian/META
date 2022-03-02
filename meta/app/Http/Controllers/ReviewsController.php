<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reviews;
use Carbon\Carbon;

class ReviewsController extends Controller
{
    public function listreviews()
    {
        $reviews = Reviews::all();

        return response()->json([
            'status_code' => '200',
            'data' => $reviews,
        ]);
    }

    public function addreviews(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id' => 'required',
            'customer_id' => 'required',
            'title' => 'required',
            'positive_comments' => 'required',
            'negative_comments' => 'required',
            'admin_answer' => 'required',
            'rating_cleanliness' => 'required',
            'rating_room_comfort' => 'required',
            'rating_location' => 'required',
            'rating_service' => 'required',
            'rating_sleep_quality' => 'required',
            'rating_price' => 'required',
            'evaluation' => 'required',
            'travel_type' => 'required',
            'passenger_type' => 'required',
            'image_file_1' => 'required',
            'image_file_1_thumb' => 'required',
            'image_file_2' => 'required',
            'image_file_2_thumb' => 'required',
            'image_file_3' => 'required',
            'image_file_3_thumb' => 'required',
            'is_active' => 'required',
            'priority_order' => 'required',
        ]);

        $image_file_1 = time().'.'.$validatedData['image_file_1']->getClientOriginalName();
        $validatedData['image_file_1']->move(public_path('images/modules'), $image_file_1);

        Reviews::create([
            'hotel_id' => $validatedData['hotel_id'],
            'customer_id' => $validatedData['customer_id'],
            'title' => $validatedData['title'],
            'positive_comments' => $validatedData['positive_comments'],
            'negative_comments' => $validatedData['negative_comments'],
            'admin_answer' => $validatedData['admin_answer'],
            'rating_cleanliness' => $validatedData['rating_cleanliness'],
            'rating_room_comfort' => $validatedData['rating_room_comfort'],
            'rating_location' => $validatedData['rating_location'],
            'rating_service' => $validatedData['rating_service'],
            'rating_sleep_quality' => $validatedData['rating_sleep_quality'],
            'rating_price' => $validatedData['rating_price'],
            'evaluation' => $validatedData['evaluation'],
            'travel_type' => $validatedData['travel_type'],
            'passenger_type' => $validatedData['passenger_type'],
            'image_file_1' => $image_file_1,
            'is_active' => $validatedData['is_active'],
            'priority_order' => $validatedData['priority_order'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Review added successfully!",
        ]);
    }

}
