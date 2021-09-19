@extends('layouts.app')

@section('title', 'Корзина')

@section('header')
    @include('layouts.header')
@endsection

@section('content')
    <div class="cart">
        <div class="cart__title">
            <h2>Корзина</h2>
        </div>
        <div class="cart__content">
            @if (!empty($cart))
                @foreach($cart as $product)
                    <div class="cart__row">
                        <div class="wrapper">
                            <div class="cart__image">
                                <img src="{{ URL::asset('images/' . ($product['image'] ?? 'plug.png' )) }}" alt=""/>
                            </div>
                            <div class="cart__title">
                                <p>{{ $product['title'] }}</p>
                            </div>
                            <div class="cart__quantity">
                                <p>
                                    <span class="quantity">{{ $product['quantity'] }}</span>
                                    <span class="caption">шт.</span>
                                </p>
                            </div>
                            <div class="cart__price">
                                <p>
                                    <span class="price">{{ $product['price'] }}</span>
                                    <span class="caption">Руб./шт.</span>
                                </p>
                            </div>
                            <div class="cart__delete">
                                <div class="delete">
                                    <input type="hidden" class="delete-product-id" value="{{ $product['id'] }}">
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="cart__total">
                    <div class="cart__total__products">
                        <span class="result-text">Всего товаров:
                            <span class="result products">{{ $total['products'] }}</span>
                            <span class="caption">шт.</span>
                        </span>
                    </div>
                    <div class="cart__total__products">
                        <span class="result-text">На сумму:
                            <span class="result price">{{ $total['price'] }}</span>
                            <span class="caption">Руб.</span>
                        </span>
                    </div>
                </div>
            @else
                <div class="cart__empty">
                    <h2>Корзина пуста</h2>
                </div>
            @endif
        </div>
    </div>
@endsection
