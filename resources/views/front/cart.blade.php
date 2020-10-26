
@extends('front.layouts.app')
@section('title_name')
    {{trans('products')}}
@endsection
@section('content')

  <!-- Annoncement -->
  <div class="announcement py-3 bar">
    <div class="m-0 text-dark">YOUR FASHION DESTINATION</div>
  </div>

  <main class="container py-4" x-data="{showMiniCart:false, showMenNav:false, showWomenNav:false}">
    <h4 class="my-5 font-weight-bold">Shopping Cart</h4>
    <div class="container d-lg-flex text-left">
      <div class="cart-container">
        <div class="row font-weight-bold hide-onTablet mb-5">
          <div class="col-2">Product</div>
          <div class="col-3">Description</div>
          <div class="col-2">Price</div>
          <div class="col-2">Units</div>
          <div class="col-2">Total</div>
          <div class="col-1"></div>
        </div>
        <div class="products">
            @foreach ($cartItems as $item)
                <div x-data="{ count: 1 }" class="row product-grid py-5">
                    <div class="col-2">
                    <img @click="count++" class="img-fluid w-small-100 w-50 cursor-pointer" src="./images/pc1.png"
                        alt="product">
                    </div>
                    <div class="col-3">
                    <div class="font-weight-bold mb-1">{{$item->name}}</div>
                    <div class="mb-2">{{$item->attributes->description}}</div>
                    <div class="faded">pas #{{$item->id}}</div>
                    </div>
                    <div class="col-2">
                    <div>
                        {{$item->price}} EGP
                    </div>
                    </div>
                    <div class="col-2">
                    <div class="btn-group position-quantity-responsive" role="group" aria-label="Basic example">
                        <button @click="if(count > 1) {count--;}" type="button"
                        class="btn py-1 dark-btn-outline border addCounter">-</button>
                        {{-- <div x-text="count" class="btn py-1 border"></div> --}}
                        <div class="btn py-1 border">{{$item->quantity}}</div>
                        <button @click="count++" type="button" class="btn py-1 dark-btn-outline border subCounter">+</button>
                    </div>
                    </div>
                    <div class="col-1 font-weight-bold">{{(float) $item->price * (int) $item->quantity}} EGP</div>
                    <div class="col-1"><i
                        class="fas fa-times text-secondary responsive-icon position-icon-responsive cursor-pointer"
                        type="button"></i></div>
                </div>
            @endforeach
        </div>
      </div>
      <div class="row mt-5">
        <div class="summary">
          <h5 class="font-weight-bold">Summary</h5>
          <div class="d-flex justify-content-between border-bottom py-3">
            <p>Total Products</p>
            <?php
                $totalPrice = 0;
                foreach ($cartItems as $key => $value) {
                    $totalPrice += ((float) $value->price * (int) $value->quantity);
                }
            ?>
            <p>{{$totalPrice}} EGP</p>
          </div>
          <div class="d-flex justify-content-between border-bottom py-3">
            <p>Estimated Shipping Cost</p>
            <p>EGP 400 EGP</p>
          </div>
          <div class="d-flex justify-content-between font-weight-bold border-bottom py-3">
            <p>Total</p>
            <p>EGP 2200 EGP</p>
          </div>
       
          <div class="form-group d-block mb-0">
            <input type="text" class="form-control" placeholder="Enter Your Voucher">
          </div>
          <div class="d-flex justify-content-around font-weight-bold py-3">
            <a href="{{route('front.cart.checkout')}}" type="button" class="btn btn-block dark-btn">
              Checkout
            </a>
          </div>
          <div class="d-flex">
            <div class="p-1" style="width: 50px;">
              <img class="w-100" src="/images/master-card.jpg" alt="">
            </div>
            <div class="p-1" style="width: 50px;">
              <img class="w-100" src="/images/Visa_Inc._logo.svg.png" alt="">
            </div>
            {{-- <div class="p-1" style="width: 50px;">
              <img class="w-100" src="/images/Visa_Inc._logo.svg.png" alt="">
            </div>
            <div class="p-1" style="width: 50px;">
              <img class="w-100" src="/images/master-card.jpg" alt="">
            </div> --}}
            {{-- <div class="p-1" style="width: 50px;">
              <img class="w-100" src="/images/Visa_Inc._logo.svg.png" alt="">
            </div>
            <div class="p-1" style="width: 50px;">
              <img class="w-100" src="/images/master-card.jpg" alt="">
            </div> --}}
          </div>
          <div>
            <p style="font-size: 12px;">Your transaction is safe and secure</p>
          </div>
        </div>
      </div>
    </div>
  </main>



  @endsection