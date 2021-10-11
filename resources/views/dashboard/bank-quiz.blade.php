<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="rtl">
  <!-- BEGIN: Head-->
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">


    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/vendors-rtl.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/editors/quill/katex.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/editors/quill/monokai-sublime.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/editors/quill/quill.snow.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/vendors/css/editors/quill/quill.bubble.css')}}">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/bootstrap.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/bootstrap-extended.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/colors.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/components.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/themes/dark-layout.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/themes/bordered-layout.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/themes/semi-dark-layout.css')}}">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/core/menu/menu-types/vertical-menu.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/plugins/forms/form-quill-editor.css')}}">

        <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/core/menu/menu-types/vertical-menu.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/plugins/charts/chart-apex.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/plugins/extensions/ext-component-toastr.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/pages/app-invoice-list.min.css')}}">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="{{asset('app-assets/css-rtl/custom-rtl.css')}}">
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
                            <form action="{{ route('quiz.index') }}" method="get">
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

                    <div class="row">
                        <div class="col-4">
                            <form method="POST" action="{{route('quiz.store')}}" enctype="multipart/form-data">
                                {{ csrf_field() }}
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">اضافة سؤال</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6">
                                         <div class="form-group">
                                        <label for="basicSelect">تحديد الصف الدراسي</label>
                                        <select name="level"  onclick="console.log($(this).val())"
                                            onchange="console.log('change is firing')" class="form-control" id="basicSelect">
                                            <option value="" selected disabled>-- حدد الصف الدراسي --</option>
                                            @foreach ($levels as $level)
                                            <option value="{{$level->id}}">{{$level->level_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                            </div>
                                        <div class="col-6">
                                         <div class="form-group">
                                        <label for="basicSelect">تحديد المادة</label>
                                        <select name="subject" class="form-control" id="basicSelect">
                                            <option value="" selected disabled>-- حدد المادة --</option>
                                        </select>
                                    </div>
                                            </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="basicSelect">السؤال</label>
                                                <input type="text" name="quest" id="helperText" class="form-control" placeholder="ادخل السؤال هنا">
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="basicSelect">صورة السؤال</label><br>
                                                <input type="file" name="image" class="form-control" placeholder="صورة السوال">
                                            </div>
                                        </div>


                                        <div class="col-12">
                                        <div class="form-group">
                                        <label for="basicSelect">اختر الاجابة الصحيحة ( مع وضح علامة صح على الاجابة الصحيحة )</label>
                                        <div class="input-group">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox"  value="1" name="check1">
                                        </div>
                                        </div>
                                        <input type="text" name="answer1" class="form-control" placeholder="الاجابة الاولى">
                                     </div>
                                        <br>
                                        <div class="input-group">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox" value="2" name="check2">
                                        </div>
                                        </div>
                                        <input type="text" name="answer2" class="form-control" placeholder="الاجابة الثانية">
                                     </div>
                                        <br>
                                        <div class="input-group">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox"   value="3" name="check3">
                                        </div>
                                        </div>
                                        <input type="text" name="answer3" class="form-control" placeholder="الاجابة الثالثة">
                                     </div>
                                        <br>
                                        <div class="input-group">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox"  value="4" name="check4">
                                        </div>
                                        </div>
                                        <input type="text" name="answer4" class="form-control" placeholder="الاجابة الرابعة">
                                     </div>
                                    </div>
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
                        <div class="col-8">
                        <div class="card" style="padding: 20px;">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>السؤال</th>
                                            <th>الصف الدراسي</th>
                                            <th>المادة</th>
                                            <th>الاجراء</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($quizzes as $quiz)


                                        <tr>
                                            @if (!empty($quiz->quest))
                                            <td>{{$quiz->quest}}</td>
                                            @elseif (!empty($quiz->image))
                                            <td><img src="{{asset('uploads/images/quiz')}}/{{$quiz->image}}" width="100px" height="100px" ></td>
                                            @endif
                                            <td>
                                            {{$quiz->level->level_name}}
                                            </td>
                                                                                        <td>
                                           {{$quiz->subject->subject_name}}
                                            </td>
                                            <td>
                                                <a class="btn btn-success waves-effect waves-float waves-light" data-effect="effect-scale"
                                                href="{{route('quiz.edit',$quiz->id)}}"
                                                 title="تعديل"><i class="las la-pen"></i>تعديل</a>

                                                  <a class="btn btn-danger waves-effect waves-float waves-light" data-effect="effect-scale"
                                                  data-id="{{ $quiz->id }}" data-quest="{{ $quiz->quest }}"
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


<!-- delete -->
<div class="modal" id="modaldemo9">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content modal-content-demo">
            <div class="modal-header">
                <h6 class="modal-title">حذف المحاضرة</h6><button aria-label="Close" class="close" data-dismiss="modal"
                    type="button"><span aria-hidden="true">&times;</span></button>
            </div>
            <form action="quiz/destroy" method="post">
                {{ method_field('delete') }}
                {{ csrf_field() }}
                <div class="modal-body">
                    <p>هل انت متاكد من عملية الحذف ؟</p><br>
                    <input type="hidden" name="id" id="id" value="">
                    <input class="form-control" name="quest" id="quest" type="text" readonly>
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
    <script src="{{asset('app-assets/vendors/js/editors/quill/katex.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/editors/quill/highlight.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/editors/quill/quill.min.js')}}"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="{{asset('app-assets/js/core/app-menu.js')}}"></script>
    <script src="{{asset('app-assets/js/core/app.js')}}"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="{{asset('app-assets/js/scripts/forms/form-quill-editor.js')}}"></script>
    <!-- END: Page JS-->


    <script>
      $(window).on('load',  function(){
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
    </script>


<script>
    $('#modaldemo9').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget)
        var id = button.data('id')
        var quest = button.data('quest')
        var modal = $(this)
        modal.find('.modal-body #id').val(id);
        modal.find('.modal-body #quest').val(quest);
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
