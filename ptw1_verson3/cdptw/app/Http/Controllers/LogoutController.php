<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LogoutController extends Controller
{
    //
    public function index()
    {

        User::where('email', Auth::user()->email)->update([
            'last_access' => date('Y-m-d H:i:s'),

        ]);
        Auth::logout();

        return redirect('search');
    }
}
