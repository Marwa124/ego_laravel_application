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