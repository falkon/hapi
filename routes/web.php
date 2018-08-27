<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/get-function-and-produce', [
    'uses' => 'PageController@filterAdmin'
]);

Route::post('/mail-is', [
    'uses' => 'OrderController@mailIs'
]);

Route::get('/', [
    'as' => 'home',
    'uses' => 'PageController@home'
]);

Route::post('/filter-category', [
    'uses' => 'CategoryController@filter'
]);

Route::match(['get', 'post'], '/category/{category}', [
    'as' => 'category',
    'uses' => 'CategoryController@category'
]);

Route::post('/get-info-product', [
    'uses' => 'CategoryController@infoProduct'
]);

Route::post('/save-order', [
    'uses' => 'OrderController@saveOrder'
]);

Route::get('/success-order/{id}', [
    'as' => 'success-order',
    'uses' => 'OrderController@successOrder'
]);

Route::post('/add-to-basket', [
    'uses' => 'OrderController@addToBasket'
]);

Route::post('/delete-from-basket', [
    'uses' => 'OrderController@deleteFromBasket'
]);

Route::post('/save-application', [
    'uses' => 'OrderController@saveApplication'
]);

Route::match(['get', 'post'], '/excel-download', [
    'uses' => 'ExcelController@excel'
])->middleware('auth');

Route::post('/change-price', [
    'uses' => 'OrderController@changePrice'
]);



Route::group(['prefix' => 'admin'], function () {
    Admin::routes();
});

Route::get('/{page}', [
    'as' => 'page',
    'uses' => 'PageController@page'
]);
