<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegisterRequest;
use App\Register;
use App\User;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('register.register');
    }


    public function store(RegisterRequest $request)
    {
        //

        //dd($request->all()->name);
        //
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password =  bcrypt($request->password);
        $user->phone = $request->phone;

        $user->save();
        return redirect('login');
    }


    public function edit(Register $register)
    {
        //
        return view('register.register', compact('register'));
    }


}
