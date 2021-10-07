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

    Route::get('admin_students-_get_register', 'App\Http\Controllers\StudentController');

    Route::get('admin_students-_register', 'App\Http\Controllers\StudentController');



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

    Route::post('/showresult', 'App\Http\Controllers\ResultController@showresult')->name('exam.show_result');
});




Route::post('/exam_result', 'App\Http\Controllers\ResultController@examresult')->name('exam.result');

Route::get('/user/login', 'App\Http\Controllers\UserLoginController@userLogin')->name('user.login');

Route::post('/user/check', 'App\Http\Controllers\UserLoginController@checkUser')->name('user.check');


Route::get('/admin/login', 'App\Http\Controllers\AdminLoginController@userLogin')->name('admin.login');

Route::post('/admin/check', 'App\Http\Controllers\AdminLoginController@checkUser')->name('admin.check');

Route::post('/logout', 'App\Http\Controllers\LogoutController@logout')->name('logout');

Route::post('/user/logout', 'App\Http\Controllers\LogoutController@userlogout')->name('user.logout');

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
