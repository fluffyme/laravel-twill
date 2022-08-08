<header class="header header-main">
    <div class="header__container">
        <div class="header__body ">
            <a href="{{url('/')}}" class="header__logo">
                <picture>
                    <source srcset="{{asset('assets/front/img/logo.webp')}}" type="image/webp">
                    <img src="{{asset('assets/front/img/logo.png')}}" alt="{{config('app.name')}}"></picture>
            </a>
            <div class="header__nav nav">
                <nav class="nav__menu">
                    <div class="nav__nav-close">
                        <button class="nav__nav-close-btn">
                            <span></span>
                        </button>
                    </div>
                    @if($header_menu)
                        <ul class="nav__list">
                            @if(@$header_menu->getRelated('pages')->count())
                                @foreach($header_menu->getRelated('pages') as $submenu)
                                    @if($submenu->template != "main")
                                        <li><a href="{{route('page.show', $submenu->slug)}}"
                                               class="nav__link">
                                                {{$submenu->title}}</a></li>
                                    @else
                                        <li><a href="{{route('home')}}"
                                               class="nav__link _active">{{$submenu->title}}</a></li>
                                    @endif
                                @endforeach
                            @endif
                        </ul>
                    @endif
                </nav>
                <button class="nav__burger icon-menu">
                    <span></span>
                </button>
            </div>
            <ul class="header__socials socials">
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
            <div class="header__lg">
                @php $languages =LaravelLocalization::getSupportedLanguagesKeys();
                $current_lang = LaravelLocalization::getCurrentLocale();
                @endphp
                <select onchange="changeLanguage()" id="lang-select">
                    @foreach($languages as $lang)
                        @if($lang === $current_lang)
                            <option selected value="{{$lang}}">{{strtoupper($lang)}}</option>
                        @else
                            <option value="{{$lang}}">{{strtoupper($lang)}}</option>
                        @endif
                    @endforeach
                </select>
            </div>
        </div>
    </div>
</header>
