<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use LaravelAdminPanel\Models\Category;
use App\Type;
use LaravelAdminPanel\Traits\Cropper;


class Product extends Model
{
    use Cropper;
    public function categoryId() {
        return $this->belongsTo(Category::class, 'category_id');
    }

    public function typeId() {
        return $this->belongsTo(Type::class, 'type_id');
    }

    public function prices() {
        return $this->hasMany(Price::class, 'product_id');
    }

    public function productParameters() {
        return $this->hasMany(ProductParameter::class, 'product_id');
    }

    public function otherProducts() {
        return $this->belongsTo(Product::class, 'product_id');
    }

    public function price() {
        return $this->hasOne(Price::class, 'product_id');
    }

    public function category() {
        return $this->belongsTo(Category::class, 'category_id');
    }
}
