<!DOCTYPE html>
<html lang="{{setting('language','en')}}" dir="ltr">
<head>
    <meta charset="UTF-8">
    {{-- <title>{{setting('app_name')}} | {{setting('app_short_description')}}</title> --}}
    <title>{{env('APP_NAME')}} | @yield('title_name') </title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <link rel="icon" type="image/png" href="{{$app_logo}}"/>
    
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
    @stack('css_lib')

</head>

<body x-data="{showMiniCart:false, showMenNav:true, showWomenNav:false}">

    @include('front.layouts.navbar')

    @yield('content')

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

    @stack('scripts')
</body>
</html>