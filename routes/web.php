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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/fibonacci', function () {
    return view('fibonacci');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/home/jsonDatatables', 'HomeController@jsonDatatables');
Route::get('/home/create', 'HomeController@create')->name('home.create');
Route::get('/home/{home}/edit', 'HomeController@edit')->name('home.edit');
Route::put('/home/{home}', 'HomeController@update')->name('home.update');
Route::delete('/home/{home}', 'HomeController@destroy')->name('home.destroy');
Route::post('/home/store', 'HomeController@store')->name('home.store');
