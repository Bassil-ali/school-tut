<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;

class LogoutController extends Controller
{
    public function logout(Request $request)
    {
        Session::forget('admin');

        return redirect('/admin/login');
    }

    public function userlogout(Request $request)
    {
        Session::forget('user');

        return redirect('/user/login');
    }
}
