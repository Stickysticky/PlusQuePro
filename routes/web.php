<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MoviesController;
use App\Http\Controllers\MovieController;

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

Route::get('/', function () {
    return redirect('/login');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {
    Route::get('/dashboard', function () {
        return redirect('/movies');
    })->name('dashboard');

    Route::get('/movies', MoviesController::class)->name('movies');

    Route::get('/movies/detail/{movie}', MovieController::class)->name('movie');
});

Route::post('/movies', [PostMovieController::class])->name('post_movie');

Route::patch('/movies/{movie}', [PatchMovieController::class])->name('patch_movie');

Route::get('/movies/{movie}', [GetMovieController::class])->name('get_movie');

Route::delete('/movies/{movie}', [DeleteMovieController::class])->name('delete_movie');
