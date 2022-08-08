@extends('front/layouts/app')

@section('container')

    <div class="shop">
        <div class="top-block" style="background-image: url({{asset('assets/front/img/shop-bg.png')}});">
            <div class="top-block__container">
                <div class="top-block__body">
                    <h1 class="top-block__title">{{$page->title}}</h1>
                    <div class="top-block__items">
                        <a href="shop.html#" class="top-block__item">
                            <img src="{{asset('assets/front/img/icon-category/01.svg')}}" alt=""
                                 class="top-block__icon">
                            <span>Моющие средства</span>
                        </a>
                        <a href="shop.html#" class="top-block__item">
                            <img src="{{asset('assets/front/img/icon-category/02.svg')}}" alt=""
                                 class="top-block__icon">
                            <span>Товары из бумаги</span>

                        </a>
                        <a href="shop.html#" class="top-block__item">
                            <img src="{{asset('assets/front/img/icon-category/03.svg')}}" alt=""
                                 class="top-block__icon">
                            <span>Дозаторы и диспенсеры</span>

                        </a>
                        <a href="shop.html#" class="top-block__item">
                            <img src="{{asset('assets/front/img/icon-category/04.svg')}}" alt=""
                                 class="top-block__icon">
                            <span>Принадлежности для уборки</span>

                        </a>
                        <a href="shop.html#" class="top-block__item">
                            <img src="{{asset('assets/front/img/icon-category/05.svg')}}" alt=""
                                 class="top-block__icon">
                            <span>Oхрана и гигиена труда</span>

                        </a>
                        <a href="shop.html#" class="top-block__item">
                            <img src="{{asset('assets/front/img/icon-category/06.svg')}}" alt=""
                                 class="top-block__icon">
                            <span>Профессиональное оборудование</span>

                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="shop__container">
            <div class="shop__row">
                <aside class="shop__aside aside">
                    {{--<form action="shop.html#">--}}
                    <section class="aside__section">
                        {{--{{__('products.price')}}--}}
                        <h3 class="aside__title">{{__('products.filter_by_price')}}</h3>
                        <div class="aside__range range-slide">
                            <div class="range-slide__inputs">
                                <div class="range-slide__col">
                                    <input type="text" class="range-slide__inp input-with-keypress-0">
                                    MDL
                                </div>
                                <div class="range-slide__col">
                                    <input type="text" class="range-slide__inp input-with-keypress-1">
                                    MDL
                                </div>

                            </div>
                            <div id="range">
                            </div>
                        </div>
                    </section>
                    <section class="aside__section aside-category">
                        <h3 class="aside__title">{{__('products.categories')}}</h3>
                        @if($categories->count())
                            @foreach($categories as $cat)
                                @if($cat->products_count)
                                <div class="aside-category__row">
                                    <a href="{{route('category', $cat)}}"
                                            class="aside-category__btn aside-category__btn_cat {{($cat->id == @$selectedCategory->id || @$cat->id == @$selectedParent->id)?'_spoller-active':''}}">{{$cat->title}}</a>
                                    @if($cat->children)
                                        <ul class="aside-category__list">
                                            @foreach($cat->children as $subCat)
                                                @if($subCat->products_count)
                                                <li class="aside-category__li">
                                                    <a href="{{route('category', $subCat)}}"
                                                            class="aside-category__btn{{$subCat->id == @$selectedCategory->id?' _active':''}}">{{$subCat->title}}</a>
                                                </li>
                                                @endif
                                            @endforeach
                                        </ul>
                                    @endif
                                </div>
                                @endif
                            @endforeach
                        @endif
                    </section>
                    <section class="aside__section aside-brand">
                        @if($brands)
                            <h3 class="aside__title">{{__('products.filter_by_brand')}}</h3>
                            @foreach($brands as $brand)
                                @if($brand->products_count > 0)
                                <div class="aside-brand__row">
                                    <picture>
                                        <source srcset="{{asset($brand->image('image', 'no_crop'))}}"
                                                type="image/webp">
                                        <img src="{{asset($brand->image('image', 'no_crop'))}}"
                                             alt="{{$brand->title}}"
                                             class="aside-brand__logo"></picture>
                                    <a href="{{route('brand', $brand)}}"
                                            class="aside-brand__name filter-item">{{$brand->title}}</a>
                                    <span class="aside-brand__count">{{$brand->products_count}}</span>
                                </div>
                                @endif
                            @endforeach
                        @endif
                    </section>
                    {{--</form>--}}

                </aside>
                <div class="shop__content">
                    <div class="shop__top top-panel">
                        <div class="top-panel__left">
                            <ul class="top-panel__breadcrumb breadcrumb">
                                <li><a href="{{route('catalog')}}"
                                       class="breadcrumb__item">{{__('products.products')}}</a></li>
                                @if($selectedCategory)
                                <li><a class="breadcrumb__item breadcrumb__item_active">{{$selectedCategory->title}}</a></li>
                                @endif
                                @if($selectedBrand)
                                    <li><a class="breadcrumb__item breadcrumb__item_active">{{$selectedBrand->title}}</a></li>
                                @endif
                            </ul>
                            <div class="top-panel__display display">
                                <span class="top-panel__name">{{__('products.display')}}</span>
                                {{--@dd(request()->query('perPage'))--}}
                                <button class="display__btn perPage display__btn_active" data-number="15">15</button>
                                <button class="display__btn perPage" data-number="20">20</button>
                                <button class="display__btn perPage" data-number="25">25</button>
                                <button class="display__btn perPage" data-number="30">30</button>
                            </div>
                            <div class="top-panel__sort sort">
                                <span class="top-panel__name">{{__('products.sort')}}</span>
                                <select name="#" id="#" class="sort__select">
                                    <option value="asc">{{__('products.price_asc')}}</option>
                                    <option value="desc">{{__('products.price_desc')}}</option>
                                </select>
                            </div>
                        </div>
                        <div class="top-panel__rigth grid">
                            <button class="grid__item grid__item_3 "></button>
                            <button class="grid__item grid__item_4 _active"></button>
                        </div>
                    </div>
                    <div class="shop__product product-shop">
                        @if($products->count())
                            <div class="product-shop__row product-shop__row-style grid-4" id="container">
                                @foreach($products as $product)
                                    <div class="product-shop__column {{$product->categories?$product->categories->slug:''}} {{$product->categories->parent?$product->categories->parent->slug:''}} {{$product->brands?$product->brands->slug:''}}">
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
                                                {{--@if(is_string($product->price))--}}
                                                    {{--@dd($product->title)--}}
                                                    {{--@endif--}}
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
                        @endif
                        <div class="products__content" id="paginationToInsert">
                        </div>
                        {{ $products->links('front.pagination') }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
