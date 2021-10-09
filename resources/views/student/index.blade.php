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
                </div>
                <div class="container">
                 <div class="row ">
                    <div class="col-lg-3">
                        <a style="color: #fff!important;font-size: 16px;font-weight: bold;" href="{{ route('bill') }}">
                         <div class="lesson--card" style="border-radius: 9px;margin-top: 35px;">
                            <div class="card" style="overflow: hidden;padding: 28px;text-align: center;font-size: 19px;border: none;background: #333;color: #fff;">
                                <img src="{{ asset('app-assets/images/svg/bill.SVG') }}" height="40px" style="color: #fff;">
                                دفع فاتورة
                             </div>
                         </div>
                        </a>
                     </div>

                     <div class="col-lg-3">
                         <div class="lesson--card" style="    border-radius: 9px;margin-top: 35px;">
                            <div class="card" style="    overflow: hidden;padding: 28px;text-align: center;font-size: 19px;border: none;background: linear-gradient(to right, #fc5644, #ff6f3f, #ff863d, #ff9b3e, #feb045);color: #fff;">
                             <i style="    font-size: 40px;" class="fas fa-video"></i>
                             <a style="color: #fff!important;font-size: 16px;font-weight: bold;" href="{{route('students.index')}}">المحاضرات</a>
                             </div></div></div>
                             
                             <div class="col-lg-3">
                             <div class="lesson--card" style="    border-radius: 9px;margin-top: 35px;">
                                <div class="card" style="    overflow: hidden;padding: 28px;text-align: center;font-size: 19px;border: none;background: #333;color: #fff;">
                             <i style="    font-size: 40px;" class="fas fa-graduation-cap"></i>
                             <a style="color: #fff!important;font-size: 16px;font-weight: bold;" href="{{route('students.exams')}}">الامتحانات</a>
                             </div>
                         </div>
                     </div>
                         <div class="col-lg-3">
                         <div class="lesson--card" style="    border-radius: 9px;
    margin-top: 35px;">
                <div class="card" style="    overflow: hidden;padding: 28px;text-align: center;font-size: 19px;border: none;background: #333;color: #fff;">
                         <i style="    font-size: 40px;" class="fas fas fa-book"></i>
                         <a style="color: #fff!important;
    font-size: 16px;
    font-weight: bold;" href="#">الواجبات</a>
                         </div></div></div>
                                                  <div class="col-lg-3">
                         <div class="lesson--card" style="    border-radius: 9px;
    margin-top: 35px;">
                <div class="card" style="    overflow: hidden;padding: 28px;text-align: center;font-size: 19px;border: none;background: #333;color: #fff;">
                         <i style="    font-size: 40px;" class="fas fas fa-question"></i>
                         <a style="color: #fff!important;
    font-size: 16px;
    font-weight: bold;" href="#">بنك الاسئلة</a>
                         </div></div></div>
                     </div></div>
                     <div class='container'>
            <div class="row row-dashboard">
                @if (!empty($classes))
                @foreach ($classes as $class)
                <div class="col-lg-3">
                <div class="lesson--card">
                <div class="card" style="height: 170px;overflow: hidden;">
                <img style="    height: 170px;" src="{{asset('uploads/images/classes')}}/{{$class->image}}"/>
                </div>
                <div class="card-lesson__details">
                <div class="card-title">
                <h4>{{$class->name}}</h4>
                <p>{{$class->description}}</p>
                </div>
                <a href="{{route('students.lesson',$class->id)}}"><div class="btn">دخول </div></a>
                </div>
                </div>
                </div>
                @endforeach
@else
                <h4 class="text-center text-danger">لا يوجد محاضرات</h4>
@endif


                            </div>
        </div>
    </div>
    
    <div class="footer" style="    padding: 10px!important;">
    <p style="text-align:center;font-weight:800;color:#fff">تم تصميم بواسطة منصة مصر التعليمية</p>    
    </div>

            </body>
            </html>
