<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Movie;

class DeleteMovieTest extends TestCase
{
    use RefreshDatabase;

    public function testDeleteMovie(): void
    {
        $movie = Movie::factory()->create();

        $response = $this->delete(route('delete_movie', ['movie' => $movie->id]));
        $response->assertStatus(204);

        $this->assertDatabaseMissing('movies', ['id' => $movie->id]);
    }
}
