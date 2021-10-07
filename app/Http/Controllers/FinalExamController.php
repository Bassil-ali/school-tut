<?php

namespace App\Http\Controllers;

use App\Models\Exam;
use App\Models\FinalExam;
use App\Models\Group;
use App\Models\Level;
use App\Models\Subject;
use Illuminate\Http\Request;

class FinalExamController extends Controller
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
        $groups = Group::all();
        $exams = Exam::all();
        return view('dashboard.final_exam', compact('levels', 'subjects', 'groups', 'exams'));
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\FinalExam  $finalExam
     * @return \Illuminate\Http\Response
     */
    public function show(FinalExam $finalExam)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\FinalExam  $finalExam
     * @return \Illuminate\Http\Response
     */
    public function edit($exam_id)
    {
        $levels = Level::all();
        $subjects = Subject::all();
        $groups = Group::all();
        $exams = Exam::all();
        $edit_exam = FinalExam::where('exam_id', $exam_id)->get()->first();
        return view('dashboard.final_exam', compact('levels', 'subjects', 'groups', 'exams', 'edit_exam'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\FinalExam  $finalExam
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        $id = $request->id;

        $final_exam = FinalExam::findOrFail($id);

        $final_exam->update([
            'exam_start' => $request->start,
            'exam_end' => $request->end,
            'status' => $request->status,
            'exam_period' => $request->period,
        ]);

        session()->flash('edit', 'تم تعديل الامتحان بنجاح');
        return redirect('/exam');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\FinalExam  $finalExam
     * @return \Illuminate\Http\Response
     */
    public function destroy(FinalExam $finalExam)
    {
        //
    }
}
