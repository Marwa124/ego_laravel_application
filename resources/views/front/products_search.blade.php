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

                {{-- <button class="add_to_cart" id="add_to_cart" data-product="{{$item->id}}" >Add to cart</button> --}}
            </div>
        </div>
    @endforeach
</div>
<div class="d-flex justify-content-center">
    <div>{{$products->links()}}</div>
</div>