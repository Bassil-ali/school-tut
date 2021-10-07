<?php

namespace App\Http\Controllers;

use App\Models\Level;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LevelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $levels = Level::all();
        return view('dashboard.level', compact('levels'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'level_name' => 'required|unique:levels|max:255',
        ], [

            'level_name.required' => 'يرجي ادخال اسم الصف',
            'level_name.unique' => 'اسم الصف مسجل مسبقا',
        ]);

        Level::create([
            'level_name' => $request->level_name,
            'level_description' => $request->level_description,
        ]);

        session()->flash('add', 'تم اضافة الصف بنجاح ');
        return redirect('/level');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function show(Level $level)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function edit(Level $level)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;

        $this->validate($request, [

            'level_name' => 'required|max:255|unique:levels,level_name,' . $id,
        ], [

            'level_name.required' => 'يرجي ادخال اسم الصف',
            'level_name.unique' => 'اسم الصف مسجل مسبقا',
        ]);

        $sections = Level::findOrFail($id);
        $sections->update([
            'level_name'  => $request->level_name,
            'level_description' => $request->level_description,
        ]);

        session()->flash('edit', 'تم تعديل الصف بنجاج');
        return redirect('/level');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Level  $level
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        Level::findOrFail($id)->delete();
        session()->flash('delete', 'تم حذف الصف بنجاح');
        return redirect('/level');
    }

    public function getsubject($id)
    {
        $subjects = DB::table("subjects")->where("level_id", $id)->pluck("subject_name", "id");
        return json_encode($subjects);
    }

    // public function filter(Request $request)
    // {
    //     $level_filter = Level::where('id', $request->level)->get();
    //     $levels = Level::all();
    //     $level_id = Level::findOrFail($request->level);
    //     return view('dashboard.level', compact('levels', 'level_filter', 'level_id'));
    // }
}
