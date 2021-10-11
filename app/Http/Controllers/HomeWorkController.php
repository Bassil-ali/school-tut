<?php

namespace App\Http\Controllers;

use App\Models\HomeWork;
use App\Models\Exam;
use App\Models\Group;
use App\Models\Subject;
use App\Models\Level;
use App\Models\DeliveryWork;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class HomeWorkController extends Controller
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
        $home_work = HomeWork::whenSearch(request()->search)->latest()->paginate(10);

        return view('dashboard.home_work.index', compact('levels', 'subjects', 'groups', 'exams','home_work'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.home_work.create');
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
            'work_file_noty' => 'required',
            'time' => 'required',
            // 'exam_time' => 'required',
        ], [

            'name.required' => 'يرجي ادخال اسم الامتحان',
            // 'exam_time.required' => 'يرجى ادخال فترة الامتحان',
        ]);


        $request_data               = $request->except('work_file');
        $request_data['work_file']  = $request->file('work_file')->store('work_file','public_uploads');

        HomeWork::create($request_data);

        session()->flash('success', 'تم الاضافه بنجاح');

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\HomeWork  $homeWork
     * @return \Illuminate\Http\Response
     */
    public function show(HomeWork $homeWork)
    {
        $homeWork = DeliveryWork::where('home_work_id',$homeWork->id)->get();
        // return $homeWork;
        return view('dashboard.home_work.show', compact('homeWork'));
    }

    public function status(Request $request)
    {
        $id = DeliveryWork::find($request->id);

        $id->update([
            'status' => $request->status,
        ]);

        return redirect()->back();

    }

    public function home_work_delvery($id)
    {
        $id = DeliveryWork::find($id);

        $id->delete();

        return redirect()->back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\HomeWork  $homeWork
     * @return \Illuminate\Http\Response
     */
    public function edit(HomeWork $homeWork)
    {
        $levels    = Level::all();
        $subjects  = Subject::all();
        $groups    = Group::all();
        $exams     = Exam::all();

        return view('dashboard.home_work.edit', compact('homeWork','levels', 'subjects', 'groups', 'exams'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\HomeWork  $homeWork
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, HomeWork $homeWork)
    {
        // return $request->all();

        $validatedData = $request->validate([
            'name' => 'required|max:255',
            // 'level' => 'required',
            'work_file_noty' => 'required',
            'time' => 'required',
            // 'subject' => 'required',
            // 'group' => 'required',
            // 'exam_time' => 'required',
        ], [

            'name.required' => 'يرجي ادخال اسم الامتحان',
            // 'level.required' => 'يرجي ادخال اسم الصف',
            // 'subject.required' => 'يرجي ادخال اسم المادة',
            // 'group.required' => 'يرجي ادخال اسم المجموعة',
            // 'exam_time.required' => 'يرجى ادخال فترة الامتحان',
        ]);


        $request_data               = $request->except('work_file','level','subject','group');

        if ($request->work_file) {
            
            Storage::disk('public_uploads')->delete($homeWork->file_path);

            $request_data['work_file']  = $request->file('work_file')->store('work_file','public_uploads');
        }

        $homeWork->update($request_data);

        session()->flash('success', 'تم الاضافه بنجاح');

        return redirect()->route('home_work.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\HomeWork  $homeWork
     * @return \Illuminate\Http\Response
     */
    public function destroy(HomeWork $homeWork)
    {
        Storage::disk('public_uploads')->delete($homeWork->file_path);

        $homeWork->delete();

        return redirect()->back();
    }
}
