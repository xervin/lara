@extends('layouts.app')

@section('title', 'Магазин')

@section('header')
    @include('layouts.header')
@endsection

@section('content')
    <div class="cheapest">
        @foreach ($products as $product)
            <div class="cheapest__card">
                <a class="wrapper" href="/product_card/{{ $product->id }}">
                    <div class="cheapest__title">
                        <h3>{{ $product->title }}</h3>
                    </div>
                    <div class="cheapest__image">
                        <img src="{{ URL::asset('images/' . $product->image->name) }}" alt=""/>
                    </div>
                </a>
            </div>
        @endforeach
    </div>
@endsection
