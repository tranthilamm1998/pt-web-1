<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBookdetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('bookdetail', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('book_id');
            $table->unsignedInteger('flight_id');
            $table->integer('count');
            $table->unsignedInteger('seattype_id');
            $table->timestamps();

            $table->foreign('book_id')
                ->references('id')->on('book')
                ->onDelete('cascade');
            $table->foreign('flight_id')
                ->references('id')->on('flightdetails')
                ->onDelete('cascade');
            $table->foreign('seattype_id')
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
        Schema::dropIfExists('bookdetail');
    }
}
