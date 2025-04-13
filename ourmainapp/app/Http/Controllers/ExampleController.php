<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ExampleController extends Controller
{
    public function homepage() {
       //return '<h1>Home Page.!!</h1><a href="/about">Go to About Page</a>';

       //Imagine we loaded data from db
       $yourName = 'Bhavna';
       $animals = ['Cat', 'Loin', 'Monkey', 'Dog'];

       return view('homepage', ['allAnimals' =>$animals, 'name' => $yourName, 'catname' => 'Meowsalot']);
    //    return view('homepage', ['name' => $yourName]);
    }

    public function aboutpage() {
        // return '<h1>About Page.!!!</h1><a href="/">Back to Home</a>';
        return view('single-post');
    }
}
