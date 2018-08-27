<?php

namespace App\Http\Controllers;

use App\ProductParameter;
use Illuminate\Http\Request;
use Storage;
use Importer;
use App\Product;
use LaravelAdminPanel\Models\Category;
use LaravelAdminPanel\Models\DataType;
use LaravelAdminPanel\Traits\Cropper;
use App\Type;
use App\Price;

class ExcelController extends Controller
{

    use Cropper;
    public function excel(Request $request) {

        if($request->hasFile('file')){

//            $product = Product::first();
//
//            $file = $request->file('file');
//            $file->move(storage_path('app/public/products'), $file->getClientOriginalName());
//
//            $product->image = '/products/'.$file->getClientOriginalName();
//            $product->save();
//            $obj = new \stdClass();
//            $obj->slug = 'products';
//            $obj->dataType = DataType::find(9);
//            $obj->model = $product;
//
//            $size = getimagesize(storage_path().'/products/'. $file->getClientOriginalName());
//            $values = [
//                'x' => 0,
//                'y' => 0,
//                'w' => $size[0],
//                'h' => $size[1],
//                'image' => '/products/'.$file->getClientOriginalName()
//            ];
//
//            $request->request->add(['image_image' => json_encode($values), 'image' => '/products/'.$file->getClientOriginalName()]);
//            $obj->request = $request;
//            $this->cropPhotos($obj);
//            dd($product, $request->file, $obj);

            $excel = Importer::make('Excel');
            $excel->load($request->file('file')->getRealPath());
            $collection = $excel->getCollection();
            unset($collection[0]);
            foreach ($collection as $collect) {
                if(!$collect[0]) {
                    continue;
                }

                $product = Product::where('product_id_excel',$collect[0])->first();
                if($product) {
                    if(isset($collect[13]) && $collect[13]) {
                        Price::where('product_id', $product->id)->delete();
                        ProductParameter::where('product_id', $product->id)->delete();
                        $product->delete();
                        continue;
                    }
                }
                else {
                    $product = new Product();
                    $product->product_id_excel = $collect[0];
                }

                $category = Category::where('name', $collect[1])->first();
                if($category) {
                    $product->category_id = $category->id;
                }

                if($product->category_id && $collect[5]) {
                    $filters = explode('/', $collect[5]);
                    foreach ($filters as $filter) {
                        $f = Type::where('name', $filter)->first();
                        if($f) {
                            $product->type_id = $f->id;
                        }
                    }
                }

                $typesProduct = [];
                $arrayTypes = explode('/',$collect[5]);
                foreach ($arrayTypes as $type) {
                    $type = Type::where('name', $type)->first();
                    if($type) {
                        array_push($typesProduct, strval($type->id));
                    }
                }

                if($typesProduct) {
                    $typesProduct = json_encode($typesProduct);
                    $product->type_id = $typesProduct;
                }


                $product->name = $collect[2];
                $product->parametr = $collect[3];
                $product->description = $collect[6];
                $arrayImages = explode('/', $collect[10]);
                if($arrayImages[0]) {
                    $arrayImages[0] = str_replace(array("\r","\n"),"", $arrayImages[0]);
                    if(file_exists(storage_path('parser/').$arrayImages[0])) {
                        if(strpos($arrayImages[0], '.') !== false) {
                            if(!file_exists(storage_path('products/').$arrayImages[0])) {
                                Storage::copy('parser/'.$arrayImages[0], 'products/'.$arrayImages[0]);

                            }
                            $product->image = 'products/'.$arrayImages[0];

                        }

                    }

                    unset($arrayImages[0]);
                }

                if($arrayImages) {
                    foreach ($arrayImages as $key => $img) {
                        $img = str_replace(array("\r","\n"),"", $img);
                        if(file_exists(storage_path('parser/').$img)) {
                            if(strpos($img, '.') !== false) {
                                if(!file_exists(storage_path('products/').$img)) {
                                    Storage::copy('parser/'.$img, 'products/'.$img);
                                }

                                $arrayImages[$key] = '/products/'.$img;

                            }
                            else {
                                unset($arrayImages[$key]);
                                continue;
                            }



                        }
                        else {
                            unset($arrayImages[$key]);
                        }

                    }
                    $multiImages = json_encode($arrayImages);
                    $product->images = $multiImages;
                }

                if($collect[12]) {
                    $arr = explode(',', $collect[12]);
                    foreach ($arr as $key => $ar) {
                        $arr[$key] = strval($ar);
                    }
                    $newArr = json_encode($arr);
                    $product->other_products = $newArr;
                }

                $product->save();


                if($collect[7] && isset($product->id)) {
                    $price = Price::where('product_id', $product->id)->where('name', $collect[4])->first();
                    if($price) {
                        $price->price = $collect[9];
                        $price->price_old = $collect[7];
                        $price->difference_price = $collect[8];
                        if(strpos($collect[8], '.') !== false) {
                            $price->difference_price = ($collect[8]*100). '%';
                        }

                        if($collect[11]) {
                            if(file_exists(storage_path('app/public/parser/').$collect[11])) {
                                if(strpos($collect[11], '.') !== false) {
                                    if(!file_exists(storage_path('app/public/products/').$collect[11])) {
                                        Storage::copy('/storage/parser/'.$collect[11], '/storage/products/'.$collect[11]);
                                    }
                                    $price->image = 'products/'.$collect[11];

                                }

                            }

                        }

                        $price->save();
                    }
                    else {
                        $price = new Price();
                        $price->price = $collect[9];
                        $price->price_old = $collect[7];
                        $price->difference_price = $collect[8];
                        if(strpos($collect[8], '.') !== false) {
                            $price->difference_price = ($collect[8]*100). '%';
                        }
                        $price->name = $collect[4];
                        $price->product_id = $product->id;

                        if($collect[11]) {
                            if(file_exists(storage_path('app/public/parser/').$collect[11])) {
                                if(strpos($collect[11], '.') !== false) {
                                    if(!file_exists(storage_path('app/public/products/').$collect[11])) {
                                        Storage::copy('/storage/parser/'.$collect[11], '/storage/products/'.$collect[11]);
                                    }
                                    $price->image = 'products/'.$collect[11];

                                }

                            }

                        }

                        $price->save();

                    }

                }


            }

            dd('good_job');


        }

        return view('excel');
    }
}
