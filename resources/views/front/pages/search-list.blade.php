<div class="shop">
    <div class="shop__container">
        <div class="shop__row">
            <div class="shop__content">
                <div class="shop__top top-panel">
                </div>
                <div class="shop__product product-shop">
                    @if($products->count())
                        <div class="product-shop__row product-shop__row-style grid-5" id="container">
                            @foreach($products as $product)
                                <div class="product-shop__column {{@$product->categories->slug}} {{@$product->categories->parent->slug}} {{$product->brands->slug}}">
                                    <article class="product-shop__items">
                                        <a href="{{route('product', [$product->categories, $product->slug, $product])}}">
                                            <picture>
                                                <source srcset="{{asset($product->image('slideshow', 'no_crop'))}}"
                                                        type="image/webp">
                                                <img src="{{asset($product->image('slideshow', 'no_crop'))}}"
                                                     alt="{{$product->title}}" class="product-shop__img"></picture>
                                        </a>
                                        <div class="product-shop__action action-product">
                                            <button class="action-product__item action-product__item_compare co-add {{Helper::compareItem($product->id)?'_active':''}}"
                                                    data-compare="{{route('compare.add', $product)}}"></button>
                                            <button class="action-product__item action-product__item_wish w-add {{Helper::whishItem($product->id)?'_active':''}}"
                                                    data-wish="{{route('wishlist.add', $product)}}"></button>
                                        </div>
                                        <h4 class="product-shop__cat">{{@$product->categories->title}}</h4>
                                        <a href="{{route('product', [$product->categories, $product->slug, $product])}}">
                                            <h3 class="product-shop__name">{{$product->title}}</h3>
                                        </a>
                                        @if($product->price)
                                            <div>
                                                <span class="product-shop__price">{{number_format($product->price, 2, ',')}}</span>
                                                <span class="product-shop__price">{{$currency[$current_lang]}}</span>
                                            </div>
                                            <button class="product-shop__add btn-block c-add {{Helper::cartItem($product->id)?'_added':''}}"
                                                    data-cart="{{route('cart.add', $product)}}"
                                                    data-price="{{number_format($product->price, 2)}}">
                                                <span>{{__('products.add_to_cart')}}</span>
                                            </button>
                                        @endif
                                        <div class="product-shop__social">
                                            <span>{{__('products.share')}}</span>
                                            <ul class="product-shop__socials socials">
                                                <li class="socials__li">
                                                    <a href="{{route('product', [$product->categories, $product->slug, $product])}}"
                                                       class="socials__icon socials__icon_fb btnShareFb"
                                                       data-image="{{asset($product->image('slideshow', 'no_crop'))}}"
                                                       data-title="{{$product->title}}"
                                                       data-desc="{{$product->description}}" target="_blank"></a>
                                                </li>
                                                <li class="socials__li">
                                                    <a href="https://t.me/share/url?url={{route('product', [$product->categories, $product->slug, $product])}}&text={{$product->title}}"
                                                       class="socials__icon socials__icon_telegr"
                                                       target="_blank"></a>
                                                </li>
                                                <li class="socials__li">
                                                    <a href="viber://forward?text={{route('product', [$product->categories, $product->slug, $product])}}"
                                                       class="socials__icon socials__icon_vb" target="_blank"></a>
                                                </li>
                                                <li class="socials__li">
                                                    <a href="https://web.whatsapp.com://send?text={{route('product', [$product->categories, $product->slug, $product])}}"
                                                       target="_blank"
                                                       class="socials__icon socials__icon_wtt"></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </article>
                                </div>
                            @endforeach
                        </div>

                    @else
                        <div class="product-shop__row product-shop__row-style grid-5" id="container">
                            No products
                        </div>
                    @endif
                    <div class="products__content" id="paginationToInsert">
                    </div>
                    {{--{{ $products->links('front.pagination') }}--}}
                </div>
            </div>
        </div>
    </div>
</div>
