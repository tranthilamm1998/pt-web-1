@extends('master')

@section('title', 'Countries')
@section('content')
	@if(session('message'))
		{{session('message')}}
	@endif
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Code</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>

			@foreach($countries as $country)
			<tr>
				<td>{{$country->id}}</td>
				<td>{{$country->name}}</td>
				<td>{{$country->code}}</td>
				<td>
					<form action="countries/{{$country->id}}" method="POST" role="form">
						{{csrf_field()}}
						
						{{ method_field('DELETE') }}	

						<button type="submit" class="btn btn-primary">X</button>
					</form>
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	
@endsection
