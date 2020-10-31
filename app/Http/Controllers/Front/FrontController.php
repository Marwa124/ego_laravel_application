<?php
/**
 * File name: AppSettingController.php
 * Last modified: 2020.05.27 at 18:36:54
 * Author: SmarterVision - https://codecanyon.net/user/smartervision
 * Copyright (c) 2020
 */

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Http\Requests\CreateSubscriberRequest;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Product;
use App\Models\Subscriber;
use App\Models\Userable;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Session;
use Prettus\Validator\Exceptions\ValidatorException;
use Illuminate\Support\Str;


ini_set('display_errors', 'true');
error_reporting(-1);

class FrontController extends Controller
{
    public function index()
    {
        if (!auth()->user()) {
 
            session()->put('guestId', Str::random(10).rand(100, 9999));
        }
        return view('front.index');
    }

    public function subscribe(Request $request)
    {
        $client = ''; $forward = ''; $remote = '';

        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $client = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $forward = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $remote = $_SERVER['REMOTE_ADDR'];
        }

        if(filter_var($client, FILTER_VALIDATE_IP))
        {
            $ip = $client;
        }
        elseif(filter_var($forward, FILTER_VALIDATE_IP))
        {
            $ip = $forward;
        }
        else
        {
            $ip = $remote;
        }
        // return $ip;        

