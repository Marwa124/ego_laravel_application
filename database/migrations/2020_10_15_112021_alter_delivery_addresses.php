<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class alterDeliveryAddresses extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('delivery_addresses', function (Blueprint $table) {
            // $table->unsignedInteger('state')->change();
            $table->renameColumn('state', 'state_id');
            $table->renameColumn('is_default', 'isPaid');
            $table->renameColumn('type', 'type_id');
            $table->string('CreatedAtFormat')->nullable();
            $table->string('id_api')->nullable();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('delivery_addresses', function (Blueprint $table) {
            $table->dropColumn('CreatedAtFormat');
            $table->renameColumn('state_id', 'state');
            $table->renameColumn('isPaid', 'is_default');
            $table->renameColumn('type_id', 'type');
            $table->dropColumn('id_api');


        });
    }
}
