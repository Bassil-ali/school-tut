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
        <div class="download-box" style="margin: 12px;width: auto!important;display: inline-block;">

            @if ($home_work > '0')
                
                @foreach ($home_work as $work)
                    <br>
                    <div class="video-title--num">
                      مزكره : {{ $work->work_file_noty }}
                    </div>
                    <a class="video-title--num py-2 mb-2" style="color: #fff!important;" href="{{ $work->file_path }}" download="{{ $work->file_path }}">
                        <i class="fas fa-download download-icon"></i>
                        تحميل مذكرة المراجعة
                    </a>
                    <div class="video-title--num mt-2">
                      وقت التسليم : {{ $work->time }}
                    </div>
                @endforeach

                <table class="table table-bordered" style="color:#fff">
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
                        <select name="home_work_id" required class="form-control bg-transparent">
                            @foreach ($home_work as $group)
                                <option style="color:#fff" value="{{$group->id}}">{{$group->name}}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="col-xl-12 col-md-6 col-12 my-3">
                        <button class="video-title--num">تم</button>
                    </div>

                </form>

            @else 


            @endif

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
