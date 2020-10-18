{{--@extends('front.layout.layout')--}}

{{--@section('content')--}}


{{--<main>--}}
  {{--<div class="login-wrapper">--}}
    {{--<!-- <div class="text-center">--}}
        {{--<a href="index.html">--}}
          {{--<img class="logo w-50" src="./images/logo.png" alt="">--}}
        {{--</a>--}}
      {{--</div> -->--}}
    {{--<div class="login-card mt-5">--}}
      {{--<h3 class="font-weight-medium text-center mb-5">Register</h3>--}}
      {{--<form action="{{ route('register.submit') }}" method="post">--}}
        {{--@csrf--}}
        {{--<div class="form-group text-left">--}}
          {{--<label for="formGroupExampleInput" style="font-size: small;">EMAIL ADDRESS <small>*</small></label>--}}
          {{--<input type="text"  value="{{ old('username') }}" class="form-control {{ $errors->has('username') ? ' is-invalid' : '' }}" id="formGroupExampleInput" name="username" placeholder="{{ __('auth.email') }}">--}}
          {{--@if ($errors->has('username'))--}}
          {{--<div class="invalid-feedback">--}}
              {{--{{ $errors->first('username') }}--}}
          {{--</div>--}}
      {{--@endif--}}
        {{--</div>--}}
        {{--<div class="form-group text-left">--}}
          {{--<label for="formGroupExampleInput" style="font-size: small;">EMAIL ADDRESS <small>*</small></label>--}}
          {{--<input type="email"  value="{{ old('email') }}" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" id="formGroupExampleInput" name="email" placeholder="{{ __('auth.email') }}">--}}
          {{--@if ($errors->has('email'))--}}
          {{--<div class="invalid-feedback">--}}
              {{--{{ $errors->first('email') }}--}}
          {{--</div>--}}
      {{--@endif--}}
        {{--</div>--}}
        {{--<div class="form-group text-left">--}}
          {{--<label for="formGroupExampleInput2" style="font-size: small;">Password <small>*</small></label>--}}
          {{--<input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" id="formGroupExampleInput2" name="password" placeholder="{{__('auth.password')}}">--}}

          {{--@if ($errors->has('password'))--}}
          {{--<div class="invalid-feedback">--}}
              {{--{{ $errors->first('password') }}--}}
          {{--</div>--}}
      {{--@endif--}}

        {{--</div>--}}
          {{--<button class="btn dark-btn w-100 py-2 mb-3 " type="submit"  style="font-size: small;">SIGN UP</button>--}}


      {{--</form>--}}
    {{--</div>--}}
  {{--</div>--}}
{{--</main>--}}


{{--@endsection--}}
        <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login2</title>
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
  <link rel="stylesheet" href="{{asset('styles/login2.css')}}">
  <!-- arabicstyle -->
  <!-- <link rel="stylesheet" href="./arabicstyle/arabicstyle.css"> -->
</head>

<body class="px-2">
<div class="wrapper mx-auto">
  <div class="text-center">
    <a href="{{url('fornt/home')}}">
      <div class="logo-wrapper">
        <img class="logo" src="{{asset('images/logo.png')}}" alt="">
      </div>
    </a>
  </div>
  <div class="login-wrapper" style="margin-top: 50px;">
    <div>

      <div class="login-card mt-5">
        <h2 class="text-center mb-5">Sign In</h2>
        <form action="{{ url('/login') }}" method="post">
          @csrf
          <div class="form-group text-left">
            <label for="formGroupExampleInput">Email</label>
            <input type="email" value="{{ old('email') }}" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" id="formGroupExampleInput" name="email" placeholder="{{ __('auth.email') }}">
            @if ($errors->has('email'))
              <div class="invalid-feedback">
                {{ $errors->first('email') }}
              </div>
            @endif
          </div>
          <div class="form-group text-left">
            <label for="formGroupExampleInput2">Password</label>
            <input type="password"  class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" id="formGroupExampleInput2" name="password" placeholder="{{__('auth.password')}}">
            @if ($errors->has('password'))
              <div class="invalid-feedback">
                {{ $errors->first('password') }}
              </div>
            @endif
          </div>
          <div class="d-flex justify-content-between flex-wrap mb-3">
            <div class="mb-3">
              <input type="checkbox" class="form-check-input" id="exampleCheck1">
              <label class="form-check-label" for="exampleCheck1">remember me</label>
            </div>
            <a href="index.html">Forget Passoword ?</a>
          </div>
            <button class="btn dark-btn w-100">Sign In</button>

        </form>
      </div>
    </div>
    <div class="login-card mt-5">
      <h2 class="text-center mb-5">Sgin Up</h2>
      <form action="{{ route('register.submit') }}" method="post">
      @csrf
        <div class="form-group text-left">
          <label for="formGroupExampleInput">Name</label>
          <input type="text" value="{{ old('username') }}" class="form-control {{ $errors->has('username') ? ' is-invalid' : '' }}" id="formGroupExampleInput" name="username" placeholder="Enter Your Name">
        </div>
        <div class="form-group text-left">
          <label for="formGroupExampleInput">Email Address</label>
          <input type="email" value="{{ old('email') }}" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" id="formGroupExampleInput" name="email"  placeholder="Enter Your email">
        </div>
        <div class="d-md-flex">
          <div class="form-group text-left mr-2">
            <label for="formGroupExampleInput2">Password</label>
            <input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" id="formGroupExampleInput2" name="password" placeholder="Enter Your Password">
          </div>
          <div class="form-group text-left">
            <label for="formGroupExampleInput2">Confirm Password</label>
            <input type="password" class="form-control {{ $errors->has('password_confirmation') ? ' is-invalid' : '' }}"  name="password_confirmation" id="formGroupExampleInput2" placeholder="Enter Your Password">
          </div>
        </div>
        <div class="mb-3">
          <input type="checkbox" class="form-check-input" id="exampleCheck2" value="1" name="privacy">
          <label class="form-check-label" for="exampleCheck2">You accept and agree with our Terms &
            Conditions, Privacy and Cookie Policy, and Personal Sensitive Information Collection
            Policy.</label>
        </div>
      <!-- dont forget to move the  button inside the form  -->
        <button class="btn dark-btn w-100">Sign Up</button>

      </form>

    </div>
  </div>
  <div class="bg-white d-flex align-items-center flex-column py-4">
    <button class="btn d-flex external-login-btn py-3 px-5">
      <div class="icon mr-4">
        <img src="{{asset('images/apple-logo2.png')}}" alt="">
      </div>
      <div style="font-size: large;">
        Log In with Apple
      </div>
    </button>
    <button class="btn d-flex external-login-btn py-3 px-5">
      <div class="icon mr-4">
        <img src="{{asset('images/facebook.png')}}" alt="">
      </div>
      <div style="font-size: large;">
        Log In with Facebook
      </div>
    </button>
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
            <a href="{{url('front/home')}}">
              <img class="w-100" src="{{asset('images/logo.png')}}" alt="">
            </a>
          </div>
        </div>
        <div class="EGO APP">
          <h5 class="text-center">EGO APP</h5>
          <div class="mobile-download">
            <button class="download-app-box apple">
              <div class="app-img mr-3">
                <a href="">
                  <img class="w-100" src="{{asset('images/apple-logo.png')}}" alt="">
                </a>
              </div>
              <p class="mb-0">Download on App Store</p>
            </button>
            <button class="download-app-box android">
              <div class="app-img mr-3">
                <a href="">
                  <img class="w-100" src="{{asset('images/android.png')}}" alt="">
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
        <p class="faded" style="font-size:small">We’re an Egyptian fashion e-commerce brand. We design and produce all
          of our products locally. We draw our
          inspiration from nomad artisans originating from Sinai and Aswan. We blend our colorful patterns with
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
          <img class="w-100" src="{{asset('images/master-card.jpg')}}" alt="">
        </div>
        <div style="width: 40px; padding: 4px;">
          <img class="w-100" src="{{asset('images/Visa_Inc._logo.svg.png')}}" alt="">
        </div>
      </div>
    </div>
  </div>
</footer>

</body>

</html>