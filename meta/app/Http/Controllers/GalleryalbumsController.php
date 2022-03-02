<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Galleryalbums;
use App\Models\Galleryalbumsdescription;
use App\Models\Galleryalbumitems;
use App\Models\Galleryalbumitemsdescription;

class GalleryalbumsController extends Controller
{
    public function galleryalbums()
    {
        $galleryalbums = Galleryalbums::all();

        return response()->json([
            'status' => '200',
            'data' => $galleryalbums
        ]);
    }

    public function addgalleryalbums(Request $request)
    {
        $validatedData = $request->validate([
            'album_code' => 'required',
            'album_type' => 'required',
            'priority_order' => 'required',
            'is_active' => 'required',
        ]);

        Galleryalbums::create([
            'album_code' => $validatedData['album_code'],
            'album_type' => $validatedData['album_type'],
            'priority_order' => $validatedData['priority_order'],
            'is_active ' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Gallery album added successfully!",
        ]);
    }

    public function galleryalbumsdescription()
    {
        $galleryalbumsdescription = Galleryalbumsdescription::all();

        return response()->json([
            'status' => '200',
            'data' => $galleryalbumsdescription
        ]);
    }

    public function addgalleryalbumsdescription(Request $request)
    {
        $validatedData = $request->validate([
            'gallery_album_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        Galleryalbumsdescription::create([
            'gallery_album_id' => $validatedData['gallery_album_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }

    public function galleryalbumitems()
    {
        $galleryalbumitems = Galleryalbumitems::all();

        return response()->json([
            'status' => '200',
            'data' => $galleryalbumitems
        ]);
    }

    public function addgalleryalbumitems(Request $request)
    {
        $validatedData = $request->validate([
            'album_code' => 'required',
            'item_file' => 'required',
            'item_file_thumb' => 'required',
            'priority_order' => 'required',
            'is_active' => 'required',
        ]);

        $item_file = time().'.'.$validatedData['item_file']->getClientOriginalName();
        $validatedData['item_file']->move(public_path('images/rooms'), $item_file);

        $item_file_thumb = time().'.'.$validatedData['item_file_thumb']->getClientOriginalName();
        $validatedData['item_file_thumb']->move(public_path('images/rooms'), $item_file_thumb);

        Galleryalbumitems::create([
            'album_code' => $validatedData['album_code'],
            'item_file' => $item_file,
            'item_file_thumb' => $item_file_thumb,
            'priority_order' => $validatedData['priority_order'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Item added successfully!",
        ]);
    }

    public function galleryalbumitemsdescription()
    {
        $description = Galleryalbumitemsdescription::all();

        return response()->json([
            'status' => '200',
            'data' => $description
        ]);
    }

    public function addgalleryalbumitemsdescription(Request $request)
    {
        $validatedData = $request->validate([
            'gallery_album_item_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        Galleryalbumitemsdescription::create([
            'gallery_album_item_id' => $validatedData['gallery_album_item_id'],
            'language_id' => $validatedData['language_id'],
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Description added successfully!",
        ]);
    }
}
