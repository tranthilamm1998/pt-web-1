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
            $table->string('name'); // hãng hàng không tạm thời
            $table->string('code')->unique();
            $table->unsignedInteger('from_id');
            $table->unsignedInteger('to_id');
            $table->dateTime('time_s');
            $table->dateTime('time_e');
            $table->integer('price');
            $table->timestamps();
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
