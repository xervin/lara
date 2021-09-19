<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'ProductController@index');
Route::get('/categories', 'CategoryController@index');
Route::get('/product_card/{id}', 'ProductCardController@index');
Route::get('/cart', 'CartController@index');

Route::post('/cart/add/{id}', 'CartController@add');
Route::post('/cart/delete/{id}', 'CartController@delete');

