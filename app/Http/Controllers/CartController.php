<?php


namespace App\Http\Controllers;

use App\Entity\Cart;
use App\Models\Product;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index()
    {
        $cart = session('cart');
        $total = [
            'products' => 0,
            'price' => 0
        ];
        if ($cart) {
            foreach ($cart as $product) {
                $total['products'] += $product['quantity'];
                $total['price'] += ($product['quantity'] * $product['price'] );
            }
        }
        return view('cart', ['cart' => $cart, 'total' => $total]);
    }

    public function add(Request $request, $id): JsonResponse
    {
        $product = Product::find($id);
        $quantity = $request->quantity ?? null;

        if (!$product || $quantity === null) {
            return response()->json([
                'success' => false,
                'error' => "Товара с таким id не существует или не передано количество товара"
            ]);
        }

        Cart::add($product, $quantity);

        return response()->json([
            'success' => true,
            'payload' => "Товар {$product->title} ($quantity шт.) успешно добавлен в корзину"
        ]);
    }

    public function delete(Request $request, $id): JsonResponse
    {
        Cart::delete($id);

        return response()->json([
            'success' => true,
            'payload' => "Товар успешно удален из корзины"
        ]);
    }
}
