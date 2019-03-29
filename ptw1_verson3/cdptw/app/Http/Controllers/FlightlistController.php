<?php

namespace App\Http\Controllers;

use App\Flightdetail;
use App\Flightlist;
use Illuminate\Http\Request;
use App\Http\Requests\SearchRequest;

class FlightlistController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('flightlist.flightlist');
    }

    public function create()
    {



    }

    public function store(SearchRequest $request)
    {
        // khởi tạo 1 flightdetails

        $data = new Flightlist();
        $flights = $data->getFlightlist($request);

        return view('flightlist.flightlist', compact('flights'));

    }


}
