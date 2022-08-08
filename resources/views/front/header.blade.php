<header class="header">
    <div class="header__top header-top">
        <div class="header-top__container">
            <ul class="header-top__contacts contacts">
                @if($contacts['email'])
                    <li class="contacts__li">
                        <a href="mailto:{{$contacts['email']}}"
                           class="contacts__item contacts__item_mail-w">{{$contacts['email']}}</a>
                    </li>
                @endif
                @if($contacts['phone'])
                    @php $phones = explode(';',$contacts['phone']);
                        $phone = array_shift($phones);
                    $phoneNr = preg_replace('/[^0-9]/', '', $phone);
                    @endphp
                    <li class="contacts__li">
                        <a href="tel:+{{$phoneNr}}"
                           class="contacts__item contacts__item_tel-w">{{$phone}}</a>
                    </li>
                @endif
            </ul>
        </div>
    </div>
    <div class="header__container">
        <div class="header__body">
            <a href="{{url('/')}}" class="header__logo"><picture><source srcset="{{asset('assets/front/img/logo.webp')}}" type="image/webp"><img src="{{asset('assets/front/img/logo.png')}}" alt="{{config('app.name')}}"></picture></a>
            <div class="header__search search" data-da="header__bottom-m,0,767">
                <form action="{{route('search')}}" class="search__form" id="searchForm">
                    @csrf
                    <input placeholder="{{__('products.enter_product_name')}}" type="search" name="term" class="search__inp">
                    {{--<select name="#" id="#" class="search__cat">--}}
                        {{--<option value="Все категории">{{__('products.all_categories')}}</option>--}}
                        {{--<option value="cat1">cat 1</option>--}}
                        {{--<option value="cat2">cat 2</option>--}}
                        {{--<option value="cat3">cat 3</option>--}}
                    {{--</select>--}}
                    <button type="submit" class="search__btn"></button>
                </form>
            </div>
            <div class="header__action action">
                @if(Auth::user())
                <a href="{{route('dashboard')}}" class="action__item">
                    <img src="{{asset('assets/front/img/profile.svg')}}" alt="user">
                </a>
                @else
                    <button class="action__item" data-popup="#user">
                        <img src="{{asset('assets/front/img/profile.svg')}}" alt="user">
                    </button>
                @endif
                <div class="action__dynamic" data-da="nav__nav-close,0,767">
                    <a href="{{route('compare')}}" class="action__item">
                        <img src="{{asset('assets/front/img/group.svg')}}" alt="compare">
                        <span class="action__count" id="compareCounter">{{Helper::compareCount()}}</span>
                    </a>
                    <a href="{{route('wishlist.view')}}" class="action__item">
                        <img src="{{asset('assets/front/img/wish.svg')}}" alt="wishlist">
                        <span class="action__count" id="wishCounter">{{Helper::whishCount()}}</span>
                    </a>
                </div>

                <a href="{{route('cart')}}" class="action__item">
                    <div class="action__items">
                        <img src="{{asset('assets/front/img/cart.svg')}}" alt="cart">
                        <span class="action__count" id="cartCounter">{{Helper::cartCount()}}</span>
                    </div>
                    <span class="action__total" id="cartTotal">{{LaraCart::total()}}</span>
                </a>
            </div>

        </div>
    </div>
    <div class="header__bottom">
        <div class="header__container header__bottom-m">
            <div class="header__body header-bottom">
                <div class="header-bottom__category category-header" data-da="nav__menu,1,767" data-spollers="767,max">
                    @if($menuCategories)
                    <button class="category-header__btn" data-spoller><span>{{__('products.categories')}}</span></button>
                    <ul class="category-header__cat" data-spollers="992,max" data-one-spoller>
                        @foreach($menuCategories as $menuCat)
                        <li class="category-header__li">
                            <a href="{{route('catalog')}}" class="category-header__item">{{$menuCat->title}}</a>
                            <button class="category-header__btn-arr" data-spoller></button>
                            @if($menuCat->children)
                            <div class="category-header__subcat">
                                @foreach($menuCat->children as $menuSubcat)
                                <a href="{{route('catalog')}}" class="category-header__item">{{$menuSubcat->title}}</a>
                                @endforeach
                            </div>
                        @endif
                        </li>
                        @endforeach
                    </ul>
                    @endif
                </div>
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
                                                   class="nav__link {{Route::currentRouteName()== "home"?"_active":""}}">{{$submenu->title}}</a></li>
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
    </div>
</header>