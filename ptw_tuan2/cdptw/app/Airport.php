<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Airport extends Model
{
    //
    public function cities()
    {
        return $this->belongsTo('App\City');

    }
}
