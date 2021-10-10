<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">

    <link rel="stylesheet" href="{{asset('website/css/bootstrap.css')}}">

    <!-- Fonts and Icons -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >

    <!-- CSS Files -->
    <link rel="stylesheet" href="{{asset('website/css/style.css')}}" type="text/css">
</head>
<body>

    @include('layouts.nav-student');

    <div class="dashboard">
        <div class="exam-title" style="background-image: url(https://kreativdev.com/edus/assets/images/counter-bg-3.png);text-align:right">
            <h4>دفع فواتير</h4>
        </div>
    </div>

    <div class="container">
         <div class="row">
             <div class="col-12">
                <form method="POST" action="{{ route('bill.store') }}" enctype="multipart/form-data">
                    @csrf
                    <div class="card" style="padding: 20px;">
                      <div class="row">
                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                            <div class="form-group">
                                <label for="basicInput">ارفاق صوره من الفاتوره</label>
                                <input type="file" name="image" class="form-control" id="basicInput" placeholder="اكتب اسم الطالب">
                            </div>
                        </div>

                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                            <div class="form-group">
                                <label for="basicInput">المبلغ بلارقام</label>
                                <input type="number" name="number" class="form-control" id="basicInput" placeholder="المبلغ بلارقام">
                            </div>
                        </div>

                        <div class="col-xl-4 col-md-6 col-12 mb-1">
                            <div class="form-group">
                                <label for="basicInput">وصف او تعليق</label>
                                <input type="text" name="note" class="form-control" id="basicInput" placeholder="وصف او تعليق">
                            </div>
                        </div>
                      </div>
                      <div class="col-12">
                        <p>123456 :حساب فودافون كاش</p>
                            <button type="submit" class="btn btn-success waves-effect waves-float waves-light">
                            اضافة </button>   
                      </div>
                    </div>
                </form>
            </div>
            <div class="col-9">
                <div class="card" style="padding: 20px;">
                    <div class="table-responsive">
                        @if (App\Models\Bill::where('student_id',session()->get('user'))->count() > 0)
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>الوصف</th>
                                    <th>صوره</th>
                                    <th>المبلغ</th>
                                    <th>الحالة</th>
                                    <th>الاجراء</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach (App\Models\Bill::where('student_id',session()->get('user'))->get(); as $data)
                                    
                                    <tr>
                                        <td>{{ $data->note }}</td>
                                        <td>
                                            <img src="{{ $data->image_path }}" width="40">
                                        </td>
                                        <td>{{ $data->number }}</td>
                                        <td>{{ $data->status == '1' ? 'مفعل' : 'غير مفعل' }}</td>
                                        <td>
                                            {{-- <a class="btn btn-success waves-effect waves-float waves-light" data-effect="effect-scale" data-id="2" data-subject_name="الكيمياء" data-subject_description="" data-level="3" data-toggle="modal" href="#exampleModal2" title="تعديل"><i class="las la-pen"></i>تعديل</a> --}}
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

    <div class="footer" style="padding: 10px!important;">
        <p style="text-align:center;font-weight:800;color:#fff">تم تصميم بواسطة منصة مصر التعليمية</p>    
    </div>

</body>
</html>