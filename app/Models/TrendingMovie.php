<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Validation\Rule;

class TrendingMovie extends Model
{
    protected $table = 'trending_movie';
    protected $fillable = ['id_movie', 'period', 'rank'];

    public static function boot()
    {
        parent::boot();

        static::saving(function ($model) {
            $model->validate();
        });
    }

    public function validate()
    {
        $rules = [
            'period' => Rule::in(['week', 'day']),
        ];

        $validator = \Validator::make($this->attributes, $rules);

        if ($validator->fails()) {
            throw new \Exception($validator->errors()->first());
        }
    }

    public function movie()
    {
        return $this->belongsTo(Movie::class);
    }
}
