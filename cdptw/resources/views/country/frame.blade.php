

@extends('master')
@section('title', @isset($country)?'Edit Country':'Create Country')
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
	<form action="/countries{{isset($country)?'/'.$country->id:''}}" method="POST" role="form">
		{{csrf_field()}}
		@if(isset($country))
			{{ method_field('PATCH') }}	

		@endif

		<legend> {{isset($country)?'Edit':'Create'}}</legend>
	
		<div class="form-group">
			<label for="name">Name</label>
			<input type="text" class="form-control" name="name" id="name" value="{{isset($country)? $country->name:''}}" placeholder="Input field">
		</div>
		<div class="form-group">
			<label for="code">Code</label>
			<input type="text" class="form-control" name="code" id="code" value="{{isset($country)? $country->code:''}}" placeholder="Input field">
		</div>

		
	
		<button type="submit" class="btn btn-primary">Submit</button>
	</form>
@endsection