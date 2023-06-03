<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\TMDBService;

class MoviesController extends Controller
{
    /**
     * Invoke the controller method.
     *
     * @param  Request  $request
     * @param  TMDBService $tmdbService
     * @return mixed
     */
    public function __invoke(Request $request, TMDBService $tmdbService)
    {
        $popularMovies = $tmdbService->getPopularMovies();
        var_dump($popularMovies);
        return view('movies/movies');
    }
}
