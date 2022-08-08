@if($block)
    <section class="section advantage"
             style="background-image: linear-gradient(0deg, rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url({{asset($block->image('image', 'no_crop'))}});">

        <div class="section__container">

            <div class="section__center">

                <h2 class="section__title advantage__title">

                    {{$block->translatedinput('title')}}

                </h2>

            </div>
            @if($block->childs->count())
                <div class="advantage__row">
                    @foreach($block->childs as $child)
                        @if(@$child->type ==='adv-item')
                            @isset($child)
                                <div class="advantage__column">

                                    <div class="advantage__items">

								<span class="advantage__icon">

									<img src="{{asset($child->image('svg', 'no_crop'))}}"
                                         alt="{{$child->translatedinput('title')}}">

								</span>
                                        <h3 class="advantage__name">

                                            {{$child->translatedinput('title')}}

                                        </h3>
                                        <p class="advantage__text text-block">

                                        </p>
                                    </div>
                                </div>
                            @endif
                        @endif
                    @endforeach
                </div>
            @endif
        </div>
    </section>
@endif