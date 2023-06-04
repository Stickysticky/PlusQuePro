<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;
use App\Models\Movie;

class GetMovieTest extends TestCase
{
    use RefreshDatabase;

    public function testGetMovie(): void
    {
        $response = $this->get('/');

        $response->assertStatus(200);
        $movie = Movie::factory()->create();


        $response = $this->get('/movies/' . $movie->id);

        $response->assertStatus(200);

        $response->assertJson([
            'data' => [
                'id' => $movie->id,
                'id_tmdb' => $movie->id_tmdb,
                'title' => $movie->title,
                'overview' => $movie->overview,
                'release_date' => $movie->release_date,
                'poster_path' => $movie->poster_path,
            ]
        ]);
    }
}
