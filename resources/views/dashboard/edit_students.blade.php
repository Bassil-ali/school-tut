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
        <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/vendors-rtl.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/forms/select/select2.min.css')}}">
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
                    <div class="row">
                        <div class="col-12">
                            <form action="/admin_students/update" method="post" autocomplete="off">
                                {{ method_field('patch') }}
                                {{ csrf_field() }}
                        <div class="card" style="padding: 20px;">
                          <div class="row">
                              <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <div class="form-group">
                                                <label for="basicInput">اسم الطالب</label>
                                                <input type="hidden" name="id" value="{{$student->id}}">
                                                <input type="text" name="name" value="{{$student->name}}" class="form-control" id="basicInput" placeholder="اكتب اسم الطالب">
                                            </div>
                                        </div>

                                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <div class="form-group">
                                                <label for="basicInput">المحافظة</label>
                                                <input type="text" name="city" value="{{$student->city}}" class="form-control" id="basicInput" placeholder="اكتب اسم المحافظة">
                                            </div>
                                        </div>

                                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <div class="form-group">
                                                <label for="basicInput">رقم التليفون</label>
                                                <input type="text" name="phone" value="{{$student->phone}}" class="form-control" id="basicInput" placeholder="اكتب رقم التليفون">
                                            </div>
                                        </div>

                                                                                <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <div class="form-group">
                                                <label for="basicInput">كلمة المرور</label>
                                                <input type="text" name="password" value="{{$student->password}}" class="form-control" id="basicInput" placeholder="اكتب كلمة المرور">
                                            </div>
                                        </div>

                                                                                <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <div class="form-group">
                                                <label for="basicInput">النوع</label>
                                                <select name="gender" class="form-control" id="basicSelect">
                                            <option value="1" @if ($student->gender == 'ذكر') selected @endif>ذكر</option>
                                            <option value="2" @if ($student->gender == 'انثي') selected @endif>أنثى</option>
                                        </select>
                                            </div>
                                        </div>

                                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <div class="form-group">
                                                <label for="basicInput">الصف الدراسي</label>
                                                <select name="level" class="form-control" id="basicSelect">
                                                    @foreach ($levels as $level)
                                                    <option value="{{$level->id}}" @if ($level->id === $student->level_id) selected @endif>{{$level->level_name}}</option>
                                                    @endforeach
                                        </select>
                                            </div>
                                        </div>

                                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <label for="basicInput">المادة</label>
                                        <select name="subject[]" class="select2 form-control" multiple="multiple" id="default-select-multi_subject">

                                            @foreach ($subjects as $subject)

                                            <option value="{{$subject->id}}" @foreach ($studentgroup->subjects as $item) @if ($item->id === $subject->id) selected @endif @endforeach >{{$subject->subject_name}} ({{$subject->level->level_name}})</option>

                                            @endforeach

                                                </select>
                                        </div>

                                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                                            <label for="basicInput">المجموعة</label>
                                        <select name="group[]" class="select2 form-control" multiple="multiple" id="default-select-multi_group">

                                            @foreach ($groups as $group)

                                            <option value="{{$group->id}}" @foreach ($studentgroup->groups as $item) @if ($item->id === $group->id) selected @endif @endforeach >{{$group->group_name}} ({{$group->subject->subject_name}}) ({{$group->level->level_name}})</option>

                                            @endforeach
                                                </select>
                                        </div>




                                        {{-- testfiltergroup --}}
                                        <div>



                                        </div>

                          </div>
                          <div class="col-3">
                                <button type="submit" class="btn btn-success waves-effect waves-float waves-light">تعديل الطالب</button>   </div>
                        </div>
                            </form>
                    </div>
                    </div>

        </div>
      </div>
    </div>
    <!-- END: Content-->




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
 <!-- BEGIN: Page Vendor JS-->
    <script src="{{asset('app-assets/vendors/js/forms/select/select2.full.min.js')}}"></script>
    <!-- END: Page Vendor JS-->
        <script src="{{asset('app-assets/js/scripts/forms/form-select2.js')}}"></script>

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
