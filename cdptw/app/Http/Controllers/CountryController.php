<?php

namespace App\Http\Controllers;

use App\Country;
use App\Http\Requests\CountryRequest;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $countries = Country::all();

        return view('country.index', compact('countries'));
        // return view('country.index', [$countries => 'dulieuchuyendi']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('country.frame');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CountryRequest $request)
    {
        //
        $country = new Country();
        $country->name = $request->name;
        $country->code = $request->code;
        $country->save();
        return redirect('countries');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function show(Country $country)
    {
        //
        //dd($country->cities());
        return view('country.detail',compact('country'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function edit(Country $country)
    {
        //
        return view('country.frame', compact('country'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function update(CountryRequest $request, Country $country)
    {
        //
        $country->name = $request->name;
        $country->code = $request->code;
        $country->save();
        return redirect('countries');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function destroy(Country $country)
    {
        //
        if (count($country->cities) > 0) {

            return redirect('countries')->with('message','Error');
        }
        $country->delete();


        return redirect('countries');
    }
}
