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
                    <select class="form-control productsPriceFilter" style="width: 180px; font-size: small;" id="exampleFormControlSelect1">
                        <option selected disabled>Sort By</option>
                        <option value="HighToLow" class="HighToLow">Price (High to Low)</option>
                        <option value="LowToHigh" class="LowToHigh">Price (Low to High)</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="row">
            @include('front.layouts.sidebar')
            <div id="product_data" class="col">

                {{-- @include('front.products_search') --}}


                <div class="products container row">

                    @foreach ($products as $item)
                        <div class="col-6 col-md-4 mb-5">
                            <div class="w-auto position-relative">
                                <div class="fav-icon heart-icon {{$item->is_favorite ? 'bg-danger' : ''}}">
                                    <i id="{{$item->id}}" class="fa-heart {{$item->is_favorite ? 'fas' : 'far'}}"></i>
                                </div>
                                @if ($item->getMedia('image')->first() != null)
                                    
                            <a class="img-fluid w-100 mb-3" href="{{route('front.product.show', $item->id)}}" target="_blank">
                                        <img class="img-fluid" src="{{$item->getFirstMediaUrl('','thumb')}}" alt="">
                
                                    {{-- <img class="img-fluid w-100 mb-3" src="{{env('App_Url').$item->getUrl()}}" alt=""> --}}
                                </a>
                                @endif
                            </div>
                            <div>
                                <div>
                                    <h5 class="prod-name mb-1">{{$item->name}}</h5>
                                    <p class="mb-0">{{$item->description}}</p>
                                    <p class="mb-0">{{$item->price}}</p>
                                </div>
                                <div class="d-flex justify-content-center align-items-center">
                                    {{-- @php $rating = 1.6; @endphp   --}}
                                    <?php
                                        $rating = 0;
                                        foreach ($item->productReviews()->get() as $key => $value) {
                                            if($value->rate <= 2)
                                            {
                                                $rating -=$value->rate;
                                            }else {
                                                $rating +=$value->rate;
                                            }
                                        }
                                    ?>
                
                                    @foreach(range(1,5) as $i)
                                        <span class="fa-stack" style="width:1em">
                                            <i class="far fa-star fa-stack-1x"></i>
                
                                            @if($rating >0)
                                                @if($rating >0.5)
                                                    <i class="fas fa-star fa-stack-1x"></i>
                                                @else
                                                    <i class="fas fa-star-half fa-stack-1x"></i>
                                                @endif
                                            @endif
                                            @php $rating--; @endphp
                                        </span>
                                    @endforeach
                
                                     <div class="text-grey mt-1" style="font-size: 10px;"> ({{$item->productReviews()->count()}})</div>
                                    
                                </div>
                
                                <button class="add_to_cart" id="add_to_cart" data-product="{{$item->id}}" >Add to cart</button>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="d-flex justify-content-center">
                    <div>{{$products->links()}}</div>
                </div>


               
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
    // console.log(data.target);
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
            Toast.fire({
                icon: 'success',
                title: 'Product added'
            });
          $(e).removeClass('far').addClass('fas');
          $(e).parent().addClass('bg-danger');
        } else {
            Toast.fire({
                icon: 'success',
                title: 'Product removed'
            });
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
    // Products Price Filter
$(document).ready(function () {
      $('.productsPriceFilter').on('click', function (e) {
            
        var selectedFilter = $('.productsPriceFilter').val();
        $.ajax({
            url: '{{url('front/products/price-filter?filter=')}}' + selectedFilter,
            type: 'get',
            dataType: 'html',
            success: function(data){
                $("#product_data").html(data);
            }
        });
    });
});
</script>


<script>
    // Add to Cart
    $(".add_to_cart").click(function (e) {
        e.preventDefault();
        var productId = $(this).data('product');
        // console.log(productId);
        $.ajax({
            url: '{{route('front.cart.product.add')}}', 
            type: 'get',
            data: {
                product_id: productId
            },
            success: function (data) {
                // console.log( data);
                // console.log(array.length);
                var cartId = '';

                var array = $.map(data.cart, function(value, index){
                    return [value];
                });
                for (let i = 0; i < array.length; i++) {
                    const element = array[i];
                    if (element.attributes.productId == data.product.id) {
                        // console.log('success');
                        cartId = element.id;
                    }
                }
                $('.cartCounts').html(array.length);
                $(e.target).css('backgroundColor', 'green');
                
                $('#mini-cart').prepend(`
                <div id="mini-cart" class="cart-item mb-2 pb-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
                    <div class="col-4 cart-item-img p-3">
                    <img @click="count++" class="img-fluid w-75 cursor-pointer" src="{{asset('front/images/p5.png')}}" alt="">
                    </div>
                    <div class="col-6">
                    <div class="font-weight-bold mb-1">${data.product.name}</div>
                    <div class="mb-3">${data.product.description.substr(0, 20)}...</div>
                    <div class="faded mt-2">1 x EGP ${data.product.price}</div>
                    <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
                        <button @click="if(count > 1) {count--;}" type="button"
                        class="btn py-1 dark-btn-outline border addCounter">-</button>
                        <div x-text="count" class="btn py-1 border"></div>
                        <button @click="count++" type="button" class="btn py-1 dark-btn-outline border subCounter">+</button>
                    </div>
                    </div>
                    <div class="col-2 text-right">
                    <i @click="showProduct=false" data-cart="${cartId}" class="removeCartProduct fas fa-times text-secondary cursor-pointer" type="button"></i>
                    </div>
                </div>
                `);
                // console.log($('.mini-cart').html());
                // $("#product_data").html(data)
            }

        })
    });


    

</script>
@endpush