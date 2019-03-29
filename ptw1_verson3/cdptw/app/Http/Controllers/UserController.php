<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserRequest;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{

    public function store(UserRequest $request)
    {
        //
        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        $user->phone = $request->phone;
        $user->save();
        return redirect('login');
    }


    public function edit(User $user)
    {
        if (Auth::check())
        {
            $user = Auth::user();
            return view('user.user',compact('user'));
        }
        return redirect('login');

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UserRequest $request, User $user)
    {
        //
        if (isset($request->password))
        {
            $user->password = bcrypt($request->password);
        }

        $user->name = $request->name;
        $user->phone = $request->phone;

        $user->save();
        return redirect('search');
    }


}
