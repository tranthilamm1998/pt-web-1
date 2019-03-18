<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RelaCountry extends Model
{
    public function country()
    {
        return $this->belongsTo('App\Country');
    }
}
