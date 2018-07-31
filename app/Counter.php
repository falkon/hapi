<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use LaravelAdminPanel\Models\Category;
use LaravelAdminPanel\Traits\Cropper;


class Counter extends Model
{
    use Cropper;

    public function categoryId() {
        return $this->belongsTo(Category::class);
    }

}
