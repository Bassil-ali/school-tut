<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Chat;
use App\Models\Student;
use App\Models\AdminLogin;

class ChatAdminController extends Controller
{
    public function index()
    {
        $student    = Student::find(session()->get('user'));
        $uui        ='1';

        return view('dashboard.chat',compact('uui','student'));
        
    }//end of index

    public function show($id)
    {
        $student    = Student::find($id);
        $admins     = AdminLogin::where('email',session()->get('admin'))->first();
        $uui        ='0';

        return view('dashboard.chat',compact('admins','student','uui','id'));

    }//end of show

    public function store(Request $request)
    {
        $request['admin_id'] = $request->message_user_id;

        Chat::create($request->all());

        return redirect()->back();

    }//end of store

}//end of controller
