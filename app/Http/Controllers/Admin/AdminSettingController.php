<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;
use Image;
use File;
class AdminSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.setting');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $this->validate($request,[
            'name' => 'required',
            'image' => 'required|image',
            'about' => 'required'
        ]);

           // get form image
           $image = $request->file('image');
        
           $slug = Str::slug($request->name);
           $user=User::findOrFail(Auth::id());
               
       if (isset($image))
       {
        $deletedData='public/storage/profile/'.$user->image;
        if(File::exists($deletedData)){
           File::delete($deletedData);
        }
        $imagename =$slug.'-'.uniqid().'.'.$image->getClientOriginalExtension();
        Image::make($image)->resize(500,500)->save('public/storage/profile/'.$imagename);
       } else {
           $imagename = "default.png";
       }
       $user->name=$request->name;
       $user->about=$request->about;
       $user->image=$imagename;
       $user->update();
       Toastr::success('Profile Successfully Updated :)' ,'Success');
              return redirect()->back();
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
