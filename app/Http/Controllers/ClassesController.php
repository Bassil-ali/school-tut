<?php

namespace App\Http\Controllers;

use App\Models\Classes;
use App\Models\Group;
use App\Models\Level;
use App\Models\Subject;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClassesController extends Controller
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
        $classes = Classes::whenSearch(request()->search)->latest()->paginate(10);

        return view('dashboard.classes', compact('levels', 'subjects', 'groups', 'classes'));
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
        $videoName = '';

        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'level' => 'required',
            'subject' => 'required',
            'group' => 'required',
            'image' => 'required|mimes:png,jpg,jpeg',
            'note' =>  'mimes:pdf',
        ], [

            'name.required' => 'يرجي ادخال اسم المحاضرة',
            'level.required' => 'يرجي ادخال اسم الصف',
            'subject.required' => 'يرجي ادخال اسم المادة',
            'group.required' => 'يرجي ادخال اسم المجموعة',
            'image.required' => 'يرجي اختيار صورة المحاضرة',
            'image.mimes' => 'يرجي ادخال صيغة الصورة * png,jpg,jpeg',
            'note.mimes' => 'يرجي ادخال صيغة المذكرة * pdf',
        ]);

        if (empty($request->youtube) && empty($request->zoom) && empty($request->video)) {
            $this->validate($request, [
                'video' => 'required',
            ], [
                'video.required' => 'يرجي اختيار فيديو للمحاضرة او لينك يوتيوب او لينك زووم',
            ]);
        }

        if ($request->hasFile('video')) {
            // move video
            $videoName = time() . '.' . $request->video->getClientOriginalName();
            $request->video->move(public_path('uploads/videos/classes'), $videoName);
        }

        if ($request->hasFile('image')) {
            // move video
            $imageName = time() . '.' . $request->image->getClientOriginalName();
            $request->image->move(public_path('uploads/images/classes'), $imageName);
        }

        if ($request->hasFile('note')) {
            // move video
            $noteName = time() . '.' . $request->note->getClientOriginalName();
            $request->note->move(public_path('uploads/notes/classes'), $noteName);
        } else {
            $noteName = '';
        }

        Classes::create([
            'name' => $request->name,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
            'group_id' => $request->group,
            'description' => $request->description,
            'video' => $videoName,
            'image' => $imageName,
            'note' => $noteName,
            'youtube' => $request->youtube,
            'zoom' => $request->zoom,
        ]);

        session()->flash('add', 'تم اضافة المحاضرة بنجاح ');
        return redirect('/classes');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function show(Classes $classes)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function edit(Classes $classes)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;
        $videoName = '';
        $this->validate($request, [
            'name' => 'required|max:255',
            'level' => 'required',
            'subject' => 'required',
            'group' => 'required',
            'image' => 'mimes:png,jpg,jpeg',
            'note' =>  'mimes:pdf',
            'video' =>  'mimes:mp4',
        ], [
            'name.required' => 'يرجي ادخال اسم المحاضرة',
            'level.required' => 'يرجي ادخال اسم الصف',
            'subject.required' => 'يرجي ادخال اسم المادة',
            'group.required' => 'يرجي ادخال اسم المجموعة',
            'image.mimes' => 'يرجي ادخال صيغة الصورة * png,jpg,jpeg',
            'note.mimes' => 'يرجي ادخال صيغة المذكرة * pdf',
            'video.mimes' => 'يرجي ادخال صيغة الفيديو * mp4',
        ]);


        $class = Classes::findOrFail($id);

        if (empty($request->youtube) && empty($request->zoom) && empty($request->video) && empty($class->video)) {
            $this->validate($request, [
                'video' => 'required',
            ], [
                'video.required' => 'يرجي اختيار فيديو للمحاضرة او لينك يوتيوب او لينك زووم',
            ]);
        }


        if ($request->hasFile('video')) {
            // move video
            $videoName = time() . '.' . $request->video->getClientOriginalName();
            $request->video->move(public_path('uploads/videos/classes'), $videoName);

            if (!empty($class->video)) {
                $video_path = public_path('uploads/videos/classes/') . $class->video;

                if (file_exists($video_path)) {
                    unlink($video_path);
                }
            }
        } else {
            $videoName = $class->video;
        }

        if ($request->hasFile('image')) {

            // move video
            $imageName = time() . '.' . $request->image->getClientOriginalName();
            $request->image->move(public_path('uploads/images/classes'), $imageName);

            if (!empty($class->image)) {
                $image_path = public_path('uploads/images/classes/') . $class->image;

                if (file_exists($image_path)) {
                    unlink($image_path);
                }
            }
        } else {
            $imageName = $class->image;
        }

        if ($request->hasFile('note')) {

            // move video
            $noteName = time() . '.' . $request->note->getClientOriginalName();
            $request->note->move(public_path('uploads/notes/classes'), $noteName);

            if (!empty($class->note)) {
                $note_path = public_path('uploads/notes/classes/') . $class->note;

                if (file_exists($note_path)) {
                    unlink($note_path);
                }
            }
        } else {
            $noteName = $class->note;
        }


        $class->update([
            'name' => $request->name,
            'level_id' => $request->level,
            'subject_id' => $request->subject,
            'group_id' => $request->group,
            'description' => $request->description,
            'video' => $videoName,
            'image' => $imageName,
            'note' => $noteName,
            'youtube' => $request->youtube,
            'zoom' => $request->zoom,

        ]);


        session()->flash('edit', 'تم تعديل المحاضرة بنجاج');
        return redirect('/classes');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Classes  $classes
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id = $request->id;

        $class = Classes::findOrFail($id);

        if (!empty($class->video)) {
            $video_path = public_path('uploads/videos/classes/') . $class->video;

            if (file_exists($video_path)) {
                unlink($video_path);
            }
        }

        if (!empty($class->image)) {
            $image_path = public_path('uploads/images/classes/') . $class->image;

            if (file_exists($image_path)) {
                unlink($image_path);
            }
        }

        if (!empty($class->note)) {
            $note_path = public_path('uploads/notes/classes/') . $class->note;

            if (file_exists($note_path)) {
                unlink($note_path);
            }
        }

        $class->delete();

        session()->flash('delete', 'تم حذف المحاضرة بنجاح');
        return redirect('/classes');
    }


    public function getsubject($id)
    {
        $subjects = DB::table("subjects")->where("level_id", $id)->pluck("subject_name", "id");
        return json_encode($subjects);
    }

    public function getgroup($id)
    {
        $array_id = explode(',', $id);
        $groups = DB::table("groups")->whereIn("subject_id", $array_id)->pluck("group_name", "id");
        return json_encode($groups);
    }
}
