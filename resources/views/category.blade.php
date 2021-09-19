@extends('layouts.app')

@section('title', 'Магазин')

@section('header')
    @include('layouts.header')
@endsection

@section('content')
    <div class="category">
        @foreach ($categories as $category)
            @if (count($category->products) > 0)
                <div class="category__wrapper">
                    <div class="category__title">
                        <h2>{{ $category->name }}</h2>
                    </div>
                    <div class="product-list">
                        @foreach ($category->products as $product)
                            <a class="product" href="/product_card/{{ $product->id }}">
                                <div class="wrapper">
                                    <div class="product__image">
                                        <img src="{{ URL::asset('images/' . $product->image->name) }}" alt=""/>
                                    </div>
                                    <div class="product__title">
                                        <h3>{{ $product->title }}</h3>
                                    </div>
                                    <div class="product__price">
                                        <h3>{{ $product->price }}<span class="caption">Руб.</span></h3>
                                    </div>
                                </div>
                            </a>
                        @endforeach
                    </div>
                </div>
            @endif
        @endforeach
    </div>
@endsection
