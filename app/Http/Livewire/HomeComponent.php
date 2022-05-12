<?php

namespace App\Http\Livewire;

use App\Models\HomeSlider;
use App\Models\Product;
use Livewire\Component;

class HomeComponent extends Component
{
    public function render()
    {
        $sliders = HomeSlider::where('status', 1)->get();
        $latestproducts = Product::orderBy('created_at', 'desc')->get()->take(8);

        return view('livewire.home-component', ['sliders'=>$sliders, 'latestproducts'=>$latestproducts])->layout('layouts.base');
    }
}
