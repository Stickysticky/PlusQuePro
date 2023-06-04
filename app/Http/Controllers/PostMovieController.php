<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Movie;
use Illuminate\Support\Facades\Validator;

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
        $movieData = $request->json()->all();

        $validator = Validator::make($movieData, [
            'id_tmdb' => 'required|int',
            'title' => 'required|string',
            'overview' => 'required|string',
            'release_date' => 'required|date',
            'poster_path' => 'nullable|string',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'message' => 'Validation error',
                'errors' => $validator->errors(),
            ], 400);
        }

        $movie = Movie::create($movieData);

        return response()->json($movie, 201);
    }
}
