<footer class="footer footer-main">
    <div class="footer__container">
        <div class="footer__row" data-spollers="767,max" data-one-spoller>
            <div class="footer__column">
                <a href="{{url('/')}}" class="footer__logo header__logo">
                    <picture>
                        <source srcset="{{asset('assets/front/img/logo.webp')}}" type="image/webp">
                        <img src="{{asset('assets/front/img/logo.png')}}" alt="{{config('app.name')}}"></picture>
                </a>
                <p class="footer__text">{!! $settings['logo_text'][LaravelLocalization::getCurrentLocale()] !!}</p>
                <div class="footer__pay pay">
                    <h4 class="pay__title footer__title" data-spoller>{{__('products.payment')}}</h4>
                    <div>
                        <a href="{{url('/')}}">
                            <picture>
                                <source srcset="{{asset('assets/front/img/pay.webp')}}" type="image/webp">
                                <img src="{{asset('assets/front/img/pay.png')}}" alt="{{config('app.name')}}" class="pay__img"></picture>
                        </a>
                    </div>


                </div>
            </div>
            <div class="footer__column">
                @if($header_menu)
                    <h4 class="footer__title" data-spoller>{{$header_menu->title}}</h4>
                    <ul class="footer__list">
                        @if(@$header_menu->getRelated('pages')->count())

                            @foreach($header_menu->getRelated('pages') as $submenu)
                                <li>
                                    @if($submenu->template != "main")
                                        <a href="{{route('page.show', $submenu->slug)}}"
                                           class="footer__link">{{$submenu->title}}</a>
                                    @else
                                        <a href="{{route('home')}}" class="footer__link">{{$submenu->title}}</a>
                                    @endif
                                </li>
                            @endforeach

                        @endif
                    </ul>
                @endif
            </div>
            <div class="footer__column">
                @if($footer_categories)
                    <h4 class="footer__title" data-spoller>{{$footer_categories->title}}</h4>
                    <ul class="footer__list">
                        @foreach($footer_categories->getRelated('categories') as $cat)
                            <li>
                                <a href="{{route('catalog')}}#filter=.{{$cat->slug}}"
                                   class="footer__link">{{$cat->title}}</a>
                            </li>
                        @endforeach
                    </ul>
                @endif
            </div>
            <div class="footer__column">
                <h4 class="footer__title" data-spoller>{{__('products.contacts')}}</h4>
                <ul class="footer__contacts contacts">
                    @if($contacts['phone'])
                        @php $phones = explode(';',$contacts['phone'])@endphp

                        @foreach($phones as $phone)
                            @php $phoneNr = preg_replace('/[^0-9]/', '', $phone); @endphp
                            <li class="contacts__li">
                                <a href="tel:+{{$phoneNr}}" class="contacts__item {{$loop->first?'contacts__item_tel':''}}">{{$phone}}</a>
                            </li>
                        @endforeach
                    @endif
                    {{--@if($contacts['phone'])--}}

                        {{--@php $phoneNr = preg_replace('/[^0-9]/', '', $contacts['phone']); @endphp--}}
                        {{--<li class="contacts__li">--}}
                            {{--<a href="tel:+{{$phoneNr}}"--}}
                               {{--class="contacts__item contacts__item_tel">{{$contacts['phone']}}</a>--}}
                        {{--</li>--}}

                    {{--@endif--}}

                    @if($contacts['office_address'] && $contacts['office_map_url'])
                        <li class="contacts__li">
                            <a href="{{$contacts['office_map_url']}}" class="contacts__item contacts__item_pin"
                               target="_blank">{!! $contacts['office_address'][LaravelLocalization::getCurrentLocale()] !!}</a>
                        </li>
                    @endif
                    @if($contacts['email'])
                        <li class="contacts__li">
                            <a href="mailto:{{$contacts['email']}}"
                               class="contacts__item contacts__item_mail">{{$contacts['email']}}</a>
                        </li>
                    @endif
                </ul>
                <div class="footer__socials">
                    <h4 class="footer__title" data-spoller>{{__('products.share_with')}}</h4>
                    <div>
                        <ul class="socials">
                            @if($settings['facebook'])
                                <li class="socials__li">
                                    <a href="{{$settings['facebook']}}" class="socials__icon socials__icon_fb"></a>
                                </li>
                            @endif
                            @if($settings['telegram'])
                                <li class="socials__li">
                                    <a href="{{$settings['telegram']}}" class="socials__icon socials__icon_telegr"></a>
                                </li>
                            @endif
                            @if($settings['viber_url'])
                                <li class="socials__li">
                                    <a href="{{$settings['viber_url']}}" class="socials__icon socials__icon_vb"></a>
                                </li>
                            @endif
                            @if($settings['whatt_url'])
                                <li class="socials__li">
                                    <a href="{{$settings['whatt_url']}}" class="socials__icon socials__icon_wtt"></a>
                                </li>
                            @endif
                        </ul>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div class="footer__copy ">
        <div class="copy__container copy">
            <p class="copy__autor">
                {{date('Y')}} © Designed by <a href="https://dis.agency" class="copy__logo logo__dis"></a>
            </p>
            <ul class="copy__links">
                @if($termsPage)
                    <a href="{{route('page.show', $termsPage->slug)}}" class="copy__link">
                        {{$termsPage->title}}
                    </a>
                @endif
                @if($privacyPage)
                    <a href="{{route('page.show', $privacyPage->slug)}}" class="copy__link">
                        {{$privacyPage->title}}
                    </a>
                @endif
            </ul>
        </div>

    </div>
</footer>

