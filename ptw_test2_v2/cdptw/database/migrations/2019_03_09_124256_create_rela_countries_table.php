<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRelaCountriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rela_countries', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('from_country_id');
            $table->unsignedInteger('to_country_id');
            $table->timestamps();
            $table->foreign('from_country_id')
                ->references('id')->on('countries')
                ->onDelete('cascade');
            $table->foreign('to_country_id')
                ->references('id')->on('countries')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rela_countries');
    }
}
