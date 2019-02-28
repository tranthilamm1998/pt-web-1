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
}
