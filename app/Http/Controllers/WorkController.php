<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DeliveryWork;

class WorkController extends Controller
{

    public function store(Request $request)
    {

        $request_data                  = $request->except('delivery_file');
        $request_data['delivery_file'] = $request->file('delivery_file')->store('delivery_file','public_uploads');
        $request_data['studant_id']    = session()->get('user');

        DeliveryWork::create($request_data);

        return redirect()->back();

    }//end of store

}//end of controller
