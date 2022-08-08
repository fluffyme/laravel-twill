<section class=" section about-home">
    <div class="about-home__container">
        <div class="about-home__row">
            <div class="about-home__column">
                <h2 class="about-home__title section__title">{{$block->translatedinput('title')}}</h2>
                <p class="about-home__text section__text">
                    {{$block->translatedinput('description')}}
                </p>
                @foreach($block->childs as $btn)
                    @if($btn->type == "btn-item")
                        @if($btn->input('url'))
                <a href="{{url(LaravelLocalization::getCurrentLocale().$btn->input('url'))}}" class="about-home__link btn-block">{{$btn->translatedinput('title')}}</a>
                        @endif
                    @endif
                @endforeach
            </div>
            <div class="about-home__column about-home__column_img">
                @if($block->images('slideshow', 'no_crop'))
                    @foreach($block->images('slideshow', 'no_crop') as $img)
                <div class="about-home__img-ibg about-home__img-ibg_{{$loop->iteration}}">
                    <img src="{{$img}}" alt="{{$block->translatedinput('title')}}">
                </div>
                    @endforeach
                @endif
                </div>
            </div>
        </div>
    </div>
</section>