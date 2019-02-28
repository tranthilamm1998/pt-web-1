<?php

namespace App\Http\Controllers;


use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexx()
    {
//        $aaa = date('Y-m-d H:i:s', strtotime('+1 minutes', strtotime(date('Y-m-d H:i:s'))));
//        if (date('Y-m-d H:i:s') > ($aaa)) {
//            return "sai";
//        } else {
//            return "dung";
//        }
        return view('aaa.frameframe');
    }

    public function action(Request $request)
    {
        $user = null;
        $user = User::where('email', $request->email)->first();
//        dd($user);
        if (null != $user) {
            if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {

                if (null == $user->expired || date('Y-m-d H:i:s') > $user->expired) {

                    User::where('email', $request->email)->update([
                        'expired' => null,
                    ]);
                    return redirect('search')->with('name', [$user->name]);
                } else {

                    return view('aaa.frameframe')->with('expired', $user->expired);
                }
            } else {

                if (null == $user->expired) {
                    $user->attempt += 1;
                    User::where('email', $request->email)->update([

                        'attempt' => $user->attempt,
                    ]);
                }

                if ($user->attempt >= 3) {
                    User::where('email', $request->email)->update([
                        'expired' => date('Y-m-d H:i:s', strtotime('+1 minutes', strtotime(date('Y-m-d H:i:s')))),
                        'attempt' => 0,
                    ]);

                }
                return view('aaa.frameframe')->with('expired', $user->expired);
            }
        }
    }
}
