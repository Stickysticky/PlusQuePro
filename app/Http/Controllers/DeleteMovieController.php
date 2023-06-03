<?php

namespace App\Http\Controllers;

use App\Models\Movie;

class DeleteMovieController extends Controller
{
    /**
     * Delete a movie.
     *
     * @param  Movie  $movie
     * @return \Illuminate\Http\JsonResponse
     */
    public function __invoke(Movie $movie): \Illuminate\Http\JsonResponse
    {
        $movie->delete();

        return response()->json();
    }
}
