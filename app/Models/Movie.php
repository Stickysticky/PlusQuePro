<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $table = 'movie';
    protected $fillable = ['id_tmdb', 'title', 'overview', 'release_date', 'poster_path'];

    public function getPosterUrlAttribute()
    {
        if ($this->poster_path) {
            return 'https://image.tmdb.org/t/p/w500' . $this->poster_path;
        }

        return 'https://example.com/default-poster.jpg';
    }
}
