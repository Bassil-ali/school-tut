<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DeliveryWork;
use App\Models\HomeWork;

class WorkController extends Controller
{

    public function store(Request $request)
    {

        $request_data                  = $request->except('delivery_file');
        $request_data['delivery_file'] = $request->file('delivery_file')->store('delivery_file','public_uploads');
        $request_data['studant']    = session()->get('user');

        DeliveryWork::create($request_data);

        return redirect()->back();

    }//end of store

    public function work_index()
    {
        $studant_work  = DeliveryWork::all();
        $home_work     = HomeWork::all();

        return view('student.work',compact('studant_work','home_work'));

    }//end of home work

}//end of controller
