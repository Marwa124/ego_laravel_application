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
                'name' => 'X Large',
            ],
            [
                'name' => 'Large ',
            ],
            [
                'name' => 'Medium ',
            ],
            [
                'name' => 'Small',
            ],
            [
                'name' => 'X Small',
            ],
        ];

        Size::insert($sizes);        
        
    }
}