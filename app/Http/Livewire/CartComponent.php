<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    public function increaseQuantity($id){
        $product = Cart::get($id);
        $qty = $product->qty + 1;
        Cart::update($id, $qty);
    }

    public function decreaseQuantity($id){
        $product = Cart::get($id);
        $qty = $product->qty - 1;
        Cart::update($id, $qty);
    }

    public function render()
    {
        return view('livewire.cart-component')->layout("layouts.base");
    }
}
