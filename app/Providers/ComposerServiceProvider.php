<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use View;
use LaravelAdminPanel\Models\Category;
use LaravelAdminPanel\Models\Page;
use Request;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        View::share('data', $this->getInfoBySeoPage());
        View::share('categories', $this->getCategories());
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    public function getInfoBySeoPage() {
        $data = false;
        $page = Page::where('slug', Request::path())->first();
        if($page && Request::is(Request::path())) {
            return $page;
        }

        return $data;
    }

    public function getCategories() {
        $categories = Category::orderBy('order')->get();
        return $categories;
    }
}
