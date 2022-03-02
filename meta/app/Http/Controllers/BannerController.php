<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Banner;
use App\Models\Bannerdescription;

class BannerController extends Controller
{
    public function banners()
    {
        $banner = Banner::all();

        return response()->json([
            'status' => '200',
            'data' => $banner
        ]);
    }

    public function bannerdescription()
    {
        $description = Bannerdescription::all();

        return response()->json([
            'status' => '200',
            'data' => $description
        ]);
    }

    public function addbanner(Request $request)
    {
        $validatedData = $request->validate([
            'page' => 'required',
            'image_file' => 'required',
            'image_file_thumb' => 'required',
            'priority_order' => 'required',
            'link_url' => 'required',
            'is_active' => 'required',
        ]);

        $image_file = time().'.'.$validatedData['image_file']->getClientOriginalName();
        $validatedData['image_file']->move(public_path('images/banners'), $image_file);

        $image_file_thumb = time().'.'.$validatedData['image_file_thumb']->getClientOriginalName();
        $validatedData['image_file_thumb']->move(public_path('images/banners'), $image_file_thumb);

        Banner::create([
            'page' => $validatedData['page'],
            'image_file' => $image_file,
            'image_file_thumb' => $image_file_thumb,
            'priority_order' => $validatedData['priority_order'],
            'link_url' => $validatedData['link_url'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Banner added successfully!",
        ]);
    }

    public function addbannerdescription(Request $request)
    {
        $validatedData = $request->validate([
            'banner_id' => 'required',
            'language_id' => 'required',
            'image_text' => 'required',
        ]);

        Bannerdescription::create([
            'banner_id' => $validatedData['banner_id'],
            'language_id' => $validatedData['language_id'],
            'image_text' => $validatedData['image_text'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }
}
