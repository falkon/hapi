<?php

namespace App\Http\Controllers;

use App\Counter;
use App\Price;
use App\Product;
use App\Type;
use Carbon\Carbon;
use Session;
use Illuminate\Http\Request;
use LaravelAdminPanel\Models\Category;
use DB;


class CategoryController extends Controller
{
    public function category(Request $request, $category) {
        $basketOrder = [];
        $basket = session('basket');
        $priceWithoutDiscount = 0;
        $price = 0;

        if(!is_null($basket)) {
            foreach ($basket as $key => $product) {
                $explodeKey = explode('_', $key);
                $bas = Product::find($product['product_id']);

                if(!$explodeKey[1]) {
                    continue;
                }
                $priceProduct = Price::find($explodeKey[1]);
                $bas->priceId = $priceProduct->id;

                if($bas->discount) {
                    $priceWithoutDiscount += $priceProduct->price;
                    $price += $priceProduct->price - ($priceProduct->price * $bas->discount) / 100;
                }
                else {
                    $priceWithoutDiscount += $priceProduct->price;
                    $price += $priceProduct->price;
                }

                array_push($basketOrder, $bas);
            }
        }




        $currentCategory = Category::where('slug', $category)->firstOrFail();

        $data = new \stdClass();
        $data->title = $currentCategory->meta_title;
        $data->meta_keywords = $currentCategory->meta_keywords;
        $data->meta_description = $currentCategory->meta_description;

        $newTypes = [];
        $types = DB::table('types')->select('id')->where('category_id', $currentCategory->id)->get();

        foreach ($types as $type) {
            $t = Type::find($type->id);
            $t->count = count(Product::whereRaw('JSON_CONTAINS(type_id, \'["'. $t->id .'"]\')')->where('category_id', $currentCategory->id)->has('prices')->get());
            if($t->count) {
                array_push($newTypes, $t);
            }

        }

        $types = $newTypes;
        $products = Product::where('category_id', $currentCategory->id)->with('prices')->where('is_active', 1)->orderBy('order', 'asc')->has('prices')->get();

        $counter = Counter::where('category_id', $currentCategory->id)->first();


        $date = false;

        if($counter) {
            
            $counterDate = date('Y-m-d', strtotime($counter->date));
            if(!$counter->hide_date) {
                $counter->hide_date = $counterDate;
                $counter->save();
            }


            $nowDate = strtotime(Carbon::now('Europe/Moscow'));

            $dateStart = new Carbon(date('Y-m-d', strtotime($counter->date)).' '. $counter->hours);
            $time = new Carbon($counter->hide_date.' '. $counter->hours);
            if($nowDate > strtotime($dateStart)) {

                $newDate = $time->addDays($counter->days_discount);


                $date = new \DateTime($newDate);
                $dateWithTime = $date->format('Y-m-d H:i');
                $date = $date->format('Y-m-d');

                if($nowDate > strtotime($dateWithTime)) {
                    $counter->hide_date = $date;
                    $counter->save();
                }

                 $date = $dateWithTime;
            }
            else {
                $date = $counter->hide_date.' '.$counter->hours;
            }
        }
        

        


        return view('category', compact('currentCategory', 'types', 'products', 'basketOrder', 'counter', 'priceWithoutDiscount', 'price', 'date', 'data'));
    }

    public function filter(Request $request) {
        if($request->isMethod('post')) {
            $data = $request->all();

            $category = Category::find($data['categoryId']);
            $products = Product::where('category_id', $category->id)->orderBy('order', 'asc')->where('images', '!=', '')->has('prices');

            if(!isset($data['ids'])) {

            }
            else {
                $jsonArray = json_encode($data['ids']);
                foreach($data['ids'] as $key => $categoryId) {
                    if(!$key) {
                        $products->whereRaw('JSON_CONTAINS(type_id, \'["'. $categoryId .'"] \')');
                    }
                    else {
                        $products->orWhereRaw('JSON_CONTAINS(type_id, \'["'. $categoryId .'"] \')');
                    }

                }
            }

            $products = $products->get();
            $html = view('blocks.products')->with(['products' => $products, 'currentCategory' => $category])->render();
            return response()->json([
                'html' => $html
            ]);

        }
    }

    public function infoProduct(Request $request) {
        $product = Product::find($request->productId);
        $product->image = '/storage/'.$product->image;
        $product->images = json_decode($product->images);
        if(count($product->prices)) {
            $price = Price::find($request->priceId);
            if($price->image) {
                $product->image = '/storage/'.$price->image;
            }
            $product->priceNew = $price->price;

            $product->priceOld = $price->price_old;
            $product->skidka = $price->difference_price;
        }
        else {
            $product->priceCurrent = 0;
            $product->priceNew = 0;
            $product->priceOld = 0;
            $product->skidka = 0;
        }


        $html = view('blocks.popup-overview')->with(['product' => $product, 'price' => $price])->render();
        return response()->json([
            'html' => $html
        ]);

    }

}
