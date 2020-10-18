<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
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
    <!-- Style -->
    <link rel="stylesheet" href="{{asset('front/styles/global.css')}}">
    <link rel="stylesheet" href="{{asset('front/styles/products.css')}}">
    <!-- arabicstyle -->
    <!-- <link rel="stylesheet" href="./arabicstyle/arabicstyle.css"> -->
    <!-- Jquery Ui -->
    <link rel="stylesheet" href="{{asset('front/styles/jQuery.UI.css')}}" type="text/css" media="all" />

</head>

<body x-data="{showMiniCart:false, showMenNav:true, showWomenNav:false}">
    <!-- Mini-Cart -->
    <div class="mini-cart text-left" x-show.transition="showMiniCart" @click.away="showMiniCart=false">
        <div class="container p-3">
            <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
                <div class="col-4 cart-item-img p-3">
                    <img @click="count++" class="img-fluid w-75 cursor-pointer" src="./images/p5.png" alt="">
                </div>
                <div class="col-6">
                    <div class="font-weight-bold mb-1">Brand Name</div>
                    <div class="mb-3">Pas Normal Studios</div>
                    <div class="faded mt-2">1 x EGP 929.0</div>
                    <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
                        <button @click="if(count > 1) {count--;}" type="button"
                            class="btn py-1 dark-btn-outline border addCounter">-</button>
                        <div x-text="count" class="btn py-1 border"></div>
                        <button @click="count++" type="button"
                            class="btn py-1 dark-btn-outline border subCounter">+</button>
                    </div>
                </div>
                <div class="col-2 text-right">
                    <i @click="showProduct=false" class="fas fa-times text-secondary cursor-pointer" type="button"></i>
                </div>
            </div>
            <div class="cart-item m-2 py-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
                <div class="col-4 cart-item-img p-3">
                    <img @click="count++" class="img-fluid w-75 cursor-pointer" src="./images/product.png" alt="">
                </div>
                <div class="col-6">
                    <div class="font-weight-bold mb-1">Brand Name</div>
                    <div class="mb-3">Pas Normal Studios</div>
                    <div class="faded mt-2">1 x EGP 929.0</div>
                    <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
                        <button @click="if(count > 1) {count--;}" type="button"
                            class="btn py-1 dark-btn-outline border addCounter">-</button>
                        <div x-text="count" class="btn py-1 border"></div>
                        <button @click="count++" type="button"
                            class="btn py-1 dark-btn-outline border subCounter">+</button>
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
                                    x-on:mousedown.passive href="#">Women</a>
                            </li>
                            <li class="nav-item mr-4">
                                <a class="sale nav-link mx-1" @mouseenter="showMenNav=false, showWomenNav=true"
                                    x-on:mousedown.passive href="#">Sale</a>
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
                                <a class="nav-link " x-show.transition.origin.top="showMenNav"
                                    href="products.html">Brands</a>
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
                                <a class="nav-link " x-show.transition.origin.top="showMenNav"
                                    href="products.html">Cloths</a>
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
                                <a class="nav-link " x-show.transition.origin.top="showMenNav"
                                    href="products.html">Shoes</a>
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
                        <ul class="d-flex women" style="list-style-type: none; padding: 0;">
                            <li class="hovered-link" style="text-decoration: none;">
                                <a class="nav-link " x-show.transition.origin.top="showWomenNav"
                                    href="products.html">Brands</a>
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
                                <a class="nav-link " x-show.transition.origin.top="showWomenNav"
                                    href="products.html">Brands</a>
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
                                <a class="nav-link " x-show.transition.origin.top="showWomenNav"
                                    href="products.html">Brands</a>
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
    <!-- Annoncement -->
    <div class="py-3 bar" style="margin-top: 180px;">
        <p class="m-0 text-dark">Open Doors To A World Of Fashion</p>
    </div>
    <main class="container py-4 mt-4" x-data="{showMiniCart:false, showMenNav:false, showWomenNav:false}">
        <div class="responsive-filter bg-light text-left my-3 mx-4">
            <div class="d-flex justify-content-between align-items-center mb-1">
                <h7 class="font-weight-bold">Filter</h7>
                <a class="btn arrowClicked" data-toggle="collapse" href="#responsive-filterCollapse" role="button"
                    aria-expanded="false" aria-controls="responsive-filterCollapse">
                    <i class="fas fa-angle-down"></i></a>
            </div>
            <div class="collapse ml-2" id="responsive-filterCollapse">
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-1">
                        <h7 class="font-weight-bold">Category</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#CategoryCollapse" role="button"
                            aria-expanded="false" aria-controls="CategoryCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse ml-2" id="CategoryCollapse">
                        <p><a href="">Accessories</a> <small class="text-muted">(163)</small></p>
                        <p><a href="">Activewear</a> <small class="text-muted">(21)</small> </p>
                        <p><a href="">Bags</a> <small class="text-muted">(53)</small></p>
                        <p><a href="">Clothing</a> <small class="text-muted">(163)</small> </p>
                        <p><a href="">Fine Jewelry</a> <small class="text-muted">(9)</small></p>
                        <p><a href="">Shoes</a> <small class="text-muted">(94)</small></p>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Brands</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#BrandsCollapse" role="button"
                            aria-expanded="false" aria-controls="BrandsCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="BrandsCollapse">
                        <div>
                            <input type="text" class="form-control mb-3" id="exampleInputEmail1"
                                aria-describedby="emailHelp" placeholder="Search By Brands">
                            <div class="search-group" id="scrollbar-style">
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check1">
                                            <label class="form-check-label" for="check1">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check2">
                                            <label class="form-check-label" for="check2">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check3">
                                            <label class="form-check-label" for="check3">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check4">
                                            <label class="form-check-label" for="check4">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check5">
                                            <label class="form-check-label" for="check5">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check6">
                                            <label class="form-check-label" for="check6">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Designers</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#DesignersCollapse" role="button"
                            aria-expanded="false" aria-controls="DesignersCollapse">
                            <i class="fas fa-angle-down"></i>
                        </a>
                    </div>
                    <div class="collapse" id="DesignersCollapse">
                        <div>
                            <input type="text" class="form-control mb-3" placeholder="Search By Designers">
                            <div class="search-group" id="scrollbar-style">
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check7">
                                            <label class="form-check-label" for="check7">Acne Studios</label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check8">
                                            <label class="form-check-label" for="check8">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check9">
                                            <label class="form-check-label" for="check9">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check10">
                                            <label class="form-check-label" for="check10">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check11">
                                            <label class="form-check-label" for="check11">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check12">
                                            <label class="form-check-label" for="check12">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Colors</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#ColorsCollapse" role="button"
                            aria-expanded="false" aria-controls="ColorsCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="ColorsCollapse">
                        <div class="search-group" id="scrollbar-style">
                            <div class="checkboxes ml-3">
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check13">
                                    <label class="form-check-label" for="check13">Red</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check14">
                                    <label class="form-check-label" for="check14">Yellow</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check15">
                                    <label class="form-check-label" for="check15">White</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check16">
                                    <label class="form-check-label" for="check16">Green</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Price</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#PriceCollapse" role="button"
                            aria-expanded="false" aria-controls="PriceCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="PriceCollapse">
                        <div class="" id="scrollbar-style">
                            <div class="d-flex align-items-center justify-content-around mb-4">
                                <div class="border p-2">EGP 4,000</div>
                                <div>to</div>
                                <div class="border p-2">EGP 35,000</div>
                            </div>
                            <input class="custom-range" type="range" class="form-control-range" id="formControlRange">
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Sort</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#SortCollapse" role="button"
                            aria-expanded="false" aria-controls="SortCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="SortCollapse">
                        <div class="" id="scrollbar-style">
                            <a href="">
                                <p class="ml-3">Sort By Price (High to Low)</p>
                            </a>
                            <a href="">
                                <p class="ml-3">Sort By Price (Low to High)</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row my-3 mx-4">
            <div class="col d-xs-block d-none"></div>
            <h3 class="col products-title font-weight-bold text-left">All Women</h3>
            <div class="col d-xs-block d-none"></div>
            <div class="col">
                <div class="form-group d-flex justify-content-end">
                    <select class="form-control" style="width: 180px; font-size: small;" id="exampleFormControlSelect1">
                        <option>Sort By</option>
                        <option>Price (High to Low)</option>
                        <option>Price (Low to High)</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="filters d-none d-lg-block text-left col-3 ml-4">
                <form action="">
                    <div class="filter-section">
                        <div class="d-flex justify-content-between align-items-center mb-1">
                            <h7 class="font-weight-bold">Category</h7>
                            <a class="btn arrowClicked" data-toggle="collapse" href="#CategoryCollapse" role="button"
                                aria-expanded="false" aria-controls="CategoryCollapse">
                                <i class="fas fa-angle-down"></i></a>
                        </div>
                        <div class="collapse ml-2" id="CategoryCollapse">
                            <div class="filter-section">
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <h7 class="">Accessories <small class="text-muted">(163)</small></h7>
                                    <a class="btn arrowClicked" data-toggle="collapse" href="#accessoriesCollapse"
                                        role="button" aria-expanded="false" aria-controls="accessoriesCollapse">
                                        <i class="fas fa-angle-down"></i></a>
                                </div>
                                <div class="collapse" id="accessoriesCollapse">
                                    <div class="search-group" id="scrollbar-style">
                                        <div class="checkboxes ml-3">
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="accCheck1">
                                                <label class="form-check-label" for="accCheck1">Red</label>
                                            </div>
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="accCheck2">
                                                <label class="form-check-label" for="accCheck2">Yellow</label>
                                            </div>
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="accCheck3">
                                                <label class="form-check-label" for="accCheck3">White</label>
                                            </div>
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="accCheck4">
                                                <label class="form-check-label" for="accCheck4">Green</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p><a href="">Activewear</a> <small class="text-muted">(21)</small> </p>
                            <p><a href="">Bags</a> <small class="text-muted">(53)</small></p>
                            <p><a href="">Clothing</a> <small class="text-muted">(163)</small> </p>
                            <p><a href="">Fine Jewelry</a> <small class="text-muted">(9)</small></p>
                            <p><a href="">Shoes</a> <small class="text-muted">(94)</small></p>
                        </div>
                    </div>
                    <div class="filter-section">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <h7 class=" font-weight-bold">Brands</h7>
                            <a class="btn arrowClicked" data-toggle="collapse" href="#BrandsCollapse" role="button"
                                aria-expanded="false" aria-controls="BrandsCollapse"><i
                                    class="fas fa-angle-down"></i></a>
                        </div>
                        <div class="collapse" id="BrandsCollapse">
                            <div>
                                <input type="text" class="form-control mb-3" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" placeholder="Search By Brands">
                                <div class="search-group" id="scrollbar-style">
                                    <div class="letter-search mb-3">
                                        <h6>B</h6>
                                        <div class="checkboxes ml-3">
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="check17">
                                                <label class="form-check-label" for="check17">Balenciaga <small
                                                        class="text-muted">(54)</small></label>
                                            </div>
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="check18">
                                                <label class="form-check-label" for="check18">Battega <small
                                                        class="text-muted">(19)</small></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="letter-search mb-3">
                                        <h6>B</h6>
                                        <div class="checkboxes ml-3">
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="check19">
                                                <label class="form-check-label" for="check19">Balenciaga <small
                                                        class="text-muted">(54)</small></label>
                                            </div>
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="check20">
                                                <label class="form-check-label" for="check20">Battega <small
                                                        class="text-muted">(19)</small></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="letter-search mb-3">
                                        <h6>B</h6>
                                        <div class="checkboxes ml-3">
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="check21">
                                                <label class="form-check-label" for="check21">Balenciaga <small
                                                        class="text-muted">(54)</small></label>
                                            </div>
                                            <div class="form-check mb-1">
                                                <input type="checkbox" class="form-check-input" id="check22">
                                                <label class="form-check-label" for="check22">Battega <small
                                                        class="text-muted">(19)</small></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="filter-section">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <h7 class=" font-weight-bold">Colors</h7>
                            <a class="btn arrowClicked" data-toggle="collapse" href="#ColorsCollapse" role="button"
                                aria-expanded="false" aria-controls="ColorsCollapse">
                                <i class="fas fa-angle-down"></i></a>
                        </div>
                        <div class="collapse" id="ColorsCollapse">
                            <div class="search-group" id="scrollbar-style">
                                <div class="colorboxes">
                                    <div class="black-check">
                                        <input type="checkbox" id="black"/>
                                        <label class="colorCheckBox text-left d-flex" for="black">
                                            <div class="ml-2">
                                                Black
                                            </div>
                                        </label>
                                    </div>
                                    <div class="red-check">
                                        <input type="checkbox" id="red"/>
                                        <label class="colorCheckBox text-left d-flex" for="red">
                                            <div class="ml-2">
                                                Red
                                            </div>
                                        </label>
                                    </div>
                                    <div class="brown-check">
                                        <input type="checkbox" id="brown"/>
                                        <label class="colorCheckBox text-left d-flex" for="brown">
                                            <div class="ml-2">
                                                Brown
                                            </div>
                                        </label>
                                    </div>
                                    <div class="gold-check">
                                        <input type="checkbox" id="gold"/>
                                        <label class="colorCheckBox text-left d-flex" for="gold">
                                            <div class="ml-2">
                                                Gold
                                            </div>
                                        </label>
                                    </div>
                                    <div class="blue-check">
                                        <input type="checkbox" id="blue"/>
                                        <label class="colorCheckBox text-left d-flex" for="blue">
                                            <div class="ml-2">
                                                Blue
                                            </div>
                                        </label>
                                    </div>
                                    <div class="purple-check">
                                        <input type="checkbox" id="purple"/>
                                        <label class="colorCheckBox text-left d-flex" for="purple">
                                            <div class="ml-2">
                                                Purple
                                            </div>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="filter-section">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                            <h7 class=" font-weight-bold">Price</h7>
                            <a class="btn arrowClicked" data-toggle="collapse" href="#PriceCollapse" role="button"
                                aria-expanded="false" aria-controls="PriceCollapse">
                                <i class="fas fa-angle-down"></i></a>
                        </div>
                        <div class="collapse" id="PriceCollapse">
                            <div class="" id="scrollbar-style">
                                <div class="price-range-block mt-2 w-100">
                                    <div class="d-flex mb-4">
                                        <input type="number" min=0 max="9999" oninput="validity.valid||(value='1000');"
                                            id="min_price" class="price-range-field mr-2" />
                                        <p class="faded mt-1">to</p>
                                        <input type="number" min=0 max="10000" oninput="validity.valid||(value='8000');"
                                            id="max_price" class="price-range-field ml-2" />
                                    </div>

                                    <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col">
                <div class="products container row">
                    @foreach ($products as $item)
                        <div class="col-6 col-md-4 mb-5">
                            <div class="w-auto position-relative">
                                <div class="fav-icon">
                                    <i class="heart-icon far fa-heart px-1"></i>
                                    {{-- <i class="heart-icon {{$item->is_favorite ? 'bg-danger' : ''}}"></i> --}}
                                </div>
                                <?php 
                                    // dd(env('App_Url').App\Models\Product::find(188)->image);
                                    // dd(App\Models\Product::find(188)->has_media);
                                    // dd(App\Models\Product::find(188)->has_media->getUrl());
                                ?>
                                    @if ($item->getMedia('image')->first() != null)
                                        
                                    <a class="img-fluid w-100 mb-3" href="{{env('App_Url'). 'storage/app/public/' . $item->getMedia('image')->first()->id .'/'. $item->getMedia('image')->first()->file_name}}" target="_blank">
                                         <img class="img-fluid" src="{{env('App_Url'). 'storage/app/public/' . $item->getMedia('image')->first()->id .'/'. $item->getMedia('image')->first()->file_name}}" alt=""> 
                                         {{-- <img class="img-fluid" src="{{$item->image->getUrl()}}" alt=""> --}}
    
                                        {{-- <img class="img-fluid w-100 mb-3" src="{{env('App_Url').$item->getUrl()}}" alt=""> --}}
                                    </a>
                                    @endif
                            </div>
                            <div>
                                <div>
                                    <h5 class="mb-1">{{$item->name}}</h5>
                                    <p class="mb-0">{{$item->description}}</p>
                                    <p class="mb-0">{{$item->price}}</p>
                                </div>
                                <div class="d-flex justify-content-center align-items-center">
                                    {{-- @php $rating = 1.6; @endphp   --}}
                                    <?php
                                        $rating = 0;
                                        foreach ($item->productReviews()->get() as $key => $value) {
                                            if($value->rate <= 2)
                                            {
                                                $rating -=$value->rate;
                                            }else {
                                                $rating +=$value->rate;
                                            }
                                        }
                                    ?>

                                    @foreach(range(1,5) as $i)
                                        <span class="fa-stack" style="width:1em">
                                            <i class="far fa-star fa-stack-1x"></i>

                                            @if($rating >0)
                                                @if($rating >0.5)
                                                    <i class="fas fa-star fa-stack-1x"></i>
                                                @else
                                                    <i class="fas fa-star-half fa-stack-1x"></i>
                                                @endif
                                            @endif
                                            @php $rating--; @endphp
                                        </span>
                                    @endforeach



                                    

                                    <div class="text-grey mt-1" style="font-size: 10px;"> ({{$item->productReviews()->count()}})</div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <form class="pagination container d-flex align-items-center justify-content-between" action="">
                    <button class="btn dark-btn-outline font-weight-bold px-4 py-2">Previous</button>
                    <div>3 of 10</div>
                    <button class="btn dark-btn font-weight-bold px-4 py-2">Next</button>
                </form>
            </div>
        </div>
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
                        <?php $categories = App\Models\Category::latest()->take(4)->get(); ?>
                        @foreach ($categories as $item)
                            <li><a style="font-size:small" href="">{{$item->name}}</a></li>
                        @endforeach
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
        <div style="max-width: 1140px; margin: auto;">
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
    <script src="{{asset('front/js/arrowToggle.js')}}"></script>
    <script src="{{asset('front/js/jQuery.UI.js')}}" type="text/javascript"></script>
    <script src="{{asset('front/js/price_range_script.js')}}" type="text/javascript"></script>
    <script src="{{asset('front/js/nav-hover.js')}}"></script>
</body>

</html>