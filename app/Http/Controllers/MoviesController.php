<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MoviesController extends Controller
{
    /**
     * Invoke the controller method.
     *
     * @param  Request  $request
     * @return mixed
     */
    public function __invoke(Request $request)
    {
        return view('movies/movies');
    }
}
