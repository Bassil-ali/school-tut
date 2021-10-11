<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Level;
use App\Models\Quiz;
use App\Models\Subject;
use Illuminate\Http\Request;

class QuizController extends Controller
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
        // $quizzes = Quiz::all();
        $quizzes = Quiz::whenSearch(request()->search)->latest()->paginate(10);
        
        return view('dashboard.bank-quiz', compact('levels', 'subjects', 'quizzes'));
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
        $imageName = '';
        $quest = '';

        $validatedData = $request->validate([
            'quest' => 'max:255',
            'level' => 'required',
            'subject' => 'required',
            'image' => 'mimes:png,jpg,jpeg',
            'answer1' => 'required',
        ], [
            'level.required' => 'يرجي ادخال اسم الصف',
            'subject.required' => 'يرجي ادخال اسم المادة',
            'image.mimes' => 'يرجي ادخال صيغة الصورة * png,jpg,jpeg',
            'answer1.required' => 'يرجي ادخال اجابة السؤال',
        ]);

        if (empty($request->check1) && empty($request->check2) && empty($request->check3) && empty($request->check4)) {
            $validatedData = $request->validate([
                'check1' => 'required',
            ], [
                'check1.required' => 'يرجي اختيار اجابة واحده صح علي الاقل',
            ]);
        }

        if (empty($request->quest) && empty($request->image)) {
            $validatedData = $request->validate([
                'quest' => 'required',
            ], [
                'quest.required' => 'يرجي ادخال السؤال او صورة السؤال',
            ]);
        }

        if ($request->has('quest')) {
            $quest = $request->quest;
        }

        if ($request->hasFile('image')) {
            // move video
            $imageName = time() . '.' . $request->image->getClientOriginalName();
            $request->image->move(public_path('uploads/images/quiz'), $imageName);
        }

        Quiz::create([
            'quest' => $quest,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
            'image' => $imageName,
        ]);

        $newstudent = Quiz::latest()->first();

        if (empty($request->check1)) {
            $check1 = 'wrong';
        } else {
            $check1 = 'correct';
        }
        if (empty($request->check2)) {
            $check2 = 'wrong';
        } else {
            $check2 = 'correct';
        }
        if (empty($request->check3)) {
            $check3 = 'wrong';
        } else {
            $check3 = 'correct';
        }
        if (empty($request->check4)) {
            $check4 = 'wrong';
        } else {
            $check4 = 'correct';
        }

        $data = [
            ['quiz_id' => $newstudent->id, 'answer' => $request->answer1, 'status' => $check1],
            ['quiz_id' => $newstudent->id, 'answer' => $request->answer2, 'status' => $check2],
            ['quiz_id' => $newstudent->id, 'answer' => $request->answer3, 'status' => $check3],
            ['quiz_id' => $newstudent->id, 'answer' => $request->answer4, 'status' => $check4],
        ];

        Answer::insert($data);

        session()->flash('add', 'تم اضافة السؤال بنجاح ');
        return redirect('/quiz');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function show(Quiz $quiz)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $quiz = Quiz::findOrFail($id);
        $levels = Level::all();
        $subjects = Subject::all();
        $quizzes = Quiz::all();
        return view('dashboard.edit_bank_quiz', compact('levels', 'subjects', 'quizzes', 'quiz'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;

        $imageName = '';
        $quest = '';



        if ($request->has('quest')) {
            $quest = $request->quest;
        }

        $this->validate($request, [
            'quest' => 'max:255',
            'level' => 'required',
            'subject' => 'required',
            'image' => 'mimes:png,jpg,jpeg',
            'answer1' => 'required',
        ], [
            'level.required' => 'يرجي ادخال اسم الصف',
            'subject.required' => 'يرجي ادخال اسم المادة',
            'image.mimes' => 'يرجي ادخال صيغة الصورة * png,jpg,jpeg',
            'answer1.required' => 'يرجي ادخال اجابة السؤال',
        ]);

        if (empty($request->check1) && empty($request->check2) && empty($request->check3) && empty($request->check4)) {
            $validatedData = $request->validate([
                'check1' => 'required',
            ], [
                'check1.required' => 'يرجي اختيار اجابة واحده صح علي الاقل',
            ]);
        }

        $quiz = Quiz::findOrFail($id);

        if (empty($request->quest) && empty($request->image) && empty($quiz->image)) {
            $validatedData = $request->validate([
                'quest' => 'required',
            ], [
                'quest.required' => 'يرجي ادخال السؤال او صورة السؤال',
            ]);
        }


        if ($request->hasFile('image')) {

            // move video
            $imageName = time() . '.' . $request->image->getClientOriginalName();
            $request->image->move(public_path('uploads/images/quiz'), $imageName);
            if (!empty($quiz->image)) {
                $image_path = public_path('uploads/images/quiz/') . $quiz->image;

                if (file_exists($image_path)) {
                    unlink($image_path);
                }
            }
        } else {
            $imageName = $quiz->image;
        }



        $quiz->update([
            'quest' => $quest,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
            'image' => $imageName,
        ]);



        if (empty($request->check1)) {
            $check1 = 'wrong';
        } else {
            $check1 = 'correct';
        }
        if (empty($request->check2)) {
            $check2 = 'wrong';
        } else {
            $check2 = 'correct';
        }
        if (empty($request->check3)) {
            $check3 = 'wrong';
        } else {
            $check3 = 'correct';
        }
        if (empty($request->check4)) {
            $check4 = 'wrong';
        } else {
            $check4 = 'correct';
        }

        $answers = Answer::where('quiz_id', $id);

        if ($answers) {
            $answers->delete();
        }

        $data = [
            ['quiz_id' => $quiz->id, 'answer' => $request->answer1, 'status' => $check1],
            ['quiz_id' => $quiz->id, 'answer' => $request->answer2, 'status' => $check2],
            ['quiz_id' => $quiz->id, 'answer' => $request->answer3, 'status' => $check3],
            ['quiz_id' => $quiz->id, 'answer' => $request->answer4, 'status' => $check4],
        ];

        Answer::insert($data);

        session()->flash('edit', 'تم تعديل السؤال بنجاج');
        return redirect('/quiz');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Quiz  $quiz
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;

        $quiz = Quiz::findOrFail($id);
        if (!empty($quiz->image)) {
            $image_path = public_path('uploads/images/quiz/') . $quiz->image;

            if (file_exists($image_path)) {
                unlink($image_path);
            }
        }
        $quiz->delete();

        session()->flash('delete', 'تم حذف السؤال بنجاح');
        return redirect('/quiz');
    }
}
