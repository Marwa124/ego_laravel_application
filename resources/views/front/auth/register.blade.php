
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SIGN UP</title>
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

    <link rel="stylesheet" href="./styles/global.css">
    <link rel="stylesheet" href="{{asset('front/styles/auth.css')}}">
    <!-- arabicstyle -->
    <!-- <link rel="stylesheet" href="./arabicstyle/arabicstyle.css"> -->
</head>

<body x-data="{showMiniCart:false, showMenNav:true, showWomenNav:false}">
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
                                <a class="sub-link" href="">Logout</a>
                            </div>
                            <div class="d-flex">
                                <a href="profile.html"
                                    class="btn dark-btn px-5 d-flex align-self-end font-weight-bold">My Account</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container py-4">
                <nav class="navbar navbar-expand-lg navbar-light text-left">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <a class="navbar-brand navbar-brand-centered d-block responsive-logo hide-onTablet"
                        href="index.html">
                        <div style="width: 200px;">
                            <img class="img-fluid position-relative" src="./images/logo.png" alt="">
                        </div>
                    </a>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                            <li class="nav-item mr-4">
                                <a class="nav-link mx-1" @mouseenter="showMenNav=true, showWomenNav=false"
                                    href="#">Men</a>
                            </li>
                            <li class="nav-item mr-4">
                                <a class="nav-link mx-1" @mouseenter="showMenNav=false, showWomenNav=true"
                                    href="#">Women</a>
                            </li>
                            <li class="nav-item mr-4">
                                <a class="sale nav-link mx-1" href="#">Sale</a>
                            </li>
                        </ul>
                        <form class="d-block mb-0 h-auto">
                            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                                <a href="store-locator.html"
                                    class="nav-item cursor-pointer mx-2 d-flex align-items-center nav-icon">
                                    Stores
                                </a>
                                <a class="nav-item cursor-pointer d-flex align-items-center nav-icon"
                                    data-toggle="collapse" href="#collapseProfile" role="button" aria-expanded="false"
                                    aria-controls="collapseProfile">
                                    <i class=" far fa-user" style="font-size: 1.2rem;"></i>
                                    <p class="mb-0 ml-1">John David</p>
                                </a>
                                <a class="nav-item cursor-pointer d-flex align-items-center nav-icon" href="login.html">
                                    <i class="far fa-heart" style="font-size: 1.2rem;"></i>
                                </a>
                                <a class="nav-item mini-cart-toggler hide-onTablet cursor-pointer">
                                    <div class="d-flex align-items-center">
                                        <div class="cart-icon-container position-relative"
                                            @click="showMiniCart = !showMiniCart">
                                            <span class="cart-notification text-light font-weight-bold">3</span>
                                            <i class="fas fa-shopping-cart" style="font-size: 1.2rem;"></i>
                                        </div>
                                        <!-- Mini-Cart -->
                                        <div class="mini-cart text-left" x-show.transition="showMiniCart"
                                            @click.away="showMiniCart=false">
                                            <div class="container p-3">
                                                <div class="cart-item m-2 py-5 row"
                                                    x-data="{ count: 1, showProduct:true }" x-show="showProduct">
                                                    <div class="col-4 cart-item-img p-3">
                                                        <img @click="count++" class="img-fluid w-75 cursor-pointer"
                                                            src="./images/p5.png" alt="">
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="font-weight-bold mb-1">Brand Name</div>
                                                        <div class="mb-3">Pas Normal Studios</div>
                                                        <div class="faded mt-2">1 x EGP 929.0</div>
                                                        <div class="btn-group position-quantity-responsive mt-4"
                                                            role="group" aria-label="Basic example">
                                                            <button @click="if(count > 1) {count--;}" type="button"
                                                                class="btn py-1 dark-btn-outline border addCounter">-</button>
                                                            <div x-text="count" class="btn py-1 border"></div>
                                                            <button @click="count++" type="button"
                                                                class="btn py-1 dark-btn-outline border subCounter">+</button>
                                                        </div>
                                                    </div>
                                                    <div class="col-2 text-right">
                                                        <i @click="showProduct=false"
                                                            class="fas fa-times text-secondary cursor-pointer"
                                                            type="button"></i>
                                                    </div>
                                                </div>
                                                <div class="cart-item m-2 py-5 row"
                                                    x-data="{ count: 1, showProduct:true }" x-show="showProduct">
                                                    <div class="col-4 cart-item-img p-3">
                                                        <img @click="count++" class="img-fluid w-75 cursor-pointer"
                                                            src="./images/product.png" alt="">
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="font-weight-bold mb-1">Brand Name</div>
                                                        <div class="mb-3">Pas Normal Studios</div>
                                                        <div class="faded mt-2">1 x EGP 929.0</div>
                                                        <div class="btn-group position-quantity-responsive mt-4"
                                                            role="group" aria-label="Basic example">
                                                            <button @click="if(count > 1) {count--;}" type="button"
                                                                class="btn py-1 dark-btn-outline border addCounter">-</button>
                                                            <div x-text="count" class="btn py-1 border"></div>
                                                            <button @click="count++" type="button"
                                                                class="btn py-1 dark-btn-outline border subCounter">+</button>
                                                        </div>
                                                    </div>
                                                    <div class="col-2 text-right">
                                                        <i @click="showProduct=false"
                                                            class="fas fa-times text-secondary cursor-pointer"
                                                            type="button"></i>
                                                    </div>
                                                </div>
                                                <div class="px-2 py-4 d-flex flex-column w-100">
                                                    <div class="d-flex justify-content-between">
                                                        <p class="font-weight-bold">Subtotal</p>
                                                        <p class="font-weight-bold">EGP 17,444</p>
                                                    </div>
                                                    <a href="cart.html" class="btn dark-btn-outline my-3">View Cart</a
                                                        href="cart.html">
                                                    <a href="checkout.html" class="btn dark-btn">Checkout</a>
                                                </div>
                                            </div>
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
                                                    <img class="nav-img w-100 img-fluid" src="./images/nav-img.jpg"
                                                        alt="">
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
                                                    <img class="nav-img w-100 img-fluid" src="./images/nav-img-2.jpg"
                                                        alt="">
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
                                                    <img class="nav-img w-100 img-fluid" src="./images/nav-img-3.jpg"
                                                        alt="">
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
                                                    <img class="nav-img w-100 img-fluid" src="./images/nav-img.jpg"
                                                        alt="">
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
                                                    <img class="nav-img w-100 img-fluid" src="./images/nav-img-2.jpg"
                                                        alt="">
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
                                                    <img class="nav-img w-100 img-fluid" src="./images/nav-img-3.jpg"
                                                        alt="">
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
    <main>
      @if ($message = Session::get('error'))
      <div class="alert alert-success">
          <p>{{ $message }}</p>
      </div>
       @endif
        <div class="login-wrapper">
            <div class="login-card mt-5">
                <h3 class="font-weight-medium text-center mb-2">SIGN UP</h3>
                <form action="{{ route('register.submit') }}" method="post" class="border-top pt-5">
                  @csrf
                  
                    <div class="form-group text-left">
                      <label for="formGroupExampleInput">Email Address</label>
                      <input type="email" value="{{ old('email', '') }}" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" id="formGroupExampleInput" name="email"  placeholder="Enter Your email">
                      @if ($errors->has('email'))
                        <div class="invalid-feedback">
                            {{ $errors->first('email') }}
                        </div>
                      @endif
                    </div>
                    <div class="form-group text-left">
                      <label for="formGroupExampleInput" style="font-size: small;">CONFIRM Email
                          <small>*</small></label>
                      <input type="email" value="{{ old('email_confirmation', '') }}" class="form-control" name="email_confirmation" id="formGroupExampleInput">
                      @if ($errors->has('email_confirmation'))
                        <div class="invalid-feedback">
                            {{ $errors->first('email_confirmation') }}
                        </div>
                       @endif
                    </div>
                    {{-- <div class="d-md-flex"> --}}
                      <div class="form-group text-left mr-2">
                        <label for="formGroupExampleInput2">Password</label>
                        <input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" id="formGroupExampleInput2" name="password" placeholder="Enter Your Password">
                        @if ($errors->has('password'))
                            <div class="invalid-feedback">
                                {{ $errors->first('password') }}
                            </div>
                        @endif
                    </div>
                      <div class="form-group text-left">
                        <label for="formGroupExampleInput2">Confirm Password</label>
                        <input type="password" class="form-control {{ $errors->has('password_confirmation') ? ' is-invalid' : '' }}"  name="password_confirmation" id="formGroupExampleInput2" placeholder="Enter Your Password">
                        @if ($errors->has('password_confirmation'))
                        <div class="invalid-feedback">
                            {{ $errors->first('password_confirmation') }}
                        </div>
                       @endif
                    </div>
                      <div class="form-group text-left">
                        <label for="formGroupExampleInput2" style="font-size: small;">Phone Number
                            <small>*</small></label>
                        <input type="text" name="phone" value="{{ old('phone', '') }}" class="form-control {{ $errors->has('phone') ? ' is-invalid' : '' }}" id="formGroupExampleInput2">
                        @if ($errors->has('phone'))
                            <div class="invalid-feedback">
                                {{ $errors->first('phone') }}
                            </div>
                        @endif
                    </div>
                    {{-- </div> --}}

                    <button type="submit" class="btn dark-btn w-100 py-2 mb-3 " style="font-size: small;">Sign Up</button>
                    <p style="font-size: 0.6rem; text-align: center;">EGO does not Share Your Information With Third
                        Parties And You Can Unregister At Any Time</p>

                  </form>
            </div>
        </div>
    </main>

    <footer class="text-left">
        <div class="container py-3">
            <div class="row mt-3">
                <div class="col-6 col-lg-3 d-flex flex-column justify-content-around py-4 responsive-text">
                    <div>
                        <div class=" w-75 mx-auto">
                            <a href="index.html">
                                <img class="w-100" src="./images/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="EGO APP">
                        <h5 class="text-center">EGO APP</h5>
                        <div class="mobile-download">
                            <button class="download-app-box apple">
                                <div class="app-img mr-3">
                                    <a href="">
                                        <img class="w-100" src="./images/apple-logo.png" alt="">
                                    </a>
                                </div>
                                <p class="mb-0">Download on App Store</p>
                            </button>
                            <button class="download-app-box android">
                                <div class="app-img mr-3">
                                    <a href="">
                                        <img class="w-100" src="./images/android.png" alt="">
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
                        <li><a style="font-size:small" href="">All Products</a></li>
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
                    <p class="faded" style="font-size:small">We’re an Egyptian fashion e-commerce brand. We design and
                        produce all
                        of our products locally. We draw our
                        inspiration from nomad artisans originating from Sinai and Aswan. We blend our colorful patterns
                        with
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
                        <img class="w-100" src="./images/master-card.jpg" alt="">
                    </div>
                    <div style="width: 40px; padding: 4px;">
                        <img class="w-100" src="./images/Visa_Inc._logo.svg.png" alt="">
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
    <script src="{{asset('front/js/nav-hover.js')}}"></script>

</body>

</html>