        try {

            $validation = validator()->make($request->all(), Subscriber::$rules);
        
            if($validation->fails())
            {
                $data = $validation->errors();
                Session::flash('error', Subscriber::$messages['email.unique']); 
                return redirect()->back();
            }
            
            $request['ip'] = $ip;
            // dd($request->all());
            Subscriber::create($request->all());
            Session::flash('success', 'Subscribed Successfully!'); 
            // return redirect()->back()->with('success', 'Subscribed Successfully!');
            return redirect()->back();

        } catch (ValidatorException $e) {
            Session::flash('error', $e->getMessage()); 
        }
        
    }

    public function store_locator()
    {
        return view('front.store_locator');
    }
    public function single_store(){
        
        return view('front.single_store');
    }


    public function wishlist(){
        
        return view('front.wishlist');
    }

    public function sidebar(Request $request)
    {
        // Brand Search
        if ($request->brandSearch) {

            $brands = Brand::where(function ($query) use ($request) {
                $query->where('name', 'LIKE', '%' . $request->brandSearch . '%')->select("name", 'id');
            })->get();

            return view('front.sidebar_brands_search', [
                'brands' => $brands,
                'sort'   => false
            ]);
        }else {
            $brands = Brand::all()->groupby(function($item, $key){
                return json_encode($item->name)[1];
            })->toArray();

            return view('front.sidebar_brands_search', [
                'brands' => $brands,
                'sort'   => true
            ]);
        }

        // Category Filter
        if ($request->categoryId) {
            $categoryObject = Category::find($request->categoryId);
            $cat = $categoryObject->products()->paginate(15);
            return view('front.products_search', [
                'products' => $cat 
            ]);
        }

        // Brand Filter
        if ($request->brands) {
            $items = [];
            foreach ($request->brands as $key => $brand) {
                $brandObject = Brand::find($brand);
                // var_dump($brandObject);
                $items['brand_products'] = $brandObject->products()->paginate(15);
            }

            return view('front.products_search', [
                'products' => $items['brand_products'] 
            ]);
        }
    }

    public function sidebarPriceFilter(Request $request)
    {
        //Sidebar Price Search
        if ($request->max_price && $request->min_price) {
            $result = Product::whereBetween('price', [$request->min_price, $request->max_price])->paginate(15);

            return view('front.products_search', [
                'products' => $result
            ]);
        }

        //Sidebar Color Filter
        if ($request->color) {

            $products = Product::where(function ($query) use ($request) {
                $query->where('color', 'LIKE', '%' . $request->color . '%');
            })->latest()->paginate(15);

            // if (strpos($a, 'are') !== false) {
            //     echo 'true';
            // }
// dd($);           

            return view('front.products_search', [
                'products' => $products
            ]);
        }

    }

    public function products(Request $request)
    {
        $products = Product::paginate(15);
        return view('front.products', compact('products'));
    }

    public function product($id)
    {
        $product = Product::findOrFail($id)->load('brand');
        
        return view('front.product', compact('product'));
    }

    public function search(Request $request)
    {
        //Filter Products by Price High To Low
        if ($request->filter) {
            if ($request->filter == "HighToLow") {
                $products = Product::orderBy('price', 'DESC')->paginate(15);
            }
            elseif($request->filter == "LowToHigh"){
                $products = Product::orderBy('price', 'ASC')->paginate(15);
            }
            return view('front.products_search', [
                'products' => $products
            ]);
        }

        //Filter Products by Price Low To High
        if ($request->keyword) {
            $products = Product::where(function ($query) use ($request) {
                if ($request->has('keyword')) {
                    $query->where('name', 'LIKE', '%' . $request->keyword . '%');
                }
            })->latest()->paginate(15);
            // dd($products);
            return view('front.products_search', [
                'products' => $products
            ]);
        }

        if ($request->search) {
            $products = Product::where(function ($query) use ($request) {
                if ($request->has('search')) {
                    $query->where('name', 'LIKE', '%' . $request->search . '%');
                }
            })->latest()->paginate(15);
            // dd($products);
            return view('front.products', [
                'products' => $products
            ]);
        }
    }

    public function searchAutocomplete(Request $request)
    {
        $products=Product::where('name','LIKE',"%{$request->term}%")->select("name", 'id')->get();
        
        $data=array();
        foreach ($products as $product) {
                $data[]=array('value'=>$product->name,'id'=>$product->id);
        }
        if(count($data))
             return $data;
        else
            return ['value'=>'No Result Found','id'=>''];

        return response()->json($data);
    }

    public function toggleFavorite(Request $request)
    {
        $item = Userable::where('user_id', auth()->user()->id)->where('userable_id', $request->product_id)->delete();

        if (!$item) {
            $v = new Userable();
            $v->user_id = auth()->user()->id;
            $v->userable_id = $request->product_id;
            $v->userable_type = 'App\Models\Product';
            $v->save();
        }else{
            Userable::where('user_id', auth()->user()->id)->where('userable_id', $request->product_id)->delete();
        }

        // $favorable = $request->user()->products()->toggle($request->product_id);
      return response()->json($item);
    }

    public function profile()
    {
        return view('front.profile');
    }

    public function addCartProduct(Request $request)
    {
        // Product::findOrFail($request->product_id)->toggle([$request->product_id]);
        if ($request->cartId) {
            if (auth()->user()) {
                \Cart::session(auth()->user()->id)->remove($request->cartId);
            }else{
                \Cart::session(session()->get('guestId'))->remove($request->cartId);
            }

            return response()->json();
        }
        
        $product = Product::findOrFail($request->product_id);

        $rowId = rand(100,7000); 
        if (auth()->user()) {
            $userID = auth()->user()->id;

            \Cart::session($userID)->add(array(
                'id' => $rowId,
                'name' => $product->name,
                'price' => $product->price,
                'quantity' => 1,
                'attributes' => array(
                    'description' => $product->description,
                    'productId' => $product->id,
                    'productSize' => $request->product_size ?? '',
                    'productColor' => $request->product_color ?? '',
                ),
                'associatedModel' => $product
            ));
        }else{
            \Cart::session(session()->get('guestId'))->add(array(
                'id' => $rowId,
                'name' => $product->name,
                'price' => $product->price,
                'quantity' => 1,
                'attributes' => array(
                    'description' => $product->description,
                    'productId' => $product->id,
                    'productSize' => $request->product_size ?? '',
                    'productColor' => $request->product_color ?? '',
                ),
                'associatedModel' => $product
            ));
        }
        
        
        $cart = \Cart::getContent();

        return response()->json([
            'product' => $product,
            'productImage' => $product->getFirstMediaUrl('','thumb'),
            'cart' => $cart
        ]);
    }

    // Remove product from cart
    public function productCartRemove(Request $request)
    {
        \Cart::session(auth()->user()->id)->remove($request->cart_id);
    }

    public function productCartCounterUp(Request $request)
    {
        // dump($request->all());
        \Cart::session(auth()->user()->id)->update($request->cart_id,[
            'quantity' => array(
                'relative' => false,
                'value' => (int) $request->counter_value,
            ) 
            // 'price' => (float) $request->product_price * (float) $request->counter_value,
        ]);
    }

    public function productCartCounterDown(Request $request)
    {

    }

    public function cart()
    {
        if (auth()->user()) {
            $cartItems = \Cart::session(auth()->user()->id)->getContent();
        }elseif(Session::has('guestId')){
            // dd(session()->get('guestId'));
            $cartItems = \Cart::session(session()->get('guestId'))->getContent();
        }else{
            $cartItems = [];
        }
        return view('front.cart', compact('cartItems'));
    }

    public function cartCheckout()
    {
        if (auth()->user()) {
            $cartItems = \Cart::session(auth()->user()->id)->getContent();
        }elseif(Session::has('guestId')){
            $cartItems = \Cart::session(session()->get('guestId'))->getContent();
        }else{
            $cartItems = [];
        }

        return view('front.checkout', compact('cartItems'));
    }
}
