@extends('master')
@section('title', 'detail')
@section('content')
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Code</th>
        </tr>
        </thead>
        <tbody>


        <tr>
            <td>{{$country->id}}</td>
            <td>{{$country->name}}</td>
            <td>{{$country->code}}</td>
        </tr>

        </tbody>
    </table>

    <h1>Cities</h1>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Code</th>
        </tr>
        </thead>
        <tbody>
        @foreach($country->cities as $city)
            <tr>
                <td>{{$city->id}}</td>
                <td>{{$city->name}}</td>
                <td>{{$city->code}}</td>
            </tr>
        @endforeach
        </tbody>
    </table>

@endsection