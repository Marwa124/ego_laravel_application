<div class="modal fade show" id="defaultModal" tabindex="-1" role="dialog" aria-labelledby="defaultModalTitle"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered " role="document">
      <div class="modal-content rounded-0">
        <div class="p-3">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body px-5">
          <h5 class="font-weight-bold">What's New?</h5>
          <p class="faded mb-0">Sign up for exclusive daily sales access and tailored new arrivals</p>
          <form action="" class="d-md-flex py-4">
            <input type="email" class="form-control mr-4" id="" placeholder="name@example.com">
            <button type="button" class="btn dark-btn font-weight-bold px-5">Subscribe</button>
          </form>
          <div class="mb-5">
            <p class="mb-0 faded">To opt, click Unsubscribe at the bottom of out emails.</p>
            <p>
              <span class="faded">By signing up you agree with our</span>
              <a href="index.html" class="highlighted-text">Terms & Conditions</a>
              <span class="faded">and</span>
              <a href="index.html" class="highlighted-text">Privacy Policy</a>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>



  <!-- Modal -->
  <div class="my-modal">
  </div>

  <!-- Navbar -->
  <div class="w-100">
    <div class="top-nav">
      <div class="collapse" id="collapseProfile">
        <div class="" style="background-color: #E9E9E9;">
          <div class="container px-5 py-3 text-left">
            <div class="d-flex justify-content-between align-items-end mb-4">
              <h3 class="">John David</h3>
              <a data-toggle="collapse" href="#collapseProfile" role="button" aria-expanded="false"
                aria-controls="collapseProfile">
                <img src="/images/cancel.png" alt="">
              </a>
            </div>
            <div class="d-flex justify-content-between">
              <div class="d-flex flex-column">
                <a class="sub-link" href="">Details & Password</a>
                <a class="sub-link" href="">Orders & Returns</a>
                <a class="sub-link" href="">Refer a Friend</a>
                <a class="sub-link" href="">My Preferences</a>
                <a class="sub-link" href="" onclick="event.preventDefault();getElementById('logout-form').submit()">Logout</a>
                <form action="{{ url('logout') }}" method="POST" style="display:none" id="logout-form"> 
                  @csrf
                  
                 </form>
              </div>
              <div class="d-flex">
                <a href="{{ url('profile') }}" class="btn dark-btn px-5 d-flex align-self-end font-weight-bold">My Account</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container py-4">
        <nav class="navbar navbar-expand-lg navbar-light text-left">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand navbar-brand-centered d-block responsive-logo hide-onTablet" href="{{ url('/') }}">
            <div style="width: 200px;">
              <img class="img-fluid position-relative" src="{{ asset('images/logo.png') }}" alt="">
            </div>
          </a>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
              <li class="nav-item mr-4">
                <a class="nav-link mx-1" @mouseenter="showMenNav=true, showWomenNav=false" href="#">Men</a>
              </li>
              <li class="nav-item mr-4">
                <a class="nav-link mx-1" @mouseenter="showMenNav=false, showWomenNav=true"
                  href="#">Women</a>
              </li>
              <li class="nav-item mr-4">
                <a class="sale nav-link mx-1"
                  href="#">Sale</a>
              </li>
            </ul>
            <div class="d-block mb-0 h-auto">
              <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <a href="{{ url('stores') }}" class="ml-3 nav-item cursor-pointer mx-2 d-flex align-items-center nav-icon ">
                  Stores
                </a>

                @auth
                <a class="nav-item cursor-pointer d-flex align-items-center nav-icon" data-toggle="collapse"
                  href="#collapseProfile" role="button" aria-expanded="false" aria-controls="collapseProfile">
                  <i class=" far fa-user" style="font-size: 1.2rem;"></i>
                  <p class="mb-0 ml-1">{{ auth()->user()->name }}</p>
                </a>
                @endauth
                @guest

                <a class="nav-item cursor-pointer d-flex align-items-center nav-icon"  href="{{ url('login') }}" >
                <i class=" far fa-user" style="font-size: 1.2rem;"></i>
                <p class="mb-0 ml-1">Login</p>|
              
              </a>
                <a class="nav-item cursor-pointer d-flex align-items-center nav-icon"  href="{{ url('register') }}" >
                <i class=" far fa-user" style="font-size: 1.2rem;"></i>
                <p class="mb-0 ml-1">register</p>
              </a>

                @endguest
                <a class="nav-item cursor-pointer d-flex align-items-center nav-icon mr-3 ml-3" href="{{ url('wishlist') }}">
                  <i class="far fa-heart" style="font-size: 1.2rem;"></i>
                </a>
                <a class="nav-item mini-cart-toggler hide-onTablet cursor-pointer">
                  <div class="d-flex align-items-center">
                    <div class="cart-icon-container position-relative" @click="showMiniCart = !showMiniCart">
                      <span class="cart-notification text-light font-weight-bold">3</span>
                      <i class="fas fa-shopping-cart" style="font-size: 1.2rem;"></i>
                    </div>










                    {{-- <!-- Mini-Cart -->
                    <div class="mini-cart text-left" x-show.transition="showMiniCart" @click.away="showMiniCart=false">
                      <div class="container p-3">
                        <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }"
                          x-show="showProduct">
                          <div class="col-4 cart-item-img p-3">
                            <img @click="count++" class="img-fluid w-75 cursor-pointer" src="./images/p5.png" alt="">
                          </div>
                          <div class="col-6">
                            <div class="font-weight-bold mb-1">Brand Name</div>
                            <div class="mb-3">Pas Normal Studios</div>
                            <div class="faded mt-2">1 x EGP 929.0</div>
                            <div class="btn-group position-quantity-responsive mt-4" role="group"
                              aria-label="Basic example">
                              <button @click="if(count > 1) {count--;}" type="button"
                                class="btn py-1 dark-btn-outline border addCounter">-</button>
                              <div x-text="count" class="btn py-1 border"></div>
                              <button @click="count++" type="button"
                                class="btn py-1 dark-btn-outline border subCounter">+</button>
                            </div>
                          </div>
                          <div class="col-2 text-right">
                            <i @click="showProduct=false" class="fas fa-times text-secondary cursor-pointer"
                              type="button"></i>
                          </div>
                        </div>
                        <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }"
                          x-show="showProduct">
                          <div class="col-4 cart-item-img p-3">
                            <img @click="count++" class="img-fluid w-75 cursor-pointer" src="./images/product.png"
                              alt="">
                          </div>
                          <div class="col-6">
                            <div class="font-weight-bold mb-1">Brand Name</div>
                            <div class="mb-3">Pas Normal Studios</div>
                            <div class="faded mt-2">1 x EGP 929.0</div>
                            <div class="btn-group position-quantity-responsive mt-4" role="group"
                              aria-label="Basic example">
                              <button @click="if(count > 1) {count--;}" type="button"
                                class="btn py-1 dark-btn-outline border addCounter">-</button>
                              <div x-text="count" class="btn py-1 border"></div>
                              <button @click="count++" type="button"
                                class="btn py-1 dark-btn-outline border subCounter">+</button>
                            </div>
                          </div>
                          <div class="col-2 text-right">
                            <i @click="showProduct=false" class="fas fa-times text-secondary cursor-pointer"
                              type="button"></i>
                          </div>
                        </div>
                        <div class="px-2 py-4 d-flex flex-column w-100">
                          <div class="d-flex justify-content-between">
                            <p class="font-weight-bold">Subtotal</p>
                            <p class="font-weight-bold">EGP 17,444</p>
                          </div>
                          <a href="cart.html" class="btn dark-btn-outline my-3">View Cart</a href="cart.html">
                          <a href="checkout.html" class="btn dark-btn">Checkout</a>
                        </div>
                      </div>
                    </div> --}}



                  <!-- Mini-Cart -->
                  <div class="mini-cart text-left" x-show.transition="showMiniCart" @click.away="showMiniCart=false">
                    <div class="container p-3">

                      @auth
                      @php 
                      
                    $items = \Cart::session(auth()->user()->id)->getContent();
                      @endphp

                    


                  @else
                  @php 
                      
                    $items = \Cart::getContent();

                  @endphp
                  @endauth

                  @if (count($items) > 0)

                  @foreach ($items as $item)


                  @php
                  // $productPrice = App\Models\Product::find($item->attributes->productId)->price;
                  $product = App\Models\Product::find($item->attributes->productId);

                  //  dump($item); 
                  @endphp
                          <div id="mini-cart" class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
                            <div class="col-4 cart-item-img p-3">
                              <img @click="count++" class="img-fluid w-75 cursor-pointer" src="{{$product->getFirstMediaUrl('', 'thumb')}}" alt="">
                            </div>
                            <div class="col-6">
                              <div class="font-weight-bold mb-1">{{$item->name}}</div>
                              <div class="mb-3"> <?php echo substr($item->attributes->description, 0, 20) ?> ...</div>
                              <div class="faded mt-2">
                                <div class="multipleCount">{{$item->quantity}}</div> 
                                x EGP 
                                <div class="productPrice">{{$product->price}}</div> 
                              </div>
                              <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
                                <button @click="if(count > 1) {count--;}" type="button"
                                  class="btn py-1 dark-btn-outline border addCounter">-</button>
                                {{-- <div x-text="count" class="counterValue btn py-1 border">{{$item->quantity}}</div> --}}
                                <div class="counterValue btn py-1 border">{{$item->quantity}}</div>
                                <button @click="count++" type="button" data-cart="{{$item->id}}" class="btn py-1 dark-btn-outline border subCounter">+</button>
                              </div>
                            </div>
                            <div class="col-2 text-right">
                              <i @click="showProduct=false" data-cart="{{$item->id}}" class="removeCartProduct fas fa-times text-secondary cursor-pointer" type="button"></i>
                            </div>
                          </div>
                            
                        @endforeach
                          
                      @else
                          No Items added
                      @endif
                      <div class="px-2 py-4 d-flex flex-column">
                        <div class="d-flex justify-content-between">
                          <p class="font-weight-bold">Subtotal</p>
                          <p class="font-weight-bold">EGP 17,444</p>
                        </div>
                        <a href="{{route('front.cart')}}" class="btn dark-btn-outline my-3">View Cart</a href="cart.html">
                        <a href="checkout.html" class="btn dark-btn">Checkout</a>
                      </div>
                    </div>
                  </div>













                  </div>
                </a>
              </ul>
            </div>
          </div>
        </nav>
        <div class="position-relative hide-onTablet">
          <div class="py-3 ml-3 d-flex align-items-center">
            <ul class="d-flex men mb-0" style="list-style-type: none; padding: 0;">
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show="showMenNav" href="products.html">Brands</a>
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
                <a class="nav-link " x-show="showMenNav" href="products.html">Cloths</a>
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
                <a class="nav-link " x-show="showMenNav" href="products.html">Shoes</a>
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
            <ul class="d-flex women mb-0" style="list-style-type: none; padding: 0;">
              <li class="hovered-link" style="text-decoration: none;">
                <a class="nav-link " x-show="showWomenNav" href="products.html">Bags</a>
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
                <a class="nav-link " x-show="showWomenNav" href="products.html">Shoes</a>
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
                <a class="nav-link " x-show="showWomenNav" href="products.html">Cloths</a>
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
            <form class="search-form" action="{{route('front.products.price.filter')}}">
              <div class="form-group mr-3 mb-0">
                <div class="input-wrapper d-flex align-items-center" tabindex="1">
                  <input type="text" class="form-control search-input" name="search" placeholder="Search">
                  <div id="search-btn">
                    <i id="search-icon" class="fas fa-search cursor-pointer"></i>
                  </div>
        
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
    
    @push('scripts')
    
  </div>
  <ul class="result_search">
  </ul>
    
      <script>

        //Remove Product From Cart
    $(".removeCartProduct").click(function () {
        var cartId = $(this).data('cart');
        $.ajax({
            url: '{{route('front.cart.product.remove')}}',
            type: 'get',
            data: {
                cart_id: cartId
            },
            success: function (data) {
                // console.log('done');
                var counterDown = parseInt($('.cartCounts').html()) - 1;
                $('.cartCounts').html(counterDown);
            }
        });
    });

    
    //Increaser counter in Product Cart
    $(".subCounter").click(function () {
        var cartId = $(this).data('cart');
        var counterValue = parseInt($('.counterValue').html()) + 1;
        var productPrice = parseFloat($('.productPrice').html());
        
        console.log(counterValue);
        console.log(productPrice);
        $.ajax({
            url: '{{route('front.cart.product.counterUp')}}',
            type: 'get',
            data: {
                cart_id: cartId,
                counter_value: counterValue,
                product_price: productPrice,
            },
            success: function (data) {
                // console.log(data);
                $('.multipleCount').html(counterValue);
                $('.counterValue').html(counterValue);
                // $('.productPrice').html(data.price);
            }
        });
    });

      </script>


