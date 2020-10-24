@extends('front.layouts.app')
@section('title_name')
    {{trans('products')}}
@endsection
@section('content')

    <!-- Annoncement -->
    <div class="py-3 bar" style="margin-top: 180px;">
        <p class="m-0 text-dark">Open Doors To A World Of Fashion</p>
    </div>

    <main class="container py-4 mt-4" x-data="{showMiniCart:false, showMenNav:false, showWomenNav:false}">
        <div class="responsive-filter bg-light text-left my-3 mx-4">
            <div class="d-flex justify-content-between align-items-center mb-1">
                <h7 class="font-weight-bold">Filter</h7>
                <a class="btn arrowClicked" data-toggle="collapse" href="#responsive-filterCollapse" role="button"
                    aria-expanded="false" aria-controls="responsive-filterCollapse">
                    <i class="fas fa-angle-down"></i></a>
            </div>
            <div class="collapse ml-2" id="responsive-filterCollapse">
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-1">
                        <h7 class="font-weight-bold">Category</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#CategoryCollapse" role="button"
                            aria-expanded="false" aria-controls="CategoryCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse ml-2" id="CategoryCollapse">
                        <p><a href="">Accessories</a> <small class="text-muted">(163)</small></p>
                        <p><a href="">Activewear</a> <small class="text-muted">(21)</small> </p>
                        <p><a href="">Bags</a> <small class="text-muted">(53)</small></p>
                        <p><a href="">Clothing</a> <small class="text-muted">(163)</small> </p>
                        <p><a href="">Fine Jewelry</a> <small class="text-muted">(9)</small></p>
                        <p><a href="">Shoes</a> <small class="text-muted">(94)</small></p>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        {{-- <h7 class=" font-weight-bold">Brands</h7> --}}
                        <a class="btn arrowClicked" data-toggle="collapse" href="#BrandsCollapse" role="button"
                            aria-expanded="false" aria-controls="BrandsCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="BrandsCollapse">
                        <div>
                            <input type="text" class="form-control mb-3" id="exampleInputEmail1"
                                aria-describedby="emailHelp" placeholder="Search By Brands">
                            <div class="search-group" id="scrollbar-style">
                             
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check3">
                                            <label class="form-check-label" for="check3">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check4">
                                            <label class="form-check-label" for="check4">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check5">
                                            <label class="form-check-label" for="check5">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check6">
                                            <label class="form-check-label" for="check6">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Designers</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#DesignersCollapse" role="button"
                            aria-expanded="false" aria-controls="DesignersCollapse">
                            <i class="fas fa-angle-down"></i>
                        </a>
                    </div>
                    <div class="collapse" id="DesignersCollapse">
                        <div>
                            <input type="text" class="form-control mb-3" placeholder="Search By Designers">
                            <div class="search-group" id="scrollbar-style">
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check7">
                                            <label class="form-check-label" for="check7">Acne Studios</label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check8">
                                            <label class="form-check-label" for="check8">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check9">
                                            <label class="form-check-label" for="check9">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check10">
                                            <label class="form-check-label" for="check10">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="letter-search mb-3">
                                    <h6>B</h6>
                                    <div class="checkboxes ml-3">
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check11">
                                            <label class="form-check-label" for="check11">Balenciaga <small
                                                    class="text-muted">(54)</small></label>
                                        </div>
                                        <div class="form-check mb-1">
                                            <input type="checkbox" class="form-check-input" id="check12">
                                            <label class="form-check-label" for="check12">Battega <small
                                                    class="text-muted">(19)</small></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Colors</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#ColorsCollapse" role="button"
                            aria-expanded="false" aria-controls="ColorsCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="ColorsCollapse">
                        <div class="search-group" id="scrollbar-style">
                            <div class="checkboxes ml-3">
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check13">
                                    <label class="form-check-label" for="check13">Red</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check14">
                                    <label class="form-check-label" for="check14">Yellow</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check15">
                                    <label class="form-check-label" for="check15">White</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="check16">
                                    <label class="form-check-label" for="check16">Green</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Price</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#PriceCollapse" role="button"
                            aria-expanded="false" aria-controls="PriceCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="PriceCollapse">
                        <div class="" id="scrollbar-style">
                            <div class="d-flex align-items-center justify-content-around mb-4">
                                <div class="border p-2">EGP 4,000</div>
                                <div>to</div>
                                <div class="border p-2">EGP 35,000</div>
                            </div>
                            <input class="custom-range" type="range" class="form-control-range" id="formControlRange">
                        </div>
                    </div>
                </div>
                <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class=" font-weight-bold">Sort</h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#SortCollapse" role="button"
                            aria-expanded="false" aria-controls="SortCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="SortCollapse">
                        <div class="" id="scrollbar-style">
                            <a href="">
                                <p class="ml-3">Sort By Price (High to Low)</p>
                            </a>
                            <a href="">
                                <p class="ml-3">Sort By Price (Low to High)</p>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row my-3 mx-4">
            <div class="col d-xs-block d-none"></div>
            <h3 class="col products-title font-weight-bold text-left">All Women</h3>
            <div class="col d-xs-block d-none"></div>
            <div class="col">
                <div class="form-group d-flex justify-content-end">
                    <select class="form-control" style="width: 180px; font-size: small;" id="exampleFormControlSelect1">
                        <option>Sort By</option>
                        <option>Price (High to Low)</option>
                        <option>Price (Low to High)</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            @include('front.layouts.sidebar')
            <div id="product_data" class="col">

                @include('front.products_search')
               
            </div>
        </div>
    </main>

@endsection

@push('scripts')
<script>
    // Favorate Icon Products
  $('.heart-icon').click(function(data) {
    console.log(data.target.id);
    var e = data.target; // find the clicked icon
    console.log(data.target);
    var product_id = data.target.id
    $.ajax({
      url: '{{route('favorable')}}',
      type: 'post',
      data: {
        _token: '{{csrf_token()}}',
        product_id: product_id
      },
      success: function(data){
        if ($(e).hasClass('far')) {
          $(e).removeClass('far').addClass('fas');
          $(e).parent().addClass('bg-danger');
        } else {
          $(e).removeClass('fas').addClass('far');
          $(e).parent().removeClass('bg-danger');
        };
      },
      error: function(){
      }
    });
  });
</script>

<script>
    // Product Search
$(document).ready(function () {
      $('.search-input').on('keyup', function () {
            
        var inputSearch = $('input[name="search"]').val();
        $.ajax({
            url: '{{url('front/products/search?keyword=')}}' + inputSearch,
            type: 'get',
            dataType: 'html',
            success: function(data){
                // console.log(data);
                $("#product_data").html(data);
            },

            error: function(x, y, z){
                console.log(x + ' ' + y + ' ' + z);
            }
        });

    });
});
</script>

<script>
// Product Pagination
$(document).ready(function () {
    $('.pagination a').on('click', function (e) {
        e.preventDefault();
        var page = $(this).attr('href').split('page=')[1];
        $.ajax({
            url: '{{url('front/products?page=')}}' + page,
            type: 'get',
            dataType: 'html',
            success: function (data) {
                $("#product_data").html(data)
            }
        })
        console.log(page);
    })
})

</script>
@endpush