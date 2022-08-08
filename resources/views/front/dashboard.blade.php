@extends('front/layouts/app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/crumbs-bg.png')}});">
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{__('user.cabinet')}}</h1>
                <ul class="top-panel__breadcrumb breadcrumb breadcrumb_w">
                    <li><a href="{{url('/')}}" class="breadcrumb__item">{{$mainPage->title}}</a></li>
                    <li><a class="breadcrumb__item breadcrumb__item_active">{{__('user.cabinet')}}</a></li>
                </ul>
            </div>
        </div>
    </div>
    <section class="section profile">
        <div class="about__container">
            <div class="about__row">
                <div class="about__column">
                    <h2 class="section__title">{{__('user.greeting')}} {{$user->profile->name}}</h2>
                    @if($user->is_company)
                        <h3 class="section__subtitle">{{__('user.company')}}</h3>
                    @else
                        <h3 class="section__subtitle">{{__('user.individual')}}</h3>
                    @endif
                    @if($user->trademark)
                        <p class="section__text">{{$user->trademark}}</p>
                    @endif
                    @if($user->legal_name)
                        <p class="section__text">{{$user->legal_name}}</p>
                    @endif
                    <p class="section__text">{{$user->profile->name}}</p>
                    <p class="section__text">{{$user->email}}</p>
                    <p class="section__text">{{$user->phone}}</p>
                    <ul class="profile__links">
                        <li><a href="{{route('user.editview', $user)}}" class="profile__edit btn-block">{{__('user.edit_profile')}}</a></li>
                        <li><a href="{{route('signout')}}" class="section__link news__link">{{__('user.sign_out')}}</a></li>
                    </ul>
                </div>
                <div class="about__column">
                    <ul class="profile__links">
                        <li><a href="{{route('orders')}}" class="section__link news__link">{{__('user.purchase_history')}}</a></li>
                        <li><a href="{{route('wishlist.view')}}" class="section__link news__link">{{__('user.favorites')}}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

@endsection