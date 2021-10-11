<?php

namespace App\Http\Controllers;

use App\Models\Collection;
use App\Models\Group;
use App\Models\Level;
use App\Models\Result;
use App\Models\Student;
use App\Models\Subject;
use App\Models\subject_student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        $students = Student::whenSearch(request()->search)->latest()->paginate(10);

        return view('dashboard.students', compact('students'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $levels = Level::all();
        $groups = Group::all();
        return view('dashboard.add-students', compact('levels', 'groups'));
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
            'city' => 'required',
            'phone' => 'required',
            'password' => 'required',
            'gender' => 'required',
            'level' => 'required',
        ], [

            'name.required' => 'يرجي ادخال اسم الطالب',
            'city.required' => 'يرجي ادخال اسم المحافظة',
            'phone.required' => 'يرجي ادخال رقم الموبايل',
            'password.required' => 'يرجي ادخال كلمة المرور',
            'gender.required' => 'يرجي اختيار النوع',
            'level.required' => 'يرجي اختيار اسم الصف',
        ]);

        Student::create([
            'name' => $request->name,
            'city' => $request->city,
            'phone' => $request->phone,
            'password' => $request->password,
            'gender' => $request->gender,
            'level_id' => $request->level,
        ]);

        $newstudent = Student::latest()->first();

        if ($request->has('group')) {
            foreach ($request->group as $group) {
                Collection::create([
                    'student_id' => $newstudent->id,
                    'group_id' => $group,
                ]);
            }
        }

        if ($request->has('subject')) {
            foreach ($request->subject as $subject) {
                subject_student::create([
                    'student_id' => $newstudent->id,
                    'subject_id' => $subject,
                ]);
            }
        }



        session()->flash('add', 'تم اضافة الطالب بنجاح ');
        return redirect('/admin_students');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function show(Student $student)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $levels = Level::all();
        $student = Student::findOrFail($id);
        $groups = Group::all();
        $subjects = Subject::all();
        $studentgroup = Student::findOrFail($id);
        return view('dashboard.edit_students', compact('student', 'levels', 'groups', 'subjects', 'studentgroup'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;

        $this->validate($request, [

            'name' => 'required|max:255',
            'city' => 'required',
            'phone' => 'required',
            'password' => 'required',
            'gender' => 'required',
            'level' => 'required',
        ], [

            'name.required' => 'يرجي ادخال اسم الطالب',
            'city.required' => 'يرجي ادخال اسم المحافظة',
            'phone.required' => 'يرجي ادخال رقم الموبايل',
            'password.required' => 'يرجي ادخال كلمة المرور',
            'gender.required' => 'يرجي اختيار النوع',
            'level.required' => 'يرجي اختيار اسم الصف',
        ]);

        $student = Student::findOrFail($id);
        $student->update([
            'name' => $request->name,
            'city' => $request->city,
            'phone' => $request->phone,
            'password' => $request->password,
            'gender' => $request->gender,
            'level_id' => $request->level,
        ]);

        if ($request->has('group')) {
            Collection::where('student_id', $id)->delete();
            foreach ($request->group as $group) {
                Collection::create([
                    'student_id' => $id,
                    'group_id' => $group,
                ]);
            }
        }

        if ($request->has('subject')) {
            subject_student::where('student_id', $id)->delete();
            foreach ($request->subject as $subject) {
                subject_student::create([
                    'student_id' => $id,
                    'subject_id' => $subject,
                ]);
            }
        }


        session()->flash('edit', 'تم تعديل الطالب بنجاح');
        return redirect('/admin_students');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;
        Student::findOrFail($id)->delete();
        session()->flash('delete', 'تم حذف الطالب بنجاح');
        return redirect('/admin_students');
    }

    public function getgroup($id)
    {
        $groups = DB::table("groups")->where("level_id", $id)->pluck("group_name", "id");
        return json_encode($groups);
    }

    public function report($id)
    {
        $student = Student::findOrFail($id);
        $results = Result::where('student_id', $id)->get();
        return view('dashboard.report-students', compact('student', 'results'));
    }
}
