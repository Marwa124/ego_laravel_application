<?php
/**
 * File name: AppSettingController.php
 * Last modified: 2020.05.27 at 18:36:54
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 */

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Spatie\MediaLibrary\Models\Media;

class FrontController extends Controller
{
    public function index()
    {
        // $mediaItems = Media::all();
        // dd($mediaItems);
        return view('front.index');
    }

    public function products()
    {
        $products = Product::all();
        
        return view('front.products', compact('products'));
    }

}
