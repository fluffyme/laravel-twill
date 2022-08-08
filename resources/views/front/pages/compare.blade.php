@extends('front/layouts/app')

@section('container')

    <div class="top-block" style="background-image: url({{asset('assets/front/img/crumbs-bg.png')}});">
        <div class="top-block__container">
            <div class="top-block__body">
                <h1 class="top-block__title">{{__('products.comparison')}}</h1>
                <ul class="top-panel__breadcrumb breadcrumb breadcrumb_w">
                    <li><a href="{{url('/')}}" class="breadcrumb__item">{{$mainPage->title}}</a></li>
                    <li><a class="breadcrumb__item breadcrumb__item_active">{{__('products.comparison')}}</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="compare">
        <div class="compare__container">
            @if($products)
                <div class="compare__items block-products">
                    @foreach($products as $product)
                        <div class="block-products__column">
                            <article class="product-shop__items">
                                <button class="products-cart__delete block-products__delete co-remove"
                                        data-compare="{{route('compare.remove', $product)}}">
                                    {{__('products.delete')}}
                                </button>
                                <a href="{{route('product', [$product->categories, $product->slug, $product])}}">
                                    <picture>
                                        <source srcset="{{asset($product->image('slideshow', 'no_crop'))}}"
                                                type="image/webp">
                                        <img src="{{asset($product->image('slideshow', 'no_crop'))}}"
                                             alt="{{$product->title}}" class="product-shop__img">
                                    </picture>
                                </a>
                                <h4 class="product-shop__cat">
                                    {{$product->categories->title}}
                                </h4>
                                <a href="{{route('product', [$product->categories, $product->slug, $product])}}">
                                    <h3 class="product-shop__name">
                                        {{$product->title}}
                                    </h3>
                                </a>
                                <span class="product-shop__price">{{$product->price}}</span>
                                <button class="product-shop__add btn-block c-add {{Helper::cartItem($product->id)?'_added':''}}"
                                        data-cart="{{route('cart.add', $product)}}">
                                    <span>{{__('products.add_to_cart')}}</span>
                                </button>
                            </article>
                        </div>
                    @endforeach
                </div>
                @php $productFirst = array_shift($products);@endphp
                <div class="compare__table table-compare">
                    <table cellspacing="0">
                        <tbody>
                        @php $attrs = $productFirst->getRelated('productAtributes')->load('parent'); @endphp

                        @foreach($attrs as $attr)
                            <tr>
                                <td>{{$attr->parent->title}}</td>

                                <td>{{$attr->title}}</td>

                                @foreach($products as $prod)

                                    @php $attributes = $prod->getRelated('productAtributes')->load('parent'); @endphp

                                    @foreach($attributes as $attribute)

                                        @if($attribute->parent->id == $attr->parent->id)

                                            <td>{{$attribute->title}}</td>

                                        @endif

                                    @endforeach

                                    @if(!in_array($attr->parent->id, $prod->attr_parents_ids))

                                        <td> -</td>
                                    @endif

                                @endforeach
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            @endif
        </div>
    </div>

@endsection