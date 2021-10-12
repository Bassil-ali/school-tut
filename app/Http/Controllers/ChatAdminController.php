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

        $chats_studant   = Chat::where('studant_id',$id)->where('message_user_id',$id)->get();
        $chats_admin     = Chat::where('admin_id',$admins->id)->where('message_user_id',$admins->id)->where('studant_id',$id)->get();

        return view('dashboard.chat',compact('admins','chats_admin','chats_studant','student','uui'));

    }//end of show

    public function store(Request $request)
    {
        $request['admin_id'] = $request->message_user_id;

        Chat::create($request->all());

        return redirect()->back();

    }//end of store

}//end of controller
