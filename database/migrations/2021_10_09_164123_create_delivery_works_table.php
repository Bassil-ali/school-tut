<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDeliveryWorksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('delivery_works', function (Blueprint $table) {
            $table->id();
            $table->string('delivery_file');
            $table->string('delivery_file_noty');
            $table->unsignedBigInteger('home_work_id');

            $table->foreign('home_work_id')->references('id')->on('home_works')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('delivery_works');
    }
}
