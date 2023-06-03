<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\Request;

class PatchMovieController extends Controller
{
    /**
     * Update a movie.
     *
     * @param  Movie  $movie
     * @return \Illuminate\Http\JsonResponse
     */
    public function __invoke(Request $request, Movie $movie): \Illuminate\Http\JsonResponse
    {
        $validatedData = $request->validate([
            'title' => 'string',
            'overview' => 'string',
            'release_date' => 'date',
            'poster_path' => 'nullable|string',
        ]);

        $movie->fill($validatedData);
        $movie->save();

        return response()->json($movie);
    }
}
