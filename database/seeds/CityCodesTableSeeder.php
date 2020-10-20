<?php

use App\Models\CityCode;
use Illuminate\Database\Seeder;

class CityCodesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('city_codes')->delete();

        // factory(\App\Models\Product::class,40)->create();
        
        $cityCodes = [
            [
                'city' => 'Cairo ',
                'code'  => 'EG-01',
            ],
            [
                'city' => 'Cash Collection',
                'code'  => 'EG-02',
            ],
        ];

        CityCode::insert($cityCodes);        
        
    }
}