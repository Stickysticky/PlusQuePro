<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\Request;

class GetMovieController extends Controller
{
    /**
     * Get a movie.
     *
     * @param  Movie  $movie
     * @return \Illuminate\Http\JsonResponse
     */
    public function __invoke(Movie $movie): \Illuminate\Http\JsonResponse
    {
        return response()->json($movie);
    }
}
