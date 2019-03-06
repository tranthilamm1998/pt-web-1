@extends('master')
@section('title', @isset($register)?'Edit Account':'Create Account')
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
        <div class="row">
            <div class="col-md-6 col-md-push-3">
                <h2>Join as a Wordskills Travel Member</h2>
                <div class="panel panel-default">
                    <div class="panel-body">
                        <form role="form" action="/register/{{\Illuminate\Support\Facades\Auth::check()?'/'.\Illuminate\Support\Facades\Auth::user()->id :''}}" method="POST">
                            {{csrf_field()}}
                            @if(Auth::check())
                                {{ method_field('PATCH') }}

                            @endif
                            <legend> {{Auth::check()?'Edit':'Create'}}</legend>
                            <div class="form-group">
                                <label class="control-label">Email Address:</label>
                                <input type="email" name="email" class="form-control"  placeholder="Enter your email address" >
                            </div>
                            <div class="form-group">
                                <label class="control-label">Password:</label>
                                <input type="password" name="password" class="form-control" placeholder="Enter your password">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Name:</label>
                                <input type="text" name="name" class="form-control" placeholder="Enter your name">
                            </div>
                            <div class="form-group">
                                <label class="control-label">Phone Number:</label>
                                <input type="tel" name="phone" class="form-control" placeholder="Enter your phone number">
                            </div>
                            <div class="text-right">
                                <button type="submit" class="btn btn-primary">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection