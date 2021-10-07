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

<div class="dashboard">
    <div class="exam-title" style="background-image: url(https://kreativdev.com/edus/assets/images/counter-bg-3.png);text-align:right">
                <h4>الامتحانات الخاصة بك</h4>
                <p>اضغط دخول الامتحان للتمكن من دخول الامتحان وحل الاسئلة .</p>
                </div>
                <div class="container">
                 <div class="row ">
                     <div class="col-lg-3">
                         <div class="lesson--card" style="    border-radius: 9px;
    margin-top: 35px;">
                <div class="card" style="    overflow: hidden;padding: 28px;text-align: center;font-size: 19px;border: none;background: #333;color: #fff;">
                         <i style="    font-size: 40px;" class="fas fa-video"></i>
                         <a style="color: #fff!important;
    font-size: 16px;
    font-weight: bold;" href="{{route('students.index')}}">المحاضرات</a>
                         </div></div></div>
                         
                         <div class="col-lg-3">
                         <div class="lesson--card" style="    border-radius: 9px;
    margin-top: 35px;">
                <div class="card" style="    overflow: hidden;padding: 28px;text-align: center;font-size: 19px;border: none;background: linear-gradient(to right, #fc5644, #ff6f3f, #ff863d, #ff9b3e, #feb045);color: #fff;">
                         <i style="    font-size: 40px;" class="fas fa-graduation-cap"></i>
                         <a style="color: #fff!important;
    font-size: 16px;
    font-weight: bold;" href="{{route('students.exams')}}">الامتحانات</a>
                         </div></div></div>
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
        <div class="container">

            <div class="row row-dashboard">

                @if (session()->has('result'))
                <div class="col-lg-12">
                <div class="alert alert-warning" role="alert">
            <strong>{{ session()->get('result') }}</strong>
        </div></div>
    @endif
@if (!empty($exams))

                @foreach ($exams as $exam)
                <div class="col-lg-3">
                <div class="lesson--card">
                <div class="card-lesson__details">
                <div class="card-title">
                <h4>{{$exam->exam->name}}</h4>
                <div>
                <p>


                تاريخ الانتهاء : {{$exam->exam_end}}
                </p>
                <p>
                مدة الامتحان : {{$exam->exam_period}} دقيقة
                </p>
                @php
                    $student_id = Session::get('user');
                    $result = \App\Models\Result::where('exam_id',$exam->id)->where('student_id',$student_id)->get()->first();
                @endphp

                </div></div>
                @php
                    $now = \Carbon\Carbon::now();
                @endphp

                
                @if ($result)
                @if ($result->end > $now)
                <a href="{{route('exam.enter',$exam->id)}}"><div class="btn__exam">دخول للامتحان</div></a>
                @else
                <form action="{{route('exam.show_result')}}" method="POST">
                    {{ csrf_field() }}
                    <input type="hidden" name="student_id" value="{{$student_id}}">
                    <input type="hidden" name="exam_id" value="{{$exam->id}}">
                    <button style="background: #333;" type="submit" class="btn__exam">اظهار النتيجة</button>
                </form>
                @endif
                @else
                <a href="{{route('exam.enter',$exam->id)}}"><div class="btn__exam">دخول للامتحان</div></a>
                @endif




                </div>
                </div>
                </div>
                @endforeach
                @else

                <h4 class="text-center text-danger">لا يوجد امتحانات</h4>

                @endif
                            </div>
        </div>
    </div>

            </body>
            </html>
