<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateReceiversTable extends Migration {

	public function up()
	{
		Schema::create('receivers', function(Blueprint $table) {
			$table->increments('id');
			$table->string('firstName')->nullable();
			$table->string('lastName')->nullable();
			$table->string('phone')->nullable();
			$table->string('email')->nullable();
			$table->timestamps();
		});
	}

	public function down()
	{
		Schema::drop('receivers');
	}
}
