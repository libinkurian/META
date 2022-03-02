<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\TestMail;
class ContactController extends Controller
{
    public function contact()
    {
        return view(contact-us);
    }
    public function sendmail()
{
    $details=[
        "title"=>'Test mail from maxim',
        "body"=>'Test mail usinf gmail',
        
    ];
    Mail::to("sharmilakishan@gmail.com")->send(new TestMail($details));
}
}
