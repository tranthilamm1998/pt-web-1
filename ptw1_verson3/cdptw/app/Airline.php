<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Airline extends Model
{
    //
    protected $table = 'airline';
    public function countries()
    {
        return $this->belongsTo('App\Country');

    }
    public function getAllCountry()
    {
        return Country::all();

    }
    public function getAllAirline()
    {
        return Airline::all();

    }
}
