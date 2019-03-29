<?php

namespace App\Http\Controllers;

use App\Airline;
use Illuminate\Http\Request;

class AirlineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $database = new Airline();
        $countries = $database->getAllCountry();
        return view('airline.airlinelist',compact('countries'));
    }

}
