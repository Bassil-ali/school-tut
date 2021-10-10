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
                            <form method="POST" action="{{route('home_work.store')}}" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">اضافة الواجب</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                             <label for="basicSelect">اسم الواجب</label>
                                                <input type="text" name="name" id="helperText" class="form-control" placeholder="اسم الواجب">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                             <label for="basicSelect">ملحوظة</label>
                                                <input type="text" name="work_file_noty" id="helperText" class="form-control" placeholder="ملحوظة">
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
                                                <input type="time" name="time" id="helperText" class="form-control" placeholder="اسم الواجب">
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <div class="form-group">
                                               <label for="basicInput">تحديد الدرس</label>
                                               <select name="class_id"  onclick="console.log($(this).val())"
                                                   onchange="console.log('change is firing')" class="form-control" id="basicSelect">
                                                   <option value="" selected disabled>-- تحديد الدرس --</option>
                                                   @foreach (App\Models\Classes::all() as $classe)
                                                   <option value="{{$classe->id}}">{{$classe->name}}</option>
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
                        <div class="col-8">
                        <div class="card" style="padding: 20px;">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>اسم الواجب</th>
                                            <th>الدرس</th>
                                            <th>الاجراء</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach (App\Models\HomeWork::all() as $exam)

                                        <tr>
                                            <td>{{$exam->name}}</td>
                                            <td>{{$exam->classe->name}}</td>
                                            <td>
                                                <a class="btn btn-success waves-effect waves-float waves-light" href="{{ route('home_work.edit',$exam->id) }}">
                                                    <i data-feather='edit'></i>
                                                </a>
                                                <a class="btn btn-warning waves-effect waves-float waves-light" download="{{ $exam->file_path }}" href="{{ $exam->file_path }}">
                                                    <i data-feather='edit'></i>
                                                </a>
                                                <form action="{{route('home_work.destroy',$exam->id)}}" method="post">
                                                    @csrf    
                                                    @method('delete')    
                                                    <button class="btn btn-danger waves-effect waves-float waves-light" data-effect="effect-scale">
                                                        <i data-feather='trash-2'></i>
                                                    </button>
                                                </form>
                                           </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </div>
        </div>
      </div>
    </div>
    <!-- END: Content-->


    <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">تعديل الواجب</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form action="" method="post" autocomplete="off"  enctype="multipart/form-data">
                    {{ csrf_field() }}
                    {{ method_field('delete') }}
                </form>
                    <div class="form-group">
                        <input type="hidden" name="id" id="id" value="">
                        <label for="name" class="col-form-label">اسم الواجب:</label>
                        <input class="form-control" name="name" id="name" type="text">
                    </div>

                    <div class="form-group">
                        <label for="basicSelect">تحديد الصف الدراسي</label>
                        <select name="level" id="level" class="form-control" id="basicSelect">
                            @foreach ($levels as $level)
                            <option value="{{$level->id}}">{{$level->level_name}}</option>
                            @endforeach

                        </select>
                    </div>

                    <div class="form-group">
                        <label for="basicSelect">تحديد المادة الدراسية</label>
                        <select name="subject" id="subject" class="form-control" id="basicSelect">
                            @foreach ($subjects as $subject)
                            <option value="{{$subject->id}}">{{$subject->subject_name}}</option>
                            @endforeach

                        </select>
                    </div>

                    <div class="form-group">
                        <label for="basicSelect">تحديد المجموعة</label>
                        <select name="group" id="group" class="form-control" id="basicSelect">
                            @foreach ($groups as $group)
                            <option value="{{$group->id}}">{{$group->group_name}}</option>
                            @endforeach

                        </select>
                    </div>




            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">تاكيد</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
            </div>
        </div>
    </div>
    </div>




<!-- delete -->
<div class="modal" id="modaldemo9">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">حذف المحاضرة</h6><button aria-label="Close" class="close" data-dismiss="modal"
                    type="button"><span aria-hidden="true">&times;</span></button>
            </div>
            <form action="exam/destroy" method="post">
                {{ method_field('delete') }}
                {{ csrf_field() }}
                <div class="modal-body">
                    <p>هل انت متاكد من عملية الحذف ؟</p><br>
                    <input type="hidden" name="id" id="id" value="">
                    <input class="form-control" name="name" id="name" type="text" readonly>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">الغاء</button>
                    <button type="submit" class="btn btn-danger">تاكيد</button>
                </div>
        </div>
        </form>
    </div>
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


<script>
    $('#exampleModal2').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget)
        var id = button.data('id')
        var name = button.data('name')
        var level = button.data('level')
        var subject = button.data('subject')
        var group = button.data('group')
        var qty = button.data('qty')
        var exam_time = button.data('exam_time')
        var modal = $(this)
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #name').val(name);
        modal.find('.modal-body #level').val(level);
        modal.find('.modal-body #subject').val(subject);
        modal.find('.modal-body #group').val(group);
        modal.find('.modal-body #qty').val(qty);
        modal.find('.modal-body #exam_time').val(exam_time);
    })

</script>

<script>
    $('#modaldemo9').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget)
        var id = button.data('id')
        var name = button.data('name')
        var exam_time = button.data('exam_time')
        var modal = $(this)
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #name').val(name);
        modal.find('.modal-body #exam_time').val(exam_time);
    })

</script>


<script>
    $(document).ready(function() {
        $('select[name="level"]').on('change', function() {
            var levelId = $(this).val();
            if (levelId) {
                $.ajax({
                    url: "{{ URL::to('getsubject') }}/" + levelId,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        $('select[name="subject"]').empty();
                        $('select[name="subject"]').append('<option selected value="" disabled>-- حدد الصف الدراسي --</option>');
                        $.each(data, function(key, value, subject) {
                            $('select[name="subject"]').append('<option value="' +
                                key + '">' + value + '</option>');
                        });
                    },
                    error: function(){
                        $('select[name="subject"]').empty();
                    },
                });

            } else {
                console.log('AJAX load did not work');
            }
        });

    });
</script>

<script>
    $(document).ready(function() {
        $('select[name="subject"]').on('change', function() {
            var subjectId = $(this).val();
            if (subjectId) {
                $.ajax({
                    url: "{{ URL::to('getgroup_subject') }}/" + subjectId,
                    type: "GET",
                    dataType: "json",
                    success: function(data) {
                        $('select[name="group"]').empty();
                        $('select[name="group"]').append('<option selected value="" disabled>-- حدد المادة --</option>');
                        $.each(data, function(key, value) {
                            $('select[name="group"]').append('<option value="' +
                                key + '">' + value + '</option>');
                        });
                    },
                    error: function(){
                        $('select[name="group"]').empty();
                    },
                });
            } else {
                console.log('AJAX load did not work');
            }
        });
    });
</script>

  </body>
  <!-- END: Body-->
</html>
