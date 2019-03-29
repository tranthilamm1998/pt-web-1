<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Distance extends Model
{
    //
    public function city1()
    {
        return $this->belongsTo('App\City', 'from_id');
    }

    public function city2()
    {
        return $this->belongsTo('App\City', 'to_id');
    }

    public function getCityJ($data)
    {
//        return Distance::where('from_id',$data->from_id)->orWhere('to_id',$data->from_id)->get();
        return $this->join('cities', 'distances.to_id', '=', 'cities.id')->where('from_id', $data->from_id)->orWhere('to_id', $data->from_id)->get();
    }

    public function createFly($data)
    {
        $distance = Distance::where('from_id', $data->cityfrom)->first();

        $timeaddmonth = date('Y-m-d H:i:s', strtotime(' +90 days'));


        if ($distance->total_distance >= 0 && $distance->total_distance <= 100) {
            $price = 500000;

        }
        if ($distance->total_distance > 101 && $distance->total_distance <= 200) {
            $price = 1000000;
        }
        if ($distance->total_distance > 201 && $distance->total_distance <= 500) {
            $price = 2000000;
        }
        if ($distance->total_distance > 501 && $distance->total_distance <= 1000) {
            $price = 3000000;
        }
        if ($distance->total_distance > 1001 && $distance->total_distance <= 2001) {
            $price = 6000000;
        }
        if ($distance->total_distance > 2001 && $distance->total_distance <= 5001) {
            $price = 20000000;
        }
        if ($distance->total_distance > 5001) {
            $price = 30000000;
        }
        // kiểm tra tạo chuyến bay dưới 3 tháng thì tăng tiền
        if ($data->caltime < $timeaddmonth) {
            $price += $price * 0.05;
        }
//       dd($data->name);
        Flightdetail::insert([
            'airline_id' => $data->airline,
            'code' => $data->code,
            'from_id' => $data->cityfrom,
            'to_id' => $data->cityto,
            'time_s' => $data->caltime,
            'time_e' => date('Y-m-d H:i:s', strtotime('+' . $distance->total_time . ' minutes', strtotime($data->caltime))),
            'price' => $price,
        ]);

    }
}