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
                        <div class="col-3">
                            <form method="POST" action="{{route('subject.store')}}">
                                {{ csrf_field() }}
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">اضافة المواد الدراسية</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                         <div class="form-group">
                                                <input type="text" name="subject_name" id="helperText" class="form-control" placeholder="اسم المادة">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                         <div class="form-group">
                                        <label for="basicSelect">تحديد الصف الدراسي</label>
                                        <select name="level" class="form-control" id="basicSelect">
                                            @foreach ($levels as $level)
                                            <option value="{{$level->id}}">{{$level->level_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                            </div>
                                        <div class="col-12">
                                            <div class="form-label-group mb-0">
                                                <textarea data-length="20" name="subject_description" class="form-control char-textarea" id="textarea-counter" rows="3" placeholder="الوصف"></textarea>
                                                <label for="textarea-counter">الوصف</label>
                                            </div>
                                            <small class="textarea-counter-value float-right"><span class="char-count">0</span> / 20 </small>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-3">
                                <button type="submit" class="btn btn-primary waves-effect waves-float waves-light">اضافة</button>
                                </div>
                                <br>
                            </div>
                            </form>
                        </div>
                        <div class="col-9">
                        <div class="card" style="padding: 20px;">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>الاسم</th>
                                            <th>الصف الدراسي</th>
                                            <th>الاجراء</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($subjects as $subject)

                                        <tr>
                                            <td>{{$subject->subject_name}}</td>
                                            <td>
                                             {{$subject->level->level_name}}
                                            </td>
                                            <td>
                                                <a class="btn btn-success waves-effect waves-float waves-light" data-effect="effect-scale"
                                                   data-id="{{ $subject->id }}" data-subject_name="{{ $subject->subject_name }}"
                                                   data-subject_description="{{ $subject->subject_description }}" data-level={{$subject->level->id}} data-toggle="modal"
                                                   href="#exampleModal2" title="تعديل"><i class="las la-pen"></i>تعديل</a>

                                                <a class="btn btn-danger waves-effect waves-float waves-light" data-effect="effect-scale"
                                                   data-id="{{ $subject->id }}" data-subject_name="{{ $subject->subject_name }}"
                                                   data-toggle="modal" href="#modaldemo9" title="حذف"><i
                                                       class="las la-trash"></i>حذف</a>
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

<!-- edit -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
aria-hidden="true">
<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">تعديل الصف</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">

            <form action="subject/update" method="post" autocomplete="off">
                {{ method_field('patch') }}
                {{ csrf_field() }}
                <div class="form-group">
                    <input type="hidden" name="id" id="id" value="">
                    <label for="subject_name" class="col-form-label">اسم المادة:</label>
                    <input class="form-control" name="subject_name" id="subject_name" type="text">
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
                    <label for="subject_description" class="col-form-label">الوصف:</label>
                    <textarea class="form-control" id="subject_description" name="subject_description"></textarea>
                </div>
        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary">تاكيد</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
        </div>
        </form>
    </div>
</div>
</div>

<!-- delete -->
<div class="modal" id="modaldemo9">
<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content modal-content-demo">
        <div class="modal-header">
            <h6 class="modal-title">حذف الصف</h6><button aria-label="Close" class="close" data-dismiss="modal"
                type="button"><span aria-hidden="true">&times;</span></button>
        </div>
        <form action="subject/destroy" method="post">
            {{ method_field('delete') }}
            {{ csrf_field() }}
            <div class="modal-body">
                <p>هل انت متاكد من عملية الحذف ؟</p><br>
                <input type="hidden" name="id" id="id" value="">
                <input class="form-control" name="subject_name" id="subject_name" type="text" readonly>
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
        var subject_name = button.data('subject_name')
        var subject_description = button.data('subject_description')
        var level = button.data('level')
        var modal = $(this)
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #subject_name').val(subject_name);
        modal.find('.modal-body #subject_description').val(subject_description);
        modal.find('.modal-body #level').val(level);
    })

</script>

<script>
    $('#modaldemo9').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget)
        var id = button.data('id')
        var subject_name = button.data('subject_name')
        var modal = $(this)
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #subject_name').val(subject_name);
    })

</script>
  </body>
  <!-- END: Body-->
</html>
