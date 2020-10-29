
@extends('front.layouts.app')
@push('css_lib')

<link rel="stylesheet" href="{{ asset('front/styles/single-store.css') }}">

@endpush
@section('title_name')
    {{trans('products')}}
@endsection
@section('content')

  <!-- Annoncement -->
  <div class="announcement py-3 bar">
    <div class="m-0 text-dark">YOUR FASHION DESTINATION</div>
</div>
<main class="container">
    <div class="border-bottom py-2">
        <h4>EGO FIRST MALL</h4>
        <h5>GIZA, EGYPT</h5>
    </div>
    <div class="grid-container w-100 py-4 px-5 border-bottom">
        <div class="w-100 m-2">
            <iframe class="w-100"
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d24607.68855773278!2d31.29405057488401!3d30.07557661242596!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x145815f571148e03%3A0xb06f5a61bfdd6564!2sEGO!5e0!3m2!1sen!2seg!4v1603182401326!5m2!1sen!2seg"
                height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                tabindex="0"></iframe>
        </div>
        <div class="w-100 m-2">
            <img class="w-100" src="{{ asset('front/images/stores/1.png') }}" alt="">
        </div>
    </div>
    <div class="border-bottom py-4 my-2 mx-4">
        <div class="row" style="max-width: 700px; font-size: small;">
            <div class="col-lg mb-3">
                <div class="mb-3">
                    <p class="mb-0 font-weight-bold mb-1">Address</p>
                    <p class="mb-0">13 Assiut, Almazah, Heliopolis</p>
                    <p class="mb-0">Cairo</p>
                    <p class="mb-0">0123456789</p>
                </div>
                <div>
                    <p class="mb-0 font-weight-bold mb-1">Visiting Information</p>
                    <p class="mb-1 mx-auto">Located Between St Christopher's Place And Selfridge's. Nearest Tube:
                        Bond Street.</p>
                </div>
            </div>
            <div class="col-lg mb-3">
                <div>
                    <p class="mb-0 font-weight-bold mb-1">Opening Hours</p>
                    <p class="mb-1">SUN 11:00AM-7:00PM </p>
                    <p class="mb-1">MON 11:00AM-7:00PM </p>
                    <p class="mb-1">TUE 11:00AM-7:00PM </p>
                    <p class="mb-1">WED 11:00AM-7:00PM </p>
                    <p class="mb-1">THU 11:00AM-7:00PM </p>
                    <p class="mb-1">FRI 12:00AM-5:00PM </p>
                    <p class="mb-1">SAT 11:00AM-7:00PM </p>
                </div>
            </div>
            <div class="col-lg mb-3">
                <div class="mb-3">
                    <p class="mb-1 font-weight-bold mb-1">Store Services</p>
                    <p class="mb-1">Womenswear</p>
                    <p class="mb-1">Menswear</p>
                    <p class="mb-1">Personal Shopping </p>
                    <p class="mb-1">Personal Tailoring </p>
                    <p class="mb-1">Personal Approach </p>
                    <p class="mb-1">Made to Measure Shirts </p>
                </div>
            </div>
        </div>
    </div>
</main>

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