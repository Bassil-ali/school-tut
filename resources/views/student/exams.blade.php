@php
        $student_id = Session::get('user');
        $result = App\Models\Result::where('student_id',$student_id)->where('exam_id',$exam->id)->get()->first();
        $now = \Carbon\Carbon::now();
        $end = \Carbon\Carbon::parse($result->end);
        $final = $now->diff($end)->format('%I');
        $time = $final + 1;
        $finalseconds = $time * 60 ;

@endphp
@if ($now > $end)
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
        <div class="container" style="    max-width: 1400px;">
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

    <div>
        <input type="radio" name="answer{{$x}}" value="{{$answer->id}}"/>
        <label>{{$answer->answer}}</label>
    </div>
    @endforeach
    @endforeach
    <button type="submit" class="btn__exam">انهاء الامتحان</button>
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

    <script>
const FULL_DASH_ARRAY = 283;
const WARNING_THRESHOLD = 10;
const ALERT_THRESHOLD = 5;

const COLOR_CODES = {
  info: {
    color: "green"
  },
  warning: {
    color: "orange",
    threshold: WARNING_THRESHOLD
  },
  alert: {
    color: "red",
    threshold: ALERT_THRESHOLD
  }
};


const TIME_LIMIT = {{$finalseconds}};
let timePassed = 0;
let timeLeft = TIME_LIMIT;
let timerInterval = null;
let remainingPathColor = COLOR_CODES.info.color;

document.getElementById("app").innerHTML = `
<h4>مدة الامتحان</h4>
<div class="base-timer">
  <svg class="base-timer__svg" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
    <g class="base-timer__circle">
      <circle class="base-timer__path-elapsed" cx="50" cy="50" r="45"></circle>
      <path
        id="base-timer-path-remaining"
        stroke-dasharray="283"
        class="base-timer__path-remaining ${remainingPathColor}"
        d="
          M 50, 50
          m -45, 0
          a 45,45 0 1,0 90,0
          a 45,45 0 1,0 -90,0
        "
      ></path>
    </g>
  </svg>
  <span id="base-timer-label" class="base-timer__label">${formatTime(
    timeLeft
  )}</span>
</div>
<br>
`;

startTimer();

function onTimesUp() {
  clearInterval(timerInterval);
}

function startTimer() {
  timerInterval = setInterval(() => {
    timePassed = timePassed += 1;
    timeLeft = TIME_LIMIT - timePassed;
    document.getElementById("base-timer-label").innerHTML = formatTime(
      timeLeft
    );
    setCircleDasharray();
    setRemainingPathColor(timeLeft);

    if (timeLeft === 0) {
      onTimesUp();
    }
  }, 1000);
}

function formatTime(time) {
  const minutes = Math.floor(time / 60);
  let seconds = time % 60;

  if (seconds < 10) {
    seconds = `0${seconds}`;
  }

  return `${minutes}:${seconds}`;
}

function setRemainingPathColor(timeLeft) {
  const { alert, warning, info } = COLOR_CODES;
  if (timeLeft <= alert.threshold) {
    document
      .getElementById("base-timer-path-remaining")
      .classList.remove(warning.color);
    document
      .getElementById("base-timer-path-remaining")
      .classList.add(alert.color);
  } else if (timeLeft <= warning.threshold) {
    document
      .getElementById("base-timer-path-remaining")
      .classList.remove(info.color);
    document
      .getElementById("base-timer-path-remaining")
      .classList.add(warning.color);
  }
}

function calculateTimeFraction() {
  const rawTimeFraction = timeLeft / TIME_LIMIT;
  return rawTimeFraction - (1 / TIME_LIMIT) * (1 - rawTimeFraction);
}

function setCircleDasharray() {
  const circleDasharray = `${(
    calculateTimeFraction() * FULL_DASH_ARRAY
  ).toFixed(0)} 283`;
  document
    .getElementById("base-timer-path-remaining")
    .setAttribute("stroke-dasharray", circleDasharray);
}
    </script>

<script type="text/javascript">
    window.onload=function(){
    window.setTimeout(document.examresult.submit.bind(document.examresult), {{$finalseconds}} * 1000 );
    };
</script>
            </body>
            </html>

@endif
