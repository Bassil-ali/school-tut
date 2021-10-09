<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/vendor/bootstrap/css/bootstrap.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/fonts/font-awesome-4.7.0/css/font-awesome.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/vendor/animate/animate.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/vendor/css-hamburgers/hamburgers.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/vendor/animsition/css/animsition.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/vendor/select2/select2.min.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/vendor/daterangepicker/daterangepicker.css')}}">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="{{asset('login/css/util.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('login/css/main.css')}}">
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form method="POST" action="{{route('user.register')}}" class="login100-form validate-form">
                    {{ csrf_field() }}
					<span class="login100-form-title p-b-43">
						مرحبا بك , قم بانشاء حساب جديد للمتابعه
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid name is required: ex@abc.xyz">
						<input name="name" class="input100" type="text" name="name">
						<span class="focus-input100"></span>
						<span class="label-input100">اسم  الطالب</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input name="password" class="input100" type="password" name="pass">
						<span class="focus-input100"></span>
						<span class="label-input100">كلمة المرور</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input name="city" class="input100" type="text" name="pass">
						<span class="focus-input100"></span>
						<span class="label-input100">المحافظة</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input name="phone" class="input100" type="number" name="phone">
						<span class="focus-input100"></span>
						<span class="label-input100">رقم الهاتف</span>
					</div>

					<div class="col-xl-12 col-md-12 col-12">
                        <div class="form-group">
                            <label for="basicInput" class="text-right">النوع</label>
                            <select name="gender" class="form-control" id="basicSelect">
                                <option value="1">ذكر</option>
                                <option value="2">أنثى</option>
                            </select>
                        </div>
                    </div>

					<div class="col-xl-12 col-md-612 col-12 mb-1">
                        <div class="form-group">
                            <label for="basicInput">الصف الدراسي</label>
                            <select name="level"  onclick="console.log($(this).val())" onchange="console.log('change is firing')" class="form-control" id="basicSelect">
                            <option value="" selected disabled>-- حدد الصف الدراسي --</option>
                                @foreach ($levels as $level)
                            	    <option value="{{$level->id}}">{{$level->level_name}}</option>
                                @endforeach
                    		</select>
                        </div>
                    </div>


					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">
							انشاء حساب
						</button>
					</div>

					<p class="text-right" style="font-size: 50px"><a href="{{ route('user.login') }}">لدي حساب من قبل</a></p>

				</form>
				
				<div class="login100-more" style="background-image: url('../login/images/bg-01.jpg');">
				</div>
			</div>
		</div>
	</div>





<!--===============================================================================================-->
	<script src="{{asset('login/vendor/jquery/jquery-3.2.1.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('login/vendor/animsition/js/animsition.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('login/vendor/bootstrap/js/popper.js')}}"></script>
	<script src="{{asset('login/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('login/vendor/select2/select2.min.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('login/vendor/daterangepicker/moment.min.js')}}"></script>
	<script src="{{asset('login/vendor/daterangepicker/daterangepicker.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('login/vendor/countdowntime/countdowntime.js')}}"></script>
<!--===============================================================================================-->
	<script src="{{asset('login/js/main.js')}}"></script>

</body>
</html>
