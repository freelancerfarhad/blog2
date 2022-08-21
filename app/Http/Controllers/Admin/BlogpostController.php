<?php

namespace App\Http\Controllers\Admin;

use App\Models\blogPost;
use Illuminate\Support\Str;
use App\Models\blogCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;

class BlogpostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogpost=blogPost::all();
        return view('admin.post.index',compact('blogpost'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category=blogCategory::all();
        return view('admin.post.create',compact('category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $bpost=new blogPost();
        $bpost->blog_title  = $request->blog_title;
        $bpost->slgu   =Str::slug($request->blog_title);
        $bpost->description =$request->description;
        $bpost->category_id =$request->category_id;
        $bpost->status =$request->status;

    
        if($request->image){
            $image=$request->file('image');
            $name_gen = hexdec(uniqid()).'.'.$image->getClientOriginalExtension();
            $location=public_path('public/assets/backend/images/bpost/'.$name_gen);
            Image::make($image)->resize(495,350)->save('public/assets/backend/images/bpost/'.$name_gen);
            $last_img = 'public/assets/backend/images/bpost/'.$name_gen;
            blogPost::insert([
                'blog_title'=>$request->blog_title,
                'slgu'=>Str::slug($request->blog_title),
                'description'=>$request->description,
                'category_id'=>$request->category_id,
                'status'=>$request->status,
                'image' => $last_img,
                'created_at' => Carbon::now()
            ]);
        }
      

      
        return redirect()->route('blogpost.index');

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
        $pcat=blogCategory::all();
        $posts=blogPost::find($id);
        return view('admin.post.edit',compact('pcat','posts'));
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
            Image::make($brand_image)->resize(400,175)->save('public/assets/backend/image/bpost/'.$name_gen);
    
            $last_img = 'public/assets/backend/image/bpost/'.$name_gen;
            unlink($old_image);
            blogPost::find($id)->update([
                'blog_title'=>$request->blog_title,
                'slgu'=>Str::slug($request->blog_title),
                'description'=>$request->description,
                'category_id'=>$request->category_id,
                'status'=>$request->status,
                'image' => $last_img,
                'created_at' => Carbon::now()
            ]);
             
            // $notification = array(
            //     'message' => 'Brand Inserted Successfully',
            //     'alert-type' => 'success'
            // );

           
    
            // return Redirect()->back()->with($notification);
            return redirect()->route('blogpost.index')->with('success','thank-you..! Brand Updated Successfully.');
            
        }else{
            blogPost::find($id)->update([
                'blog_title'=>$request->blog_title,
                'slgu'=>Str::slug($request->blog_title),
                'description'=>$request->description,
                'category_id'=>$request->category_id,
                'status'=>$request->status,
                'created_at' => Carbon::now()
            ]);
             
         
            return redirect()->route('blogpost.index')->with('success','thank-you..! Brand Updated Successfully.');
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
        $posts=blogPost::find($id);
        if(File::exists(public_path('public/assets/backend/image/bpost/'.$posts->image))){
            File::delete(public_path('public/assets/backend/image/bpost/'.$posts->image));
            
         }
         $posts->delete();
         return redirect()->route('blogpost.index');
    }
}
