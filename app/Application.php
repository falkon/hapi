<?php

namespace App;

use Illuminate\Database\Eloquent\Model;


class Application extends Model
{
    protected $fillable = ['phone', 'category_id', 'whom', 'reason', 'price', 'growth'];
    protected $guarded = [];
}
