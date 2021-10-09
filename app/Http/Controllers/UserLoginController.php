<?php

namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Level;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class UserLoginController extends Controller
{
    public function checkUser(Request $request)
    {
        $code     = $request->code;
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

    public function user_register()
    {
        $levels = Level::all();

        return view('student.register',compact('levels'));
    }


    public function check_register(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'city' => 'required',
            'phone' => 'required',
            'password' => 'required',
            'gender' => 'required',
            'level' => 'required',
        ], [

            'name.required' => 'يرجي ادخال اسم الطالب',
            'city.required' => 'يرجي ادخال اسم المحافظة',
            'phone.required' => 'يرجي ادخال رقم الموبايل',
            'password.required' => 'يرجي ادخال كلمة المرور',
            'gender.required' => 'يرجي اختيار النوع',
            'level.required' => 'يرجي اختيار اسم الصف',
        ]);

        $studant = Student::create([
            'name' => $request->name,
            'city' => $request->city,
            'phone' => $request->phone,
            'password' => $request->password,
            'gender' => $request->gender,
            'level_id' => $request->level,
        ]);

        $code     = $studant->id;
        $password = $studant->password;


        $student = Student::where('id', $code)->where('password', $password)->get();
        if ($student->count() > 0) {
            $request->session()->put('user', $code);
            return redirect('students');
        } else {
            return redirect()->back();
        }
    }
}
