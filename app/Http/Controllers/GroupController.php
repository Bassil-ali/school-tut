<?php

namespace App\Http\Controllers;

use App\Models\Group;
use App\Models\Level;
use App\Models\Subject;
use Illuminate\Http\Request;

class GroupController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $levels = Level::all();
        $subjects = Subject::all();
        $groups = Group::whenSearch(request()->search)->latest()->paginate(10);

        return view('dashboard.groups', compact('levels', 'subjects', 'groups'));
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
            'group_name' => 'required|max:255',
            'level' => 'required',
            'subject' => 'required',
        ], [

            'group_name.required' => 'يرجي ادخال اسم المجموعة',
            'level.required' => 'يرجي اختيار اسم الصف',
            'subject.required' => 'يرجي اختيار اسم المادة',
        ]);

        Group::create([
            'group_name' => $request->group_name,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
            'group_description' => $request->description,
        ]);

        session()->flash('add', 'تم اضافة المجموعة بنجاح ');
        return redirect('/group');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function show(Group $group)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function edit(Group $group)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;

        $this->validate($request, [

            'group_name' => 'required|max:255',
            'level' => 'required',
            'subject' => 'required',
        ], [

            'group_name.required' => 'يرجي ادخال اسم المجموعة',
            'level.required' => 'يرجي اختيار اسم الصف',
            'subject.required' => 'يرجي اختيار اسم المادة',
        ]);

        $groups = Group::findOrFail($id);
        $groups->update([
            'group_name'  => $request->group_name,
            'group_description' => $request->group_description,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
        ]);

        session()->flash('edit', 'تم تعديل المجموعة بنجاج');
        return redirect('/group');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        Group::findOrFail($id)->delete();
        session()->flash('delete', 'تم حذف المجموعة بنجاح');
        return redirect('/group');
    }
}
