@extends('front.layouts.app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/crumbs-bg.png')}});">
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{$page->title}}</h1>
                <ul class="top-panel__breadcrumb breadcrumb breadcrumb_w">
                    <li><a href="{{route('home')}}" class="breadcrumb__item">{{$mainPage->title}}</a></li>
                    <li><a class="breadcrumb__item breadcrumb__item_active">{{$page->title}}</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="news">
        @if($news)
            <div class="news__container">
                <div class="news__row">
                    @foreach($news as $newsItem)
                    <div class="news__column">

                        <div class="news__body">
                            <div class="news__date">
                                @if($newsItem->created_at)
                                <span>{{$newsItem->created_at->day}}</span>
                                {{$newsItem->created_at->getTranslatedShortMonthName('Do MMM')}}
                                @endif
                            </div>
                            <div class="news__img-ibg">
                                <picture>
                                    <source srcset="{{$newsItem->image('cover', 'default')}}" type="image/webp">
                                    <img src="{{$newsItem->image('cover', 'default')}}" alt="{{$newsItem->title}}"></picture>
                            </div>
                            <div class="news__content">
                                <h4 class="news__title">{{$newsItem->title}}</h4>
                                <div class="news__text">{!! \Illuminate\Support\Str::limit($newsItem->description1,250,'...') !!}
                                </div>
                                <a href="{{route('news.show', $newsItem->slug)}}" class="news__link">{{__('products.reed_more')}}</a>
                            </div>


                        </div>
                    </div>
                    @endforeach
                </div>
                {{ $news->links('front.pagination') }}
            </div>
        @endif
    </div>

@endsection
