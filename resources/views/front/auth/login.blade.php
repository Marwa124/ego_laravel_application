@extends('front.layout.layout')

@section('content')


<main>
  <div class="login-wrapper">
    <!-- <div class="text-center">
        <a href="index.html">
          <img class="logo w-50" src="./images/logo.png" alt="">
        </a>
      </div> -->
    <div class="login-card mt-5">
      <h3 class="font-weight-medium text-center mb-5">LOG IN</h3>
      <form action="{{ url('/login') }}" method="post">
        @csrf
        <div class="form-group text-left">
          <label for="formGroupExampleInput" style="font-size: small;">EMAIL ADDRESS <small>*</small></label>
          <input type="email"  value="{{ old('email') }}" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" id="formGroupExampleInput" name="email" placeholder="{{ __('auth.email') }}">
          @if ($errors->has('email'))
          <div class="invalid-feedback">
              {{ $errors->first('email') }}
          </div>
      @endif
        </div>
        <div class="form-group text-left">
          <label for="formGroupExampleInput2" style="font-size: small;">Password <small>*</small></label>
          <input type="password" class="form-control {{ $errors->has('password') ? ' is-invalid' : '' }}" id="formGroupExampleInput2" name="password" placeholder="{{__('auth.password')}}">

          @if ($errors->has('password'))
          <div class="invalid-feedback">
              {{ $errors->first('password') }}
          </div>
      @endif

        </div>
        <a href="products.html">
          <button class="btn dark-btn w-100 py-2 mb-3 " type="submit"  style="font-size: small;">SIGN IN</button>
        </a>
        <div class="text-center mb-3">
          <a href="index.html" style="font-size: small; text-decoration: underline;">FORGOT YOUR PASSWORD?</a>
        </div>
        <div class="text-center mb-3">
          <p href="index.html" class="mb-0" style="font-size: small;">HAVE YOU PLACED AN ORDER WITHOUT
            CREATING AN ACCOUNT? </p>
          <a href="{{route('front.register')}}" style="font-size: small; text-decoration: underline;">CLICK HERE TO MANAGE YOUR
            ORDER.</a>
        </div>
      </form>
    </div>
  </div>
</main>


@endsection