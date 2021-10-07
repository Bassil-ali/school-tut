<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserLoginController extends Controller
{
    public function checkUser(Request $request)
    {
        $code = $request->code;
        $password = $request->password;


        $student = Student::where('id', $code)->where('password', $password)->get();
        if ($student->count() > 0) {
            $request->session()->put('user', $code);
            return redirect('students');
        } else {
            return redirect()->back();
        }
    }

    public function userLogin()
    {
        return view('student.login');
    }
}
