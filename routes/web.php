<?php

use App\Http\Controllers\BookCategoryController;
use App\Http\Controllers\BookController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PublisherController;
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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('/book/detail{id}',[BookController::class,'bookDetail'])->name('book-detail');
Route::get('/book/category{id}',[BookCategoryController::class,'getBookByCategory'])->name('book-category');
Route::get('/publisher',[PublisherController::class,'getAllPublisher'])->name('publisher');
Route::get('/publisher/detail{id}',[PublisherController::class,'getPublisherById'])->name('publisher-detail');
Route::get('/contact',[ContactController::class,'index'])->name('contact');
