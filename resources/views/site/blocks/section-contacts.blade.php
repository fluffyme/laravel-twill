<section class="section  contact">
    <div class="contactc__container about">
        <div class="about__row">
            <div class="about__column">
                <h2 class="section__title">{{$block->translatedinput('title')}}</h2>
                <div class="contact__items">
                    <ul class="contact__contacts contacts">
                        @if($contacts['office_address'] && $contacts['office_map_url'])
                            <li class="contacts__li">
                                <a href="{{$contacts['office_map_url']}}" class="contacts__item contacts__item_pin"
                                   target="_blank">{!! $contacts['office_address'][LaravelLocalization::getCurrentLocale()] !!}</a>
                            </li>
                        @endif
                        @if($contacts['phone'])
                            @php $phones = explode(';',$contacts['phone'])@endphp

                            @foreach($phones as $phone)
                                @php $phoneNr = preg_replace('/[^0-9]/', '', $phone); @endphp
                                <li class="contacts__li">
                                    @if($loop->first)
                                    <span>{{$block->translatedinput('phone')}}</span>
                                    @endif
                                    <a href="tel:+{{$phoneNr}}" class="contacts__item {{$loop->first?'contacts__item_tel':''}}">{{$phone}}</a>
                                </li>
                            @endforeach
                        @endif
                        {{--@if($contacts['phone'])--}}
                        {{--<li class="contacts__li">--}}
                            {{--<span>{{$block->translatedinput('phone')}}</span>--}}
                            {{--@php $phoneNr = preg_replace('/[^0-9]/', '', $contacts['phone']); @endphp--}}
                                {{--<a href="tel:+{{$phoneNr}}"--}}
                                   {{--class="contacts__item contacts__item_tel">{{$contacts['phone']}}</a>--}}
                        {{--</li>--}}
                        {{--@endif--}}
                        @if($contacts['email'])
                            <li class="contacts__li">
                                <span>{{$block->translatedinput('email')}}</span>
                                <a href="mailto:{{$contacts['email']}}"
                                   class="contacts__item contacts__item_mail">{{$contacts['email']}}</a>
                            </li>
                        @endif
                    </ul>
                    <div class="contact__social product-shop__social ">
                        <span>{{__('products.share_with')}}</span>
                        <ul class="contact__socials socials">
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
                    </article>
                </div>
            </div>
            <div class="about__column about__img-ibg_contain">
                <picture><source srcset="{{$block->image('image', 'no_crop')}}" type="image/webp"><img src="{{$block->image('image', 'no_crop')}}" alt="{{$block->translatedinput('title')}}"></picture>
            </div>
        </div>
    </div>
</section>