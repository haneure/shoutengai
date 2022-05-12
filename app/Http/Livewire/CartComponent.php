<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    public function increaseQuantity($id)
    {
        $product = Cart::instance('cart')->get($id);
        $qty = $product->qty + 1;
        Cart::instance('cart')->update($id, $qty);
        $this->emitTo('cart-count-component', 'refreshComponent');
    }

    public function decreaseQuantity($id)
    {
        $product = Cart::instance('cart')->get($id);
        $qty = $product->qty - 1;
        Cart::instance('cart')->update($id, $qty);
        $this->emitTo('cart-count-component', 'refreshComponent');
    }

    public function destroy($id)
    {
        Cart::instance('cart')->remove($id);
        $this->emitTo('cart-count-component', 'refreshComponent');
        session()->flash('success', 'Product removed from cart');
    }

    public function destroyAll() {
        Cart::instance('cart')->destroy();
        $this->emitTo('cart-count-component', 'refreshComponent');
        session()->flash('success', 'Cart is emptied');
    }

    public function render()
    {
        return view('livewire.cart-component')->layout("layouts.base");
    }
}
