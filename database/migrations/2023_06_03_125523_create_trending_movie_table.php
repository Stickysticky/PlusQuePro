<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up()
    {
        Schema::create('trending_movie', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('id_movie');
            $table->enum('period', ['week', 'day']);
            $table->integer('rank');
            $table->timestamps();

            $table->foreign('id_movie')->references('id')->on('movie')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('trending_movie');
    }
};
