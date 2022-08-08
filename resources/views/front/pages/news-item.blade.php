@extends('front.layouts.app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/crumbs-bg.png')}});">
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{$page->title}}</h1>
                <ul class="top-panel__breadcrumb breadcrumb breadcrumb_w">
                    <li><a href="{{route('page.show', $page->slug)}}" class="breadcrumb__item">{{$page->title}}</a></li>
                    <li><a class="breadcrumb__item breadcrumb__item_active">{{$news->title}}</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="news">
        <div class="news__container">
            <h1 class="single-row__title">{{$news->title}}</h1>
            <div class="news__row single-row">
                <div class="single-row__content">
                    <div class="single-row__img-ibg">
                        <picture>
                            <source srcset="{{$news->image('cover', 'default')}}" type="image/webp">
                            <img src="{{$news->image('cover', 'default')}}" alt="{{$news->title}}"></picture>
                    </div>
                    <div class="single-row__text">
                        {{--<p class="single-row__p">--}}
                        {!! $news->description1 !!}
                        <div class="single-row__images single-images">
                            @if($news->images('slideshow', 'no_crop'))
                                @foreach($news->images('slideshow', 'no_crop') as $img)
                                    <div class="single-images__column">
                                        <div class="single-images__column-ibg">
                                            <picture>
                                                <source srcset="{{$img}}" type="image/webp">
                                                <img src="{{$img}}" alt="{{$news->title}}"></picture>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                        {!! $news->description2 !!}
                    </div>
                </div>
                <aside class="single-row__aside aside-news">
                    @if($newsAside)
                        @foreach($newsAside as $newsItem)
                            <div class="aside-news__row news">
                                <div class="news__body">
                                    <div class="news__img-ibg">
                                        <picture>
                                            <source srcset="{{$newsItem->image('cover', 'default')}}" type="image/webp">
                                            <img src="{{$newsItem->image('cover', 'default')}}"
                                                 alt="{{$newsItem->title}}"></picture>
                                    </div>
                                    <div class="news__content">
                                        <a href="{{route('news.show', $newsItem->slug)}}">
                                            <h4 class="news__title">{{$newsItem->title}}</h4>
                                        </a>
                                        <span class="news__link">@if($newsItem->created_at)
                                                {{$newsItem->created_at->day}} {{$newsItem->created_at->monthName}}
                                            @endif</span>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif
                </aside>
            </div>

        </div>
    </div>

@endsection
