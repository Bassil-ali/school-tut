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
                    <div class="row">
                        <div class="col-12">
                        <div class="card" style="padding: 20px;">
                        <br>
                        <h4>اضافة سؤال من بنك الاسئلة</h4>
                        <div class="card-body">
                            <form method="POST" action="{{route('store.quiz')}}">
                            {{ csrf_field() }}
                            <input name="exam_id" type="hidden" value="{{$exam->id}}">
            <div data-repeater-list="invoice">
              <div data-repeater-item>
                <div class="row d-flex align-items-end">
                  <div class="col-md-12 col-12">
                    <div class="form-group">
                     <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="    padding: 20px;">السؤال</th>
                                            <th>
                                            <div class="col-6">
                                <button type="button" class="btn btn-primary waves-effect waves-float waves-light">تحديد الكل</button>
                                <button type="button" class="btn btn-danger waves-effect waves-float waves-light">عدم تحديد</button>
                                </div>
                                            </th>
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
                                                <div class="demo-inline-spacing">
                                                    <div class="form-check form-check-success">
                                                    <input type="checkbox" name="quiz_id[]" value="{{$quiz->id}}" class="form-check-input" id="colorCheck3"
                                                    @foreach ($tests as $test) @if ($test->quiz_id === $quiz->id) checked @endif @endforeach >
                                                    <label class="form-check-label" for="colorCheck3">تحديد هذا السؤال</label>
                                                  </div>
                                                  </div>
                                            </td>
                                        </tr>

                                        @endforeach
                                    </tbody>
                                </table>
                            </div>

                    </div>
                  </div>




                </div>
                <hr />
              </div>
            </div>
            <button class="btn btn-icon btn-primary" type="submit">اضافة الاسئلة الي الامتحان</button>
          </form>
                        </div>
                        <br>    <br>



                        <h4>اضافة سؤال</h4>
                        <div class="card-body">
                            <form method="POST" action="{{route('store.quiz_exam')}}" class="invoice-repeater" enctype="multipart/form-data">
                                {{ csrf_field() }}
                                <input name="exam_id" type="hidden" value="{{$exam->id}}">
            <div data-repeater-list="invoice">
              <div data-repeater-item>
                <div class="row d-flex align-items-end">
                  <div class="col-md-12 col-12">
                    <div class="form-group">
                      <label for="itemname">السؤال</label>

                      <input type="text" name="quiz" class="form-control" placeholder="ادخل السؤال هنا">

                    </div>
                  </div>


                  <div class="col-md-12 col-12">
                    <div class="form-group">
                                        <label for="basicSelect">اختر الاجابة الصحيحة ( مع وضح علامة صح على الاجابة الصحيحة )</label>
                                        <div class="row">
                                        <div class="input-group col-md-3 col-3">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox" name="check1">
                                        </div>
                                        </div>
                                        <input type="text" name="answer1" class="form-control" placeholder="الاجابة الاولى">
                                     </div>
                                        <div class="input-group col-md-3 col-3">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox" name="check2">
                                        </div>
                                        </div>
                                        <input type="text" name="answer2" class="form-control" placeholder="الاجابة الثانية">
                                     </div>
                                        <div class="input-group col-md-3 col-3">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox" name="check3">
                                        </div>
                                        </div>
                                        <input type="text" name="answer3" class="form-control" placeholder="الاجابة الثالثة">
                                     </div>
                                        <div class="input-group col-md-3 col-3">
                                        <div class="input-group-prepend">
                                        <div class="input-group-text">
                                        <input type="checkbox" name="check4">
                                        </div>
                                        </div>
                                        <input type="text" name="answer4" class="form-control" placeholder="الاجابة الرابعة">
                                     </div>
                                     </div>
                                    </div>
                  </div>

                <div class="col-md-2 col-12 mb-50">
                    <div class="form-group">
                      <button class="btn btn-outline-danger text-nowrap px-1" data-repeater-delete type="button">
                        <i data-feather="x" class="mr-25"></i>
                        <span>حذف السؤال</span>
                      </button>
                    </div>
                  </div>
                </div>
                <hr />
              </div>
            </div>
            <div class="row">
              <div class="col-12">
                <button class="btn btn-icon btn-info" type="button" data-repeater-create>
                  <i data-feather="plus" class="mr-25"></i>
                  <span>اضافة سؤال جديد</span>
                </button>
              </div>
            </div>

                        </div>

                                             <br><br>
                          <div class="col-3">
                                                  <button type="submit" class="btn btn-success waves-effect waves-float waves-light">اضافة الاسئلة الي الامتحان</button>

                                                  </div>
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
    <script src="{{asset('app-assets/vendors/js/editors/quill/katex.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/editors/quill/highlight.min.js')}}"></script>
    <script src="{{asset('app-assets/vendors/js/editors/quill/quill.min.js')}}"></script>
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
            <script src="{{asset('app-assets/vendors/js/forms/repeater/jquery.repeater.min.js')}}"></script>

    <!-- BEGIN: Theme JS-->
    <script src="{{asset('app-assets/js/core/app-menu.min.js')}}"></script>
    <script src="{{asset('app-assets/js/core/app.min.js')}}"></script>
    <script src="{{asset('app-assets/js/scripts/customizer.min.js')}}"></script>
        <script src="{{asset('app-assets/js/scripts/forms/form-repeater.min.js')}}"></script>
            <script src="{{asset('app-assets/js/scripts/forms/form-quill-editor.js')}}"></script>
    <!-- END: Theme JS-->
