<?php

namespace App\Http\Controllers;

use App\Models\Logo;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $categories=Category::all();
        $posts=Post::where('is_approved',1)->latest()->approved()->publisted()->take(6)->get();
        return view('welcome',compact('categories','posts'));
    }
    // public function sitelogo(Type $var = null)
    // {
    //     # code...
    // }
}
