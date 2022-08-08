@extends('front.layouts.app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/services/bg-crumbs.png')}});" data-spollers="767,max" data-one-spoller>
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{$page->title}}</h1>
                <h2 class="top-block__subtitle" data-spoller>{{$page->title}}</h2>
                <div class="top-block__items">
                    @if($serviceCategories)
                        @foreach($serviceCategories as $servCat)
                        <a href="{{route('serviceCategories', $servCat->slug)}}" class="top-block__item">
                            <img src="{{asset($servCat->image('image', 'no_crop'))}}" alt="{{$servCat->title}}" class="top-block__icon">
                            <span>{{$servCat->title}}</span>
                        </a>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
    <section class="section services">
        @if($services->count())
        <div class="about__container ">
            @foreach($services as $service)
            <div class="about__row services__item">
                <div class="about__column">
                    <h2 class="section__title">{{$service->title}}</h2>
                    <div class="section__text">{!! $service->description !!}
                    </div>
                    <div class="service-item">
                        <div class="service-item_price">
                            {{__('products.price')}}: <span><span>{{$service->price}}</span> MDL/m²</span>
                        </div>
                        <div class="service-item_data ">
                            <form method="post" class="service-item__form" id="serviceDetails">
                                @csrf
                                <input type="hidden" name="service_id" value="{{$service->id}}">
                                <h4 class="service-item__title">{{__('products.calculate_cost')}}</h4>
                                <div class="service-item__row">
                                    <div class="fields-two service-calc-field ">
                                        <div class="input-par">
                                            <input type="text" name="length" placeholder="{{__('products.length')}}">
                                            <span>m</span>
                                        </div>
                                        <span class="service-item__icon">x</span>
                                        <div class="input-par">
                                            <input type="text" name="width" placeholder="{{__('products.width')}}">
                                            <span>m</span>
                                        </div>
                                    </div>
                                    <div class="fields-devider">{{__('products.or')}}</div>
                                    <div class="field-one service-calc-field">
                                        <div class="input-par">
                                            <input type="text" name="area" placeholder="{{__('products.area')}}">
                                            <span>m²</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="service-item_result">
                                    {{__('products.price')}}: <span>от <span> - </span> MDL</span>
                                </div>
                            </form>

                            <button class="btn-block" type="button" data-popup="#comand-services">
                                {{__('products.order_service')}}</button>
                        </div>
                    </div>
                </div>
                <div class="about__column product-slide product-slide-services">
                    @if($service->images('image', 'no_crop'))
                    <div class="product-slide__items gallery-top-services">
                        <div class="swiper-wrapper" data-gallery>
                            @foreach($service->images('image', 'no_crop') as $img)
                            <a href="{{$img}}" class="product-slide__item product-slide__item-ibg swiper-slide">
                                <picture><source srcset="{{$img}}" type="image/webp"><img src="{{$img}}" alt="{{$service->title}}"></picture>
                            </a>
                            @endforeach
                        </div>
                        <button class="product-slide-services__btn product-slide-services_l"></button>
                        <button class="product-slide-services__btn product-slide-services_r"></button>
                    </div>
                    <div class="product-slide__nav nav-slide nav-slide-products">
                        <div class="nav-slide__items gallery-thumbs-services">
                            <div class="swiper-wrapper" data-gallery>
                                @foreach($service->images('image', 'no_crop') as $img)
                                <a href="{{$img}}" class="nav-slide__item nav-slide__item-ibg swiper-slide">
                                    <picture><source srcset="{{$img}}" type="image/webp"><img src="{{$img}}" alt="{{$service->title}}"></picture>
                                </a>
                                @endforeach
                            </div>

                        </div>

                    </div>
                    @endif
                </div>
            </div>
            @endforeach
        </div>
        @endif
    </section>

    {!! $page->renderBlocks(false) !!}

@endsection
