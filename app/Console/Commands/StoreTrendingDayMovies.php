<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\TMDBService;
use App\Models\Movie;
use App\Models\TrendingMovie;

class StoreTrendingDayMovies extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:store-trending-day-movies';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Store trending movies from TMDB API for today';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $tmdbService = new TMDBService();
        $trendingMovies = $tmdbService->getTrendingDayMovies();

        TrendingMovie::where('period', 'day')->delete();

        foreach ($trendingMovies['results'] as $movieData) {

            $movie = Movie::where('id_tmdb', $movieData['id'])->first();

            if(false === $movie instanceof Movie) {
                $movie = new Movie();
                $movie->id_tmdb = $movieData['id'];
                $movie->title = $movieData['title'];
                $movie->overview = $movieData['overview'];
                $movie->release_date = $movieData['release_date'];
                $movie->poster_path = $movieData['poster_path'];
                $movie->save();
            };


            $trendingMovie = new TrendingMovie();
            $trendingMovie->id_movie = $movie->id;
            $trendingMovie->period = 'day';
            $trendingMovie->rank = $movieData['popularity'];
            $trendingMovie->save();
        }

        $this->info('Trending movies for today have been stored successfully.');
    }
}
