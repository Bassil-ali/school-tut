<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" >
        <meta name="keywords" >
<style>
    .video-js {
    margin: auto;
}
</style>
            <style>
                @media print { body, div, p { display: none } })
            </style>
        <link rel="stylesheet" href="{{asset('website/css/bootstrap.css')}}">

  <!-- Fonts and Icons -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >

  <!-- CSS Files -->
  <link rel="stylesheet" href="{{asset('website/css/style.css')}}" type="text/css">


  <!-- If you'd like to support IE8 (for Video.js versions prior to v7) -->
  <!-- <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js"></script> -->
            </head>
            <body>

        <div class="lesson-video" style="padding-top:5rem">
        <div class="embed-container">
        <div class="container">
            <a href="{{route('students.index')}}">
        <div class="btn-submit--exam">الرجوع للمحاضرات</div></a>
        <div class="video-title">
        <h4>{{$class->name}}</h4>
        </div>
        <div class="lesson-box">
        <div class="video-title--num">
           فيديو الشرح
        </div>
        @if (!empty($class->video))


        <div class="col-lg-12">
        <div id="video_player_area" class="text-center p-3" style="margin: auto;">
             <link rel="stylesheet" href="https://drissi-khaled.com/darebni/assets/global/plyr/plyr.css">
                <video poster="{{asset('uploads/images/classes')}}/{{$class->image}}" id="player" playsinline controls>
                        <source src="{{asset('uploads/videos/classes')}}/{{$class->video}}" type="video/mp4">
                </video>

                <script src="https://drissi-khaled.com/darebni/assets/global/plyr/plyr.js"></script>
                <script>const player = new Plyr('#player');</script>


        </div></div>
        @elseif (!empty($class->youtube))
        <div class="col-lg-12">
            <link rel="stylesheet" href="https://drissi-khaled.com/darebni/assets/global/plyr/plyr.css">

                <div class="plyr__video-embed" id="player">
                    <iframe height="500" src="{{$class->youtube}}?origin=https://plyr.io&amp;iv_load_policy=3&amp;modestbranding=1&amp;playsinline=1&amp;showinfo=0&amp;rel=0&amp;enablejsapi=1" allowfullscreen allowtransparency allow="autoplay"></iframe>
                </div>

                <script src="https://drissi-khaled.com/darebni/assets/global/plyr/plyr.js"></script>
                <script>const player = new Plyr('#player');</script>
        </div>
        @endif

        @if (!empty($class->zoom))
        <br><br>
        <div class="video-title--num">
           حصة اونلاين
        </div>
        <div class="col-lg-12">
            <div class="zoom-metting">
            <a href="{{$class->zoom}}">  
            <img style="width: 230px;" src="https://logos-world.net/wp-content/uploads/2021/02/Zoom-Logo.png"/>
            </a> 
            </div>
        </div>
        @endif


        @if (!empty($class->note))
        <br>
        <div class="video-title--num">
          مذكرات الشرح
        </div>
        <div class="download-box" style="margin: 12px;
    width: auto!important;display: inline-block;">

            <a style="    color: #fff!important;" href="{{asset('uploads/notes/classes')}}/{{$class->note}}">
        <i class="fas fa-download download-icon"></i>
        تحميل مذكرة المراجعة
</a>
        </div>
        @endif

        </div>
        </div>
        </div>
        </div>
<style>
    .zoom-metting {
    overflow: hidden;
    margin: 20px;
    text-align: center;
}
</style>

            </body>
            </html>
