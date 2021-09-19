<?php


namespace App\Entity;


use App\Models\Product;


class Cart
{
    public static function add(Product $product, $quantity): void
    {
        $cart = session()->get('cart');
        if ($cart) {
            if (isset($cart[$product->id])) {
                self::update($product, $quantity);
            } else {
                self::push($product, $quantity);
            }
        } else {
            self::create($product, $quantity);
        }
    }

    public static function delete(int $id): void
    {
        $cart = session()->get('cart');

        if (isset($cart[$id])) {
            unset($cart[$id]);
        }

        if (empty($cart)) {
            session()->forget('cart');
        } else {
            session()->put('cart', $cart);
        }
    }

    private static function create(Product $product, $quantity): void
    {
        $cart = [
            $product->id => [
                'id' => $product->id,
                'title' => $product->title,
                'quantity' => $quantity,
                'price' => $product->price,
                'image' => $product->image->name
            ]
        ];

        session()->put('cart', $cart);
    }

    private static function update(Product $product, $quantity): void
    {
        $cart = session()->get('cart');
        $cart[$product->id]['quantity'] += $quantity;
        session()->put('cart', $cart);
    }

    private static function push(Product $product, $quantity): void
    {
        $cart = session()->get('cart');
        $cart[$product->id] = [
            'id' => $product->id,
            'title' => $product->title,
            'quantity' => $quantity,
            'price' => $product->price,
            'image' => $product->image->name
        ];
        session()->put('cart', $cart);
    }
}
