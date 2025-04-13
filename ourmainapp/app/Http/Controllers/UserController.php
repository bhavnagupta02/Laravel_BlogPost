<?php

namespace App\Http\Controllers;

//use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use App\User; //This is a User Model class file Added by BGU

class UserController extends Controller
{
    // Added by BGU
    public function register(Request $request) {
        $incomingFields = $request->validate([
            'username' => ['required', 'min:3', 'max:20', Rule::unique('users', 'username')],
            'email' => ['required', 'email', Rule::unique('users', 'email')],
            'password' => ['required', 'min:6', 'confirmed']
        ]);
        $incomingFields['password'] = bcrypt($incomingFields['password']); //Hashing the password inplace of plain text for our security
        $user = User::create($incomingFields);
        auth()->login($user);
        //return 'Hey... you are here';
        return redirect('/')->with('success', 'Thank-you for creating an account!!');
    }

    // Added by BGU
    public function login(Request $request) {
        $loginFields = $request->validate([
            // 'loginusername' => ['required', 'min:3', 'max:20'],
            'loginusername' => 'required',
            'loginpassword' => 'required'
        ]);

        if (auth()->attempt(['username' => $loginFields['loginusername'], 'password' => $loginFields['loginpassword']])) {
            $request->session()->regenerate();
            return redirect('/')->with('success', 'Congrats, You have successfully logged in!!');
        } else {
            return redirect('/')->with('failure', 'Sorry, you are not able to login!!');
        }
    }

    // Added by BGU
    public function showCorrectHomepage() {
        if (auth()->check()) {
            //return view('homepage-feed', ['username' =>auth()->user()->username]); // We can direct print view variable in view blade file
            return view('homepage-feed');
        } else {
            return view('homepage');
        }
    }

    // Added by BGU
    public function logout() {
        auth()->logout();
        return redirect('/')->with('success', 'You are now logged out!!!');
    }

    public function profile(User $udata) {
        if (auth()->check()) {
            //$postsData = $udata->getPostsData()->get(); // Call user model func to fetch all posts
            return view('profile-posts', ['uname' => $udata->username, 'postsData' => $udata->getPostsData()->latest()->get(), 'postCount' => $udata->getPostsData()->count()]);
        } else {
            return view('homepage');
        }
    }
}
