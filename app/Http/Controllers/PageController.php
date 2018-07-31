<?php

namespace App\Http\Controllers;

use App\HomeCounter;
use App\Type;
use Illuminate\Http\Request;
use LaravelAdminPanel\Models\Category;
use LaravelAdminPanel\Models\Page;
use Carbon\Carbon;

class PageController extends Controller
{
    public function home() {

        $counter = HomeCounter::first();

        $counterDate = date('Y-m-d', strtotime($counter->date));

        if(!$counter->hide_date) {
            $counter->hide_date = $counterDate;
            $counter->save();
        }


        $nowDate = strtotime(Carbon::now('Europe/Moscow'));

        $date = false;
        if($counter) {
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
        }

        return view('home', compact('counter', 'date'));
    }

    public function page(Request $request, $page) {

        $counter = HomeCounter::first();

        $counterDate = date('Y-m-d', strtotime($counter->date));

        if(!$counter->hide_date) {
            $counter->hide_date = $counterDate;
            $counter->save();
        }


        $nowDate = strtotime(Carbon::now('Europe/Moscow'));

        $date = false;
        if($counter) {
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
        }

        if($page == 'kontakty') {
            return view('contacts', compact('counter', 'date'));
        }
        else {
            $page = Page::where('slug', $page)->first();
            return view('page', compact('page', 'counter', 'date'));
        }
    }

    public function filterAdmin(Request $request) {
        $types = Type::where('category_id', $request->category_id)->get();
        return $types;
    }
}
