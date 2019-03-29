<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFlightdetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('flightdetails', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('airline_id');
            $table->string('code')->unique();
            $table->unsignedInteger('from_id');
            $table->unsignedInteger('to_id');
            $table->dateTime('time_s');
            $table->dateTime('time_e');
            $table->integer('price');
            $table->timestamps();
            $table->foreign('airline_id')
                ->references('id')->on('airline')
                ->onDelete('cascade');
            $table->foreign('from_id')
                ->references('id')->on('cities')
                ->onDelete('cascade');
            $table->foreign('to_id')
                ->references('id')->on('cities')
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
        Schema::dropIfExists('flightdetails');
    }
}
