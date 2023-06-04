<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Movie;

class MovieFactory extends Factory
{
    protected $model = Movie::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'id_tmdb' => $this->faker->randomNumber(),
            'title' => $this->faker->sentence(),
            'overview' => $this->faker->paragraph(),
            'release_date' => $this->faker->date(),
            'poster_path' => $this->faker->imageUrl(),
        ];
    }
}
