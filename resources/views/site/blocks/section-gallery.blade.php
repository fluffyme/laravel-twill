<section class="section gallery">
    <div class="gallery__container">
        <h2 class="section__title">{{$block->translatedinput('title')}}</h2>
    </div>
    @if($block->images('slideshow', 'no_crop'))
    <div class="gallery__wrapper">
        <button class="gallery__l catalog__btn"></button>
        <button class="gallery__r catalog__btn"></button>
        <div class="gallery__sliders swiper">
            <div class="swiper-wrapper" data-gallery>
                @foreach($block->images('slideshow', 'no_crop') as $img)
                <a href="{{$img}}" class="gallery__slide swiper-slide">
                    <div class="gallery__content">
                        <div class="gallery__img-ibg">
                            <img src="{{$img}}" alt="{{$block->translatedinput('title')}}">
                        </div>
                    </div>
                </a>
                @endforeach
            </div>
        </div>
    </div>
    @endif
</section>