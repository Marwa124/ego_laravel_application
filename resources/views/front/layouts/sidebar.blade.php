<?php
        // $brands = App\Models\Brand::select('name', 'id')->get();
        // json_encode($item->name)[2]
        $brands = App\Models\Brand::all()->groupby(function($item, $key){
            return json_encode($item->name)[1];
        })->toArray();
        // dd($brands);

?>
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
                <div class="filter-section">
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
                </div>
                <p><a href="">Activewear</a> <small class="text-muted">(21)</small> </p>
                <p><a href="">Bags</a> <small class="text-muted">(53)</small></p>
                <p><a href="">Clothing</a> <small class="text-muted">(163)</small> </p>
                <p><a href="">Fine Jewelry</a> <small class="text-muted">(9)</small></p>
                <p><a href="">Shoes</a> <small class="text-muted">(94)</small></p>
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
                    <input type="text" class="form-control mb-3" id="exampleInputEmail1"
                        aria-describedby="emailHelp" placeholder="Search By Brands">
                    <div class="search-group" id="scrollbar-style">
                        @foreach ($brands as $key => $items)
                            <div class="letter-search mb-3">
                            <h6 class="text-capitalize">{{$key}}</h6>
                            <div class="checkboxes ml-3">
                                @foreach ($items as $item)
                                <?php $count = App\Models\Brand::find($item['id'])->products()->count();  ?> 
                                
                                    <div class="form-check mb-1">
                                        <input type="checkbox" class="form-check-input" id="{{$item['id']}}">
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