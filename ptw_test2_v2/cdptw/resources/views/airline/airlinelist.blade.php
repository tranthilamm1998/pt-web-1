@extends('master')
@section('title', 'Hãng bay')
@section('content')
    <div class="container">

        <section>
            <li><a href="/search">Flights</a></li>
            <h2>Danh sách các hãng bay </h2>
            @foreach($countries as $country)
                @if(count($country->airline) > 0)
                    <article>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4><strong><a href="#">Quốc gia: {{$country->name}} có các hãng hàng không sau:</a></strong></h4>
                                        <div class="row">
                                            @foreach($country->airline as $airline)
                                                <div class="col-sm-3">
                                                    <p class="control-label">Name: {{$airline->name}}</p>
                                                    <p class="control-label">Code: {{$airline->code}}</p>
                                                    {{--<div><big class="time"></big></div>--}}
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                @endif
            @endforeach

        </section>
    </div>
@endsection