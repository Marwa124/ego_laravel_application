<?php

    $cartId = '';
    if ($cart) {
        foreach ($cart as $key => $value) {
            if ($value->attributes->productId == $product->id) {
                $cartId = $value->id;
            }
        }
    }
?>
@if ($product)

    <div id="mini-cart" class="cart-item mb-2 pb-5 row" x-data="{ count: 1, showProduct:true }" x-show="showProduct">
        <div class="col-4 cart-item-img p-3">
            <img @click="count++" class="img-fluid w-75 cursor-pointer" src="{{asset('front/images/p5.png')}}" alt="">
        </div>
        <div class="col-6">
            <div class="font-weight-bold mb-1">{{$product->name}}</div>
            <div class="mb-3"> <?php echo substr($product->description, 0, 20) ?> ...</div>
            <div class="faded mt-2">1 x EGP {{$product->price}}</div>
            <div class="btn-group position-quantity-responsive mt-4" role="group" aria-label="Basic example">
                <button @click="if(count > 1) {count--;}" type="button"
                    class="btn py-1 dark-btn-outline border addCounter">-</button>
                <div x-text="count" class="btn py-1 border"></div>
                <button @click="count++" type="button" class="btn py-1 dark-btn-outline border subCounter">+</button>
            </div>
        </div>
        <div class="col-2 text-right">
            <i @click="showProduct=false" data-cart="{{$cartId}}"
                class="removeCartProduct fas fa-times text-secondary cursor-pointer" type="button"></i>
        </div>
    </div>
    
@endif


@push('scripts')

<script>

$(document).ready(function () {
    //Remove Product From Cart
    $(".removeCartProduct").click(function () {
        var cartId = $(this).data('cart');
        $.ajax({
            url: '{{route('front.cart.product.remove')}}',
            type: 'get',
            data: {
                cart_id: cartId
            },
            success: function (data) {
                console.log('done');
            }
        });
    });
});

</script>
@endpush