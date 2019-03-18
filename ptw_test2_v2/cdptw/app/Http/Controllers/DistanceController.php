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
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(InsertflyRequest $request)
    {
        //
        $fly = new Distance();
        $fly->createFly($request);
        return redirect('distance');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Distance  $distance
     * @return \Illuminate\Http\Response
     */
    public function show(Distance $distance)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Distance  $distance
     * @return \Illuminate\Http\Response
     */
    public function edit(Distance $distance)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Distance  $distance
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Distance $distance)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Distance  $distance
     * @return \Illuminate\Http\Response
     */
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
