<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Exam;
use App\Models\FinalExam;
use App\Models\Group;
use App\Models\Level;
use App\Models\Quiz;
use App\Models\Subject;
use App\Models\Test;
use Illuminate\Http\Request;

class ExamController extends Controller
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
        return view('dashboard.exams', compact('levels', 'subjects', 'groups', 'exams'));
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
            'name' => 'required|max:255',
            'level' => 'required',
            'subject' => 'required',
            'group' => 'required',
            // 'exam_time' => 'required',
        ], [

            'name.required' => 'يرجي ادخال اسم الامتحان',
            'level.required' => 'يرجي ادخال اسم الصف',
            'subject.required' => 'يرجي ادخال اسم المادة',
            'group.required' => 'يرجي ادخال اسم المجموعة',
            // 'exam_time.required' => 'يرجى ادخال فترة الامتحان',
        ]);

        Exam::create([
            'name' => $request->name,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
            'group_id' => $request->group,
            // 'exam_time' => $request->exam_time,
        ]);

        $newexam = Exam::latest()->first();


        FinalExam::create([
            'exam_id' => $newexam->id,
            'status'  => 'inactive',
        ]);

        session()->flash('add', 'تم اضافة الامتحان بنجاح ');
        return redirect('/exam');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function show(Exam $exam)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function edit(Exam $exam)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;

        $this->validate($request, [

            'name' => 'required|max:255',
            'level' => 'required',
            'subject' => 'required',
            'group' => 'required',
        ], [

            'name.required' => 'يرجي ادخال اسم الامتحان',
            'level.required' => 'يرجي ادخال اسم الصف',
            'subject.required' => 'يرجي ادخال اسم المادة',
            'group.required' => 'يرجي ادخال اسم المجموعة',
        ]);

        $exam = Exam::findOrFail($id);
        $exam->update([
            'name' => $request->name,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
            'group_id' => $request->group,
        ]);

        session()->flash('edit', 'تم تعديل الامتحان بنجاح');
        return redirect('/exam');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Exam  $exam
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        Exam::findOrFail($id)->delete();
        session()->flash('delete', 'تم حذف الامتحان بنجاح');
        return redirect('/exam');
    }


    public function addquiz($exam_id, $level_id, $subject_id)
    {
        $exam = Exam::findOrFail($exam_id);
        $quizzes = Quiz::where('level_id', $level_id)->where('subject_id', $subject_id)->get();
        $tests = Test::where('exam_id', $exam_id)->get();
        return view('dashboard.add-quiz', compact('exam', 'quizzes', 'tests'));
    }


    public function storequiz(Request $request)
    {
        $exam_id = $request->exam_id;

        Test::where('exam_id', $exam_id)->delete();

        if ($request->has('quiz_id')) {
            foreach ($request->quiz_id as $quiz) {
                Test::create([
                    'exam_id' => $request->exam_id,
                    'quiz_id' => $quiz,
                ]);
            }
        }


        session()->flash('add', 'تم اضافة الاسئلة الي الامتحان بنجاح');
        return redirect('/exam');
    }


    public function storequizexam(Request $request)
    {
        $quizzes = $request->invoice;

        foreach ($quizzes as $quiz) {
            if (!empty($quiz['answer1']) && !empty($quiz['answer2']) && !empty($quiz['answer3']) && !empty($quiz['answer4']) && !empty($quiz['quiz'])) {
                if (empty($quiz['check1'])) {
                    $check1 = 'wrong';
                } else {
                    $check1 = 'correct';
                }

                if (empty($quiz['check2'])) {
                    $check2 = 'wrong';
                } else {
                    $check2 = 'correct';
                }

                if (empty($quiz['check3'])) {
                    $check3 = 'wrong';
                } else {
                    $check3 = 'correct';
                }

                if (empty($quiz['check4'])) {
                    $check4 = 'wrong';
                } else {
                    $check4 = 'correct';
                }

                $exam_id = $request->exam_id;

                $exam = Exam::findOrFail($exam_id);

                $level_id = $exam->level_id;
                $subject_id = $exam->subject_id;
                $quest = $quiz['quiz'];

                if (!empty($image)) {
                    // move video
                    $imageName = time() . '.' . $image->getClientOriginalName();
                    $request->image->move(public_path('uploads/images/quiz'), $imageName);
                }


                Quiz::create([
                    'level_id' => $level_id,
                    'subject_id' => $subject_id,
                    'quest' => $quest,
                ]);

                $newquiz = Quiz::orderBy('id', 'DESC')->first();

                $data = [
                    ['quiz_id' => $newquiz->id, 'answer' => $quiz['answer1'], 'status' => $check1],
                    ['quiz_id' => $newquiz->id, 'answer' => $quiz['answer2'], 'status' => $check2],
                    ['quiz_id' => $newquiz->id, 'answer' => $quiz['answer3'], 'status' => $check3],
                    ['quiz_id' => $newquiz->id, 'answer' => $quiz['answer4'], 'status' => $check4],
                ];

                Answer::insert($data);

                Test::create([
                    'exam_id' => $exam_id,
                    'quiz_id' => $newquiz->id
                ]);
            }
        }
        session()->flash('add', 'تم اضافة الاسئلة الي الامتحان بنجاح');
        return redirect('/exam');
    }
}
