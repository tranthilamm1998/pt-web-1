<?php

namespace App\Http\Controllers;

use App\Airline;
use App\City;
use App\Country;
use App\Distance;
use App\Http\Requests\InsertflyRequest;
use Illuminate\Http\Request;
use Illuminate\View\View;

class DistanceController extends Controller
{

    public function index()
    {
        //
        //$databasecities = new City();
        $databasecountries = new Country();
        $databaseairline = new Airline();
        // $cities = $databasecities->getAllCity();
        $countries = $databasecountries->getAllCountry();
        $airlines = $databaseairline->getAllAirline();

        return view('insertfly.frameinsertfly',compact('countries','airlines'));
    }

    public function store(InsertflyRequest $request)
    {
        //
        $fly = new Distance();
        $fly->createFly($request);
        return redirect('distance');

    }



    public function destroy(Distance $distance)
    {
        //
    }
    public function getOneCity(Request $request)
    {
        //
        $data = new Distance();
        $citiess = $data->getCityJ($request);
        return response()->json($citiess);
//        return view('insertfly.frameinsertfly',compact('cities'));

    }

    public function getCitiesByCountryId(Request $request)
    {

        $country = new Country();
        $country = $country->findOrFail($request->id);
        return $country->cities;

    }


}
