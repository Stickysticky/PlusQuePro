<?php

namespace App\Services;

use GuzzleHttp\Client;

class TMDBService
{
    protected $apiKey;
    protected $client;

    public function __construct()
    {
        $this->apiKey = config('app.tmdb_api_key');
        $this->client = new Client([
            'base_uri' => 'https://api.themoviedb.org/3/',
        ]);
    }

    public function getTrendingWeekMovies()
    {
        $response = $this->client->get('trending/movie/week?language=fr-FR', [
            'headers' => [
                'Authorization' => $this->apiKey,
                'accept' => 'application/json',
              ],
        ]);

        return json_decode($response->getBody(), true);
    }
}
