@extends('front.layouts.app')
@push('css_lib')
<link rel="stylesheet" href="{{ asset('front/styles/store-locator.css') }}">
<link rel="stylesheet" href="{{ asset('front/styles/wishlist.css') }}">

@endpush
@section('title_name')
    {{trans('products')}}
@endsection
@section('content')







 <!-- Annoncement -->
 <div class="announcement py-3 bar" style="margin-top:221px !important;">
    <div class="m-0 text-dark">YOUR FASHION DESTINATION</div>
</div>
<main class="container py-4">
    <div class="products container row">
        <div class="col-12 col-md-3 mb-5">
            <div class="w-auto position-relative">
                <div class="cancel-icon">
                    <img src="{{ asset('front/images/cancel-white.png') }}" alt="">
                </div>
                <a href="product.html">
                    <img class="img-fluid w-100 mb-3" src="{{ asset('front/images/p1.png') }}" alt="">
                </a>
            </div>
            <div>
                <div>
                    <h6 class="text-left mb-1">Brand Name</h6>
                    <div class="d-flex justify-content-between mb-3">
                        <small class="mb-0">Charlie white leg pants</small>
                        <small class="mb-0">EGP 6,599</small>
                    </div>
                </div>
                <button class="btn btn-block dark-btn" data-toggle="modal" data-target="#validationModal">
                    <small>
                        Add To Cart
                    </small>
                </button>
            </div>
        </div>
    </div>
</main>














@endsection


@push('scripts')
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
crossorigin="anonymous"></script>
<script type="text/javascript">
// $(window).on('load', function () {
//   $('#defaultModal').modal('show');
// });
</script>
<script src="js/nav-hover.js"></script>

@endpush