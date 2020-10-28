@extends('front.layouts.app')
@section('title_name')
    {{trans('Home')}}
@endsection
@section('content')


<!-- Annoncement -->
<div class="announcement py-3 bar" style="margin-top: 221px!important;">
  <div class="m-0 text-dark">YOUR FASHION DESTINATION</div>
</div>

@if(Session::has('success'))
<p class=" flashMs alert {{ Session::get('alert-class', 'alert-success') }}">{{ Session::get('success') }}</p>
@elseif(Session::has('error'))
<p class=" flashMs alert {{ Session::get('alert-class', 'alert-danger') }}">{{ Session::get('error') }}</p>
@endif  


  <main class="container">


    
    <section class="row p-4 position-relative">
      <div class="col-lg-6 col-md-12 col-sm-12 mb-4">
        <a href="javascript:void(0)">
          <img class="img-fluid" src="{{ asset('images/men.png') }}" alt="">
        </a>
      </div>
      <div class="col-lg-6 col-md-12 col-sm-12 mb-4">
        <a href="javascript:void(0)">
          <img class="img-fluid" src="{{ asset('images/women.png')}}" alt="">
        </a>
      </div>
    </section>
    <section class="row p-4">
      <div class="col-lg-6 col-sm-12 mb-4">
        <a href="javascript:void(0)">
          <img class="img-fluid" src="{{ asset('images/bag.png') }}" alt="">
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
        <a href="javascript:void(0)">
          <img class="img-fluid" src="{{ asset('images/man.png') }}" alt="">
        </a>
      </div>
    </section>
    <section class="w-75 mx-auto my-5">
      <div class="mb-5">
        <h3 class="font-weight-bold">What's new?</h3>
        <p class="faded">Sign up for exclusive daily sales access and tailored new arrivals</p>
      </div>
      <form action="{{route('front.subscribe')}}" method="post" class="d-md-flex mb-2">
        @csrf
        <input type="email" name="email" class="form-control mr-4" id="" placeholder="name@example.com">
        <button type="submit" class="btn dark-btn font-weight-bold px-5">Subscribe</button>
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

@endsection

@push('scripts')
    <script>
       $(".flashMs").delay(3000).fadeOut(300);
</script>

@endpush