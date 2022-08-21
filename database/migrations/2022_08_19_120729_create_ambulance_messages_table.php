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
        Schema::create('ambulance_messages', function (Blueprint $table) {
            $table->id();
            $table->integer('ambulence_id');
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->string('datetime');
            $table->string('from');
            $table->string('to');
            $table->string('reff')->nullable();
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
        Schema::dropIfExists('ambulance_messages');
    }
};
