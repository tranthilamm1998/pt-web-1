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


Route::resource('countries','CountryController');
Route::resource('cities','CityController');
Route::resource('search','SearchController');
Route::resource('register','RegisterController');
Route::get ('/login', 'LoginController@indexx');
Route::post ('/login', 'LoginController@action');
Route::get ('/logout', 'LogoutController@index');
Route::resource('users','UserController');
//Route::get ('search', 'SearchController@index');
////Route::post ('aaaa', 'SearchController@store');
///

//Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
