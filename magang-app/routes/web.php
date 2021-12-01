<?php

use App\Http\Controllers\admin\SiswaController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;

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

//Route::get('/', function () {
    //return view('welcome');
//});

Route::get('/', [AuthController::class, 'showFormLogin'])->name('login');
Route::get('login', [AuthController::class, 'showFormLogin'])->name('login');
Route::post('login', [AuthController::class, 'login']);
Route::get('register', [AuthController::class, 'showFormRegister'])->name('register');
Route::post('register', [AuthController::class, 'register']);

Route::group(['middleware' => 'auth'], function () {

    Route::get('home', [HomeController::class, 'index'])->name('home');
    Route::get('home/get_data', [HomeController::class, 'get_data']);
    Route::get('logout', [AuthController::class, 'logout'])->name('logout');

    Route::middleware('admin')->group(function () {
        Route::get('siswa', [SiswaController::class, 'index']);
        Route::get('siswa/get_data', [SiswaController::class, 'get_data']);
        Route::post('siswa/simpan', [SiswaController::class, 'simpan']);
        Route::get('siswa/edit/{id}', [SiswaController::class, 'edit']);
        Route::get('siswa/hapus/{id}', [SiswaController::class, 'hapus']);

    });

});
