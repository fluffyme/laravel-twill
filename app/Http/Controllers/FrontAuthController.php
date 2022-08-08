<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class FrontAuthController extends Controller
{

    public function loginView()
    {

        return view('auth.login');
    }


    public function login(Request $request)
    {

        $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            return redirect()->intended('dashboard')
                ->withSuccess('Signed in');
        }

        return redirect()->back()->withSuccess('Login details are not valid');
    }

    public function registrationViewUser()
    {
        return view('auth.registrationUser');
    }

    public function registrationViewCompany()
    {
        return view('auth.registrationCompany');
    }

    public function registrationUser(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'phone' => 'required',
            'password' => 'required|min:6',
        ]);

        $data = $request->all();
        $check = $this->createUser($data);

        return redirect("dashboard")->withSuccess('You have signed-in');
    }

    public function registrationCompany(Request $request)
    {
        $request->validate([
            'trademark' => 'required',
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'phone' => 'required',
            'legal_name' => 'required',
            'password' => 'required|min:6',
        ]);

        $data = $request->all();
        $check = $this->createCompany($data);

        return redirect("dashboard")->withSuccess('You have signed-in');
    }

    public function createUser(array $data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'is_company' => 0,
            'password' => Hash::make($data['password'])
        ]);
    }

    public function createCompany(array $data)
    {
        return User::create([
            'trademark' => $data['trademark'],
            'name' => $data['name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'legal_name' => $data['legal_name'],
            'is_company' => 1,
            'password' => Hash::make($data['password'])
        ]);
    }

    public function dashboard()
    {
        $user = Auth::user();

        if(Auth::check()){
            return view('front.dashboard', compact('user'));
        }

        return redirect()->route('login.view')->withSuccess('You are not allowed to access');
    }

    public function signOut() {
        Session::flush();
        Auth::logout();

        return Redirect()->route('home');
    }

    public function editUser(User $user)
    {
        return view('auth.editUser', compact('user'));
    }

    public function editUserForm(User $user, Request $request)
    {
        $data = $request->all();
        $user->update([
            'name' => $data['name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'password' => Hash::make($data['password'])
        ]);

        if ($data['trademark']) {
            $user->trademark = $data['trademark'];
        }
        if ($data['legal_name']) {
            $user->legal_name = $data['legal_name'];
        }
        $user->save();

        return response()->json(['success' => true, 'message' => 'Modificat']);
    }
}
