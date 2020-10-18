@extends('front.layouts.app')

@section('content')
    
   <!-- Mini-Cart -->
   <div class="mini-cart text-left" x-show.transition="showMiniCart" @click.away="showMiniCart=false">
    <div class="container p-3">
      <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
        <div class="col-4 cart-item-img p-3">
          <img @click="count++" class="img-fluid w-75 cursor-pointer" src="./images/p5.png" alt="">
        </div>
        <div class="col-6">
        <div class="font-weight-bold mb-1">{{$product->name}}</div>
          <div class="mb-3">Pas Normal Studios</div>
          <div class="faded mt-2">1 x EGP 929.0</div>
          <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
            <button @click="if(count > 1) {count--;}" type="button"
              class="btn py-1 dark-btn-outline border addCounter">-</button>
            <div x-text="count" class="btn py-1 border"></div>
            <button @click="count++" type="button" class="btn py-1 dark-btn-outline border subCounter">+</button>
          </div>
        </div>
        <div class="col-2 text-right">
          <i @click="showProduct=false" class="fas fa-times text-secondary cursor-pointer" type="button"></i>
        </div>
      </div>
      <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
        <div class="col-4 cart-item-img p-3">
          <img @click="count++" class="img-fluid w-75 cursor-pointer" src="{{$product->image}}" alt="">
        </div>
        <div class="col-6">
          <div class="font-weight-bold mb-1">Brand Name</div>
          <div class="mb-3">Pas Normal Studios</div>
          <div class="faded mt-2">1 x EGP 929.0</div>
          <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
            <button @click="if(count > 1) {count--;}" type="button"
              class="btn py-1 dark-btn-outline border addCounter">-</button>
            <div x-text="count" class="btn py-1 border"></div>
            <button @click="count++" type="button" class="btn py-1 dark-btn-outline border subCounter">+</button>
          </div>
        </div>
        <div class="col-2 text-right">
          <i @click="showProduct=false" class="fas fa-times text-secondary cursor-pointer" type="button"></i>
        </div>
      </div>
      <div class="px-2 py-4 d-flex flex-column">
        <div class="d-flex justify-content-between">
          <p class="font-weight-bold">Subtotal</p>
          <p class="font-weight-bold">EGP {{$product->price}}</p>
        </div>
        <a href="cart.html" class="btn dark-btn-outline my-3">View Cart</a href="cart.html">
          <a href="checkout.html" class="btn dark-btn">Checkout</a>
      </div>
    </div>
  </div>
  <!-- Modal -->
  <div class="my-modal">
  </div>
  <!-- Navbar -->
  <div class="w-100">
    <div class="top-nav">
      <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light text-left">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand navbar-brand-centered d-block responsive-logo hide-onTablet" href="index.html">
            <div style="width: 200px;">
              <img class="img-fluid position-relative" src="./images/logo.png" alt="">
            </div>
          </a>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
              <li class="nav-item mr-4">
                <a class="nav-link mx-1" @mouseenter="showMenNav=true, showWomenNav=false" href="#">Men</a>
              </li>
              <li class="nav-item mr-4">
                <a class="nav-link mx-1" @mouseenter="showMenNav=false, showWomenNav=true" x-on:mousedown.passive
                  href="#">Women</a>
              </li>
              <li class="nav-item mr-4">
                <a class="sale nav-link mx-1" @mouseenter="showMenNav=false, showWomenNav=true" x-on:mousedown.passive
                  href="#">Sale</a>
              </li>
            </ul>
            <form class="d-block mb-0 h-auto">
              <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <a class="nav-item cursor-pointer mx-2" href="login.html">
                  <div class="d-flex align-items-center">
                    <i class="far fa-heart"></i>
                    <div class="nav-link mx-1 px-0">Wishlist</div>
                  </div>
                </a>
                <a class="nav-item cursor-pointer mx-2" href="login.html">
                  <div class="d-flex align-items-center">
                    <i class="fas fa-sign-in-alt"></i>
                    <div class="nav-link mx-1 px-0">Login</div>
                  </div>
                </a>
                <a class="nav-item mini-cart-toggler hide-onTablet cursor-pointer mx-2"
                  @click="showMiniCart = !showMiniCart">
                  <div class="d-flex align-items-center">
                    <div class="cart-icon-container position-relative">
                      <span class="cart-notification text-light font-weight-bold">3</span>
                      <i class="fas fa-shopping-cart"></i>
                    </div>
                    <div class="nav-link mx-1 px-0">Cart</div>
                  </div>
                </a>
              </ul>
            </form>
          </div>
        </nav>
        <div class="position-relative hide-onTablet">
          <div class="py-2 ml-3 d-flex align-items-center">
            <ul class="d-flex men" style="list-style-type: none; padding: 0;">
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show.transition.origin.top="showMenNav" href="products.html">Brands</a>
                <div class="secondary-nav">
                  <div class="container">
                    <div class="row text-left p-3 px-4">
                      <div class="col-3">
                        <p class="mb-2">TRENDS</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Volume Sleeves</a>
                          <a class="sub-link" href="">New Brands to know</a>
                          <a class="sub-link" href="">Autumn Winter 2020</a>
                          <a class="sub-link" href="">Exclusive & Collaborations</a>
                          <a class="sub-link" href="">Back in stock</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">AESTHETIC</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Arty</a>
                          <a class="sub-link" href="">Classic</a>
                          <a class="sub-link" href="">Edgy</a>
                          <a class="sub-link" href="">Feminine</a>
                          <a class="sub-link" href="">Street</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">MOMENT</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Dress Up</a>
                          <a class="sub-link" href="">Loungewear</a>
                          <a class="sub-link" href="">Summer wardrobe</a>
                          <a class="sub-link" href="">Wedding day</a>
                          <a class="sub-link" href="">Work essentials</a>
                        </div>
                      </div>
                      <div class="col-3 pr-2">
                        <div class="">
                          <img class="nav-img w-100 img-fluid" src="./images/nav-img.jpg" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show.transition.origin.top="showMenNav" href="products.html">Cloths</a>
                <div class="secondary-nav">
                  <div class="container">
                    <div class="row text-left p-3 px-4">
                      <div class="col-3">
                        <p class="mb-2">TRENDS</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Volume Sleeves</a>
                          <a class="sub-link" href="">New Brands to know</a>
                          <a class="sub-link" href="">Autumn Winter 2020</a>
                          <a class="sub-link" href="">Exclusive & Collaborations</a>
                          <a class="sub-link" href="">Back in stock</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">AESTHETIC</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Arty</a>
                          <a class="sub-link" href="">Classic</a>
                          <a class="sub-link" href="">Edgy</a>
                          <a class="sub-link" href="">Feminine</a>
                          <a class="sub-link" href="">Street</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">MOMENT</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Dress Up</a>
                          <a class="sub-link" href="">Loungewear</a>
                          <a class="sub-link" href="">Summer wardrobe</a>
                          <a class="sub-link" href="">Wedding day</a>
                          <a class="sub-link" href="">Work essentials</a>
                        </div>
                      </div>
                      <div class="col-3 pr-2">
                        <div class="">
                          <img class="nav-img w-100 img-fluid" src="./images/nav-img-2.jpg" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show.transition.origin.top="showMenNav" href="products.html">Shoes</a>
                <div class="secondary-nav">
                  <div class="container">
                    <div class="row text-left p-3 px-4">
                      <div class="col-3">
                        <p class="mb-2">TRENDS</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Volume Sleeves</a>
                          <a class="sub-link" href="">New Brands to know</a>
                          <a class="sub-link" href="">Autumn Winter 2020</a>
                          <a class="sub-link" href="">Exclusive & Collaborations</a>
                          <a class="sub-link" href="">Back in stock</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">AESTHETIC</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Arty</a>
                          <a class="sub-link" href="">Classic</a>
                          <a class="sub-link" href="">Edgy</a>
                          <a class="sub-link" href="">Feminine</a>
                          <a class="sub-link" href="">Street</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">MOMENT</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Dress Up</a>
                          <a class="sub-link" href="">Loungewear</a>
                          <a class="sub-link" href="">Summer wardrobe</a>
                          <a class="sub-link" href="">Wedding day</a>
                          <a class="sub-link" href="">Work essentials</a>
                        </div>
                      </div>
                      <div class="col-3 pr-2">
                        <div class="">
                          <img class="nav-img w-100 img-fluid" src="./images/nav-img-3.jpg" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
            <ul class="d-flex women" style="list-style-type: none; padding: 0;">
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show.transition.origin.top="showWomenNav" href="products.html">Brands</a>
                <div class="secondary-nav">
                  <div class="container">
                    <div class="row text-left p-3 px-4">
                      <div class="col-3">
                        <p class="mb-2">TRENDS</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Volume Sleeves</a>
                          <a class="sub-link" href="">New Brands to know</a>
                          <a class="sub-link" href="">Autumn Winter 2020</a>
                          <a class="sub-link" href="">Exclusive & Collaborations</a>
                          <a class="sub-link" href="">Back in stock</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">AESTHETIC</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Arty</a>
                          <a class="sub-link" href="">Classic</a>
                          <a class="sub-link" href="">Edgy</a>
                          <a class="sub-link" href="">Feminine</a>
                          <a class="sub-link" href="">Street</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">MOMENT</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Dress Up</a>
                          <a class="sub-link" href="">Loungewear</a>
                          <a class="sub-link" href="">Summer wardrobe</a>
                          <a class="sub-link" href="">Wedding day</a>
                          <a class="sub-link" href="">Work essentials</a>
                        </div>
                      </div>
                      <div class="col-3 pr-2">
                        <div class="">
                          <img class="nav-img w-100 img-fluid" src="./images/nav-img.jpg" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show.transition.origin.top="showWomenNav" href="products.html">Brands</a>
                <div class="secondary-nav">
                  <div class="container">
                    <div class="row text-left p-3 px-4">
                      <div class="col-3">
                        <p class="mb-2">TRENDS</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Volume Sleeves</a>
                          <a class="sub-link" href="">New Brands to know</a>
                          <a class="sub-link" href="">Autumn Winter 2020</a>
                          <a class="sub-link" href="">Exclusive & Collaborations</a>
                          <a class="sub-link" href="">Back in stock</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">AESTHETIC</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Arty</a>
                          <a class="sub-link" href="">Classic</a>
                          <a class="sub-link" href="">Edgy</a>
                          <a class="sub-link" href="">Feminine</a>
                          <a class="sub-link" href="">Street</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">MOMENT</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Dress Up</a>
                          <a class="sub-link" href="">Loungewear</a>
                          <a class="sub-link" href="">Summer wardrobe</a>
                          <a class="sub-link" href="">Wedding day</a>
                          <a class="sub-link" href="">Work essentials</a>
                        </div>
                      </div>
                      <div class="col-3 pr-2">
                        <div class="">
                          <img class="nav-img w-100 img-fluid" src="./images/nav-img-2.jpg" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show.transition.origin.top="showWomenNav" href="products.html">Brands</a>
                <div class="secondary-nav">
                  <div class="container">
                    <div class="row text-left p-3 px-4">
                      <div class="col-3">
                        <p class="mb-2">TRENDS</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Volume Sleeves</a>
                          <a class="sub-link" href="">New Brands to know</a>
                          <a class="sub-link" href="">Autumn Winter 2020</a>
                          <a class="sub-link" href="">Exclusive & Collaborations</a>
                          <a class="sub-link" href="">Back in stock</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">AESTHETIC</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Arty</a>
                          <a class="sub-link" href="">Classic</a>
                          <a class="sub-link" href="">Edgy</a>
                          <a class="sub-link" href="">Feminine</a>
                          <a class="sub-link" href="">Street</a>
                        </div>
                      </div>
                      <div class="col-3">
                        <p class="mb-2">MOMENT</p>
                        <div class="sublinks-group d-flex flex-column">
                          <a class="sub-link" href="">Dress Up</a>
                          <a class="sub-link" href="">Loungewear</a>
                          <a class="sub-link" href="">Summer wardrobe</a>
                          <a class="sub-link" href="">Wedding day</a>
                          <a class="sub-link" href="">Work essentials</a>
                        </div>
                      </div>
                      <div class="col-3 pr-2">
                        <div class="">
                          <img class="nav-img w-100 img-fluid" src="./images/nav-img-3.jpg" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
            <form class="search-form">
              <div class="form-group mr-3 mb-0">
                <div class="input-wrapper d-flex align-items-center" tabindex="1">
                  <input type="text" class="form-control search-input" placeholder="Search">
                  <i class="fas fa-search cursor-pointer"></i>
                </div>
              </div>
            </form>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- Annoncement -->
  <div class="py-3 bar" style="margin-top: 180px;">
    <p class="m-0 text-dark">Open Doors To A World Of Fashion</p>
  </div>
  <div class="container py-4" x-data="{showMiniCart:false, showMenNav:false, showWomenNav:false}">
    <div class="product ml-4 text-left my-5">
      <!-- Size Guide Modal -->
      <div class="modal fade bd-example-modal-lg" id="defaultModal" tabindex="-1" role="dialog"
        aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <div class="d-flex flex-column">
                <p style="font-size: smaller;" class="text-left modal-title">SIZE GUIDE</p>
                <p style="font-size: smaller;" class="text-left modal-title">MEN - CLOTHS</p>
              </div>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="d-flex">
                <div style="width:40%">
                  <img class="w-100" src="./images/product.png" alt="">
                </div>
                <div class="ml-5">
                  <h5>Brand Name</h5>
                  <p style="font-weight: 300;">Lorem ipsum dolor sit</p>
                </div>
              </div>
              <div>
                <p style="display:inline-block; border-bottom: 3px solid black; cursor: pointer;">Convertion Chart</p>
                <!-- Grid -->
                <table class="table table-striped text-center" style="font-weight: 300;">
                  <thead>
                    <tr>
                      <th style="font-weight: 500;" scope="col">Standard</th>
                      <th style="font-weight: 500;" scope="col">Europe</th>
                      <th style="font-weight: 500;" scope="col">
                        <div class="form-group mb-0">
                          <select class="form-control" id="exampleFormControlSelect1">
                            <option>US</option>
                            <option>UK</option>
                            <option>Brazil</option>
                            <option>Japan</option>
                            <option>China</option>
                          </select>
                        </div>
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>XXS</td>
                      <td>32</td>
                      <td>0</td>
                    </tr>
                    <tr>
                      <td>XS</td>
                      <td>34</td>
                      <td>2</td>
                    </tr>
                    <tr>
                      <td>S</td>
                      <td>36</td>
                      <td>4</td>
                    </tr>
                    <tr>
                      <td>M</td>
                      <td>38</td>
                      <td>6</td>
                    </tr>
                    <tr>
                      <td>L</td>
                      <td>40</td>
                      <td>8</td>
                    </tr>
                    <tr>
                      <td>XL</td>
                      <td>42</td>
                      <td>10</td>
                    </tr>
                    <tr>
                      <td>XXL</td>
                      <td>44</td>
                      <td>12</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="modal-footer">
            </div>
          </div>
        </div>
      </div>
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
            <h5 class="mb-3 font-weight-bold">Brand Name</h5>
            <h1 class="mb-3">Lani Felted Wool Jacket</h1>
            <p>EGP 12,999</p>
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