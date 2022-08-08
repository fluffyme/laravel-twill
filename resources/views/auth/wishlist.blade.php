@extends('front.layouts.app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/crumbs-bg.png')}});">
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{__('products.my_wishlist')}}</h1>
                <ul class="top-panel__breadcrumb breadcrumb breadcrumb_w">
                    <li><a href="{{url('/')}}" class="breadcrumb__item">{{$mainPage->title}}</a></li>
                    <li><a class="breadcrumb__item breadcrumb__item_active">{{__('products.my_wishlist')}}</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="wish">
        <div class="wish__container">
            @if($products)
            <div class="wish__items block-products block-products_wish">
                @foreach($products as $product)
                <div class="block-products__column">
                    <article class="product-shop__items">
                        <button class="products-cart__delete block-products__delete w-remove" data-wish="{{route('wishlist.remove', $product)}}">
                            {{__('products.delete')}}
                        </button>
                        <a href="{{route('product', [$product->categories, $product->slug, $product])}}">
                            <picture><source srcset="{{asset($product->image('slideshow', 'no_crop'))}}" type="image/webp">
                                <img src="{{asset($product->image('slideshow', 'no_crop'))}}" alt="{{$product->title}}" class="product-shop__img">
                            </picture>
                        </a>
                        <h4 class="product-shop__cat">{{$product->categories->title}}</h4>
                        <a href="{{route('product', [$product->categories, $product->slug, $product])}}">
                            <h3 class="product-shop__name">{{$product->title}}</h3>
                        </a>

                        <span class="product-shop__price">{{$product->price}}</span>
                        <button class="product-shop__add btn-block {{Helper::cartItem($product->id)?'_added':''}}"><span>{{__('products.add_to_cart')}}</span></button>
                    </article>
                </div>
               @endforeach
            </div>
            @endif
        </div>
    </div>

@endsection