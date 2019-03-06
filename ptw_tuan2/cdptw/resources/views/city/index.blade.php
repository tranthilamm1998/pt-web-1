@extends('master')

@section('title', 'Cities')
@section('content')
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Code</th>
				<th>Country</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>

			@foreach($cities as $city)
			<tr>
				<td>{{$city->id}}</td>
				<td>{{$city->name}}</td>
				<td>{{$city->code}}</td>
				<td>{{$city->country->name}}</td>
				<td>
					<form action="cities/{{$city->id}}" method="POST" role="form">
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
