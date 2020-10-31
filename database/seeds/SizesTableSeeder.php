<?php

use App\Models\Size;
use Illuminate\Database\Seeder;

class SizesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('sizes')->delete();

        // factory(\App\Models\Product::class,40)->create();
        
        $sizes = [
            [
                'name' => 'All Sizes',
            ],
            [
                'name' => 'XL',
            ],
            [
                'name' => 'L',
            ],
            [
                'name' => 'M',
            ],
            [
                'name' => 'S',
            ],
            [
                'name' => 'XS',
            ],
            [
                'name' => '46',
            ],
            [
                'name' => '44',
            ],
            [
                'name' => '42',
            ],
            [
                'name' => '41',
            ],
            [
                'name' => '40',
            ],
            [
                'name' => '39',
            ],
            [
                'name' => '38',
            ],
            [
                'name' => '37',
            ],
            [
                'name' => '36',
            ],
            [
                'name' => '29',
            ],
            [
                'name' => '28',
            ],
            [
                'name' => '27',
            ],
            [
                'name' => '29',
            ],
        ];

        Size::insert($sizes);        
        
    }
}