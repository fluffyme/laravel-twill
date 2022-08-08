@extends('front.layouts.app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/crumbs-bg.png')}});">
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{__('user.purchase_history')}}</h1>
                <ul class="top-panel__breadcrumb breadcrumb breadcrumb_w">
                    <li><a href="{{route('home')}}" class="breadcrumb__item">{{$mainPage->title}}</a></li>
                    <li><a class="breadcrumb__item breadcrumb__item_active">{{__('user.cabinet')}}</a></li>
                </ul>
            </div>
        </div>
    </div>

    <section class="section profile">
        <div class="about__container">
            <h2 class="section__title">{{__('user.purchase_history')}}</h2>
            <div class="about__row orders">
                <div class="about__column">
                    <h3 class="section__subtitle">{{__('user.total_purchase')}}</h3>
                    <span class="orders__price orders__price_b">0 MDL</span>
                </div>
                <div class="about__column">
                    <h3 class="section__subtitle">{{__('user.total_saved')}}</h3>
                    <span class="orders__price orders__price_o">0 MDL</span>
                </div>
            </div>
        </div>
    </section>

@endsection
