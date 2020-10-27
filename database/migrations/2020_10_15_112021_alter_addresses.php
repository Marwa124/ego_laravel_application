<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class alterAddresses extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('addresses', function (Blueprint $table) {
            // $table->integer('city')->change()->nullable();
            $table->renameColumn('city', 'city_id');
            $table->renameColumn('city', 'city_id');
            // $table->integer('zone')->change()->nullable();
            // $table->unsignedInteger('zone')->change();
            $table->integer('buildingNumber')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('addresses', function (Blueprint $table) {
            $table->renameColumn('city_id', 'city');
            $table->renameColumn('zone_id', 'zone');
            $table->dropColumn('buildingNumber');

            // $table->dropColumn('city');
            // $table->dropColumn('city_id');
        });
    }
}
