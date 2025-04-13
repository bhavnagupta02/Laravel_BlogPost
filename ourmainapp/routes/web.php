<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
// use App\Http\Controllers\ExampleController;

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

/* Route::get('/', function () {
    return view('welcome');
    //return '<h1>Home Page</h1><a href="/about">Go to About Page</a>';
});
Route::get('/about', function() {
    return '<h1>About Page</h1><a href="/"> Back to Home</a>';
}); */

// User related routes Added by BGU
// Route::get('/', [ExampleController::class, 'homepage']);
Route::get('/', [UserController::class, 'showCorrectHomepage'])->name('login');
// Route::get('/about', [ExampleController::class, 'aboutpage']);
Route::post('/register', [UserController::class, 'register'])->middleware('guest');
Route::post('/login', [UserController::class, 'login'])->middleware('guest');
Route::post('/logout', [UserController::class, 'logout'])->middleware('mustBeLoggedIn');

// Blog post related routes Added by BGU
Route::get('/create-post', [PostController::class, 'showCreatePost'])->middleware('mustBeLoggedIn'); // Here mustBeLoggedIn is a custome middleware created by me
Route::post('/create-post', [PostController::class, 'saveNewPost'])->middleware('mustBeLoggedIn');
// Route::get('/post/{postId}', [PostController::class, 'viewSinglePost'])->middleware('auth'); // Here auth is a inbuilt middleware
Route::get('/post/{postId}', [PostController::class, 'viewSinglePost']);
Route::delete('post/{postId}', [PostController::class, 'deletePost']);

// Profile related routes Added by BGU
Route::get('/profile/{udata:username}', [UserController::class, 'profile']);

