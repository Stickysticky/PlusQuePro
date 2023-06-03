<?php

namespace App\Http\Controllers;

use App\Models\Movie;

class MovieController extends Controller
{
    /**
     * Show the details of a movie.
     *
     * @param  Movie  $movie
     * @return \Illuminate\Contracts\View\View
     */
    public function __invoke(Movie $movie): \Illuminate\Contracts\View\View|\Illuminate\Contracts\View\Factory
    {
        return view('movies.movie', compact('movie'));
    }
}
