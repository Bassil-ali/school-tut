<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" >
        <meta name="keywords" >

        <link rel="stylesheet" href="{{asset('website/css/bootstrap.css')}}">

  <!-- Fonts and Icons -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >

  <!-- CSS Files -->
  <link rel="stylesheet" href="{{asset('website/css/style.css')}}" type="text/css">
  <style>
     .dashboard{background:none!important;} 
  </style>
    </head>
    <body>
            @include('layouts.nav-student');

@php
        $student_id = Session::get('user');
        $groups = App\Models\Collection::where('student_id', $student_id)->get();
        $password = App\Models\Student::where('id', $student_id)->first();
        $groups_id = [];
        foreach ($groups as $group) {
            $groups_id[] = $group->group_id;
        }

        $group_string = implode(',', $groups_id);

        $array = explode(',', $group_string);

    $classes = App\Models\Classes::whereIn('group_id', $array)->get();
@endphp
<div class="dashboard">
     
    <div class="exam-title" style="background-image: url(https://kreativdev.com/edus/assets/images/counter-bg-3.png);text-align:right">
    <h4>المحاضرات والدروس الخاصة بك</h4>
    <p>الدروس الجديدة يتم إضافتها بشكل دوري على هذه الصفحة ، تابعنا لاستكمال باقي دروس المنهج</p>
    <p>البينات الخاصه  تسجيل الدخول  : كلمة المرور : {{ Session::get('user') }} | رقم الطالب {{ $password->password }} </p>
    </div>
    <div class="container">
        <h4 style="margin-top: 100px">الواجبات</h4>
        <table class="table table-bordered" style="color:black;">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">الحاله</th>
              <th scope="col">ملحوظه</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($studant_work as $index=>$data)

            <tr>
              <th>{{ $index+1 }}</th>
              <th>{{ $data->status == '1' ? 'تم التسليم' : 'لم يتم التسليم'}}</th>
              <th>{{ $data->delivery_file_noty }}</th>
            </tr>
                
            @endforeach
          </tbody>
        </table>

        <form action="{{ route('delivery_work.store') }}" method="POST" enctype="multipart/form-data">
            @csrf

            <div class="col-xl-12 col-md-6 col-12 mb-1">
                <div class="form-group">
                    <label>ملحوظة</label>
                    <input type="text" name="delivery_file_noty" class="form-control bg-transparent" placeholder="ملحوظة">
                </div>
            </div>

            <div class="col-xl-12 col-md-6 col-12 mb-1">
                <label>إرفاق ملف الواجب</label>
                <input class="form-control bg-transparent" required type="file" name="delivery_file" placeholder="Default input">
            </div>

            <div class="col-xl-12 col-md-6 col-12 mb-1">
                <label>تحديد المجموعة</label>
                <select name="home_work_id" required class="form-control">
                    @foreach ($home_work as $group)
                        <option style="color: black" value="{{$group->id}}">{{$group->name}}</option>
                        {{-- @foreach (App\Models\Classes::where('id',$group->class_id) as $data)
                        @endforeach --}}
                    @endforeach
                </select>
            </div>

            <div class="col-xl-12 col-md-6 col-12 my-3">
                <button class="video-title--num">تم</button>
            </div>

        </form>
    </div>


    
    <div class="footer" style="    padding: 10px!important;">
    <p style="text-align:center;font-weight:800;color:#fff">تم تصميم بواسطة منصة مصر التعليمية</p>    
    </div>

</body>
</html>
