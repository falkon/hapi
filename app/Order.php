<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use LaravelAdminPanel\Models\Category;


class Order extends Model
{
    public function category() {
        return $this->belongsTo(Category::class, 'category_id');
    }
}
