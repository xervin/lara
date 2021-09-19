@extends('layouts.app')

@section('title', 'Карточка продукта')

@section('header')
    @include('layouts.header')
@endsection

@section('content')
    <div class="product-card">
        <div class="product-card__add-to-cart">
            @if($product->reserve > 0)
                <div class="quantity">
                    <input id="quantity" type="number" min="1" value="1" data-id="{{ $product->id }}">
                </div>
                <div class="buy">
                    <button id="buy" class="buy">Купить</button>
                </div>
            @else
                <div class="not-available">
                    <h3>Нет в наличии</h3>
                </div>
            @endif
        </div>
        <div class="product-card__wrapper">
            <div class="product-card__left">
                <div class="product-card__image">
                    <img src="{{ URL::asset('images/' . $product->image->name) }}" alt=""/>
                </div>
            </div>
            <div class="product-card__right">
                <div class="product-card__title">
                    <h2>{{ $product->title }}</h2>
                </div>
                <div class="product-card__description">
                    <p>{{ $product->description }}</p>
                </div>
                <div class="product-card__price">
                    <p><span class="caption">Цена:</span>{{ $product->price }}<span class="caption">Руб.</span></p>
                </div>
                <div class="product-card__reserve">
                    <p><span class="caption">Остаток:</span>{{ $product->reserve }}<span class="caption">шт.</span></p>
                </div>
                <div class="product-card__categories">
                    @if(count($product->categories) > 0)
                        <p>
                            <span class="caption">Категории:</span>
                            @foreach ($product->categories as $category)
                                <span class="item">{{ $category->name }}</span>
                            @endforeach
                        </p>
                    @endif
                </div>
            </div>
        </div>
        <div class="product-card__images">
            @if(count($product->images) > 0)
                @foreach ($product->images as $image)
                    <div class="image">
                        <img class="additional-image" src="{{ URL::asset('images/' . $image->name) }}"
                             data-id="{{ $image->id }}" alt=""/>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
@endsection
