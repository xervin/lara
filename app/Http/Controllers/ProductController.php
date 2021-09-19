<?php

namespace App\Http\Controllers;

use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::orderBy('price', 'DESC')
            ->limit('10')
            ->get();

        return view('index', ['products' => $products] );
    }
}
