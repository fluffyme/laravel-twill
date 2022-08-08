@extends('front/layouts/app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/crumbs-bg.png')}});">
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{__('products.basket')}}</h1>
                <ul class="top-panel__breadcrumb breadcrumb breadcrumb_w">
                    <li><a href="{{url('/')}}" class="breadcrumb__item">{{$mainPage->title}}</a></li>
                    <li><a class="breadcrumb__item breadcrumb__item_active">{{__('products.basket')}}</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cart">
        <div class="cart__container">
            <div class="cart__row">
                <div class="cart__products products-cart">
                    @if($products)
                    <div class="products-cart__row products-cart__row_top">
                        <div class="products-cart__items products-cart__items products-cart__row_top-name">
                            {{__('products.product')}}
                        </div>
                        <div class="products-cart__price products-cart__col products-cart__row_top-name">{{__('products.price')}}</div>
                        <div class="products-cart__cant products-cart__col products-cart__row_top-name">
                            {{__('products.qty')}}
                        </div>
                        <div class="products-cart__price products-cart__col products-cart__row_top-name">{{__('products.total')}}</div>
                    </div>
                    @foreach($products as $product)
                    <div class="products-cart__row ">
                        <button class="products-cart__delete c-remove" data-cart="{{route('cart.remove', $product->id)}}" data-price="{{number_format($product->price * $product->qty, 2)}}"></button>
                        <div class="products-cart__items ">
                            <a href="{{route('product', [$product->cat_id, $product->slug, $product->id])}}" class="products-cart__img">
                                <picture><source srcset="{{$product->img}}" type="image/webp">
                                    <img src="{{$product->img}}" alt="{{$product->name}}" class="product-shop__img">
                                </picture>
                            </a>
                            <a href="{{route('product', [$product->cat_id, $product->slug, $product->id])}}" class="products-cart__name">
                                {{$product->name}}
                            </a>
                        </div>
                        <div class="products-cart__price products-cart__col itemPrice{{$product->id}}">{{number_format($product->price, 2, ',')}}</div>
                        <form class="products-cart__cant  products-cart__col">
                            <div class="quantity">
                                <div class="quantity__button quantity__button_minus _icon-minus c-minus" data-cart="{{route('cart.remove', $product->id)}}" data-id="{{$product->id}}"></div>
                                <div class="quantity__input"><input autocomplete="off" type="text" name="qty{{$product->id}}" value="{{$product->qty}}"></div>
                                <div class="quantity__button quantity__button_plus _icon-plus c-plus" data-cart="{{route('cart.add', $product->id)}}"  data-id="{{$product->id}}"></div>
                            </div>
                        </form>
                        <div class="products-cart__price products-cart__price-total products-cart__col priceItems{{$product->id}}">{{number_format($product->price * $product->qty, 2, ',')}}</div>
                    </div>
                    @endforeach
                    @endif
                </div>
                <aside class="cart__total cart-aside">
                    <div class="cart-aside__body">
                        <h3 class="cart-aside__title">{{__('products.basket')}}</h3>
                        @foreach(LaraCart::getItems() as $item)
                        <div class="cart-aside__row">
                            <div class="cart-aside__name">{{$item->name}}</div>
                            <span class="cart-aside__price priceItems{{$item->id}}">{{number_format($item->price * $item->qty, 2, ',')}}</span>
                        </div>
                        @endforeach

                        <div class="cart-aside__row">
                            <div class="cart-aside__name cart-aside__name_total">{{__('products.total')}}</div>
                            <span class="cart-aside__price cart-aside__price_total cartPrice">{{LaraCart::total($formatted = false, $withDiscount = true)}}</span>
                        </div>
                        <a href="{{route('checkOut')}}" class="cart-aside__btn btn-block">{{__('products.payment')}}</a>
                    </div>

                </aside>
            </div>
        </div>
    </div>

@endsection
