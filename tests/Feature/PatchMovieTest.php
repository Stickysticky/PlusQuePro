<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;
use App\Models\Movie;

class PatchMovieTest extends TestCase
{
    use RefreshDatabase;

    public function testPatchMovie(): void
    {
        $movie = Movie::factory()->create();

        $updatedData = [
            'title' => 'Title Test',
            'overview' => 'Overview Test',
        ];

        $response = $this->patch(route('patch_movie', ['movie' => $movie]), $updatedData);
        $response->assertStatus(200);

        $this->assertDatabaseHas('movies', $updatedData);
    }
}
