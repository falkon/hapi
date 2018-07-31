<?php

namespace App\Http\Controllers;

use App\Application;
use App\Order;
use App\Price;
use App\Product;
use Illuminate\Http\Request;
use Session;
use Mail;

class OrderController extends Controller
{
    public function saveOrder(Request $request) {
        $data = $request->all();
        $orders = [];
        $order = new Order();

        $order->phone = $data['phone'];


        if($data['type'] == 'oneclick') {

            $order->name = $data['name'];
            $product = Product::find($data['productId']);
            $price = Price::find($data['priceId']);

            $or = [
                'productId' => $data['productId'],
                'price' => $price->price,
                'discount' => $product->discount,
                'count' => 1
            ];

            array_push($orders, $or);
            $order->order = json_encode($orders);
            $order->fullPrice = $price->price;
        }

        if($data['type'] == 'order') {
            $basket = session('basket');
            foreach ($basket as $key => $b) {

                $explodeKey = explode('_', $key);
                $product = Product::find($b['product_id']);

                if(!$explodeKey[1]) {
                    continue;
                }

                $price = Price::find($explodeKey[1]);

                $count = 1;

                if(isset($b->count)) {
                    $count = $b->count;
                }

                $or = [
                    'productId' => $product->id,
                    'price' => $price->price,
                    'discount' => $product->discount,
                    'count' => $count
                ];

                array_push($orders, $or);
                $order->order = json_encode($orders);
                $order->fullPrice += $price->price;
            }
        }

        $order->save();




        return $order->id;
    }

    public function successOrder(Request $request, $id) {

        $order = Order::findOrFail($id);
        $arrayProducts = [];
        $arrayOtherProducts = [];
        $orderJson = json_decode($order->order);
        foreach($orderJson as $key => $or) {
            $explodeKey = explode('_', $key);
            $product = Product::find($or->productId);
            $product->count = $or->count;
            $product->price = $or->price;
            array_push($arrayProducts, $product);
        }


        $otherProducts = json_decode($arrayProducts[0]->other_products);
        if($otherProducts) {
            foreach ($otherProducts as $other) {
                $otherProduct = Product::where('product_id_excel', $other)->first();
                if($otherProduct) {
                    $otherProduct->price = $otherProduct->price->price;
                    array_push($arrayOtherProducts, $otherProduct);
                }

            }
        }

        Mail::send('order', array('order' => $order, 'arrayProducts' => $arrayProducts), function($message) use($order)
        {
            $message->from(setting('.mail_manager'));
            $message->to(setting('.mail_manager'))->subject('Заказ № '. $order->id);
        });

        Session::forget('basket');



        return view('success-order', compact('order', 'arrayProducts', 'otherProducts', 'arrayOtherProducts'));

    }

    public function addToBasket(Request $request) {
        $basket = session('basket');
        $newProduct = 0;
        $img = false;

        if(!$request->priceId) {
            return 0;
        }

        if(!$basket) {
            $basket = [];
        }
        if(isset($basket[$request->productId.'_'.$request->priceId])) {
            $basket[$request->productId.'_'.$request->priceId]['count'] = $basket[$request->productId.'_'.$request->priceId]['count'] + 1;
        }
        else {
            $product = Product::find($request->productId);
            $img = '/storage/'.$product->image;
            $basket[$request->productId.'_'.$request->priceId] = [
                'count' => 1,
                'product_id' => $request->productId
            ];
            $newProduct = 1;
        }


        session(['basket' => $basket]);

        $priceOld = 0;
        $priceNew = 0;
        $basketOrderPrice = session('basket');
        foreach($basketOrderPrice as $key => $or) {
            $count = $or['count'];
            $explodeKey = explode('_', $key);
            $price = Price::find($explodeKey[1]);
            $priceOld += $price->price_old * (+$count);
            $priceNew += $price->price * (+$count);
        }


        $countItem = 0;

        foreach ($basket as $b) {
            $countItem += $b['count'];
        }

        return ['countItem' => $countItem, 'newProduct' => $newProduct, 'img' => $img, 'priceOld' => $priceOld, 'priceNew' => $priceNew];

    }

    public function deleteFromBasket(Request $request) {
        $basket = session('basket');
        $productId = $request->productId;
        $priceId = $request->priceId;

        unset($basket[$productId.'_'.$priceId]);
        session(['basket' => $basket]);

        $countItem = 0;

        $priceOld = 0;
        $priceNew = 0;
        foreach ($basket as $key => $b) {
            $countItem += $b['count'];
            $count = $b['count'];
            $explodeKey = explode('_', $key);
            $price = Price::find($explodeKey[1]);
            $priceOld += $price->price_old * (+$count);
            $priceNew += $price->price * (+$count);
        }

        return ['countItem' => $countItem, 'priceOld' => $priceOld, 'priceNew' => $priceNew];

    }

    public function saveApplication(Request $request) {
        $data = $request->all();
        unset($data['_token']);
        unset($data['check']);
        $application = Application::create($data);

        Mail::send('apllication-mail', array('application' => $application), function($message) use($application)
        {
            $message->from(setting('.mail_manager'));
            $message->to(setting('.mail_manager'))->subject('Заказ № '. $application->id);
        });

        return 1;
    }

    public function changePrice(Request $request) {
        $data = $request->all();
        $price = Price::find($data['priceId']);
        return $price;
    }

    public function mailIs(Request $request) {
        $product = Product::find($request->productId);
        Mail::raw('Номер товара '. $product->product_id_excel.' - '. $product->name .' Номер заказа '. $request->orderId, function($message) use($request)
        {
            $message->from(setting('.mail_manager'));

            $message->to(setting('.mail_manager'))->subject('Заказ № '. $request->orderId. ' просмотренные товары');
        });
    }


}
