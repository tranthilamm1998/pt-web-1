@extends('master')
@section('title', 'Insert fly')
@section('content')
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <div class="container">

        <div class="frameinserch" >
            <form action="distance" method="POST" role="form">
                {{csrf_field()}}
                <legend><b>Create fly</b></legend>

                <div class="form-group">
                    <label class="control-label">Airline's Name: </label>
                    <select class="form-control" name="airline" id="airline">
                        @foreach($airlines as $airline )
                            <option value="{{$airline->id}}">{{$airline->name}}</option>

                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="code">Code</label>
                    <input type="text" class="form-control" name="code" id="code" value="{{isset($city)? $city->code:''}}"
                           placeholder="Input code">
                </div>
                {{--Country from--}}
                <div class="form-group">
                    <label class="control-label">Country from: </label>
                    <select class="form-control" name="countryfrom" id="countryfrom" onchange="getCountriesCity()">
                        @foreach($countries as $country )
                            <option value="{{$country->id}}">{{$country->name}}</option>

                        @endforeach
                    </select>
                    {{--City của quốc gia--}}
                    <div class="form-group" style="width: 90%; margin-left: 10%;">
                        <label class="control-label">From: </label>
                        <select class="form-control" name="cityfrom" id="cityfrom">
                            <option value="">--Chọn City--</option>
                        </select>
                    </div>
                </div>
                {{--Country to--}}
                <div class="form-group">

                    <label class="control-label">Country from: </label>
                    <select class="form-control" name="countryto" id="countryto" onchange="getCity()">
                        <option value="">--Chọn QG--</option>
                    </select>
                    {{--City của quốc gia--}}
                    <div class="form-group" style="width: 90%; margin-left: 10%;">
                        <label class="control-label">To: </label>
                        <select class="form-control" name="cityto" id="cityto">
                            {{--@foreach($cities as $city )--}}
                            {{--<option value="{{$city->id}}">{{$city->name}}</option>--}}

                            {{--@endforeach--}}
                        </select>
                    </div>

                </div>


                <div class="form-group">
                    <label class="control-label ">Time: </label>
                    <input type="datetime-local" class="form-control" name="caltime">
                </div>


                <button type="submit" class="btn btn-primary" style="border-radius: 25px; box-shadow: 0 10px 20px rgba(0,0,0,0.7);">Create</button>
            </form>
        </div>

    </div>


    <!--scripts-->
    <script type="text/javascript" src="assets/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="{{url('/js/jquery.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('js/inserts.js')}}"></script>
@endsection