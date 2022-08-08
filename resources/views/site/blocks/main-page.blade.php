<section class="main-section">
    @if($block->images('slideshow', 'no_crop'))
        @foreach($block->images('slideshow', 'no_crop') as $img)
            @if($loop->first)
                <div class="main-section__bg main-section__bg_l">
                    <picture>
                        <source srcset="{{$img}}" type="image/webp">
                        <img src="{{$img}}" alt="img"></picture>
                </div>
            @else
                <div class="main-section__bg main-section__bg_r">
                    <picture>
                        <source srcset="{{$img}}" type="image/webp">
                        <img src="{{$img}}" alt="img"></picture>
                </div>
            @endif
        @endforeach
    @endif
    @foreach($block->childs as $row)
        @if($row->type == "main-row")
            <div class="main-section__row">
                <div class="main-section__content">
                    <h2 class="main-section__title">{{$row->translatedinput('title')}}</h2>
                    @foreach($row->children as $btn)
                        @if($btn->type == "btn-item")
                            @if($btn->input('url'))
                                <a href="{{url(LaravelLocalization::getCurrentLocale().$btn->input('url'))}}"
                                   class="main-section__link btn-block btn-block_w">{{$btn->translatedinput('title')}}</a>
                            @endif
                        @endif
                    @endforeach
                </div>
                <div class="main-section__img-ibg">
                    <picture>
                        <source srcset="{{$row->image('image', 'no_crop')}}" type="image/webp">
                        <img src="{{$row->image('image', 'no_crop')}}" alt="img"></picture>
                </div>

            </div>
        @endif
    @endforeach

</section>
