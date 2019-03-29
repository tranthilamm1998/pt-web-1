<?php

namespace App\Http\Controllers;

use App\Airport;
use Illuminate\Http\Request;

class AirportController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $database = new Airport();
        $cities = $database->getAllCity();
        return view('airport.airportlist',compact('cities'));
    }


    public function store(Request $request)
    {
        //
        $airports = Airport::where('city_id' , $request->city)->get();
        //dd($flights);
        return view('airport.airportlist', compact('airports'));
    }


}
