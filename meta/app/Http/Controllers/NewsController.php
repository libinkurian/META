<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\News;
use App\Models\Newssubscribed;
use Carbon\Carbon;

class NewsController extends Controller
{
    public function listnews()
    {
        $data = News::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addnews(Request $request)
    {
        News::create([
            'news_code' => $request->news_code,
            'language_id' => $request->language_id,
            'type' => $request->type,
            'header_text' => $request->header_text,
            'body_text' => $request->body_text,
            'date_created' => Carbon::now(),
            'is_active' => $request->is_active,
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'News added successfully!',
        ]);
    }

    public function listnewssubscribtion()
    {
        $data = Newssubscribed::all();

        return response()->json([
            'status_code' => '200',
            'data' => $data,
        ]);
    }

    public function addnewssubscribtion(Request $request)
    {
        Newssubscribed::create([
            'email' => $request->email,
            'date_subscribed' => Carbon::now(),
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => 'Subscription added successfully!',
        ]);
    }
}
