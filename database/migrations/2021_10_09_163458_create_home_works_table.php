<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHomeWorksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home_works', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('time');
            $table->string('work_file');
            $table->string('work_file_noty');
            $table->unsignedBigInteger('class_id');

            $table->foreign('class_id')->references('id')->on('classes')->onDelete('cascade');
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
        Schema::dropIfExists('home_works');
    }
}
