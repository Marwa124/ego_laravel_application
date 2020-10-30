<?php
/**
 * File name: DatabaseSeeder.php
 * Last modified: 2020.05.03 at 13:40:04
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(SizesTableSeeder::class);


        $this->call(CouponPermission::class);
        $this->call(SlidesSeeder::class);



        $this->call(DeliveryTypesTableSeeder::class);
        $this->call(DeliveryStatesTableSeeder::class);
        $this->call(CityCodesTableSeeder::class);



        // $this->call(AppServiceProvider::class);
        $this->call(RolesTableSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(PermissionsTableSeeder::class);
        $this->call(RoleHasPermissionsTableSeeder::class);
        // $this->call(ProductsTableSeeder::class);
        $this->call(MediaTableSeeder::class);
        $this->call(ModelHasRolesTableSeeder::class);
        $this->call(ModelHasPermissionsTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(CreateMarketPermission::class);
        $this->call(CurrenciesTableSeeder::class);
        $this->call(CartsTableSeeder::class);
        $this->call(CartOptionsTableSeeder::class);
        $this->call(CustomFieldsTableSeeder::class);
        $this->call(FavoritesTableSeeder::class);
        $this->call(FavoriteOptionsTableSeeder::class);
        $this->call(MarketsTableSeeder::class);
        $this->call(FieldsTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(MarketsTableSeeder::class);
    }
}
