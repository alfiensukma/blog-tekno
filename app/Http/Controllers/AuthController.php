<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->only('username', 'password');

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            return redirect()->intended('/dashboard');
        }

        return redirect()->back()->with('failed', 'Incorrect Username/Password.');
    }

    public function logout()
    {
        Auth::logout();
        return redirect('/');
    }
}
