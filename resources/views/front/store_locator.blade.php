@extends('front.layouts.app')
@push('css_lib')
<link rel="stylesheet" href="{{ asset('front/styles/store-locator.css') }}">

@endpush
@section('title_name')
    {{trans('products')}}
@endsection
@section('content')
   <!-- Annoncement -->
   <div class="announcement py-3 bar" style="margin-top:221px !important;">
    <div class="m-0 text-dark">YOUR FASHION DESTINATION</div>
</div>
<main class="container">
    <!-- The sidebar -->
    <div class="sidebar">
        <div class="form-group">
            <div class="input-wrapper d-flex justify-content-around align-items-center" tabindex="1">
                <label for="town"></label>
                <small style="flex-basis: 100%;">
                    <input type="text" name="town" class="form-control search-town" placeholder="Town or post code">
                </small>
                <i class="fas fa-search cursor-pointer"></i>
            </div>
        </div>
        <a class="btn locationBtn" href="{{ url('single_store') }}">
            <small>
                Use Current Location
            </small>
            <div style="width: 16px;">
                <img class="w-100" src="{{ asset('images/pin.png') }}" alt="">
            </div>
        </a>
        <div class="dropdown-select">
            <div class="d-flex justify-content-between align-items-center">
                <small>Select Your Store</small>
                <a class="btn arrowClicked" data-toggle="collapse" href="#ColorsCollapse" role="button"
                    aria-expanded="false" aria-controls="ColorsCollapse">
                    <i class="fas fa-angle-down"></i></a>
            </div>
            <div class="border-top collapse" id="ColorsCollapse">
                <a class="store-select d-block w-100" href="store-locator.html">
                    <a class="store-select d-block w-100" href="single-store.html">
                        <small class="">
                            EGO MAIN BRANCH, Cairo
                        </small>
                    </a>
                </a>
                <a class="store-select d-block w-100" href="single-store.html">
                    <small class="">
                        EGO GALLERIA 40, 6th of October
                    </small>
                </a>
                <a class="store-select d-block w-100" href="single-store.html">
                    <small class="">
                        EGO ACCESSORIES
                    </small>
                </a>
            </div>
        </div>
    </div>
    <!-- Page content -->
    <div class="content text-center">
        <div class="mb-5">
            <h4 class="mb-4">STORES</h4>
            <h6 class="mb-3 faded">STORES REOPENING SOON </h6>
            <p>
                As we prepare to open our doors, our focus is first and foremost on protecting your health
                and
                wellbeing
                as you shop with us. We’re implementing extra safety precautions in stores from changing
                rooms
                to
                payment options all detailed here. Check below if your local store is opening soon.
            </p>
        </div>
        <a href="single-store.html">
            <div class="d-lg-flex align-items-center">
                <div class="px-5">
                    <h6>REST OF THE WORLD</h6>
                    <p>
                        Each Reiss store is a celebration of the label’s design-led aesthetic and every
                        destination
                        provides
                        a characteristically sleek yet unique environment in which to discover the current
                        collection.
                    </p>
                    <a href="single-store.html" style="text-decoration: underline;"> <small>VIEW MIAN
                            STORE</small></a>
                </div>
                <div>
                    <img src="{{ asset('front/images/stores/2.jpg') }}" alt="">
                </div>
            </div>
        </a>
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