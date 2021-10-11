<?php

namespace App\Http\Controllers;

use App\Models\Level;
use App\Models\Subject;
use Illuminate\Http\Request;

class SubjectController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $levels = Level::all();

        $subjects = Subject::whenSearch(request()->search)->latest()->paginate(10);

        return view('dashboard.subject', compact('levels', 'subjects'));
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
            'subject_name' => 'required|max:255',
            'level' => 'required',
        ], [

            'subject_name.required' => 'يرجي ادخال اسم المادة',
            'level.required' => 'يرجي اختيار اسم الصف',
        ]);

        $subject = Subject::where('subject_name', $request->subject_name)->where('level_id', $request->level)->get();

        if ($subject->count() > 0) {
            $validatedData = $request->validate([
                'subject_name' => 'unique:subjects,subject_name',
            ], [
                'subject_name.unique' => 'اسم المادة مسجل مسبقا',
            ]);
        }

        Subject::create([
            'subject_name' => $request->subject_name,
            'level_id' => $request->level,
            'subject_description' => $request->subject_description,
        ]);

        session()->flash('add', 'تم اضافة المادة بنجاح ');
        return redirect('/subject');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function show(Subject $subject)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function edit(Subject $subject)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;

        $this->validate($request, [

            'subject_name' => 'required|max:255',
            'level' => 'required',
        ], [

            'subject_name.required' => 'يرجي ادخال اسم المادة',
            'subject_name.unique' => 'اسم المادة مسجل مسبقا',
            'level.required' => 'يرجي اختيار اسم الصف',
        ]);

        $subjects = Subject::findOrFail($id);
        $subjects->update([
            'subject_name'  => $request->subject_name,
            'subject_description' => $request->subject_description,
            'level_id' => $request->level,
        ]);

        session()->flash('edit', 'تم تعديل المادة بنجاج');
        return redirect('/subject');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Subject  $subject
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        Subject::findOrFail($id)->delete();
        session()->flash('delete', 'تم حذف المادة بنجاح');
        return redirect('/subject');
    }
}
