@extends('front/layouts/app')

@section('container')

    <div class="shop">
        <div class="shop__container">
            @if($product)
                <div class="shop__product product">
                    <div class="product__row">
                        @if($product->images('slideshow', 'no_crop'))
                            <div class="product__column product-slide">
                                <div class="product-slide__nav nav-slide ">
                                    <div class="nav-slide__items gallery-thumbs">
                                        <div class="swiper-wrapper">
                                            @foreach($product->images('slideshow', 'no_crop') as $img)
                                                <div class="nav-slide__item swiper-slide">
                                                    <picture>
                                                        <source srcset="{{$img}}" type="image/webp">
                                                        <img src="{{$img}}" alt="{{$product->title}}"></picture>
                                                </div>
                                            @endforeach
                                        </div>

                                    </div>
                                    <div class="nav-slide__control">
                                        <button class="nav-slide__up"></button>
                                        <button class="nav-slide__dow"></button>
                                    </div>

                                </div>
                                <div class="product-slide__left">
                                    <div class="product-slide__items gallery-top">
                                        <div class="swiper-wrapper" data-gallery>
                                            @foreach($product->images('slideshow', 'no_crop') as $img)
                                                <a href="{{$img}}" class="product-slide__item swiper-slide">
                                                    <picture>
                                                        <source srcset="{{$img}}" type="image/webp">
                                                        <img src="{{$img}}" alt="{{$product->title}}"></picture>
                                                </a>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif

                        <div class="product__column product-info">
                            <ul class="product-info__crumb top-panel__breadcrumb breadcrumb">
                                <li><a href="{{route('catalog')}}" class="breadcrumb__item">{{__('products.products')}}</a></li>
                                <li>
                                    <a class="breadcrumb__item breadcrumb__item_active">{{$product->categories->title}}</a>
                                </li>
                            </ul>
                            <form action="shop-single.html#">
                                <h4 class="product-info__name">{{$product->title}}</h4>
                                @if($product->price)
                                <div>
                                    <span class="product-info__price product-shop__price">{{number_format($product->price, 2, ',')}}</span>
                                    <span class="product-info__price product-shop__price">{{$currency[$current_lang]}}</span>
                                </div>
                                @endif
                                {{--<span class="product-info__price product-shop__price">{{$product->price}}</span>--}}
                                @if($product->description)
                                <h5 class="product-info__subname">{{__('products.description')}}</h5>
                                <div class="product-info__desc">{!! $product->description !!}</div>
                                @endif
                                <div class="product-info__links">
                                    <div class="product-info__q quantity">
                                        <div class="quantity__button quantity__button_minus _icon-minus"></div>
                                        <div class="quantity__input"><input autocomplete="off" type="text" name="qty"
                                                                            value="1"></div>
                                        <div class="quantity__button quantity__button_plus _icon-plus"></div>
                                    </div>
                                    <button class="product-shop__add btn-block c-add"
                                            data-cart="{{route('cart.add', $product)}}">{{__('products.add_to_cart')}}
                                    </button>
                                </div>
                                <div class="product-info__action action-product">
                                    <button class="action-product__item action-product__item_compare co-add {{Helper::compareItem($product->id)?'_active':''}}"
                                            data-compare="{{route('compare.add', $product)}}">
                                        {{__('products.add_to_compare')}}
                                    </button>
                                    <button class="action-product__item action-product__item_wish w-add {{Helper::whishItem($product->id)?'_active':''}}"
                                            data-wish="{{route('wishlist.add', $product)}}">
                                        {{__('products.add_to_favorites')}}
                                    </button>
                                </div>
                                <div class="product-info__social">
                                    <div class="product-shop__social">
                                        <span class="product-info__subname">{{__('products.share')}}</span>
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
                                                   class="socials__icon socials__icon_telegr" target="_blank"></a>
                                            </li>
                                            <li class="socials__li">
                                                <a href="viber://forward?text={{route('product', [$product->categories, $product->slug, $product])}}"
                                                   class="socials__icon socials__icon_vb" target="_blank"></a>
                                            </li>
                                            <li class="socials__li">
                                                <a href="https://web.whatsapp.com://send?text={{route('product', [$product->categories, $product->slug, $product])}}"
                                                   target="_blank" class="socials__icon socials__icon_wtt"></a>
                                            </li>
                                        </ul>

                                    </div>
                                    {{$product_stared_text[$current_lang]}}
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            @endif
        </div>
        {!! $product->renderBlocks(false) !!}
        <section class="similar-products">
            @if($relatedProducts->count())
                <div class="similar-products__container">
                    <h2 class="similar-products__title">{{__('products.similar_products')}}</h2>
                    <div class="similar-products__products">
                        <div class="similar-products__sliders swiper-wrapper">
                            @foreach($relatedProducts as $related)
                                <div class="similar-products__column product-shop swiper-slide">
                                    <article class="product-shop__items">
                                        <a href="{{route('product', [$related->categories, $related->slug, $related])}}">
                                            <picture>
                                                <source srcset="{{asset($related->image('slideshow', 'no_crop'))}}"
                                                        type="image/webp">
                                                <img src="{{asset($related->image('slideshow', 'no_crop'))}}"
                                                     alt="{{$related->title}}" class="product-shop__img"></picture>
                                        </a>
                                        <div class="product-shop__action action-product">
                                            <button class="action-product__item action-product__item_compare {{Helper::compareItem($related->id)?'_active':''}}"></button>
                                            <button class="action-product__item action-product__item_wish {{Helper::whishItem($related->id)?'_active':''}}"></button>
                                        </div>
                                        <h4 class="product-shop__cat">{{$related->categories->title}}</h4>
                                        <a href="{{route('product', [$related->categories, $related->slug, $related])}}">
                                            <h3 class="product-shop__name">{{$related->title}}</h3>
                                        </a>

                                        <span class="product-shop__price">{{$related->price}}</span>
                                        <button class="product-shop__add btn-block _added"><span>{{__('products.add_to_cart')}}</span>
                                        </button>
                                        <div class="product-shop__social">
                                            <span>{{__('products.share')}}</span>
                                            <ul class="product-shop__socials socials">
                                                <li class="socials__li">
                                                    <a href="{{route('product', [$related->categories, $related->slug, $related])}}"
                                                       class="socials__icon socials__icon_fb btnShareFb"
                                                       data-image="{{asset($related->image('slideshow', 'no_crop'))}}"
                                                       data-title="{{$related->title}}"
                                                       data-desc="{{$related->description}}" target="_blank"></a>
                                                </li>
                                                <li class="socials__li">
                                                    <a href="https://t.me/share/url?url={{route('product', [$related->categories, $related->slug, $related])}}&text={{$related->title}}"
                                                       class="socials__icon socials__icon_telegr" target="_blank"></a>
                                                </li>
                                                <li class="socials__li">
                                                    <a href="viber://forward?text={{route('product', [$related->categories, $related->slug, $related])}}"
                                                       class="socials__icon socials__icon_vb" target="_blank"></a>
                                                </li>
                                                <li class="socials__li">
                                                    <a href="https://web.whatsapp.com://send?text={{route('product', [$related->categories, $related->slug, $related])}}"
                                                       target="_blank" class="socials__icon socials__icon_wtt"></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </article>
                                </div>
                            @endforeach
                        </div>
                    </div>

                </div>
            @endif
        </section>
    </div>

@endsection
