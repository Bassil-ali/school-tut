@php
    $student_id = Session::get('user');
    $result = App\Models\Result::where('student_id',$student_id)->where('exam_id',$exam->id)->get()->first();
    $now = \Carbon\Carbon::now();
    $end = \Carbon\Carbon::parse($result->end);
    $final = $now->diff($end)->format('%I');
    $time = $final + 1;
    $finalseconds = $time * 60 ;

@endphp
@if ($now < $end)
@php
    header('Location: /students/exams');
    exit;
@endphp
@else

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
</head>
<body>

    @include('layouts.nav-student');

<div class="dashboard">
    <div class="exam-title">
        <h4>{{$exam->name}}</h4>
    </div>

    <div class="container" style="max-width: 1400px;">
        <div class="row row-dashboard">
            <div class="col-lg-8">
                <div class="exam-quiz">
                <li>
                    <form id="examresult" name="examresult" action="{{url('exam_result')}}" method="POST">
                        {{ csrf_field() }}

                        <input type="hidden" value="{{$exam->id}}" name="exam_id">
                            <p>اختر الاجابة الصحيحة</p>
                        @php
                            $x = 0;
                        @endphp
                        @foreach ($quest as $q)
                        @php $x++; @endphp
                            <input type="hidden" name="quest[]" value="{{$q->id}}">
                            <br>
                        @if (!empty($q->quiz->quest))
                            <h4 style="font-size: 25px;color: #666684">{{$q->quiz->quest}}</h4>
                        @elseif (!empty($q->quiz->image))
                        <div class="img-quiz">
                            <img src="{{asset('uploads/images/quiz')}}/{{$q->quiz->image}}">
                        </div>
                        @endif

                        @php
                            $answers = App\Models\Answer::where('quiz_id',$q->quiz->id)->get();
                        @endphp
                        <br>
                            @foreach ($answers as $answer)

                        	    @if ($answer->status == 'correct')
                        		    	
                        	    <div>
                        	        <input type="radio" {{ $answer->status == 'correct' ? 'checked' : '' }} name="answer{{$x}}" value="{{$answer->id}}"/>
                        	        <label style="color: {{ $answer->status == 'correct' ? '#28a745' : '' }}; 
                                        font-weight: {{ $answer->status == 'correct' ? '' : 'bold' }};">{{$answer->answer}}</label>
                        	    </div>
                        	    @endif

                            @endforeach
                        @endforeach

                        <a class="btn__exam" href="{{ route('students.exams') }}">الرجوع</a>

                    </form>
                </li>
                <br>
            </div>
        </div>
        <div class="col-lg-4">
            <div id="app"></div>
        </div>
    </div>
</div>

</div>
</body>
</html>

@endif
