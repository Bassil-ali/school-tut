<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AdminLogin;
use App\Models\Student;
use App\Models\Chat;

class ChatController extends Controller
{
    public function index()
    {
        $student    = Student::find(session()->get('user'));
        $uui        ='1';

        return view('student.chats',compact('uui','student'));

    }//end of index

    public function show($id)
    {
        $student     = Student::find(session()->get('user'));
        $admins      = AdminLogin::find($id);
        $uui         ='0';
        // return $student->id;
        $chats_studant   = Chat::where('studant_id',$student->id)->where('admin_id',$admins->id)->orderBy('created_at')->get();
        $chats_admin     = Chat::where('admin_id',$admins->id)->orderBy('created_at')->get();

        return view('student.chats',compact('admins','chats_admin','chats_studant','student','uui','id'));

    }//end of show

    public function store(Request $request)
    {
        $request['studant_id'] = $request->message_user_id;

        Chat::create($request->all());

        return redirect()->back();

    }//end of store

}//end of controller
