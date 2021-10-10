<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="rtl">
  <!-- BEGIN: Head-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">


    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/vendors-rtl.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/charts/apexcharts.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/extensions/toastr.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/tables/datatable/datatables.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/tables/datatable/responsive.bootstrap.min.css')}}">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/bootstrap.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/bootstrap-extended.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/colors.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/components.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/themes/dark-layout.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/themes/bordered-layout.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/themes/semi-dark-layout.min.css')}}">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/core/menu/menu-types/vertical-menu.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/plugins/charts/chart-apex.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/plugins/extensions/ext-component-toastr.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/pages/app-invoice-list.min.css')}}">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/custom-rtl.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/style-rtl.css')}}">
    <!-- END: Custom CSS-->

  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="vertical-layout vertical-menu-modern  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="">

    <!-- BEGIN: Header-->
    @include('layouts.nav');
    <!-- END: Header-->


    <!-- BEGIN: Main Menu-->
    @include('layouts.navbar');
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if (session()->has('add'))
            <div class="alert alert-success" role="alert">
        <strong>{{ session()->get('add') }}</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif

@if (session()->has('delete'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>{{ session()->get('delete') }}</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif

@if (session()->has('edit'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>{{ session()->get('edit') }}</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif
                    <div class="row">
                        <div class="col-4">
                            <form method="POST" action="{{route('home_work.update',$homeWork->id )}}" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            @method('put')
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">اضافة الواجب</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                             <label for="basicSelect">اسم الواجب</label>
                                                <input type="text" value="{{ $homeWork->name }}" name="name" id="helperText" class="form-control" placeholder="اسم الواجب">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                             <label for="basicSelect">ملحوظة</label>
                                                <input type="text" value="{{$homeWork->work_file_noty}}" name="work_file_noty" id="helperText" class="form-control" placeholder="ملحوظة">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                             <label for="basicSelect">ارفاق ملف او صوره</label>
                                                <input type="file" name="work_file" id="helperText" class="form-control" placeholder="اسم الواجب">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                             <label for="basicSelect">وقت التسليم</label>
                                                <input type="time" value="{{$homeWork->time}}" name="time" id="helperText" class="form-control" placeholder="اسم الواجب">
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <div class="form-group">
                                               <label for="basicInput">تحديد الدرس</label>
                                               <select name="class_id"  onclick="console.log($(this).val())"
                                                   onchange="console.log('change is firing')" class="form-control" id="basicSelect">
                                                   <option value="" selected disabled>-- تحديد الدرس --</option>
                                                   @foreach (App\Models\Classes::all() as $classe)
                                                   <option value="{{$classe->id}}" {{ $classe->id ==  $homeWork->class_id ? 'selected' : ''}}>{{$classe->name}}</option>
                                                   @endforeach
                                               </select>
                                           </div>
                                        </div>

                                                       {{-- <div class="col-12">
                                                    <div class="form-group">
                                                   <label for="basicSelect">الفترة الزمنيه</label>
                                                   <input type="text" name="exam_time" id="helperText" class="form-control" placeholder="الفترة الزمنية">
                                               </div>
                                                       </div> --}}

                                    </div>
                                </div>
                                <div class="col-3">
                                <button type="submit" class="btn btn-primary waves-effect waves-float waves-light">اضافة</button>
                                </div>
                                <br>
                            </div>
                            </form>
                        </div>
                        

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

    <!-- BEGIN: Footer-->
    <button class="btn btn-primary btn-icon scroll-top" type="button"><i data-feather="arrow-up"></i></button>
    <!-- END: Footer-->


    <!-- BEGIN: Vendor JS-->
    <script src="{{asset('app-assets/vendors/js/vendors.min.js')}}"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="{{asset('app-assets/vendors/js/charts/apexcharts.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/extensions/toastr.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/extensions/moment.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/tables/datatable/datatables.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/tables/datatable/datatables.buttons.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/tables/datatable/datatables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/tables/datatable/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/tables/datatable/responsive.bootstrap.min.js')}}"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="{{asset('app-assets/js/core/app-menu.min.js')}}"></script>
    <script src="{{asset('app-assets/js/core/app.min.js')}}"></script>
    <script src="{{asset('app-assets/js/scripts/customizer.min.js')}}"></script>
    <!-- END: Theme JS-->


    <script>
      $(window).on('load',  function(){
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
    </script>

  </body>
  <!-- END: Body-->
</html>
