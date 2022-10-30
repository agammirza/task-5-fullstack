<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Register',
            'active' =>'register'
        ]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([   
            'name' =>'required|max:255',
            'username' => ['required','min:5', 'max:255', 'unique:users'],
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:6|max:255'
        ]);

        // Cara1 Enkrip Password
        // $validateData['password'] = bcrypt($validateData['password']);

        // Cara2 Enkrip Password
        $validatedData['password'] = Hash::make($validatedData['password']);

        User::create($validatedData);

        $request->session()->flash('success','Registration successful! Please Login');

        return redirect('/login');
    }
}
