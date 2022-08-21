<?php

namespace App\Http\Controllers\Admin;

use App\Models\multiples;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Carbon\Carbon;
class MultipleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $multiples=multiples::all();
        return view('admin.multiple.index',compact('multiples'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.multiple.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $image =  $request->file('image');
        foreach($image as $multiple_img){
            $name_gen = hexdec(uniqid()).'.'.$multiple_img->getClientOriginalExtension();
            $location=public_path('backend/img/gallery/'.$name_gen);
            Image::make($multiple_img)->resize(495,350)->save('public/assets/backend/images/gallery/'.$name_gen);
            $last_img = 'public/assets/backend/images/gallery/'.$name_gen;
            multiples::insert([
                'image' => $last_img,
                'created_at' => Carbon::now()
            ]);
        } // end foreach all
   
        return redirect()->route('multiple.index')->with('success','thank-you..! Multiple Image Inserted Successfully.');
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // $image=multiples::find($id);
        // $old_image=$image->brand_image;
        // unlink($old_image);
        multiples::find($id)->delete();
        return redirect()->route('multiple.index')->with('success','thank-you..! Brand Updated Successfully.');
    }
}
