<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    //
    protected $table = 'cities';
    // du lieu dien vao
    protected $fillable = ['id','name','code','country_id'];

    public function country()
    {
        return $this->belongsTo('App\Country');

    }

    public function airports()
    {
        return $this->hasMany('App\Airport');

    }
    public function flightdetail()
    {
        return $this->belongsTo('App\Flightdetail');
    }
    public function addCity($data){
        City::insert([
            'name' => $data->name,
            'code' => $data->code,
            'country_id' => $data->country_id,
        ]);
    }
    public function editCity($data){
        City::update([
            'name' => $data->name,
            'code' => $data->code,
            'country_id' => $data->country,
        ]);
    }
    public function deleteCity($data){
        if (count($data->flightdetailsa) > 0) {

            return false;
        }
        else
        {
            $data->delete();
            return true;
        }
    }
    public function getAllCity()
    {
        return City::all();

    }
}
