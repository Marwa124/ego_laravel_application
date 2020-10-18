<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <!-- Bootstrap -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <!-- Bootstrap RTL -->
  <!-- <link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.2.1/css/bootstrap.min.css"
    integrity="sha384-vus3nQHTD+5mpDiZ4rkEPlnkcyTP+49BhJ4wJeJunw06ZAp+wzzeBPUXr42fi8If" crossorigin="anonymous"> -->
  <!-- Font Awesome -->
  <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
  <!-- Alpine js -->
  <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.3.5/dist/alpine.min.js" defer></script>
  <!-- style -->
  <link rel="stylesheet" href="{{asset('front/styles/global.css')}}">
  <link rel="stylesheet" href="{{asset('front/styles/index.css')}}">
  <!-- arabicstyle -->
  <!-- <link rel="stylesheet" href="./arabicstyle/arabicstyle.css"> -->
</head>

<body x-data="{showMiniCart:false, showMenNav:true, showWomenNav:false}">
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
  <!-- Mini-Cart -->
  <div class="mini-cart text-left" x-show.transition="showMiniCart" @click.away="showMiniCart=false">
    <div class="container p-3">
      <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
        <div class="col-4 cart-item-img p-3">
          <img @click="count++" class="img-fluid w-75 cursor-pointer" src="{{asset('front/images/p5.png')}}" alt="">
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
      <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
        <div class="col-4 cart-item-img p-3">
          <img @click="count++" class="img-fluid w-75 cursor-pointer" src="{{asset('front/images/product.png')}}" alt="">
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
          <p class="font-weight-bold">EGP 17,444</p>
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
              <img class="img-fluid position-relative" src="{{asset('front/images/logo.png')}}" alt="">
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
                <a class="nav-item cursor-pointer mx-2 d-flex align-items-center" href="login.html">
                  <i class="far fa-heart"></i>
                </a>
                <a class="nav-item cursor-pointer mx-2 d-flex align-items-center" href="login.html">
                  <i class="far fa-user"></i>
                </a>
                <a class="nav-item mini-cart-toggler hide-onTablet cursor-pointer mx-2"
                  @click="showMiniCart = !showMiniCart">
                  <div class="d-flex align-items-center">
                    <div class="cart-icon-container position-relative">
                      <span class="cart-notification text-light font-weight-bold">3</span>
                      <i class="fas fa-shopping-cart"></i>
                    </div>
                  </div>
                </a>
              </ul>
            </form>
          </div>
        </nav>
        <div class="position-relative hide-onTablet">
          <div class="py-3 ml-3 d-flex align-items-center">
            <ul class="d-flex men mb-0" style="list-style-type: none; padding: 0;">
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
                          <img class="nav-img w-100 img-fluid" src="{{asset('front/images/nav-img.jpg')}}" alt="">
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
                          <img class="nav-img w-100 img-fluid" src="{{asset('front/images/nav-img-2.jpg')}}" alt="">
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
                          <img class="nav-img w-100 img-fluid" src="{{asset('front/images/nav-img-3.jpg')}}" alt="">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </ul>
            <ul class="d-flex women mb-0" style="list-style-type: none; padding: 0;">
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
                          <img class="nav-img w-100 img-fluid" src="{{asset('front/images/nav-img.jpg')}}" alt="">
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
                          <img class="nav-img w-100 img-fluid" src="{{asset('front/images/nav-img-2.jpg')}}" alt="">
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
                          <img class="nav-img w-100 img-fluid" src="{{asset('front/images/nav-img-3.jpg')}}" alt="">
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
  <div class="announcement py-3 bar">
    <div class="m-0 text-dark">Open Doors To A World Of Fashion</div>
  </div>
  <main class="container">
      <?php  
        $mediaItems = Spatie\MediaLibrary\Models\Media::get()->shuffle()->take(2);

        // $p = App\Models\Product::find(188);
        $products = App\Models\Product::get()->shuffle();
        // dd($products);
        ?>  
        {{-- <img class="img-fluid" src="{{env('App_Url'). 'storage/app/public/' . $p->getMedia('image')->first()->id .'/'. $p->getMedia('image')->first()->file_name}}" alt=""> --}}
    <section class="row p-4 position-relative">
        {{-- @foreach ($products as $item) --}}
        @foreach ($mediaItems as $item)
        {{-- @if ($item->getMedia('image')->first()) --}}
                <div class="col-lg-6 col-md-12 col-sm-12 mb-4">
                    {{-- $item->getPath() --}}
                <a href="{{env('App_Url').$item->getUrl()}}" target="_blank">
                    <img class="img-fluid" src="{{env('App_Url').$item->getUrl()}}" alt="">
                {{-- <a href="{{env('App_Url'). 'storage/app/public/' . $item->getMedia('image')->first()->id .'/'. $item->getMedia('image')->first()->file_name}}" target="_blank">
                    <img class="img-fluid" src="{{env('App_Url'). 'storage/app/public/' . $item->getMedia('image')->first()->id .'/'. $item->getMedia('image')->first()->file_name}}" alt=""> --}}
                </a>
                </div>
            {{-- @endif --}}
        @endforeach
    </section>
    <section class="row p-4">
      <div class="col-lg-6 col-sm-12 mb-4">
        <?php  
        $mediaItem = Spatie\MediaLibrary\Models\Media::get()->shuffle()->take(1)->first();
        ?>
        <a href="products.html">
          <img class="img-fluid" src="{{env('App_Url').$mediaItem->getUrl()}}" alt="">
        </a>
      </div>
      <div class="col-lg-6 col-sm-12 mb-4 my-auto">
        <h3 class="font-weight-bold ">The Best Bag Style for Fall</h3>
        <p class="faded">Shop Ego collections, packed with bold colors.</p>
      </div>
    </section>
    <section class="row p-4">
      <div class="col-lg-6 col-sm-12 mb-4 my-auto">
        <h3 class="font-weight-bold">Incoming: New Brand Name</h3>
        <p class="faded">Shop Ego collections, packed with bold colors.</p>
      </div>
      <div class="col-lg-6 col-sm-12 mb-4">
        <?php  
        $mediaItem = Spatie\MediaLibrary\Models\Media::get()->shuffle()->take(1)->first();
        ?>
        <a href="products.html">
          <img class="img-fluid" src="{{env('App_Url').$mediaItem->getUrl()}}" alt="">
        </a>
      </div>
    </section>
    <section class="w-75 mx-auto my-5">
      <div class="mb-5">
        <h3 class="font-weight-bold">What's new?</h3>
        <p class="faded">Sign up for exclusive daily sales access and tailored new arrivals</p>
      </div>
      <form action="" class="d-md-flex mb-2">
        <input type="email" class="form-control mr-4" id="" placeholder="name@example.com">
        <button type="button" class="btn dark-btn font-weight-bold px-5">Subscribe</button>
      </form>
      <div>
        <p class="mb-0 faded">To opt, click Unsubscribe at the bottom of out emails.</p>
        <p>
          <span class="faded">By signing up you agree with our</span>
          <a href="index.html" class="highlighted-text">Terms & Conditions</a>
          <span class="faded">and</span>
          <a href="index.html" class="highlighted-text">Privacy Policy</a>
        </p>
      </div>
    </section>
  </main>

  <footer class="text-left">
    <div class="bar">
      <div class="d-flex justify-content-center py-1" style="flex: 1; border-right: 1px solid rgb(19, 19, 19);">
        <a class="" href="">About Us</a>
      </div>
      <div class="d-flex justify-content-center py-1" style="flex: 1; border-right: 1px solid #000;">
        <a class="" href="">FAQ</a>
      </div>
      <div class="d-flex justify-content-center py-1" style="flex: 1;">
        <a class="" href="">Contact Us</a>
      </div>
    </div>
    <div class="container py-3">
      <div class="row mt-3">
        <div class="col-6 col-lg-3 d-flex flex-column justify-content-around py-4 responsive-text">
          <div>
            <div class=" w-75 mx-auto">
              <a href="index.html">
                <img class="w-100" src="{{asset('front/images/logo.png')}}" alt="">
              </a>
            </div>
          </div>
          <div class="EGO APP">
            <h5 class="text-center">EGO APP</h5>
            <div class="mobile-download">
              <button class="download-app-box apple">
                <div class="app-img mr-3">
                  <a href="">
                    <img class="w-100" src="{{asset('front/images/apple-logo.png')}}" alt="">
                  </a>
                </div>
                <p class="mb-0">Download on App Store</p>
              </button>
              <button class="download-app-box android">
                <div class="app-img mr-3">
                  <a href="">
                    <img class="w-100" src="{{asset('front/images/android.png')}}" alt="">
                  </a>
                </div>
                <p class="mb-0">Download on Android</p>
              </button>
            </div>
          </div>
        </div>
        <div class="col-6 col-lg-3  px-4 py-4 responsive-text">
          <h5 class="faded mb-3">MAIN MENU</h5>
          <ul style="list-style-type: none; padding: 0; line-height: 2.4;">
          <li><a style="font-size:small" href="{{route('products')}}">All Products</a></li>
            <li><a style="font-size:small" href="">New Arrivals</a></li>
            <li><a style="font-size:small" href="">Bags</a></li>
            <li><a style="font-size:small" href="">Belts</a></li>
            <li><a style="font-size:small" href="">Footwear</a></li>
            <li><a style="font-size:small" href="">Accessories</a></li>
            <li><a style="font-size:small" href="">All Products</a></li>
            <li><a style="font-size:small" href="">New Arrivals</a></li>
          </ul>
        </div>
        <div class="col-6 col-lg-3  px-4 py-4 responsive-text">
          <h5 class="faded mb-3">MORE</h5>
          <ul style="list-style-type: none; padding: 0; line-height: 2.4;">
            <li><a style="font-size:small" href="">Contact us</a></li>
            <li><a style="font-size:small" href="">Search</a></li>
            <li><a style="font-size:small" href="">Exchange and Refund Policy</a></li>
            <li><a style="font-size:small" href="">Privacy Policy</a></li>
            <li><a style="font-size:small" href="">Our Story</a></li>
            <li><a style="font-size:small" href="">FAQ</a></li>
          </ul>
        </div>
        <div class="col-6 col-lg-3  px-4 py-4 responsive-text">
          <h5 class="faded mb-3">OUR STORY</h5>
          <p class="faded" style="font-size:small">We’re an Egyptian fashion e-commerce brand. We design and produce all
            of our products locally. We draw our
            inspiration from nomad artisans originating from Sinai and Aswan. We blend our colorful patterns with
            international fashion trends to mold our unique design identity.</p>
        </div>
      </div>
    </div>
    <div style="max-width: 1400px; margin: auto;">
      <div class="d-flex justify-content-between"
        style="border-top:1px solid black; padding: 20px 10px 100px; font-size: small;">
        <p>@ 2020 <a href="index.html">EGO</a></p>
        <div class="d-flex">
          <div style="width: 40px; padding: 4px;">
            <img class="w-100" src="{{asset('front/images/master-card.jpg')}}" alt="">
          </div>
          <div style="width: 40px; padding: 4px;">
            <img class="w-100" src="{{asset('front/images/Visa_Inc._logo.svg.png')}}" alt="">
          </div>
        </div>
      </div>
    </div>
  </footer>

  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
  <script type="text/javascript">
    $(window).on('load', function () {
      $('#defaultModal').modal('show');
    });
  </script>
  <script src="{{asset('front/js/nav-hover.js')}}"></script>

</body>

</html>