<div class="contacts__map ">
    @if($block->input('map_url'))
        <iframe class="contacts__iframe" src="{{$block->input('map_url')}}" allowfullscreen="" loading="lazy"  referrerpolicy="no-referrer-when-downgrade">
        </iframe>
    @endif
</div>