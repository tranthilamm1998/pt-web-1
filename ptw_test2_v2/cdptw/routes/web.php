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
//Route::get ('/login', 'LoginController@indexx');
//Route::post ('/login', 'LoginController@action');
//Route::get ('/logout', 'LogoutController@index');
Route::resource('users','UserController');
//Route::get ('search', 'SearchController@index');
////Route::post ('aaaa', 'SearchController@store');
///

//Auth::routes();
Route::resource('flightlist','FlightlistController');
Route::resource('airport','AirportController');
Route::resource('airline','AirlineController');
Route::resource('distance','DistanceController');
Route::get('searchbyid/{from_id}', 'DistanceController@getOneCity');
Route::get('get-cities-by-country-id/{id}', 'DistanceController@getCitiesByCountryId');
Route::get('get-rela-country-by-country-id/{id}', 'CountryController@getRelaCountry');
Route::get('/home', 'HomeController@index')->name('home');



Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

