<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use LaravelAdminPanel\Models\Category;


class Type extends Model
{
    public function categoryId() {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function products() {
        return $this->hasMany(Product::class, 'type_id');
    }
}
