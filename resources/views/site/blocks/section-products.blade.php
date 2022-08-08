<section class="section catalog section_border">
    <div class="catalog__container">
        <h2 class="section__title">{{$block->translatedinput('title')}}</h2>
        @php
            $selected_items_ids = $block->browserIds('products');
            $items = \App\Models\Product::find($selected_items_ids);
        @endphp
        @if($items->count())
        <div class="catalog__body">
            <div class="catalog__slider  swiper">
                <div class="catalog__sliders swiper-wrapper">
                    @foreach($items as $item)
                    <div class="products-row__items swiper-slide">
                        <img src="{{asset($item->image('slideshow', 'no_crop'))}}" alt="{{$item->title}}" class="products-row__img">
                        <span class="products-row__cat">{{$item->categories->title}}</span>
                        <h4 class="products-row__name name">{{$item->title}}</h4>
                        <div class="products-row__price price">{{$item->price}}</div>
                        <span class="products-row__hover">
                            <a href="{{route('product', [$item->categories,$item->slug, $item])}}" class="products-row__link">
                                <span>Подробнее</span>
                            </a>
                        </span>
                    </div>
                    @endforeach
                </div>

            </div>
            <button class="catalog__btn catalog__btn_l"></button>
            <button class="catalog__btn catalog__btn_r"></button>
        </div>
        @endif
        <div class="catalog__btn-more block-more">
            @if($block->input('btnUrl') && $block->translatedinput('btn'))
            <a href="{{url(LaravelLocalization::getCurrentLocale() . $block->input('btnUrl'))}}" class="catalog__more btn-block">{{$block->translatedinput('btn')}}</a>
            @endif
        </div>

    </div>
</section>
