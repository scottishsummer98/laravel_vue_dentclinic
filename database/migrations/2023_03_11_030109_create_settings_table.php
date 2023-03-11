<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->text('logo')->nullable();
            $table->string('contactno1', 255);
            $table->string('contactno2', 255)->nullable();
            $table->string('email1', 255);
            $table->string('email2', 255)->nullable();
            $table->text('address1', 255);
            $table->text('address2', 255)->nullable();
            $table->string('twitterlink', 255)->nullable();
            $table->string('fblink', 255)->nullable();
            $table->string('instagramlink', 255)->nullable();
            $table->string('youtubelink', 255)->nullable();
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
        Schema::dropIfExists('settings');
    }
}
