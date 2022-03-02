<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Roles;
use App\Models\Roleprivilages;

class RolesController extends Controller
{
    public function listroles()
    {
        $roles = Roles::all();

        return response()->json([
            'status_code' => '200',
            'data' => $roles,
        ]);
    }

    public function role(Request $request)
    {
        $validatedData = $request->validate([
            'code' => 'required',
            'name' => 'required',
            'description' => 'required',
        ]);

        Roles::create([
            'code' => $validatedData['code'],
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Role added successfully!",
        ]);
    }

    public function listroleprivilages()
    {
        $privilages = Roleprivilages::all();

        return response()->json([
            'status_code' => '200',
            'data' => $privilages,
        ]);
    }

    public function roleprivilages(Request $request)
    {
        $validatedData = $request->validate([
            'role_id' => 'required',
            'privilege_id' => 'required',
            'is_active' => 'required',
        ]);

        Roleprivilages::create([
            'role_id' => $validatedData['role_id'],
            'privilege_id' => $validatedData['privilege_id'],
            'is_active' => $validatedData['is_active'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Privilage added successfully!",
        ]);
    }
}
