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
  <body class="vertical-layout vertical-menu-modern  navbar-floating footer-static" data-open="click" data-menu="vertical-menu-modern" data-col="">

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
                    

                    <nav class="header-navbar navbar navbar-expand-lg align-items-center navbar-light navbar-shadow" style="margin-bottom:30px">
                      <div class="navbar-container d-flex content">
                        <div class="bookmark-wrapper d-flex align-items-center">
                          <ul class="nav navbar-nav d-xl-none">
                            <li class="nav-item"><a class="nav-link">
                            </li>
                          </ul>
                        </div>
                        <ul class="nav navbar-nav align-items-center ml-auto">
                          <li class="nav-item d-none d-lg-block">
                              
                          </li>
                          <li class="nav-item dropdown dropdown-user">
                            <form action="{{ route('bill.admin.index') }}" method="get">
                                <div class="row">
                                    <div class="form-group col-10">
                                        <input type="text" name="search" id="helperText" 
                                        class="form-control" value="{{ request()->search }}" placeholder="ادخل السؤال هنا">
                                    </div>
                                    <div class="col-2">
                                        <button type="submit" class="btn btn-primary waves-effect waves-float waves-light">بحث</button>
                                    </div>
                                </div>
                            </form>
                          </li>
                        </ul>
                      </div>
                    </nav>

                        <div class="col-12">
                        <div class="card" style="padding: 20px;">
                            <div class="table-responsive">
                                @if (App\Models\Bill::count() > 0)
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>اسم الطالب</th>
                                            <th>الوصف</th>
                                            <th>صوره</th>
                                            <th>المبلغ</th>
                                            <th>الاجراء</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($bills as $data)
                                            
                                            <tr>
                                                <td>{{ $data->studant->name }}</td>
                                                <td>{{ $data->note }}</td>
                                                <td>
                                                    <img src="{{ $data->image_path }}" width="40">
                                                </td>
                                                <td>{{ $data->number }}</td>
                                                <td>
                                                    {{-- <a class="btn btn-success waves-effect waves-float waves-light" data-effect="effect-scale" data-id="2" data-subject_name="الكيمياء" data-subject_description="" data-level="3" data-toggle="modal" href="#exampleModal2" title="تعديل"><i class="las la-pen"></i>تعديل</a> --}}
                                                    <form action="{{ route('bill.admin.status') }}" method="POST">
                                                        @csrf
                                                        @method('post')
                                                        <input type="number" name="id" value="{{ $data->id }}" hidden>
                                                        <input hidden type="number" name="status" value="{{ $data->status == '1' ? '0' : '1' }}">
                                                        <button class="btn btn-{{ $data->status == '1' ? 'success' : 'danger' }} waves-effect waves-float waves-light">
                                                            {{ $data->status == '1' ? 'مفعل' : 'غير مفعل' }}
                                                        </button>
                                                    
                                                    </form>
                                                    <a class="btn btn-success" href="{{ $data->image_path }}" download="{{ $data->image_path }}">تحميل الفاتوره</a>
                                                    <form action="{{ route('bill.destroy',$data->id) }}" method="POST">
                                                        @csrf
                                                        @method('delete')

                                                        <button class="btn btn-danger waves-effect waves-float waves-light">
                                                            delete             
                                                        </button>
                                                    
                                                    </form>
                                               </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                @else

                                @endif
                            </div>
                        </div>
                    </div>
                    </div>

        </div>
      </div>
    </div>
    <!-- END: Content-->


   

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

  </body>
  <!-- END: Body-->
</html>
