<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;

class PostMovieController extends Controller
{
    /**
     * Create a movie
     *
     * @param  Movie  $movie
     * @return \Illuminate\Http\JsonResponse
     */
    public function __invoke(Request $request): \Illuminate\Http\JsonResponse
    {
        $validatedData = $request->validate([
            'id_tmdb' => 'required|int',
            'title' => 'required|string',
            'overview' => 'required|string',
            'release_date' => 'required|date',
            'poster_path' => 'nullable|string',
        ]);

        $movie = Movie::create($validatedData);

        return response()->json([
            'message' => 'Movie created successfully',
            'data' => $movie,
        ], 201);
    }
}
