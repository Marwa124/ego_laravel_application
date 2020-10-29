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


ini_set('display_errors', 'true');
error_reporting(-1);

class FrontController extends Controller
{
    public function index()
    {
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

    public function singleStore()
    {
        return view('front.single_store');
    }

    public function sidebar(Request $request)
    {
        // $request->session()->put('brands', $request->brands);
        // $request->session()->put('category', $request->categoryId);
        // $brands = $request->session()->get('brands');
        // $category = $request->session()->get('category');

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
            })->latest()->paginate(2);
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
        $data = Product::select("name", 'id')
                ->where("name","LIKE","%{$request->term}%")
                ->get();
   
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
        
        $product = Product::findOrFail($request->product_id);

        $rowId = rand(100,7000); 
        $userID = auth()->user()->id;
        
        \Cart::session($userID)->add(array(
            'id' => $rowId,
            'name' => $product->name,
            'price' => $product->price,
            'quantity' => 1,
            'attributes' => array(
                'description' => $product->description,
                'productId' => $product->id,
            ),
            'associatedModel' => $product
        ));

        $cart = \Cart::getContent();
        // $cart = Cart::session($userID)->getContent($rowId);

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
        dump($request->all());
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
        $cartItems = \Cart::session(auth()->user()->id)->getContent();
        return view('front.cart', compact('cartItems'));
    }

    public function cartCheckout()
    {
        $cartItems = \Cart::session(auth()->user()->id)->getContent();
        return view('front.checkout', compact('cartItems'));
    }
}
