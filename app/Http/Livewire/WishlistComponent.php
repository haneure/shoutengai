<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class WishlistComponent extends Component
{

    public function removeFromWishlist($product_id){
        foreach(Cart::instance('wishlist')->content() as $wishlist){
            if($wishlist->id == $product_id){
                Cart::instance('wishlist')->remove($wishlist->rowId);
                session()->flash('removeWishlist', 'Product removed from wishlist');
                $this->emitTo('wishlist-count-component', 'refreshComponent');
                return;
            }
        }
    }

    public function render()
    {
        return view('livewire.wishlist-component')->layout("layouts.base");
    }
}
