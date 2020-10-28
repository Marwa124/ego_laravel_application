<?php
/**
 * File name: web.php
 * Last modified: 2020.06.07 at 07:02:57
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 *
 */

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('media','Imports\ImportProductController@setImages')->name('login');



Route::get('login','Front\Auth\LoginController@index')->name('login');
Route::post('login','Front\Auth\LoginController@handleProviderCallback')->name('login.submit');
Route::get('register','Front\Auth\LoginController@register')->name('front.register');
Route::post('register','Front\Auth\LoginController@registerProcess')->name('register.submit');


// Route::get('/api-bosta', 'APIBostaController@index')->name('api.bosta');
Route::resource('api-bosta', 'APIBostaController', ['except' => ['edit', 'update', 'create', 'store']]);


// Route::post('logout',function ()
// {
//     return 'true';
//     auth()->logout();
// });

// Route::get('iproduct', 'Imports\ImportProductController@product')->name('login');
// Route::Post('iproduct','Imports\ImportProductController@storeProduct')->name('register.submit');

Route::group(['namespace' => 'Front'], function() {
    // Route::get('client-register', 'AuthController@clientRegister')->name('client.register');
    // Route::post('client-register-save', 'AuthController@clientRegisterSave')->name('client.save');
    // Route::get('client-login', 'AuthController@clientLogin')->name('client.login');
    // Route::post('client-login-save', 'AuthController@clientLoginSave')->name('client.logged');

    Route::get('/', function(){
        return redirect('home');
    });
    Route::get('/home', 'FrontController@index')->name('front.index');
    Route::post('/subscriber', 'FrontController@subscribe')->name('front.subscribe');
    Route::get('/single-store', 'FrontController@singleStore')->name('front.single_store');
    Route::get('/products', 'FrontController@products')->name('front.products');
    Route::get('/product/{id}', 'FrontController@product')->name('front.product.show');
    
    Route::get('/profile', 'FrontController@profile')->name('front.profile');

    // Search and Pagination
    Route::get('/products/search', 'FrontController@search')->name('front.search');
    // Autocomplete Search
    Route::get('/products/autocomplete-search', 'FrontController@searchAutocomplete')->name('front.search.autocomplete');
    // Products Price Filter
    // productPriceFilter
    Route::get('/products/price-filter', 'FrontController@search')->name('front.products.price.filter');
    
    Route::get('/cart', 'FrontController@cart')->name('front.cart'); // Cart Page
    Route::get('/cart/checkout', 'FrontController@cartCheckout')->name('front.cart.checkout'); // Cart Checkout
    Route::get('/cart/add-product', 'FrontController@addCartProduct')->name('front.cart.product.add'); // Add Product to Cart
    Route::get('/cart/remove-product', 'FrontController@productCartRemove')->name('front.cart.product.remove'); // Remove Product from Cart
    Route::get('/cart/counter-up-product', 'FrontController@productCartCounterUp')->name('front.cart.product.counterUp'); // INcrease Product Counter in Cart
    Route::get('/cart/counter-down-product', 'FrontController@productCartCounterDown')->name('front.cart.product.counterDown'); // Decrease Product Counter in Cart
    
    Route::post('toggle-favorite', 'FrontController@toggleFavorite')->name('favorable');
});








