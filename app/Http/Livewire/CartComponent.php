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

    public function saveForLater($rowId){
        $item = Cart::instance('cart')->get($rowId);
        Cart::instance('cart')->remove($rowId);
        Cart::instance('saveforlater')->add($item->id, $item->name, 1, $item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component', 'refreshComponent');
        session()->flash('success_message', 'Product saved for later');
    }

    public function moveToCart($rowId){
        $item = Cart::instance('saveforlater')->get($rowId);
        Cart::instance('saveforlater')->remove($rowId);
        Cart::instance('cart')->add($item->id, $item->name, 1, $item->price)->associate('App\Models\Product');
        $this->emitTo('cart-count-component', 'refreshComponent');
        session()->flash('s_success_message', 'Product has been moved to cart');
    }

    public function deleteFromSaveForLater($rowId) {
        Cart::instance('saveforlater')->remove($rowId);
        session()->flash('s_success_message', 'Product has been removed from save for later');
    }

    public function render()
    {
        return view('livewire.cart-component')->layout("layouts.base");
    }
}
