<?php

namespace App\Http\Controllers\Admin;

use App\Models\Apost;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Str;
use Illuminate\Support\Carbon;
class ApostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $aposts=Apost::all();
        return view('admin.apost.index',compact('aposts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.apost.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $bpost=new Apost();
        $bpost->short  = $request->short;
        $bpost->slug   =Str::slug($request->short);
        $bpost->atitle  = $request->atitle;
        $bpost->description =$request->description;
        $bpost->status =$request->status;

    
        if($request->image){
            $image=$request->file('image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            $location=public_path('public/assets/backend/images/apost/'.$name_gen);
            Image::make($image)->resize(1200,400)->save('public/assets/backend/images/apost/'.$name_gen);
            $last_img = 'public/assets/backend/images/apost/'.$name_gen;
            Apost::insert([
                'short'=>$request->short,
                'slug'=>Str::slug($request->short),
                'atitle'=>$request->atitle,
                'description'=>$request->description,
                'status'=>$request->status,
                'image' => $last_img,
                'created_at' => Carbon::now()
            ]);
        }
      

      
        return redirect()->route('apost.index');
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
        $posts=Apost::find($id);
        return view('admin.apost.edit',compact('posts'));
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
    
       
        
        $old_image=$request->old_image;
        $brand_image =  $request->file('brand_image');
        if($brand_image){
            $name_gen = hexdec(uniqid()).'.'.$brand_image->getClientOriginalExtension();
            Image::make($brand_image)->resize(400,175)->save('public/assets/backend/images/apost/'.$name_gen);
    
            $last_img = 'public/assets/backend/images/apost/'.$name_gen;
            unlink($old_image);
            Apost::find($id)->update([
                'short'=>$request->short,
                'slug'=>Str::slug($request->short),
                'atitle'=>$request->atitle,
                'description'=>$request->description,
                'status'=>$request->status,
                'image' => $last_img,
                'created_at' => Carbon::now()
            ]);
        
            return redirect()->route('apost.index')->with('success','thank-you..! Brand Updated Successfully.');
            
        }else{
            Apost::find($id)->update([
                'short'=>$request->short,
                'slug'=>Str::slug($request->short),
                'atitle'=>$request->atitle,
                'description'=>$request->description,
                'status'=>$request->status,
                'created_at' => Carbon::now()
            ]);
             
         
            return redirect()->route('apost.index')->with('success','thank-you..! Brand Updated Successfully.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $posts=Apost::find($id);
        if(File::exists(public_path('public/assets/backend/images/apost/'.$posts->image))){
            File::delete(public_path('public/assets/backend/images/apost/'.$posts->image));
            
         }
         $posts->delete();
         return redirect()->route('apost.index');
    }
}
