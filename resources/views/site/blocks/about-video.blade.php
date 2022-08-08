<div class="about-video">
    <div class="about-video__container">
        <div class="about-video__video video-box" data-gallery>
            <a class="video-box__video-ibg" data-src="{{$block->input('url')}}" data-poster="{{$block->image('image', 'no_crop')}}">
                <picture><source srcset="{{$block->image('image', 'no_crop')}}" type="image/webp"><img src="{{$block->image('image', 'no_crop')}}"></picture>
            </a>
        </div>
    </div>
</div>