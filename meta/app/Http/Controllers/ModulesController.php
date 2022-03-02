<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Modules;
use App\Models\Modulesettings;

class ModulesController extends Controller
{
    public function listmodules()
    {
        $modules = Modules::all();

        return response()->json([
            'status_code' => '200',
            'data' => $modules,
        ]);
    }

    public function module(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'name_const' => 'required',
            'description_const' => 'required',
            'icon_file' => 'required',
            'module_tables' => 'required',
            'dependent_modules' => 'required',
            'settings_page' => 'required',
            'settings_const' => 'required',
            'settings_access_by' => 'required',
            'management_page' => 'required',
            'management_const' => 'required',
            'management_access_by' => 'required',
            'is_installed' => 'required',
            'module_type' => 'required',
            'show_on_dashboard' => 'required',
            'priority_order' => 'required',
        ]);

        $icon_file = time().'.'.$validatedData['icon_file']->getClientOriginalName();
        $validatedData['icon_file']->move(public_path('images/modules'), $icon_file);

        Modules::create([
            'name' => $validatedData['name'],
            'name_const' => $validatedData['name_const'],
            'description_const' => $validatedData['description_const'],
            'icon_file' => $icon_file,
            'module_tables' => $validatedData['module_tables'],
            'dependent_modules' => $validatedData['dependent_modules'],
            'settings_page' => $validatedData['settings_page'],
            'settings_const' => $validatedData['settings_const'],
            'settings_access_by' => $validatedData['settings_access_by'],
            'management_page' => $validatedData['management_page'],
            'management_const' => $validatedData['management_const'],
            'management_access_by' => $validatedData['management_access_by'],
            'is_installed' => $validatedData['is_installed'],
            'module_type' => $validatedData['module_type'],
            'show_on_dashboard' => $validatedData['show_on_dashboard'],
            'priority_order' => $validatedData['priority_order'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Module added successfully!",
        ]);
    }

    public function listmodulesettings()
    {
        $settings = Modulesettings::all();

        return response()->json([
            'status_code' => '200',
            'data' => $settings,
        ]);
    }

    public function addmodulesettings(Request $request)
    {
        $validatedData = $request->validate([
            'module_name' => 'required',
            'settings_key' => 'required',
            'settings_value' => 'required',
            'settings_name_const' => 'required',
            'settings_description_const' => 'required',
            'key_display_type' => 'required',
            'key_is_required' => 'required',
            'key_display_source' => 'required',
        ]);

        Modulesettings::create([
            'module_name' => $validatedData['module_name'],
            'settings_key' => $validatedData['settings_key'],
            'settings_value' => $validatedData['settings_value'],
            'settings_name_const' => $validatedData['settings_name_const'],
            'settings_description_const' => $validatedData['settings_description_const'],
            'key_display_type' => $validatedData['key_display_type'],
            'key_is_required' => $validatedData['key_is_required'],
            'key_display_source' => $validatedData['key_display_source'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Module settings done successfully!",
        ]);
    }
}
