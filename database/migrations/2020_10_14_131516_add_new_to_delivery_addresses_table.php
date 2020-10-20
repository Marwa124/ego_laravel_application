<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddNewToDeliveryAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('delivery_addresses', function (Blueprint $table) {
            $table->string('pickupAddress')->nullable();
            $table->string('dropOffAddress')->nullable();
            $table->string('returnAddress')->nullable();
            $table->string('receiver')->nullable();
            $table->string('state')->nullable();
            $table->string('trackingNumber')->nullable();
            $table->string('notes')->nullable();
            $table->string('cod')->nullable();
            $table->string('businessReference')->nullable();
            $table->unsignedInteger('delivery_state_id')->nullable();
            $table->unsignedInteger('delivery_type_id')->nullable();
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
            $table->dropColumn('brand_id');
            $table->dropColumn('pickupAddress');
            $table->dropColumn('dropOffAddress');
            $table->dropColumn('returnAddress');
            $table->dropColumn('receiver');
            $table->dropColumn('state');
            $table->dropColumn('trackingNumber');
            $table->dropColumn('notes');
            $table->dropColumn('cod');
            $table->dropColumn('businessReference');
            $table->dropColumn('delivery_state_id');
            $table->dropColumn('delivery_type_id');
        });
    }
}
