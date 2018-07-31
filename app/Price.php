<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Price extends Model
{
    public function productId() {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
