<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seatype extends Model
{
    //
    protected $table = 'seattype';
    // du lieu dien vao
    protected $fillable = ['id','name','price'];


}
