@extends('master')
@section('title', 'Flight - Worldskills Travel')
@section('content')
    <div class="container">
        <form action="/airport" method="POST" role="form">
            {{csrf_field()}}
            <legend>Search Airport of city</legend>
            <div class="form-group">
                <label for="city">City</label>
                <select class="form-control" name="city" id="country">
                    @foreach($cities as $city)
                        <option value="{{$city->id}}">{{$city->name}}</option>
                    @endforeach
                </select>
            </div>


            <button type="submit" class="btn btn-primary">Search</button>
        </form>
    </div>
@endsection