

@extends('master')
@section('title', @isset($city)?'Edit City':'Create City')
@section('content')

	<form action="/cities{{isset($city)?'/'.$city->id:''}}" method="POST" role="form">
		{{csrf_field()}}
		@if(isset($city))
			{{ method_field('PATCH') }}	

		@endif

		<legend> {{isset($city)?'Edit':'Create'}}</legend>
	
		<div class="form-group">
			<label for="name">Name</label>
			<input type="text" class="form-control" name="name" id="name" value="{{isset($city)? $city->name:''}}" placeholder="Input field">
		</div>
		<div class="form-group">
			<label for="code">Code</label>
			<input type="text" class="form-control" name="code" id="code" value="{{isset($city)? $city->code:''}}" placeholder="Input field">
		</div>
		<div class="form-group">
			<label for="Country">Country</label>
			<select class="form-control" name="country" id="country">
				@foreach($countries as $country)
					<option value="{{$country->id}}" @if($country->id === $city->country->id) selected @endif>{{$country->name}}</option>
					@endforeach
			</select>
		</div>


		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
@endsection