<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    //
    protected $table = 'countries';
    // du lieu dien vao
    protected $fillable = ['id', 'name', 'code'];

    public function cities()
    {
        return $this->hasMany('App\City');
    }

    public function airline()
    {

        return $this->hasMany('App\Airline');

    }

    public function relaCountries()
    {
        return $this->hasMany('App\RelaCountry');
    }

    public function addCountry($data)
    {
        Country::insert([
            'name' => $data->name,
            'code' => $data->code,
        ]);
    }

    public function editCountry($data)
    {
        Country::update([
            'name' => $data->name,
            'code' => $data->code,
        ]);
    }

    public function deleteCountry($data)
    {
        if (count($data->cities) > 0) {

            return redirect('countries')->with('message', 'Mã này đang được sử dụng ở bảng khác');
        }
        $data->delete();
    }
    public function getAllCountry()
    {
        return Country::all();
    }
    public function getRelaCountry1($data)
    {
        return RelaCountry::join('countries as c1','c1.id','=', 'rela_countries.from_country_id')
            ->join('countries as c2','c2.id','=', 'rela_countries.to_country_id')
            ->select('c2.*')->where('c1.id','=', $data->id)->get();


    }
}
