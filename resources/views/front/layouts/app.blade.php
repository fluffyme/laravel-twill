<!DOCTYPE html>
<html lang="{{ LaravelLocalization::getCurrentLocale() }}">
<head>
    @if(@$page->singleMeta)
        @include('front.meta', ['seoPage'=> $page->singleMeta])
    @else
        @include('front.meta', ['seoPage'=> null])
    @endif
    <meta charset="UTF-8">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    @if($faviconSetting)
        <link rel="apple-touch-icon" sizes="180x180" href="{{$faviconSetting->image('favicon', '180x180')}}">
        <link rel="icon" type="image/png" sizes="32x32" href="{{$faviconSetting->image('favicon', '32x32')}}">
        <link rel="icon" type="image/png" sizes="16x16" href="{{$faviconSetting->image('favicon', '16x16')}}">
        <link rel="shortcut icon" type="image/png" href="{{$faviconSetting->image('favicon', '192x192')}}">
        <link rel="shortcut icon" sizes="192x192" href="{{$faviconSetting->image('favicon', '192x192')}}">
        <link rel="icon" type="image/png" href="{{$faviconSetting->image('favicon', '192x192')}}">
    @endif
    @if($faviconSvg)
        <link rel="icon" type="image/svg+xml" href="{{$faviconSvg->image('svg', 'no_crop')}}">
    @endif

    <link rel="icon" type="image/x-icon" href="{{asset('favicon.ico')}}">

    <link rel="stylesheet" href="{{asset('/assets/front/css/style.min.css?_v=20211217170124')}}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css">
</head>
<body>

<div class="preloader">
    <picture>
        <source srcset="{{asset('assets/front/img/mai-products.webp')}}" type="image/webp">
        <img src="{{asset('assets/front/img/mai-products.png')}}" alt=""></picture>
    <span>Загрузка...</span>
</div>

<div class="wrapper">
    @if(Route::currentRouteName()=='home')
        @include('front.header-main')
    @else
        @include('front.header')
    @endif
    <main class="page">
        @yield('container')
    </main>
    @include('front.footer')
</div>

<div id="comand-services" aria-hidden="true" class="popup">
    <div class="popup__wrapper">
        <div class="popup__content">
            <button data-close type="button" class="popup__close"></button>
            <form action="{{route('services.form')}}" class="form__form contact-form" id="orderService">
                @csrf
                <h3 class="contact-form__name">{{__('user.sub_application')}}</h3>
                <div class="contact-form__row">
                    <div class="contact-form__column-popup">
                        <div class="contact-form__line">
                            <input class="contact-form__input" type="text" name="name" placeholder="{{__('user.name')}}" required>
                        </div>
                        <div class="contact-form__line">
                            <input class="contact-form__input" type="text" name="phone" placeholder="{{__('user.phone')}}" required>
                        </div>
                    </div>

                </div>
                <button type="submit" class="contact-form__btn btn-block ">{{__('user.order')}}</button>
            </form>
        </div>
    </div>
</div>
<div id="user" aria-hidden="true" class="popup">
    <div class="popup__wrapper">
        <div class="popup__content">
            <button data-close type="button" class="popup__close"></button>
            <form action="{{route('login')}}" class="form__form contact-form" method="post">
                @csrf
                <div class="contact-form__row">
                    <div class="contact-form__column contact-form__column_user">
                        <h3 class="contact-form__name">{{__('user.log_in')}}</h3>
                        <div class="contact-form__line">
                            <input class="contact-form__input" type="text" name="email" placeholder="{{__('user.email')}}" required>
                        </div>
                        <div class="contact-form__line">
                            <input class="contact-form__input" type="password" name="password" placeholder="{{__('user.psw')}}" required>
                            <a href="about.html#" class="contact-form__link">{{__('user.forgot_psw')}}</a>
                        </div>

                        <button type="submit" class="contact-form__btn btn-block ">{{__('user.log_in')}}</button>
                    </div>
                    <div class="contact-form__column">
                        <h3 class="contact-form__name">{{__('user.register')}}</h3>
                        <div class="contact-form__line">
                            <a href="{{route('register.viewuser')}}" class="contact-form__btn btn-block btn-block_reg">{{__('user.individual')}}</a>
                        </div>
                        <div class="contact-form__line contact-form__line_text">{{__('products.or')}}</div>
                        <div class="contact-form__line">
                            <a href="{{route('register.viewcompany')}}" class="contact-form__btn btn-block btn-block_reg">{{__('user.company')}}</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="scroll-top">
</div>

<!-- jQuery -->
<script src="{{asset('/assets/front/jQuery/jQuery.js')}}"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/2.2.2/isotope.pkgd.min.js"></script>

<script src="{{asset('/assets/front/js/language.js?_v=20220204131228')}}"></script>

<script src="{{asset("/assets/front/js/app.min.js?_v=20220204131228")}}"></script>

<script src="{{asset('/assets/front/js/forms.js?_v=20220204131228')}}"></script>

<script src="{{asset('/assets/front/js/shop.js?_v=20220204131228')}}"></script>

{{--<script src="{{asset('/assets/front/js/pagination.js?_v=20211217170124')}}"></script>--}}
<!-- reCaptcha js -->
{{--<script src="https://www.google.com/recaptcha/api.js?render={{env('RECAPTCHA_SITE_KEY')}}"></script>--}}
<!-- end Scripts -->

<!-- Load Facebook SDK for JavaScript -->
<script>
    window.fbAsyncInit = function(){
        FB.init({
            appId: 'xxxxx', status: true, cookie: true, xfbml: true });
    };
    (function(d, debug){var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
        if(d.getElementById(id)) {return;}
        js = d.createElement('script'); js.id = id;
        js.async = true;js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
        ref.parentNode.insertBefore(js, ref);}(document, /*debug*/ false));
    function postToFeed(title, desc, url, image){
        var obj = {method: 'feed',link: url, picture: 'http://www.url.com/images/'+image,name: title,description: desc};
        function callback(response){}
        FB.ui(obj, callback);
    }
</script>

</body>
</html>
