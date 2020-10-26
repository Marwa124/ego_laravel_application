<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCodeToProducts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->string('ego_code')->nullable();
            $table->string('color')->nullable();
            $table->string('supplier_code')->nullable();
            $table->enum('gender_category', ['women', 'men'])->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropColumn('ego_code');
            $table->dropColumn('color');
            $table->dropColumn('supplier_code');
            $table->dropColumn('gender_category');
        });
    }
}
