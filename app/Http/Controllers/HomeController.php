<?php

namespace App\Http\Controllers;

use App\Models\Logo;
use App\Models\Post;
use App\Models\Apost;
use App\Models\blogPost;
use App\Models\Category;
use App\Models\multiples;
use App\Models\HomeService;
use Illuminate\Http\Request;
use App\Models\contactMessage;
use App\Models\ambulanceMessage;
use App\Models\ambulenceService;
use App\Models\homeServiceMessage;
use Brian2694\Toastr\Facades\Toastr;

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
        $aservice=ambulenceService::where('status',1)->get();
        $hservice=HomeService::where('status',1)->get();
        $posts=blogPost::where('status',1)->get();
        
        return view('welcome',compact('aservice','hservice','posts'));
    }
    public function ambulancesv(Request $request)
    {
        $validated = $request->validate([
            'ambulence_id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'datetime' => 'required',
            'from' => 'required',
            'to' => 'required',
            'reff' => '',
        ]);
     
        $acmessage = new ambulanceMessage();
        $acmessage->ambulence_id=$request->ambulence_id;
        $acmessage->name=$request->name;
        $acmessage->email=$request->email;
        $acmessage->phone=$request->phone;
        $acmessage->datetime=$request->datetime;
        $acmessage->from=$request->from;
        $acmessage->to=$request->to;
        $acmessage->reff=$request->reff;
        $acmessage->save();

        Toastr::success('Message Send Successfully :)' ,'Success');
        return redirect()->back();
    }
    public function homesv(Request $request)
    {
        $validated = $request->validate([
            'home_id' => 'required',
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'date' => 'required',
            'address' => 'required',
            'message' => 'required|min:4',
        ]);
        $hsmessage = new homeServiceMessage();
        $hsmessage->home_id=$request->home_id;
        $hsmessage->name=$request->name;
        $hsmessage->email=$request->email;
        $hsmessage->phone=$request->phone;
        $hsmessage->date=$request->date;
        $hsmessage->address=$request->address;
        $hsmessage->message=$request->message;
        $hsmessage->save();
        Toastr::success('Message Send Successfully :)' ,'Success');
        return redirect()->back();
    }
    public function homeabouts()
    {
        return view('about');
    }
    public function homeservice()
    {
        $hservice=HomeService::where('status',1)->get();
        return view('homeservice',compact('hservice'));
    }
    public function homegallery()
    {
        $gallery=multiples::all();
        return view('homegallery',compact('gallery'));
    }
    public function contactusform()
    {
        return view('contactus');
    }
    public function contactusformsend(Request $request)
    {
         $validated = $request->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'messate' => 'required|min:4'
        ]);

        $contact = new contactMessage();
        $contact->name=$request->name;
        $contact->email=$request->email;
        $contact->phone=$request->phone;
        $contact->messate=$request->messate;
        $contact->save();

         Toastr::success('Message Send Successfully :)' ,'Success');
        return redirect()->back();
    }
    public function ambpost($slug)
    {
        $aposts=Apost::where('status',1)->latest()->get();
        return view('ambulancepost',compact('aposts'));
    }
    public function blogpostall()
    {
        $allblogs=blogPost::where('status',1)->get();
        $bcategory=blogPost::where('status',1)->get();
        $recents=blogPost::where('status',1)->latest()->get();
        return view('blogpostall',compact('allblogs','bcategory','recents'));
    }
    public function singlepostindex($slgu)
    {
        $allblogs=blogPost::where('slgu',$slgu)->first();
        $bcategory=blogPost::where('status',1)->get();
        $recents=blogPost::where('status',1)->latest()->get();
        return view('blogpostsingle',compact('allblogs','bcategory','recents'));
    }

}
