<?php

use App\Models\DeliveryState;
use Illuminate\Database\Seeder;

class DeliveryStatesTableSeeder extends Seeder
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
        
        $deliveryStates = [
            [
                'state' => 'Pending',
                'code'  => '10',
                'description'  => 'Delivery created and we will start working on it asap.',
            ],
            [
                'state' => 'In progress',
                'code'  => '15',
                'description'  => 'Our operation team started working on your delivery.',
            ],
            [
                'state' => 'Delivery on route',
                'code'  => '16',
                'description'  => 'You delivery has been assigned for star.',
            ],
            [
                'state' => 'Picking up',
                'code'  => '20',
                'description'  => 'Bosta Star is on his way to pick the delivery.',
            ],
            [
                'state' => 'Picking up from warehouse',
                'code'  => '21',
                'description'  => 'Bosta star is on his way to pick the scheduled delivery from warehouse.',
            ],
            [
                'state' => 'Arrived at warehouse',
                'code'  => '22',
                'description'  => 'Bosta star has arrived to warehouse with your scheduled delivery.',
            ],
            [
                'state' => 'Received at warehouse',
                'code'  => '23',
                'description'  => 'Your package is received at warehouse.',
            ],
            [
                'state' => 'Arrived at business',
                'code'  => '25',
                'description'  => 'Bosta star arrived at pickup location.',
            ],
            [
                'state' => 'Receiving',
                'code'  => '26',
                'description'  => 'Bosta star started picking up the deliveries from your pickup location.',
            ],
            [
                'state' => 'Picked up',
                'code'  => '30',
                'description'  => 'Bosta star is already picked up your delivery.',
            ],
            [
                'state' => 'Delivering',
                'code'  => '35',
                'description'  => 'Bosta star is on his way to deliver your package to its destination.',
            ],
            [
                'state' => 'En route to warehouse',
                'code'  => '36',
                'description'  => 'Bosta star is on his way to warehouse after picking up the scheduled delivery from you.',
            ],
            [
                'state' => 'Arrived at customer',
                'code'  => '40',
                'description'  => 'Bosta star arrived to the receiver.',
            ],
            [
                'state' => 'Delivered',
                'code'  => '45',
                'description'  => 'Delivery has been delivered.',
            ],
            [
                'state' => 'Canceled',
                'code'  => '50',
                'description'  => 'Delivery has been cancelled.',
            ],
            [
                'state' => 'Failed',
                'code'  => '55',
                'description'  => 'An exception happened to the delivery (e.g. Customer not answering his phone).',
            ],
            [
                'state' => 'Pickup Failed',
                'code'  => '80',
                'description'  => 'Your package hasn’t been picked up by our star once he received the packages from your pickup location.',
            ],
        ];

        DeliveryState::insert($deliveryStates);        
        
    }
}