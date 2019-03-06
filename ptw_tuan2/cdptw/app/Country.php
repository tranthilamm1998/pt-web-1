<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    //
    protected $table = 'countries';
    // du lieu dien vao
    protected $fillable = ['id','name','code'];

    public function cities()
    {
        return $this->hasMany('App\City');
    }

    public function addCountry($data){
        Country::insert([
            'name' => $data->name,
            'code' => $data->code,
        ]);
    }
    public function editCountry($data){
        Country::update([
            'name' => $data->name,
            'code' => $data->code,
        ]);
    }
    public function deleteCountry($data){
        if (count($data->cities) > 0) {

            return redirect('countries')->with('message','Mã này đang được sử dụng ở bảng khác');
        }
        $data->delete();
    }
}
