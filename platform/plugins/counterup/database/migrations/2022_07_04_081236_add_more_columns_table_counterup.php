<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddMoreColumnsTableCounterup extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('counterups', function (Blueprint $table) {
            $table->string('icon',191)->after('name');
            $table->string('number',191)->after('icon');
            $table->string('extra_text')->after('number');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('counterups', function (Blueprint $table) {
            //
        });
    }
}
