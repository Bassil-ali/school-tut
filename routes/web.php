<?php

use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




// Route::group(['middleware' => 'adminsession'], function () {

    Route::get('/admin', function () {
        $students = App\Models\Student::count();
        $classes = App\Models\Classes::count();
        $quizzes = App\Models\Quiz::count();
        $exams = App\Models\Exam::count();
        return view('dashboard.index', compact('students', 'classes', 'quizzes', 'exams'));
    });

    Route::resource('level', 'App\Http\Controllers\LevelController');

    Route::resource('subject', 'App\Http\Controllers\SubjectController');

    Route::resource('group', 'App\Http\Controllers\GroupController');

    Route::resource('admin_students', 'App\Http\Controllers\StudentController');

    Route::resource('delivery_work', 'App\Http\Controllers\DeliveryWorkController');
    
    Route::resource('home_work', 'App\Http\Controllers\HomeWorkController');
    Route::post('home_work/status', 'App\Http\Controllers\HomeWorkController@status')->name('home_work.status');
    Route::delete('home_work_delvery.destroy/{id}', 'App\Http\Controllers\HomeWorkController@home_work_delvery')->name('home_work_delvery.destroy');

    Route::get('bill_admin', 'App\Http\Controllers\BillController@index')->name('bill.admin.index');
    Route::post('bill.admin.status', 'App\Http\Controllers\BillController@status')->name('bill.admin.status');

    // Route::get('admin_students-_register', 'App\Http\Controllers\StudentController');



    Route::resource('classes', 'App\Http\Controllers\ClassesController');

    Route::resource('quiz', 'App\Http\Controllers\QuizController');

    Route::resource('exam', 'App\Http\Controllers\ExamController');

    Route::resource('final_exam', 'App\Http\Controllers\FinalExamController');

    Route::get('/add-quiz/{exam_id}/{level_id}/{subject_id}', 'App\Http\Controllers\ExamController@addquiz');

    Route::post('/store-quiz', 'App\Http\Controllers\ExamController@storequiz')->name('store.quiz');

    Route::post('/store-quiz-exam', 'App\Http\Controllers\ExamController@storequizexam')->name('store.quiz_exam');

    Route::get('/report/{id}', 'App\Http\Controllers\StudentController@report')->name('student.report');
    // routes for filter
    Route::get('/getsubject/{id}', 'App\Http\Controllers\LevelController@getsubject');
    Route::get('/getgroup/{id}', 'App\Http\Controllers\StudentController@getgroup');
    Route::get('/getgroup_subject/{id}/', 'App\Http\Controllers\ClassesController@getgroup');
// });




Route::group(['middleware' => 'usersession'], function () {

    Route::get('/', function () {
        return view('student.index');
    });

    Route::get('/students', 'App\Http\Controllers\Student\StudentController@studentindex')->name('students.index');

    Route::get('/students/lesson/{id}', 'App\Http\Controllers\Student\StudentController@lesson')->name('students.lesson');

    Route::get('/students/exams', 'App\Http\Controllers\Student\StudentController@showexam')->name('students.exams');

    Route::get('/enterExam/{id}', 'App\Http\Controllers\ResultController@enterExam')->name('exam.enter');

    Route::get('/index_exam/{id}', 'App\Http\Controllers\ResultController@index_exam')->name('index_exam');

    Route::post('/showresult', 'App\Http\Controllers\ResultController@showresult')->name('exam.show_result');
    
    //route bill
    Route::get('/bill', 'App\Http\Controllers\ResultController@bill')->name('bill');

    Route::post('/bill', 'App\Http\Controllers\ResultController@bill_store')->name('bill.store');

    Route::delete('/bill/{id}', 'App\Http\Controllers\ResultController@bill_destroy')->name('bill.destroy');

    //route delivery_work
    Route::post('/delivery_work.store', 'App\Http\Controllers\WorkController@store')->name('delivery_work.store');

    Route::get('/work.index', 'App\Http\Controllers\WorkController@work_index')->name('work.index');

});




Route::post('/exam_result', 'App\Http\Controllers\ResultController@examresult')->name('exam.result');

////login and register studant
Route::get('/user/login', 'App\Http\Controllers\UserLoginController@userLogin')->name('user.login');

Route::get('/user/register', 'App\Http\Controllers\UserLoginController@user_register')->name('user.register');

Route::post('/user/check', 'App\Http\Controllers\UserLoginController@checkUser')->name('user.check');

Route::post('/user/register', 'App\Http\Controllers\UserLoginController@check_register')->name('user.register');
////login and register studant

Route::get('/admin/login', 'App\Http\Controllers\AdminLoginController@userLogin')->name('admin.login');

Route::post('/admin/check', 'App\Http\Controllers\AdminLoginController@checkUser')->name('admin.check');

Route::post('/logout', 'App\Http\Controllers\LogoutController@logout')->name('logout');

Route::post('/user/logout', 'App\Http\Controllers\LogoutController@userlogout')->name('user.logout');

Route::get('/clear', function () {
    Artisan::call('route:cache');
    Artisan::call('config:cache');
    Artisan::call('cache:clear');

    return 'cache';
});

Route::get('/route-cache', function () {
    $exitCode = Artisan::call('route:cache');
    return 'Routes cache cleared';
});

Route::get('/config-cache', function () {
    $exitCode = Artisan::call('config:cache');
    return 'Config cache cleared';
});

Route::get('/clear-cache', function () {
    $exitCode = Artisan::call('cache:clear');
    return 'Application cache cleared';
});
