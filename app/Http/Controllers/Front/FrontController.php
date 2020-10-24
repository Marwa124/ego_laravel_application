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
use App\Models\Userable;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;

class FrontController extends Controller
{
    public function index()
    {
        return view('front.index');
    }

    public function products(Request $request)
    {
        $products = Product::paginate(15);
        if ($request->page) {
            return view('front.products_search', compact('products'));
        }
        return view('front.products', compact('products'));
    }

    public function product($id)
    {
        $product = Product::findOrFail($id)->load('brand');
        
        return view('front.product', compact('product'));
    }

    public function search(Request $request)
    {
        // dd($request->keyword);
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
            // dd("vvvv");
        }else{
            Userable::where('user_id', auth()->user()->id)->where('userable_id', $request->product_id)->delete();
            // dd('ppp');
        }

        // $favorable = $request->user()->products()->toggle($request->product_id);
      return response()->json($item);
    }

    public function profile()
    {
        return view('front.profile');
    }

    public function cart(Request $request)
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
        \Cart::session(auth()->user()->id)->update($request->cart_id,[
            'quantity' => (int) $request->counter_value,
            'price' => (float) $request->product_price * (float) $request->counter_value,
        ]);
    }

    public function productCartCounterDown(Request $request)
    {

    }
}
