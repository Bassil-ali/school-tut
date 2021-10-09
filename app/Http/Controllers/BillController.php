<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bill;

class BillController extends Controller
{
    public function index()
    {
        $bills = Bill::all();

        return view('dashboard.bills',compact('bills'));
    }

    public function status(Request $request)
    {   
        $bill = Bill::find($request->id);

        $bill->update([
            'status' => $request->status
        ]);

        return redirect()->back();
    }

}//end of controller
