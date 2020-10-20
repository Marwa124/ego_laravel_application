<?php

use App\Models\DeliveryType;
use Illuminate\Database\Seeder;

class DeliveryTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('delivery_states')->delete();

        // factory(\App\Models\Product::class,40)->create();
        
        $deliveryTypes = [
            [
                'Type' => 'Package Delivery',
                'code'  => '10',
                'description'  => 'Delivery that has two endpoints (pickup and drop off)',
            ],
            [
                'Type' => 'Cash Collection',
                'code'  => '15',
                'description'  => 'Delivery that has one endpoint (cash pickup point).',
            ],
        ];

        DeliveryType::insert($deliveryTypes);        
        
    }
}