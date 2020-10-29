<?php
        $brands = App\Models\Brand::all()->groupby(function($item, $key){
            return json_encode($item->name)[1];
        })->toArray();

?>
@inject('categories', 'App\Models\Category')

<div class="filters d-none d-lg-block text-left col-3 ml-4">
    <form action="">
        <div class="filter-section">
            <div class="d-flex justify-content-between align-items-center mb-1">
                <h7 class="font-weight-bold">Category</h7>
                <a class="btn arrowClicked" data-toggle="collapse" href="#CategoryCollapse" role="button"
                    aria-expanded="false" aria-controls="CategoryCollapse">
                    <i class="fas fa-angle-down"></i></a>
            </div>
            <div class="collapse ml-2" id="CategoryCollapse">
                {{-- <div class="filter-section">
                    <div class="d-flex justify-content-between align-items-center mb-2">
                        <h7 class="">Accessories <small class="text-muted">(163)</small></h7>
                        <a class="btn arrowClicked" data-toggle="collapse" href="#accessoriesCollapse"
                            role="button" aria-expanded="false" aria-controls="accessoriesCollapse">
                            <i class="fas fa-angle-down"></i></a>
                    </div>
                    <div class="collapse" id="accessoriesCollapse">
                        <div class="search-group" id="scrollbar-style">
                            <div class="checkboxes ml-3">
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="accCheck1">
                                    <label class="form-check-label" for="accCheck1">Red</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="accCheck2">
                                    <label class="form-check-label" for="accCheck2">Yellow</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="accCheck3">
                                    <label class="form-check-label" for="accCheck3">White</label>
                                </div>
                                <div class="form-check mb-1">
                                    <input type="checkbox" class="form-check-input" id="accCheck4">
                                    <label class="form-check-label" for="accCheck4">Green</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> --}}
                @foreach ($categories->all() as $item)
                    <p><a href="javascript:void(0)" class="category_link">
                        {{$item->name}}
                        <input type="text" hidden value="{{$item->id}}" class="category_id">
                       </a> <small class="text-muted categories">
                        ({{$item->products()->count()}})
                    </small></p>
                @endforeach
            </div>
        </div>
        <div class="filter-section">
            <div class="d-flex justify-content-between align-items-center mb-2">
                <h7 class=" font-weight-bold">Brands</h7>
                <a class="btn arrowClicked" data-toggle="collapse" href="#BrandsCollapse" role="button"
                    aria-expanded="false" aria-controls="BrandsCollapse"><i
                        class="fas fa-angle-down"></i></a>
            </div>
            <div class="collapse" id="BrandsCollapse">
                <div>
                    <input type="text" class="form-control mb-3 brandSearch" name="brandSearch" id="exampleInputEmail1"
                        aria-describedby="emailHelp" placeholder="Search By Brands">
                    <div class="search-group resultSearchBrands" id="scrollbar-style">
                        @foreach ($brands as $key => $items)
                            <div class="letter-search mb-3">
                            <h6 class="text-capitalize">{{$key}}</h6>
                            <div class="checkboxes ml-3">
                                @foreach ($items as $item)
                                <?php $count = App\Models\Brand::find($item['id'])->products()->count();  ?> 
                                
                                    <div class="form-check mb-1">
                                        <input type="checkbox" name="brands" class="form-check-input brands" id="{{$item['id']}}" value="{{$item['id']}}">
                                        <label class="form-check-label" for="{{$item['id']}}">{{$item['name']}} <small
                                                class="text-muted">({{$count}})</small></label>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        @endforeach
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
                    <div class="colorboxes">
                        <div class="black-check">
                            <input type="checkbox" id="black"/>
                            <label class="colorCheckBox text-left d-flex" for="black">
                                <div class="ml-2">
                                    Black
                                </div>
                            </label>
                        </div>
                        <div class="red-check">
                            <input type="checkbox" id="red"/>
                            <label class="colorCheckBox text-left d-flex" for="red">
                                <div class="ml-2">
                                    Red
                                </div>
                            </label>
                        </div>
                        <div class="brown-check">
                            <input type="checkbox" id="brown"/>
                            <label class="colorCheckBox text-left d-flex" for="brown">
                                <div class="ml-2">
                                    Brown
                                </div>
                            </label>
                        </div>
                        <div class="gold-check">
                            <input type="checkbox" id="gold"/>
                            <label class="colorCheckBox text-left d-flex" for="gold">
                                <div class="ml-2">
                                    Gold
                                </div>
                            </label>
                        </div>
                        <div class="blue-check">
                            <input type="checkbox" id="blue"/>
                            <label class="colorCheckBox text-left d-flex" for="blue">
                                <div class="ml-2">
                                    Blue
                                </div>
                            </label>
                        </div>
                        <div class="purple-check">
                            <input type="checkbox" id="purple"/>
                            <label class="colorCheckBox text-left d-flex" for="purple">
                                <div class="ml-2">
                                    Purple
                                </div>
                            </label>
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
                    <div class="price-range-block mt-2 w-100">
                        <div class="d-flex mb-4">
                            <input type="number" min=0 max="9999" oninput="validity.valid||(value='1000');"
                                id="min_price" class="price-range-field mr-2" />
                            <p class="faded mt-1">to</p>
                            <input type="number" min=0 max="10000" oninput="validity.valid||(value='8000');"
                                id="max_price" class="price-range-field ml-2" />
                        </div>

                        <div id="slider-range" class="price-filter-range" name="rangeInput"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

@push('scripts')
    <script>
    
        $(document).ready(function() {

            // Category Filter
            $('.category_link').on('click', function(e) {
                var categoryId = $(this).find(".category_id").val();
                // console.log($(this).find(".category_id").val());
                $.ajax({
                    url: '{{route('front.products.sidebar')}}',
                    type: 'get',
                    dataType: 'html',
                    data: {
                        categoryId: categoryId,
                    },
                    success: function(data){
                        $("#product_data").html(data);
                    }
                })

            });

            // Brand Search 
            $('.brandSearch').on('keyup', function() {
                var brandSearch = $('.brandSearch').val();

                $.ajax({
                    url: '{{route('front.products.sidebar')}}',
                    type: 'get',
                    dataType: 'html',
                    data: {
                        brandSearch: brandSearch,
                    },
                    success: function(data){

                        $(".resultSearchBrands").html(data);
                    }
                })

               
            });

            // Brand CheckBox Filter
            $('input[type=checkbox]').on('change',function(e) {
                
                // console.log(e.target);
                // console.log($(this).val());
                var brands = [];
// brands.push($(this).val())
                        
                if ($('input.brands').is(':checked')) {
                    // var brands = $(this).val();
                    $("input.brands:checked").each(function(){
                        brands.push($(this).val());
                    });
                    // console.log(brands);
                    // console.log($('input.brands:checkbox:checked'));
                    $.ajax({
                        url: '{{route('front.products.sidebar')}}',
                        type: 'get',
                        dataType: 'html',
                        data: {
                            brands: brands,
                        },
                        success: function(data){
                            $("#product_data").html(data);
                        }
                    })

                }

            })

        });

    </script>
@endpush