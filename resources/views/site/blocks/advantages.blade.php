<section class="section advantage" style="background-image: url({{asset($block->image('image', 'no_crop'))}});">
    <div class="section__container">
        <h2 class="advantage__title section__title">{{$block->translatedinput('title')}}</h2>
        @if($block->childs)
            <div class="advantage__row">
                @foreach($block->childs as $child)
                    @if($child->type == "adv-item")
                        <div class="advantage__column">
                            <div class="advantage__items">
                    <span class="advantage__icon">
                        <img src="{{asset($child->image('svg', 'no_crop'))}}"
                             alt="{{$child->translatedinput('title')}}">
                    </span>
                                <h3 class="advantage__name">{{$child->translatedinput('title')}}</h3>
                                <div class="advantage__text section__text">{{$child->translatedinput('text')}}</div>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
        @endif
    </div>
</section>