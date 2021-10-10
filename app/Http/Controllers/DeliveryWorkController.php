<?php

namespace App\Http\Controllers;

use App\Models\DeliveryWork;
use Illuminate\Http\Request;

class DeliveryWorkController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.delivery_work.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.delivery_work.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\DeliveryWork  $deliveryWork
     * @return \Illuminate\Http\Response
     */
    public function show(DeliveryWork $deliveryWork)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\DeliveryWork  $deliveryWork
     * @return \Illuminate\Http\Response
     */
    public function edit(DeliveryWork $deliveryWork)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\DeliveryWork  $deliveryWork
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, DeliveryWork $deliveryWork)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\DeliveryWork  $deliveryWork
     * @return \Illuminate\Http\Response
     */
    public function destroy(DeliveryWork $deliveryWork)
    {
        $deliveryWork->delete();

        return redirect()->back();
    }
}
