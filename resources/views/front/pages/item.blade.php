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

    {!! $page->renderBlocks(false) !!}

@endsection
