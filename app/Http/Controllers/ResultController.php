<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Collection;
use App\Models\Exam;
use App\Models\FinalExam;
use App\Models\Result;
use App\Models\Test;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class ResultController extends Controller
{
    public function enterExam($id)
    {
        $exam_id = $id;
        $student_id = Session::get('user');
        $quest = Test::where('exam_id', $exam_id)->get();
        $total_questions = $quest->count();
        $final_exam = FinalExam::where('exam_id', $exam_id)->get()->first();
        $join = Carbon::now();
        $exam_period = $final_exam->exam_period;
        $end  = Carbon::now()->addMinutes($exam_period);

        $student_exist = Result::where('student_id', $student_id)->where('exam_id', $exam_id)->get();

        if ($student_exist->count() == 0) {
            Result::create([
                'student_id' => $student_id,
                'exam_id' => $exam_id,
                'total' => $total_questions,
                'join' => $join,
                'end'   => $end,
            ]);
        }

        $exam = Exam::findOrFail($id);
        return view('student.exams', compact('exam', 'quest'));
    }

    public function examresult(Request $request)
    {






        $exam_id = $request->exam_id;
        $student_id = Session::get('user');

        $result = Result::where('student_id', $student_id)->where('exam_id', $exam_id)->get()->first();

        $now = Carbon::now();
        if (!empty($result->end)) {
            $end = Carbon::parse($result->end);
        } else {
            $end = '';
        }


        if ($end > $now || empty($end)) {
            $i = 0;
            $correct = 0;
            foreach ($request->quest as $quest) {
                $i++;
                if (!empty($request->input('answer' . $i))) {
                    $check = Answer::findOrFail($request->input('answer' . $i));
                    if ($check->status === 'correct') {
                        $correct++;
                    }
                }
            }

            $result = Result::where('student_id', $student_id)->where('exam_id', $exam_id)->get()->first();

            $result->update([
                'correct' => $correct,
                'end' => Carbon::now(),
            ]);
        }

        $groups = Collection::where('student_id', $student_id)->get();
        $groups_id = [];
        foreach ($groups as $group) {
            $groups_id[] = $group->group_id;
        }

        $group_string = implode(',', $groups_id);

        $array = explode(',', $group_string);

        $exams_filter = Exam::whereIn('group_id', $array)->get();

        $exams_id = [];

        foreach ($exams_filter as $exam_filter) {
            $exams_id[] = $exam_filter->id;
        }

        $exam_string = implode(',', $exams_id);

        $array_exam = explode(',', $exam_string);

        $exams = FinalExam::whereIn('exam_id', $array_exam)->where('status', 'active')->get();
        return view('student.exam-student', compact('exams'));
    }

    public function showresult(Request $request)
    {
        $student_id = $request->student_id;
        $exam_id = $request->exam_id;

        $groups = Collection::where('student_id', $student_id)->get();
        $groups_id = [];
        foreach ($groups as $group) {
            $groups_id[] = $group->group_id;
        }

        $group_string = implode(',', $groups_id);

        $array = explode(',', $group_string);

        $exams_filter = Exam::whereIn('group_id', $array)->get();

        $exams_id = [];

        foreach ($exams_filter as $exam_filter) {
            $exams_id[] = $exam_filter->id;
        }

        $exam_string = implode(',', $exams_id);

        $array_exam = explode(',', $exam_string);

        $exams = FinalExam::whereIn('exam_id', $array_exam)->where('status', 'active')->get();


        $result = Result::where('student_id', $student_id)->where('exam_id', $exam_id)->get()->first();

        $exam = Exam::findOrFail($exam_id);
        $exam_name = $exam->name;
        $getresult = " نتيجة امتحان " . $exam_name . ' هي ' . $result->total . '/' . $result->correct;

        session()->flash('result', $getresult);
        return view('student.exam-student', compact('exams'));
    }
}
