<?php

namespace App\Http\Controllers;

use App\Models\AdminLogin;
use Illuminate\Http\Request;

class AdminLoginController extends Controller
{
    public function checkUser(Request $request)
    {
        $email = $request->email;
        $password = $request->password;


        $admin = AdminLogin::where('email', $email)->where('password', $password)->get();
        if ($admin->count() > 0) {
            $request->session()->put('admin', $email);
            return redirect('/admin');
        } else {
            return redirect()->back();
        }
    }

    public function userLogin()
    {
        return view('dashboard.login');
    }
}
