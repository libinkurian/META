<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Menus;
use App\Models\Menuplans;
use App\Models\Menuplansdescription;

class MenusController extends Controller
{
    public function listmenus()
    {
        $menus = Menus::all();

        return response()->json([
            'status_code' => '200',
            'data' => $menus,
        ]);
    }

    public function menus(Request $request)
    {
        $validatedData = $request->validate([
            'menu_code' => 'required',
            'language_id' => 'required',
            'menu_name' => 'required',
            'menu_placement' => 'required',
            'menu_order' => 'required',
            'access_level' => 'required',
        ]);

        Menus::create([
            'menu_code' => $validatedData['menu_code'],
            'language_id' => $validatedData['language_id'],
            'menu_name' => $validatedData['menu_name'],
            'menu_placement' => $validatedData['menu_placement'],
            'menu_order' => $validatedData['menu_order'],
            'access_level' => $validatedData['access_level'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Menu added successfully!",
        ]);
    }

    public function listmenuplans()
    {
        $plans = Menuplans::all();

        return response()->json([
            'status_code' => '200',
            'data' => $plans,
        ]);
    }

    public function mealplans(Request $request)
    {
        $validatedData = $request->validate([
            'hotel_id' => 'required',
            'price' => 'required',
            'charge_type' => 'required',
            'priority_order' => 'required',
            'is_active' => 'required',
            'is_default' => 'required',
        ]);

        Menuplans::create([
            'hotel_id' => $validatedData['hotel_id'],
            'price' => $validatedData['price'],
            'charge_type' => $validatedData['charge_type'],
            'priority_order' => $validatedData['priority_order'],
            'is_active' => $validatedData['is_active'],
            'is_default' => $validatedData['is_default'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Meal plan added successfully!",
        ]);
    }

    public function listmenuplansdescription()
    {
        $description = Menuplansdescription::all();

        return response()->json([
            'status_code' => '200',
            'data' => $description,
        ]);
    }

    public function mealplansdescription(Request $request)
    {
        $validatedData = $request->validate([
            'meal_plan_id' => 'required',
            'language_id' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        Menuplansdescription::create([
            'meal_plan_id' => $validatedData['meal_plan_id'],
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
