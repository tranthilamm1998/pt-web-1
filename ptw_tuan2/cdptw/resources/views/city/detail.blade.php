@extends('master')
@section('title','city')
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
            <td>{{$city->id}}</td>
            <td>{{$city->name}}</td>
            <td>{{$city->code}}</td>
        </tr>

        </tbody>
    </table>
    <h1>Country</h1>
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
            <td>{{$city->country->id}}</td>
            <td>{{$city->country->name}}</td>
            <td>{{$city->country->code}}</td>
        </tr>

        </tbody>
    </table>
@endsection