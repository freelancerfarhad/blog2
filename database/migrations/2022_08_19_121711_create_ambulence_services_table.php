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
        Schema::create('ambulence_services', function (Blueprint $table) {
            $table->id();
            $table->string('service_name')->unique();
            $table->string('slug')->nullable();
            $table->integer('status')->default(1)->comment('0=Inactive, 1=Active');
           
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
        Schema::dropIfExists('ambulence_services');
    }
};
