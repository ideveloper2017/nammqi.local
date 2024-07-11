<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('counterups', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('counterups_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->integer('counterups_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'counterups_id'], 'counterups_translations_primary');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('counterups');
        Schema::dropIfExists('counterups_translations');
    }
};
