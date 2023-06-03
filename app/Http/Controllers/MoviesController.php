<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use App\Models\TrendingMovie;

class MoviesController extends Controller
{
    /**
     * Invoke the controller method.
     *
     * @return \Illuminate\Contracts\View\View
     */
    public function __invoke(): \Illuminate\Contracts\View\View|\Illuminate\Contracts\View\Factory
    {
        $trendingMovies = TrendingMovie::where('period', 'day')->get();
        $dayMovies = [];

        foreach ($trendingMovies as $trendingMovie) {
            $movie = Movie::find($trendingMovie->id_movie);
            if ($movie instanceof Movie) {
                $dayMovies[] = $movie;
            }
        }

        $trendingMovies = TrendingMovie::where('period', 'week')->get();
        $weekMovies = [];

        foreach ($trendingMovies as $trendingMovie) {
            $movie = Movie::find($trendingMovie->id_movie);
            if ($movie instanceof Movie) {
                $weekMovies[] = $movie;
            }
        }

        return view('movies.movies', compact('dayMovies', 'weekMovies'));

    }
}
