<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use App\Models\Answer;
use App\Models\Classes;
use App\Models\Collection;
use App\Models\Exam;
use App\Models\FinalExam;
use App\Models\Quiz;
use App\Models\Result;
use App\Models\Test;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class StudentController extends Controller
{
    public function studentindex()
    {
        $student_id = Session::get('user');
        $groups = Collection::where('student_id', $student_id)->get();
        $groups_id = [];
        foreach ($groups as $group) {
            $groups_id[] = $group->group_id;
        }

        $group_string = implode(',', $groups_id);

        $array = explode(',', $group_string);

        $classes = Classes::whereIn('group_id', $array)->get();

        return view('student.index', compact('classes'));
    }

    public function lesson($id)
    {
        $class = Classes::findOrFail($id);
        return view('student.lesson-video', compact('class'));
    }

    public function showexam()
    {
        $student_id = Session::get('user');
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


    public function exam($id)
    {
        $exam = Exam::findOrFail($id);

        $tests = Test::where('exam_id', $id)->get();

        $quizzes = [];
        foreach ($tests as $test) {
            $quizzes[] = Quiz::findOrFail($test->quiz_id);
        }

        return view('student.exams', compact('exam', 'quizzes'));
    }
}
