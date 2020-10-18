@extends('front.layouts.app')
@section('title_name')
    {{trans('Home')}}
@endsection
@section('content')

  <!-- Annoncement -->
  <div class="announcement py-3 bar">
    <div class="m-0 text-dark">Open Doors To A World Of Fashion</div>
  </div>
  <main class="container">
    <?php  
      $products = App\Models\Product::get()->take(2)->shuffle();
    ?>  
        {{-- <img class="img-fluid" src="{{env('App_Url'). 'storage/app/public/' . $p->getMedia('image')->first()->id .'/'. $p->getMedia('image')->first()->file_name}}" alt=""> --}}
    <section class="row p-4 position-relative">
      @foreach ($products as $item)
        <div class="col-lg-6 col-md-12 col-sm-12 mb-4">
            @if ($item->has_media)
              <a href="{{route('front.product.show', $item->id)}}" target="_blank">
                  <img class="img-fluid" src="{{$item->getMedia('image')->first()->getUrl()}}" alt="">
              {{-- <a href="{{env('App_Url'). 'storage/app/public/' . $item->getMedia('image')->first()->id .'/'. $item->getMedia('image')->first()->file_name}}" target="_blank">
                  <img class="img-fluid" src="{{env('App_Url'). 'storage/app/public/' . $item->getMedia('image')->first()->id .'/'. $item->getMedia('image')->first()->file_name}}" alt=""> --}}
              </a>
            @endif
        </div>
      @endforeach
    </section>
    <section class="row p-4">
      <div class="col-lg-6 col-sm-12 mb-4">
        <?php  
        $product = App\Models\Product::get()->shuffle()->take(1)->first();
        ?>
        <a href="{{route('front.product.show', $product->id)}}">
          @if ($product->has_media)
            <img class="img-fluid" src="{{$product->getMedia('image')->first()->getUrl()}}" alt="">
          @endif
        </a>
      </div>
      <div class="col-lg-6 col-sm-12 mb-4 my-auto">
        <h3 class="font-weight-bold ">{{$product->name}}</h3>
        <p class="faded">{{$product->description}}</p>
      </div>
    </section>
    <section class="row p-4">
      <div class="col-lg-6 col-sm-12 mb-4 my-auto">
        <?php  
        $product = App\Models\Product::get()->shuffle()->take(1)->first();
        ?>
        <h3 class="font-weight-bold">{{$product->name}}</h3>
        <p class="faded">{{$product->description}}</p>
      </div>
      <div class="col-lg-6 col-sm-12 mb-4">
        <a href="{{route('front.product.show', $product->id)}}">
          @if ($product->has_media)
            <img class="img-fluid" src="{{$product->getMedia('image')->first()->getUrl()}}" alt="">
          @endif
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

@endsection