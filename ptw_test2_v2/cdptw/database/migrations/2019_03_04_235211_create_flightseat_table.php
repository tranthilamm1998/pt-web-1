<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFlightseatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('flightseat', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('flight_id');
            $table->unsignedInteger('seat_id');
            $table->integer('total');
            $table->timestamps();
            $table->foreign('flight_id')
                ->references('id')->on('flightdetails')
                ->onDelete('cascade');
            $table->foreign('seat_id')
                ->references('id')->on('seattype')
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
        //
        Schema::dropIfExists('flightseat');
    }
}
