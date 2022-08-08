<section class="section about">
    <div class="about__container">
        <div class="about__row">
            <div class="about__column">
                <h2 class="section__title">{{$block->translatedinput('title')}}</h2>
                <div class="section__text">{!! $block->translatedinput('text') !!}</div>
            </div>
            <div class="about__column about__img-ibg_contain">
                <picture><source srcset="{{asset($block->image('image', 'no_crop'))}}" type="image/webp"><img src="{{asset($block->image('image', 'no_crop'))}}" alt="{{$block->translatedinput('title')}}"></picture>
            </div>
        </div>
        <div class="about__row">
            <div class="about__column">
                <div class="section__text">{!! $block->translatedinput('text1') !!}</div>
            </div>
            <div class="about__column about__img-ibg_contain">
                <picture><source srcset="{{asset($block->image('slideshow', 'no_crop'))}}" type="image/webp"><img src="{{asset($block->image('slideshow', 'no_crop'))}}" alt="{{$block->translatedinput('title')}}"></picture>
            </div>
        </div>
    </div>
</section>
