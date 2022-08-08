<section class="section parteners">
    <div class="about__wrapper">
        <div class="about__container">
            <h2 class="section__title">{{$block->translatedinput('title')}}</h2>
        </div>
        @if($block->images('image', 'no_crop'))
        <div class="about__bg">
            <div class="about__container">
                <div class="parteners__logos">
                    <div class="parteners__body swiper-wrapper">
                        @foreach($block->images('image', 'no_crop') as $image)
                        <div class="parteners__logo-ibg_contain swiper-slide">
                            <picture><source srcset="{{$image}}" type="image/webp"><img src="{{$image}}" alt="{{$block->translatedinput('title')}}"></picture>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
        @endif
    </div>
</section>