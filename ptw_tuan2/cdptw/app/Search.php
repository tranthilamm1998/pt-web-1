<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Search extends Model
{
    //
    public function getAllCity()
    {
        return City::all();

    }
    public function getAllCountry()
    {
        return Country::all();

    }
    public function getAllSeattype()
    {
        return Seatype::all();

    }
}
