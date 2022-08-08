<section class="section box-rows">
    <div class="section__container">
        @if($block->childs->count())
            <div class="box-rows__rows">
                @foreach($block->childs as $child)
                    @if(@$child->type ==='img-text')
                        @isset($child)
                            <div class="box-rows__row box-rows__row_about">
                                <div class="box-rows__column">
                                    <div class="box-rows__content section__text">{!! $child->translatedinput('text') !!}</div>
                                </div>
                                <div class="box-rows__column">
                                    <div class="box-rows__img-ibg">
                                        <img src="{{asset($child->image('image', 'no_crop'))}}" alt="img">
                                    </div>
                                </div>
                            </div>
                        @endif
                    @endif
                @endforeach
            </div>
        @endif
    </div>
</section>