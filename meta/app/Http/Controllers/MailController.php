<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
//use App\Mail\TestMail;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
  
    public function sendmail()
{
    $details=[
        "title"=>'Test mail from maxim',
        "body"=>'Test mail usinf gmail',        
    ];
    Mail::to("sharmilakishan19@gmail.com")->send(new \App\Mail\TestMail($details));
    //Mail::to("sharmilakishan19@gmail.com")->send(new TestMail($details));
   //return "Email ssssspend";   
}
}
