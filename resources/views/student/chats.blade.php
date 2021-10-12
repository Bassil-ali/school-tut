<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Chat Studaent</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description">
    <meta name="keywords">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/chat.css') }}">
    
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
	{{-- <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> --}}
	<!------ Include the above in your HEAD tag ---------->
</head>
<body>
    {{-- @include('layouts.nav-student') --}}

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
{{-- <div class="dashboard">

    <div class="exam-title" style="background-image: url(https://kreativdev.com/edus/assets/images/counter-bg-3.png);text-align:right">
        <h4>المحاضرات والدروس الخاصة بك</h4>
        <p>الدروس الجديدة يتم إضافتها بشكل دوري على هذه الصفحة ، تابعنا لاستكمال باقي دروس المنهج</p>
        <p>البينات الخاصه  تسجيل الدخول  : كلمة المرور : {{ Session::get('user') }} | رقم الطالب {{ $password->password }} </p>
    </div>

</div> --}}
<div class="container">

    <!-- Page header start -->
    <div class="page-title">
        <div class="row gutters">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                <h5 class="title">Chat App</h5>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12"> </div>
        </div>
    </div>
    <!-- Page header end -->

    <!-- Content wrapper start -->
    <div class="content-wrapper">

        <!-- Row start -->
        <div class="row gutters">

            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                <div class="card m-0">

                    <!-- Row start -->
                    <div class="row no-gutters">
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-3 col-3">
                            <div class="users-container">
                                <div class="chat-search-box">
                                    {{-- <div class="input-group">
                                        <input class="form-control" placeholder="Search">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-info">
                                                <i class="fa fa-search"></i>
                                            </button>
                                        </div>
                                    </div> --}}
                                </div>
                                <ul class="users">
                                	@foreach (App\Models\AdminLogin::all() as $teacher)
                                    	<a href="{{ route('chat.user.index',$teacher->id) }}">
		                                    <li class="person" data-chat="person1">
		                                        <div class="user">
		                                            <img src="https://www.bootdey.com/img/Content/avatar/avatar3.png" alt="Retail Admin">
		                                            <span class="status busy"></span>
		                                        </div>
		                                        <p class="name-time">
		                                            <span class="name">{{ $teacher->name }}</span>
		                                            {{-- <span class="time">15/02/2019</span> --}}
		                                        </p>
		                                    </li>
                                    	</a>
                                	@endforeach
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-9 col-9">
                            <div class="selected-user">
                            	@if ($uui == '0')

                                	<span>To: <span class="name">{{ $admins->name }}</span></span>

                            	@endif
                            </div>
                            <div class="chat-container">
                                <ul class="chat-box chatContainerScroll">
                                    @if ($uui == '0')
                                    @foreach (App\Models\chat::where('studant_id',$password->id)->where('admin_id',$id)->get() as $chat)

                                        <li class="chat-{{ $chat->message_user_id == $password->id ? 'right' : 'left'  }}">
                                            <div class="chat-avatar">
                                                <img src="https://www.bootdey.com/img/Content/avatar/avatar3.png" alt="Retail Admin">
                                                <div class="chat-name">{{ $password->name }}</div>
                                            </div>
                                            <div class="chat-text">
                                                <br>{{ $chat->message }}</div>
                                            <div class="chat-hour">{{ $chat->created_at }} <span class="fa fa-check-circle"></span></div>
                                        </li>
                                        
                                    @endforeach
                                    @endif
                                </ul>
                                @if ($uui == '0')
                                <div class="form-group mt-3 mb-0">
                                	<form action="{{ route('chat.message.store') }}" method="POST">
                                		@csrf
	                                	<div class="input-group">
	                                		<input type="number" value="{{ $student->id }}" name="message_user_id" hidden>
	                                		<input type="number" value="{{ $admins->id }}" name="admin_id" hidden>
	                                        <input class="form-control" name="message" placeholder="الرسالة">
	                                        <div class="input-group-btn">
	                                            <button type="submit" class="btn btn-info">
	                                                <i class="fa fa-cart-plus"></i>
	                                            </button>
	                                        </div>
	                                    </div>
                                	</form>
                                    {{-- <textarea class="form-control" rows="3" placeholder="Type your message here..."></textarea> --}}
                                </div>
                            	@endif
                            </div>
                        </div>
                    </div>
                    <!-- Row end -->
                </div>

            </div>

        </div>
        <!-- Row end -->

    </div>
    <!-- Content wrapper end -->

</div>
<script type="text/javascript">
	$(function(){
    $(".heading-compose").click(function() {
      $(".side-two").css({
        "left": "0"
      });
    });

    $(".newMessage-back").click(function() {
      $(".side-two").css({
        "left": "-100%"
      });
    });
})
</script>
</body>
</html>