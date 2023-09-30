<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\LandingController;
use App\Http\Controllers\AuthController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', [LandingController::class,'index'])->name('landing');
Route::get('/post-detail/{id}', [LandingController::class,'postDetail'])->name('landing');
Route::get('/login', function(){
    return view('blog.login');
});
Route::post('/postLogin', [AuthController::class,'login']);


Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [BlogController::class,'index']);
    Route::get('/manage-post', [BlogController::class,'show']);
    Route::post('/addpost', [BlogController::class,'store']);
    Route::post('/updatepost/{id}', [BlogController::class,'update']);
    Route::delete('/deletepost/{id}', [BlogController::class,'destroy']);
    Route::post('/logout', [AuthController::class,'logout']);
});
