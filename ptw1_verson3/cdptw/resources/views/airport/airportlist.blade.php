@extends('master')
@section('title', 'Flight - Worldskills Travel')
@section('content')
    <div class="container">
        <li><a href="/search">Flights</a></li>
        <section>
            <h2>Danh sách thành phố có sân bay</h2>
            @foreach($cities as $city)
                @if(count($city->airports) > 0)
                    <article>
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4><strong><a href="#">Thành phố: {{$city->name}} có các sân bay sau:</a></strong></h4>
                                        <div class="row">
                                            @foreach($city->airports as $airport)
                                                <div class="col-sm-3">
                                                    <p class="control-label">Name: {{$airport->name}}</p>
                                                    <p class="control-label">Code: {{$airport->code}}</p>
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
            {{--<div class="text-center">--}}
            {{--<ul class="pagination">--}}
            {{--<li><a href="#">&laquo;</a></li>--}}
            {{--<li><a href="#">&lsaquo;</a></li>--}}
            {{--<li class="active"><a href="#">1</a></li>--}}
            {{--<li><a href="#">2</a></li>--}}
            {{--<li><a href="#">3</a></li>--}}
            {{--<li><a href="#">4</a></li>--}}
            {{--<li><a href="#">&rsaquo;</a></li>--}}
            {{--<li><a href="#">&raquo;</a></li>--}}
            {{--</ul>--}}
            {{--</div>--}}
        </section>
    </div>
@endsection