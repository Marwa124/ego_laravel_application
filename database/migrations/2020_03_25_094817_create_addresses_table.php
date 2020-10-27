<?php
/**
 * File name: 2020_03_25_094817_create_markets_payouts_table.php
 * Last modified: 2020.04.30 at 06:29:44
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAddressesTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('addresses', function (Blueprint $table) {
            $table->increments('id');
            $table->string('geoLocation')->nullable();
            $table->string('firstLine')->nullable();
            $table->string('secondLine')->nullable();
            $table->string('floor')->nullable();
            $table->string('apartment')->nullable();
            $table->string('zone')->nullable();
            $table->string('district')->nullable();
            $table->string('city')->nullable();
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
        Schema::drop('addresses');
    }
}
