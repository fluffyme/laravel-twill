<section class="section services services-home">
    <div class="section__container">
        <h2 class="section__title">{{$block->translatedinput('title')}}</h2>
        @php
            $selected_items_ids = $block->browserIds('services');
            $items = \App\Models\Service::find($selected_items_ids);
        @endphp
        @if($items->count())
            <div class="services__row">
                @foreach($items as $item)
                    <div class="services__column">
                        <div class="services__img-ibg">
                            <img src="{{asset($item->image('image', 'no_crop'))}}" alt="{{$item->title}}">
                        </div>
                    </div>
                    <div class="services__column">

                        <div class="services__content">
                            <h3 class="services__title">{{$item->title}}</h3>
                            <div class="services__text section__text">
                                {!!\Illuminate\Support\Str::limit($item->description,250,'...')!!}
                            </div>
                            <a href="{{url(LaravelLocalization::getCurrentLocale().'/pages/servicii')}}#{{$item->slug}}"
                               class="services__link">
                                <span>{{__('products.learn_more')}}</span>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        @endif
        <div class="services__more block-more">
            @if($block->input('btnUrl') && $block->translatedinput('btn'))
                <a href="{{url(LaravelLocalization::getCurrentLocale() . $block->input('btnUrl'))}}"
                   class="btn-block">{{$block->translatedinput('btn')}}</a>
            @endif
        </div>
    </div>
</section>
