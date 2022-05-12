<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use Livewire\Component;

class AdminCategoryComponent extends Component
{
    public function render()
    {
        $categories = Category::paginate(5);

        return view('livewire.admin.admin-category-component', ['categories' => $categories])->layout("layouts.base");
    }
}