<style>
    .demo-inline-spacing {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-wrap: wrap;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    -webkit-box-pack: start;
    -webkit-justify-content: flex-start;
    -ms-flex-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
}.demo-inline-spacing>* {
    margin-left: 1.5rem;
        padding: 10px;
        margin-top:0px!important;
}
.form-check {
    display: block;
    min-height: 1.45rem;
    padding-right: 1.785rem;
    margin-bottom: 0;
}.form-check:not(.form-switch) .form-check-input[type=checkbox]:checked {
    background-size: 65%;
}
.form-check-success .form-check-input:not(:disabled):checked, .form-check-success .form-check-input:not(:disabled):focus {
    border-color: #28C76F;
    box-shadow: 0 2px 4px 0 rgb(40 199 111 / 40%);
}
.form-check-success .form-check-input:checked {
    border-color: #28C76F;
    background-color: #28C76F;
}
.form-check-input:not(:disabled):checked {
    box-shadow: 0 2px 4px 0 rgb(115 103 240 / 40%);
}
.form-check-input:checked[type=checkbox] {
    background-image: url('data:image/svg+xml;charset=utf8,%3csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 9.5 7.5\'%3e%3cpolyline points=\'0.75 4.35 4.18 6.75 8.75 0.75\' style=\'fill:none;stroke:%23fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:1.5px\'/%3e%3c/svg%3e');
}.form-check-input:checked[type=checkbox]{background-image:url('data:image/svg+xml;charset=utf8,%3csvg xmlns=\'http://www.w3.org/2000/svg\' viewBox=\'0 0 9.5 7.5\'%3e%3cpolyline points=\'0.75 4.35 4.18 6.75 8.75 0.75\' style=\'fill:none;stroke:%23fff;stroke-linecap:round;stroke-linejoin:round;stroke-width:1.5px\'/%3e%3c/svg%3e')}.form-check-input:checked[type=radio]{background-image:none}.form-check-input[type=checkbox]:indeterminate{background-color:#7367F0;border-color:#7367F0;background-image:url('data:image/svg+xml;charset=utf8,%3csvg xmlns=\'http://www.w3.org/2000/svg\' width=\'24\' height=\'24\' viewBox=\'0 0 24 24\' fill=\'none\' stroke=\'%23fff\' stroke-width=\'2\' stroke-linecap=\'round\' stroke-linejoin=\'round\' class=\'feather feather-minus\'%3e%3cline x1=\'5\' y1=\'12\' x2=\'19\' y2=\'12\'%3e%3c/line%3e%3c/svg%3e')}.form-switch .form-check-input,.form-switch .form-check-input:checked,.form-switch .form-check-input:focus{background-image:url('data:image/svg+xml,%3csvg width=\'26px\' height=\'26px\' viewBox=\'0 0 26 27\' version=\'1.1\' xmlns=\'http://www.w3.org/2000/svg\' xmlns:xlink=\'http://www.w3.org/1999/xlink\'%3e%3cdefs%3e%3ccircle id=\'path-1\' cx=\'8\' cy=\'8\' r=\'8\'%3e%3c/circle%3e%3cfilter x=\'-40.6%\' y=\'-21.9%\' width=\'168.8%\' height=\'168.8%\' filterUnits=\'objectBoundingBox\' id=\'filter-2\'%3e%3cfeOffset dx=\'-1\' dy=\'2\' in=\'SourceAlpha\' result=\'shadowOffsetOuter1\'%3e%3c/feOffset%3e%3cfeGaussianBlur stdDeviation=\'1.5\' in=\'shadowOffsetOuter1\' result=\'shadowBlurOuter1\'%3e%3c/feGaussianBlur%3e%3cfeColorMatrix values=\'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.2 0\' type=\'matrix\' in=\'shadowBlurOuter1\'%3e%3c/feColorMatrix%3e%3c/filter%3e%3c/defs%3e%3cg id=\'Artboard\' stroke=\'none\' stroke-width=\'1\' fill=\'none\' fill-rule=\'evenodd\'%3e%3cg id=\'switches-dot\' transform=\'translate%285.000000, 5.000000%29\' fill-rule=\'nonzero\'%3e%3cg id=\'Oval\'%3e%3cuse fill=\'black\' fill-opacity=\'1\' filter=\'url%28%23filter-2%29\' xlink:href=\'%23path-1\'%3e%3c/use%3e%3cuse fill=\'%23fff\' xlink:href=\'%23path-1\'%3e%3c/use%3e%3c/g%3e%3c/g%3e%3c/g%3e%3c/svg%3e')}.form-check-input:disabled{pointer-events:none;-webkit-filter:none;filter:none;opacity:.65}.form-check-input:disabled~.form-check-label,.form-check-input[disabled]~.form-check-label{opacity:.65}.form-switch{padding-right:3.5rem}.form-switch .form-check-input{width:3rem;margin-right:-3.5rem;background-position:right center;border-radius:3rem;-webkit-transition:background-position .15s ease-in-out,background-color .1s ease;transition:background-position .15s ease-in-out,background-color .1s ease}@media (prefers-reduced-motion:reduce){.form-switch .form-check-input{-webkit-transition:none;transition:none}}.form-switch .form-check-input:checked{background-position:left center}.form-check-inline{margin-left:1rem}.btn-check{position:absolute;clip:rect(0,0,0,0);pointer-events:none}.btn-check:disabled+.btn,.btn-check[disabled]+.btn{pointer-events:none;-webkit-filter:none;filter:none;opacity:.65}.form-range{width:100%;height:1.5rem;padding:0;background-color:transparent;appearance:none}.form-range:focus{outline:0}.form-range:focus::-webkit-slider-thumb{box-shadow:0 0 0 1px #F8F8F8,0 3px 10px 0 rgba(34,41,47,.1)}
.form-check-input:checked {
    background-color: #7367F0;
    border-color: #7367F0;
}
.form-check-input[type=checkbox] {
    border-radius: 3px;
}
.form-check .form-check-input {
    float: right;
    margin-right: -1.785rem;
}
.form-check-input {
    width: 1.285rem;
    height: 1.285rem;
    margin-top: .0825rem;
    vertical-align: top;
    background-color: #FFF;
    background-repeat: no-repeat;
    background-position: center;
    background-size: contain;
    border: 1px solid #D8D6DE;
    appearance: none;
    -webkit-print-color-adjust: exact;
    color-adjust: exact;
}
.form-check-input, .form-range {
    -webkit-appearance: none;
    -moz-appearance: none;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
</style>

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
