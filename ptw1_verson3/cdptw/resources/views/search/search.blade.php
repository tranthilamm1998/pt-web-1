
@extends('master')
@section('title', 'Search')
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
    <div class="wrapper">
        <header>
            <nav class="navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a href="/search" class="navbar-brand">Worldskills Travel</a>

                    </div>
                    <div class="collapse navbar-collapse" id="main-navbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Welcome message</a></li>
                            <li><a href="/search">Flights</a></li>
                            <li><a href="/airline">Airline</a>
                                </li>
                            <li>
                                <a href="/airport">Airport</a>
                            </li>
                            <li>
                                <a href="/distance">Create fly</a>
                            </li>
                            @if(\Illuminate\Support\Facades\Auth::check())

                                <li><a href="/users/{{\Illuminate\Support\Facades\Auth::user()->id}}/edit"><b>{{ \Illuminate\Support\Facades\Auth::user()->name }}</b></a></li>
                                <li><a href="/logout">Logout</a></li>
                            @else

                                <li><a href="/login">Log In</a></li>
                                <li><a href="/register">Register</a></li>
                            @endif
                            {{--@if (\Illuminate\Support\Facades\Auth::check())--}}
                                {{--<div class="alert alert-success">--}}
                                    {{--{{ \Illuminate\Support\Facades\Auth::user()->name }}--}}
                                {{--</div>--}}
                            {{--@endif--}}

                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main>
            <div class="container">
                <section>
                    <h3>Flight Booking</h3>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form role="form" method="POST" action="flightlist">
                                {{csrf_field()}}
                                <div class="row">
                                    <div class="col-sm-4">
                                        <h4 class="form-heading">1. Flight Destination</h4>
                                        <div class="form-group">
                                            <label class="control-label">From: </label>
                                            <select class="form-control" name="from" id="from">
                                                @foreach($cities as $city )
                                                    <option value="{{$city->id}}">{{$city->name}}</option>

                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">To: </label>
                                            <select class="form-control" name="to" id="to">
                                                @foreach($cities as $city )
                                                    <option value="{{$city->id}}">{{$city->name}}</option>

                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <h4 class="form-heading">2. Date of Flight</h4>
                                        <div class="form-group">
                                            <label class="control-label">Departure: </label>
                                            <input type="date" name="departure" class="form-control" placeholder="Choose Departure Date">
                                        </div>
                                        <div class="form-group">
                                            <div class="radio">
                                                <label><input type="radio" name="flight_type" checked value="one-way">One Way</label>
                                                <label><input type="radio" name="flight_type" value="return">Return</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Return: </label>
                                            <input type="date" name="return" class="form-control" placeholder="Choose Return Date">
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <h4 class="form-heading">3. Search Flights</h4>
                                        <div class="form-group">
                                            <label class="control-label">Total Person: </label>
                                            <select class="form-control">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7">7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label">Flight Class: </label>
                                            <select class="form-control">
                                                @foreach($seatypies as $seattype )
                                                    <option value="{{$seattype->id}}">{{$seattype->name}}</option>

                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-block">Search Flights</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
        </main>
        <footer>
            <div class="container">
                <p class="text-center">
                    Copyright &copy; 2017 | All Right Reserved
                </p>
            </div>
        </footer>
    </div>
    <!--scripts-->
    <script type="text/javascript" src="assets/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
@endsection