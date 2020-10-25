
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Checkout </title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <!-- styles -->
    <link rel="stylesheet" href="./styles/global.css">
    <link href="{{asset('front/styles/checkout.css')}}" rel="stylesheet">
</head>

<body class="bg-light">

    <div class="container mb-5">
        <div class="py-5 text-center">
            <a href="index.html">
                <img style="width: 240px;" class="d-block mx-auto mb-4" src="{{asset('front/images/logo.png')}}">
            </a>
        </div>

        <div class="row">
            <div class="col-md-4 order-md-2 mb-4" style="position: sticky !important;">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-muted">Your cart</span>
                    <span class="badge badge-secondary badge-pill">{{count($cartItems)}}</span>
                </h4>
                <ul class="list-group mb-3">
                    @foreach ($cartItems as $item)
                        <li class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">{{$item->name}}</h6>
                                <small class="text-muted">{{substr($item->attributes->description, 0, 17)}}...</small>
                            </div>
                            <span class="text-muted">EGP {{$item->price}}</span>
                            <h6 class="d-block row">Quant: {{$item->quantity}}</h6>
                        </li>
                    @endforeach
                    <li class="list-group-item d-flex justify-content-between lh-condensed">
                        <div>
                            <h6 class="my-0">Third item</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">EGP 5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between bg-light">
                        <div class="text-success">
                            <h6 class="my-0">Promo code</h6>
                            <small>EXAMPLECODE</small>
                        </div>
                        <span class="text-success">-EGP 5</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (EGP)</span>
                        <strong>EGP 20</strong>
                    </li>
                </ul>

                <form class="card p-2">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Promo code">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-secondary">Redeem</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-8 order-md-1">
                <h4 class="mb-3">Billing address</h4>
                <form class="needs-validation" novalidate>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">First name</label>
                            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Last name</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="username">Username</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">@</span>
                            </div>
                            <input type="text" class="form-control" id="username" placeholder="Username" required>
                            <div class="invalid-feedback" style="width: 100%;">
                                Your username is required.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="email">Email <span class="text-muted">(Optional)</span></label>
                        <input type="email" class="form-control" id="email" placeholder="you@example.com">
                        <div class="invalid-feedback">
                            Please enter a valid email address for shipping updates.
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
                        <div class="invalid-feedback">
                            Please enter your shipping address.
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="address2">Address 2 <span class="text-muted">(Optional)</span></label>
                        <input type="text" class="form-control" id="address2" placeholder="Apartment or suite">
                    </div>

                    <div class="row">
                        <div class="col-md-5 mb-3">
                            <label for="country">Country</label>
                            <select class="custom-select d-block w-100" id="country" required>
                                <option value="">Choose...</option>
                                <option>Egypt</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid country.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="city">City</label>
                            <select class="custom-select d-block w-100" id="city" required>
                                <option value="">Choose...</option>
                                <option>Cairo</option>
                                <option>Alexandria</option>
                            </select>
                            <div class="invalid-feedback">
                                Please provide a valid city.
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="zip">Zip</label>
                            <input type="text" class="form-control" id="zip" placeholder="" required>
                            <div class="invalid-feedback">
                                Zip code required.
                            </div>
                        </div>
                    </div>
                    <hr class="mb-4">
                    <div class="custom-control">
                        <input type="checkbox" id="same-address">
                        <label class="custom-control-label" for="same-address">Shipping address is the same as my
                            billing address</label>
                    </div>
                    <div class="custom-control">
                        <input type="checkbox" id="save-info">
                        <label class="custom-control-label" for="save-info">Save this information for next time</label>
                    </div>
                    <hr class="mb-4">

                    <h4 class="mb-3">Payment</h4>

                    <div class="d-block my-3">
                        <div class="custom-control ">
                            <input id="credit" name="paymentMethod" type="radio" class="" checked required>
                            <label class="custom-control-label" for="credit">Credit card</label>
                        </div>
                        <div class="custom-control ">
                            <input id="debit" name="paymentMethod" type="radio" class="" required>
                            <label class="custom-control-label" for="debit">Debit card</label>
                        </div>
                        <div class="custom-control ">
                            <input id="paypal" name="paymentMethod" type="radio" class="" required>
                            <label class="custom-control-label" for="paypal">Paypal</label>
                        </div>
                        <div class="custom-control ">
                            <input id="cash" name="paymentMethod" type="radio" class="" required>
                            <label class="custom-control-label" for="cash">Cash on Delivery</label>
                        </div>
                    </div>
                    <div class="row" id="card-payment">
                        <div class="col-md-6 mb-3">
                            <label for="cc-name">Name on card</label>
                            <input type="text" class="form-control" id="cc-name" placeholder="" required>
                            <small class="text-muted">Full name as displayed on card</small>
                            <div class="invalid-feedback">
                                Name on card is required
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="cc-number">Credit card number</label>
                            <input type="text" class="form-control" id="cc-number" placeholder="" required>
                            <div class="invalid-feedback">
                                Credit card number is required
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 mb-3">
                            <label for="cc-expiration">Expiration</label>
                            <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                            <div class="invalid-feedback">
                                Expiration date required
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="cc-expiration">CVV</label>
                            <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                            <div class="invalid-feedback">
                                Security code required
                            </div>
                        </div>
                    </div>
                    <hr class="mb-4">
                    <button class="btn dark-btn" type="submit">Continue to checkout</button>
                </form>
            </div>
        </div>

    </div>
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

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
    <script src="../../../../assets/js/vendor/holder.min.js"></script>
    <script>
            // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function () {
                'use strict';

                window.addEventListener('load', function () {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');

                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function (form) {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
    </script>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <script src="./js/checkout.js"></script>
</body>

</html>