Route::group(['prefix' => 'admin',], function() {


Auth::routes();

Route::get('login/{service}', 'Auth\LoginController@redirectToProvider');
Route::get('login/{service}/callback', 'Auth\LoginController@handleProviderCallback');

Route::get('storage/app/public/{id}/{conversion}/{filename?}', 'UploadController@storage');


Route::group(['middleware' => ['role:admin']], function() {

Route::get('payments/failed', 'PayPalController@index')->name('payments.failed');
Route::get('payments/razorpay/checkout', 'RazorPayController@checkout');
Route::post('payments/razorpay/pay-success/{userId}/{deliveryAddressId?}/{couponCode?}', 'RazorPayController@paySuccess');
Route::get('payments/razorpay', 'RazorPayController@index');

Route::get('payments/paypal/express-checkout', 'PayPalController@getExpressCheckout')->name('paypal.express-checkout');
Route::get('payments/paypal/express-checkout-success', 'PayPalController@getExpressCheckoutSuccess');
Route::get('payments/paypal', 'PayPalController@index')->name('paypal.index');

// Route::get('firebase/sw-js','AppSettingController@initFirebase');


Route::middleware('auth')->group(function () {
    Route::get('logs', '\Rap2hpoutre\LaravelLogViewer\LogViewerController@index');
    Route::get('/', 'DashboardController@index')->name('dashboard');

    Route::post('uploads/store', 'UploadController@store')->name('medias.create');
    Route::get('users/profile', 'UserController@profile')->name('users.profile');
    Route::post('users/remove-media', 'UserController@removeMedia');
    Route::resource('users', 'UserController');
    Route::get('dashboard', 'DashboardController@index')->name('dashboard');

    Route::group(['middleware' => ['permission:medias']], function () {
        Route::get('uploads/all/{collection?}', 'UploadController@all');
        Route::get('uploads/collectionsNames', 'UploadController@collectionsNames');
        Route::post('uploads/clear', 'UploadController@clear')->name('medias.delete');
        Route::get('medias', 'UploadController@index')->name('medias');
        Route::get('uploads/clear-all', 'UploadController@clearAll');
    });

    Route::group(['middleware' => ['permission:permissions.index']], function () {
        Route::get('permissions/role-has-permission', 'PermissionController@roleHasPermission');
        Route::get('permissions/refresh-permissions', 'PermissionController@refreshPermissions');
    });
    Route::group(['middleware' => ['permission:permissions.index']], function () {
        Route::post('permissions/give-permission-to-role', 'PermissionController@givePermissionToRole');
        Route::post('permissions/revoke-permission-to-role', 'PermissionController@revokePermissionToRole');
    });

    Route::group(['middleware' => ['permission:app-settings']], function () {
        Route::prefix('settings')->group(function () {
            Route::resource('permissions', 'PermissionController');
            Route::resource('roles', 'RoleController');
            Route::resource('customFields', 'CustomFieldController');
            Route::resource('currencies', 'CurrencyController')->except([
                'show'
            ]);
            Route::get('users/login-as-user/{id}', 'UserController@loginAsUser')->name('users.login-as-user');
            Route::patch('update', 'AppSettingController@update');
            Route::patch('translate', 'AppSettingController@translate');
            Route::get('sync-translation', 'AppSettingController@syncTranslation');
            Route::get('clear-cache', 'AppSettingController@clearCache');
            Route::get('check-update', 'AppSettingController@checkForUpdates');
            // disable special character and number in route params
            Route::get('/{type?}/{tab?}', 'AppSettingController@index')
                ->where('type', '[A-Za-z]*')->where('tab', '[A-Za-z]*')->name('app-settings');
        });
    });

    Route::post('fields/remove-media','FieldController@removeMedia');
    Route::resource('fields', 'FieldController')->except([
        'show'
    ]);

    Route::post('brands/remove-media','BrandController@removeMedia');
    Route::resource('brands', 'BrandController')->except([
        'show'
    ]);

    Route::post('markets/remove-media', 'MarketController@removeMedia');
    Route::get('requestedMarkets', 'MarketController@requestedMarkets')->name('requestedMarkets.index'); //adeed
    Route::resource('markets', 'MarketController')->except([
        'show'
    ]);

    Route::post('categories/remove-media', 'CategoryController@removeMedia'); 
    // Route::get('category', 'CategoryController@getCategories')->name('category.all'); 
    Route::resource('categories', 'CategoryController')->except([
        'show'
    ]);

    Route::resource('faqCategories', 'FaqCategoryController')->except([
        'show'
    ]);

    Route::resource('orderStatuses', 'OrderStatusController')->except([
        'create', 'store', 'destroy'
    ]);;

    Route::post('products/remove-media', 'ProductController@removeMedia');
    Route::resource('products', 'ProductController')->except([
        'show'
    ]);

    Route::post('galleries/remove-media', 'GalleryController@removeMedia');
    Route::resource('galleries', 'GalleryController')->except([
        'show'
    ]);

    Route::resource('productReviews', 'ProductReviewController')->except([
        'show'
    ]);

    Route::post('options/remove-media', 'OptionController@removeMedia');
    

    Route::resource('payments', 'PaymentController')->except([
        'create', 'store','edit', 'destroy'
    ]);;

    Route::resource('faqs', 'FaqController')->except([
        'show'
    ]);
    Route::resource('marketReviews', 'MarketReviewController')->except([
        'show'
    ]);

    Route::resource('favorites', 'FavoriteController')->except([
        'show'
    ]);

    Route::resource('orders', 'OrderController');

    Route::resource('notifications', 'NotificationController')->except([
        'create', 'store', 'update','edit',
    ]);;

    Route::resource('carts', 'CartController')->except([
        'show','store','create'
    ]);
    Route::resource('deliveryAddresses', 'DeliveryAddressController')->except([
        'show'
    ]);

    Route::resource('drivers', 'DriverController')->except([
        'show'
    ]);

    Route::resource('earnings', 'EarningController')->except([
        'show','edit','update'
    ]);

    Route::resource('driversPayouts', 'DriversPayoutController')->except([
        'show','edit','update'
    ]);

    Route::resource('marketsPayouts', 'MarketsPayoutController')->except([
        'show','edit','update'
    ]);

    Route::resource('optionGroups', 'OptionGroupController')->except([
        'show'
    ]);

    Route::post('options/remove-media','OptionController@removeMedia');

    Route::resource('options', 'OptionController')->except([
        'show'
    ]);
    Route::resource('coupons', 'CouponController')->except([
        'show'
    ]);
    Route::post('slides/remove-media','SlideController@removeMedia');
    Route::resource('slides', 'SlideController')->except([
        'show'
    ]);
});

});
});