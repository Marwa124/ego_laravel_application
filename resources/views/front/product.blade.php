@extends('front.layouts.app')
@section('title_name')
    {{$product->name . ' ' .trans('product')}}
@endsection
@section('content')
    
  <!-- Annoncement -->
  <div class="py-3 bar" style="margin-top: 180px;">
    <p class="m-0 text-dark">Open Doors To A World Of Fashion</p>
  </div>
  <div class="container py-4" x-data="{showMiniCart:false, showMenNav:false, showWomenNav:false}">
    <div class="product ml-4 text-left my-5">
      <div class="row">
        <div class="col-12 col-lg-6 row">
          <div class="col-2">
            <img class="img-fluid" src="./images/product.png" alt="">
            <img class="img-fluid" src="./images/sp1.png" alt="">
            <img class="img-fluid" src="./images/sp2.png" alt="">
            <img class="img-fluid" src="./images/sp3.png" alt="">
            <img class="img-fluid" src="./images/sp4.png" alt="">
          </div>
          <div class="product-img col-8">
            <img class="img-fluid" src="{{env('App_Url'). 'storage/app/public/' . $product->getMedia('image')->first()->id .'/'. $product->getMedia('image')->first()->file_name}}" alt=""> 

          {{-- <img class="img-fluid" src="{{$product->getMedia('image')->first()->id}}" alt=""> --}}
          </div>
        </div>
        <div class="col-12 col-lg-6">
          <div class="mb-5">
            <h5 class="mb-3 font-weight-bold">{{$product->brand->name}}</h5>
            <h1 class="mb-3">{{$product->name}}</h1>
            <p>EGP {{$product->price}}</p>
          </div>
          <div class="mb-4">
            <h6 class="font-weight-bold">Select a Color</h6>
            <div class="input-group ">
              <select class="custom-select" id="inputGroupSelect01">
                <option selected>Choose...</option>
                <option value="1">Brown</option>
                <option value="2">Black</option>
                <option value="3">Green</option>
              </select>
            </div>
          </div>
          <div class="mb-3">
            <h6 class="font-weight-bold">Select a Size</h6>
            <div class="row mb-5">
              <div class="col d-flex">
                <button class="btn dark-btn-outline px-3 mx-2">6</button>
                <button class="btn dark-btn-outline px-3 mx-2">8</button>
                <button class="btn dark-btn-outline px-3 mx-2">10</button>
                <button class="btn dark-btn-outline px-3 mx-2">12</button>
                <button class="btn dark-btn-outline px-3 mx-2">14</button>
              </div>
              <div class="col">
                <button class="btn" data-toggle="modal" data-target=".bd-example-modal-lg">
                  <img src="./images/ruler.png" alt=""> Size Guide
                </button>
              </div>
            </div>
          </div>
          <div class="d-flex mb-5">
            <a href="cart.html" class="btn dark-btn py-2 ml-2 mr-3">Add to Cart</a>
            <a href=""><i class="far fa-heart fa-2x pt-2"></i></a>
          </div>
          <div>
            <h6 class="font-weight-bold">Estimated Delivery</h6>
            <p class="ml-2">Jul 28 - Jul 31</p>
          </div>
        </div>
      </div>
    </div>
    <section class="description text-left px-4 w-100">
      <div class="w-100">
        <div class="description-navigation d-flex justify-content-between">
          <a class="clickedDescription" href="">Details</a>
          <a class="clickedDescription" href="">Size & Fit</a>
          <a class="clickedDescription" href="">Shipping</a>
        </div>
      </div>
      <div class="row mt-4">
        <div class="col-12 col-sm-6 pr-5">
          <div class="mb-5">
            <p class="font-weight-bold">Tiger in The Rain</p>
            <p>sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
              labore et dolore magna aliqua. Ut enim ad minim veniam</p>
          </div>
          <div class="mb-5">
            <p class="font-weight-bold">Highlights</p>
            <ul class="pl-3">
              <li>Cream</li>
              <li>Tweet</li>
              <li>V-Neck</li>
              <li>Font-zip Fastening</li>
              <li>Cape-effect overlay</li>
              <li>Cape-effect overlay</li>
              <li>sed do eiusmod tempor incididunt ut
                labore et dolore magna</li>
            </ul>
          </div>
        </div>
        <div class="col-12 col-sm-6">
          <div class="mb-5">
            <p class="font-weight-bold">Composition</p>
            <p>Lorem ipsum dolor sit amet.</p>
          </div>
          <div class="mb-5">
            <p class="font-weight-bold">Washing Instructions </p>
            <p>Dry Clean Only.</p>
          </div>
          <div class="mb-5">
            <p> <span class="font-weight-bold">Designer Style ID:</span> 11222DD</p>
          </div>
          <div class="mb-5">
            <p class="font-weight-bold">Wearing</p>
            <p>Model is 1.78 m wearing size 38 (FR)</p>
            <p>The Model is also styled with: Bottega Venetta 90mm leather sed do eiusmod tempor incididunt
              ut
              labore et dolore magn</p>
          </div>
        </div>
      </div>
    </section>
    <section class="contact-us border-top py-4">
      <h4 class="mb-4">Contact Us</h4>
      <div class="d-flex justify-content-center mb-2">
        <div class="d-flex mr-3">
          <div class="mr-2">
            <img src="./images/email.png" alt="">
          </div>
          <p>By E-mail
            <a class="border-bottom" href="login.html">customerservice@ego.com</a>
          </p>
        </div>
        <div class="d-flex mr-3">
          <div class="mr-2">
            <img src="./images/phone.png" alt="">
          </div>
          <p>
            Order By Phone
            <a class="border-bottom" href="login.html">(+2)0201234567890</a>
          </p>
        </div>
      </div>
      <p>ID: 09876521</p>
    </section>
    <section class="likes">
      <div class="w-100">
        <h3 class="font-weight-bold m-5">You may also like</h3>
      </div>
      <div class="container row">
        <div class="col-6 col-md-3 mb-5">
          <div class="w-auto position-relative">
            <div class="fav-icon">
              <i class="heart-icon far fa-heart px-1"></i>
            </div>
            <a href="product.html">
              <img class="img-fluid w-100 mb-3" src="./images/p2.png" alt="">
            </a>
          </div>
          <h4 class="font-weight-bold mb-1">Brand Name</h4>
          <p>Charlie white leg pants</p>
          <p>EGP 6,599</p>
        </div>
        <div class="col-6 col-md-3 mb-5">
          <div class="w-auto position-relative">
            <div class="fav-icon">
              <i class="heart-icon far fa-heart px-1"></i>
            </div>
            <a href="product.html">
              <img class="img-fluid w-100 mb-3" src="./images/p1.png" alt="">
            </a>
          </div>
          <h4 class="font-weight-bold mb-1">Brand Name</h4>
          <p>Charlie white leg pants</p>
          <p>EGP 6,599</p>
        </div>
        <div class="col-6 col-md-3 mb-5">
          <div class="w-auto position-relative">
            <div class="fav-icon">
              <i class="heart-icon far fa-heart px-1"></i>
            </div>
            <a href="product.html">
              <img class="img-fluid w-100 mb-3" src="./images/p3.png" alt="">
            </a>
          </div>
          <h4 class="font-weight-bold mb-1">Brand Name</h4>
          <p>Charlie white leg pants</p>
          <p>EGP 6,599</p>
        </div>
        <div class="col-6 col-md-3 mb-5">
          <div class="w-auto position-relative">
            <div class="fav-icon">
              <i class="heart-icon far fa-heart px-1"></i>
            </div>
            <a href="product.html">
              <img class="img-fluid w-100 mb-3" src="./images/p6.png" alt="">
            </a>
          </div>
          <h4 class="font-weight-bold mb-1">Brand Name</h4>
          <p>Charlie white leg pants</p>
          <p>EGP 6,599</p>
        </div>
      </div>
    </section>
  </div>

  @endsection