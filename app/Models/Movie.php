<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Movie extends Model
{
    use HasFactory;

    protected $table = 'movie';
    protected $fillable = ['id_tmdb', 'title', 'overview', 'release_date', 'poster_path'];

    public function getPosterUrlAttribute(): string
    {
        if ($this->poster_path) {
            return 'https://image.tmdb.org/t/p/w500' . $this->poster_path;
        }

        return 'https://example.com/default-poster.jpg';
    }
}
