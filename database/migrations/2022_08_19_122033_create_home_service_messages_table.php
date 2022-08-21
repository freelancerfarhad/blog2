<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('home_service_messages', function (Blueprint $table) {
            $table->id();
            $table->integer('home_id');
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->string('date');
            $table->string('address');
            $table->text('message');
            $table->timestamps();
            $table->SoftDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('home_service_messages');
    }
};
