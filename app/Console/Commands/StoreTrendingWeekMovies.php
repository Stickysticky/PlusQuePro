<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\TMDBService;
use App\Models\Movie;
use App\Models\TrendingMovie;

class StoreTrendingWeekMovies extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:store-trending-week-movies';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Store trending movies from TMDB API for this week';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $tmdbService = new TMDBService();
        $trendingMovies = $tmdbService->getTrendingWeekMovies();

        TrendingMovie::where('period', 'week')->delete();

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
            $trendingMovie->period = 'week';
            $trendingMovie->rank = $movieData['popularity'];
            $trendingMovie->save();
        }

        $this->info('Trending movies for this week have been stored successfully.');
    }
}
