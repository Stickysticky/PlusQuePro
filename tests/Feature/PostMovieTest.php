<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Movie;

class PostMovieTest extends TestCase
{
    use RefreshDatabase;

    public function testPostMovie(): void
    {
        $movieData = [
            'id_tmdb' => 123456,
            'title' => 'Title movie',
            'overview' => 'Movie overview',
            'release_date' => '2023-06-01',
            'poster_path' => '/pathTo/poster.jpg',
        ];

        $response = $this->post(route('post_movie'), $movieData);
        $response->assertStatus(201);

        $this->assertDatabaseHas('movies', $movieData);
    }
}
