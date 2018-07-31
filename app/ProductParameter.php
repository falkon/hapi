<?php

namespace App;

use App\Product;
use Illuminate\Database\Eloquent\Model;


class ProductParameter extends Model
{
    public function productId() {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