<script>
  // Add to Cart
  $(".add_to_cart").click(function (e) {
      e.preventDefault();
      var productId = $(this).data('product');
      var productSize = $('input[name=size]').val();
      var productColor = $('.productColor').val();

      // console.log(productSize);
      $.ajax({
          url: '{{route('front.cart.product.add')}}', 
          type: 'get',
          data: {
              product_id: productId,
              product_size: productSize,
              product_color: productColor,
          },
          success: function (data) {
            // console.log(data.productImage);
              var cartId = '';

              var array = $.map(data.cart, function(value, index){
                  return [value];
              });
              for (let i = 0; i < array.length; i++) {
                  const element = array[i];
                  if (element.attributes.productId == data.product.id) {
                      // console.log('success');
                      cartId = element.id;
                  }
              }
              $('.cartCounts').html(array.length);
              // $(e.target).css('backgroundColor', 'green');
              
              $('#mini-cart').prepend(`
              <div id="mini-cart" class="cart-item mb-2 pb-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
                  <div class="col-4 cart-item-img p-3">
                  <img @click="count++" class="img-fluid w-75 cursor-pointer" src="${data.productImage}" alt="">
                  </div>
                  <div class="col-6">
                  <div class="font-weight-bold mb-1">${data.product.name}</div>
                  <div class="mb-3">${data.product.description.substr(0, 20)}...</div>
                  <div class="faded mt-2">1 x EGP ${data.product.price}</div>
                  <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
                      <button @click="if(count > 1) {count--;}" type="button"
                      class="btn py-1 dark-btn-outline border addCounter">-</button>
                      <div x-text="count" class="btn py-1 border"></div>
                      <button @click="count++" type="button" class="btn py-1 dark-btn-outline border subCounter">+</button>
                  </div>
                  </div>
                  <div class="col-2 text-right">
                  <i @click="showProduct=false" data-cart="${cartId}" class="removeCartProduct fas fa-times text-secondary cursor-pointer" type="button"></i>
                  </div>
              </div>
              `);
              // console.log($('.mini-cart').html());
              // $("#product_data").html(data)
          }

      })
  });


  

</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-autocomplete/1.0.7/jquery.auto-complete.css"></script>
<script>
// AutoComplete Search
$(document).ready(function() {
      var inputSearch = $('input[name="search"]').val();
      
      $(".search-input").autocomplete({
          source: function(request, response) {
              $.ajax({
                  url: '{{route('front.search.autocomplete')}}',
                  dataType: "json",
                  data: {
                      term : request.term
                  },
                  success: function(data) {
                    response(data)
                    //   let x = 0;
                    //   $(".result_search").html('');

                    //   for (x ; x < data.length; x += 1) {
                    //     const element = data[x].name;
                    //     const Id = data[x].id;
                    //     $(".result_search").append(`<li id='${Id}'>${element}</li>`);
                    //   }
                    // if (data.length < 1) {
                    //   $(".result_search").html(`<li>No result found</li>`);
                    // } 
                    // if ($('input[name="search"]').val().length < 2) {
                    //   $(".result_search").html("");
                    // }                 
                  }
              });
          },
          // minLength: 3,
      });
});

    
    

</script>

  @endpush