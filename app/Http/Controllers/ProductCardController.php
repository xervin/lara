<?php


namespace App\Http\Controllers;


use App\Models\Product;

class ProductCardController extends Controller
{
    public function index(int $id)
    {
        $product = Product::find($id);

        return view('product_card', ['product' => $product]);
    }
}
