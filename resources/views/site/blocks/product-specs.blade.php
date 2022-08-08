<div class="shop__tabs">
    <div class="shop__container">
        <div class="product-tabs" data-tabs data-tabs-animate="500">
            <nav class="product-tabs__nav" data-tabs-titles>
                @foreach($block->children as $spec)
                    @if($spec->type == "spec-item")
                        <button class="product-tabs__btn {{$loop->first?'_tab-active':''}}">{{$spec->translatedInput('btn_title')}}</button>
                    @endif
                @endforeach
            </nav>
            <div class="product-tabs__body" data-tabs-body>
                @foreach($block->children as $spec)
                    @if($spec->type == "spec-item")
                        @if($spec->input('video_check'))
                            <div class="product-tabs__tab">
                                <div class="product-tabs__row">
                                    <div class="product-tabs__column">
                                        <h4 class="product-tabs__title">{{$spec->translatedInput('tab_title')}}</h4>
                                        {!! $spec->translatedInput('description') !!}
                                    </div>

                                    <div class="product-tabs__column video-box" data-gallery>
                                        <a class="video-box__video-ibg"
                                           data-src="{{$spec->input('url')}}"
                                           data-poster="{{$spec->image('image', 'no_crop')}}">
                                            <picture>
                                                <source srcset="{{$spec->image('image', 'no_crop')}}" type="image/webp">
                                                <img src="{{$spec->image('image', 'no_crop')}}">
                                            </picture>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        @else
                            <div class="product-tabs__tab">
                                <h4 class="product-tabs__title">{{$spec->translatedInput('tab_title')}}</h4>
                                {!! $spec->translatedInput('description') !!}
                            </div>
                        @endif
                    @endif
                @endforeach

            </div>
        </div>
    </div>
</div>