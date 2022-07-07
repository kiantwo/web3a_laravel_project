<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;

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

// Route::view('/', 'welcome');

// Route::get('/welcome', function () {
//     return view('welcome');
// });

// Route::get('/student', function () {
//     echo 'This is the students collection.';
// });

// Route::get('students/{studid}', function($studid) {
//     echo "Student ID: ".$studid;
// });

// Route::get('students', 'StudentController@index');
// Route::get('students', [StudentController::class, 'index']);
// Route::get('students/list', [StudentController::class, 'show'])->name('');

// Route::resource('students', StudentController::class);

Route::get('students/{id}/list', [StudentController::class, 'show'])->name('student.info');
Route::get('students/all', [StudentController::class, 'showAll'])->name('students.all');
Route::get('student/create', [StudentController::class, 'create'])->name('students.create');
Route::post('student/create', [StudentController::class, 'store'])->name('students.save');