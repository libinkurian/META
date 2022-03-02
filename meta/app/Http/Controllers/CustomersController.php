<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customers;
use App\Models\Customergroups;

class CustomersController extends Controller
{
    public function customers()
    {
        $customers = Customers::all();

        return response()->json([
            'status' => '200',
            'data' => $customers
        ]);
    }

    public function addcustomers(Request $request)
    {
        $validatedData = $request->validate([
            'group_id' => 'required',
            'customer_type' => 'required',
            'first_name' => 'required',
            'last_name' => 'required',
            'birth_date' => 'required',
            'company' => 'required',
            'logo' => 'required',
            'url' => 'required',
            'b_address' => 'required',
            'b_address_2' => 'required',
            'b_city' => 'required',
            'b_state' => 'required',
            'b_country' => 'required',
            'b_zipcode' => 'required',
            'phone' => 'required',
            'fax' => 'required',
            'email' => 'required',
            'user_name' => 'required',
            'user_password' => 'required',
            'profile_photo' => 'required',
            'profile_photo_thumb' => 'required',
            'preferred_language' => 'required',
            'date_created' => 'required',
            'date_lastlogin' => 'required',
            'created_by_admin_id' => 'required',
            'registered_from_ip' => 'required',
            'last_logged_ip' => 'required',
            'email_notifications' => 'required',
            'notification_status_changed' => 'required',
            'orders_count' => 'required',
            'rooms_count' => 'required',
            'reviews_count' => 'required',
            'balance' => 'required',
            'is_active' => 'required',
            'is_removed' => 'required',
            'comments' => 'required',
            'registration_code' => 'required',
        ]);

        $logo = time().'.'.$validatedData['logo']->getClientOriginalName();
        $validatedData['logo']->move(public_path('images/customers'), $logo);

        $profile_photo = time().'.'.$validatedData['profile_photo']->getClientOriginalName();
        $validatedData['profile_photo']->move(public_path('images/customers'), $profile_photo);
        
        $profile_photo_thumb = time().'.'.$validatedData['profile_photo_thumb']->getClientOriginalName();
        $validatedData['profile_photo_thumb']->move(public_path('images/customers'), $profile_photo_thumb);

        Customers::create([
            'group_id' => $validatedData['group_id'],
            'customer_type' => $validatedData['customer_type'],
            'first_name' => $validatedData['first_name'],
            'last_name' => $validatedData['last_name'],
            'birth_date' => $validatedData['birth_date'],
            'company' => $validatedData['company'],
            'logo' => $logo,
            'url' => $validatedData['url'],
            'b_address' => $validatedData['b_address'],
            'b_address_2' => $validatedData['b_address_2'],
            'b_city' => $validatedData['b_city'],
            'b_state' => $validatedData['b_state'],
            'b_country' => $validatedData['b_country'],
            'b_zipcode' => $validatedData['b_zipcode'],
            'phone' => $validatedData['phone'],
            'fax' => $validatedData['fax'],
            'email' => $validatedData['email'],
            'user_name' => $validatedData['user_name'],
            'user_password' => $validatedData['user_password'],
            'profile_photo' => $profile_photo,
            'profile_photo_thumb' => $profile_photo_thumb,
            'preferred_language' => $validatedData['preferred_language'],
            'date_created' => $validatedData['date_created'],
            'date_lastlogin' => $validatedData['date_lastlogin'],
            'created_by_admin_id' => $validatedData['created_by_admin_id'],
            'registered_from_ip' => $validatedData['registered_from_ip'],
            'last_logged_ip' => $validatedData['last_logged_ip'],
            'email_notifications' => $validatedData['email_notifications'],
            'notification_status_changed' => $validatedData['notification_status_changed'],
            'orders_count' => $validatedData['orders_count'],
            'rooms_count' => $validatedData['rooms_count'],
            'reviews_count' => $validatedData['reviews_count'],
            'balance' => $validatedData['balance'],
            'is_active' => $validatedData['is_active'],
            'is_removed' => $validatedData['is_removed'],
            'comments' => $validatedData['comments'],
            'registration_code' => $validatedData['registration_code'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Customer added successfully!",
        ]);
    }

    public function customergroups()
    {
        $customergroups = Customergroups::all();

        return response()->json([
            'status' => '200',
            'data' => $customergroups
        ]);
    }

    public function addcustomergroups(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'description' => 'required',
        ]);

        Customergroups::create([
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
        ]);

        return response()->json([
            'status_code' => '200',
            'message' => "Customer group added successfully!",
        ]);
    }
}
