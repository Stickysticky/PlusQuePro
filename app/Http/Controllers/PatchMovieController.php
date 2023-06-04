<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PatchMovieController extends Controller
{
    /**
     * Update a movie.
     *
     * @param  Request $request
     * @param  Movie  $movie
     * @return \Illuminate\Http\JsonResponse
     */
    public function __invoke(Request $request, Movie $movie): \Illuminate\Http\JsonResponse
    {
        $movieData = $request->json()->all();

        $validator = Validator::make($movieData, [
            'title' => 'string',
            'overview' => 'string',
            'release_date' => 'date',
            'poster_path' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation error',
                'errors' => $validator->errors(),
            ], 400);
        }

        $movie->update($movieData);
        $movie->save();

        return response()->json($movie);
    }
}
