@extends('front.layouts.app')

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
                    <h2 class="section__title">{{__('user.edit')}}</h2>
                    @if($user->is_company)
                        <h3 class="section__subtitle">{{__('user.company')}}</h3>
                    @else
                        <h3 class="section__subtitle">{{__('user.individual')}}</h3>
                    @endif
                    <form action="{{route('user.edit', $user)}}" class="form__form contact-form" method="post" id="editUserForm">
                        @csrf
                        <div class="contact-form__row">
                        @if($user->is_company)
                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="trademark"  placeholder="{{__('user.trademark')}}" value="{{ old('name', $user->trademark) }}" required>
                                </div>
                            </div>
                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="legal_name"  placeholder="{{__('user.legal_name')}}" value="{{ old('name', $user->legal_name) }}" required>
                                </div>
                            </div>
                        @endif
                        </div>
                        <div class="contact-form__row">

                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="name" placeholder="{{__('user.name')}}" value="{{ old('name', $user->profile->name) }}" required>
                                </div>

                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="email" placeholder="bnxj9uab@yasellerbot.xyz" value="{{ old('name', $user->email) }}" required>
                                </div>
                            </div>
                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="text" name="phone" placeholder="+380 (74) 690-46-33" value="{{ old('name', $user->phone) }}" required>
                                </div>
                            </div>
                        </div>
                        <div class="contact-form__row profile__row-pas">
                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="password" name="password" placeholder="{{__('user.new_psw')}}">
                                </div>
                            </div>
                            <div class="contact-form__column">
                                <div class="contact-form__line">
                                    <input class="contact-form__input" type="password" name="password_confirmation" placeholder="{{__('user.repeat_psw')}}">
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="contact-form__btn btn-block ">{{__('user.edit')}}</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection