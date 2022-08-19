<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\Category;
use Illuminate\Support\Str;
// use Illuminate\Support\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;
use File;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories=Category::latest()->get();
        return view('admin.category.index',compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => 'required|unique:categories',
            'image' => 'required|mimes:jpeg,png,jpg'
        ]);
        // get form image
        $image = $request->file('image');
        
        $slug = Str::slug($request->name);

    if (isset($image))
    {
//            make unique name for image

        $imagename =$slug.'-'.uniqid().'.'.$image->getClientOriginalExtension();
//            resize image for category and upload
       Image::make($image)->resize(1600,479)->save('public/storage/category/'.$imagename);
        // Storage::disk('public')->put('category/'.$imagename,$category);
//            resize image for category and upload
        Image::make($image)->resize(500,333)->save('public/storage/category/slider/'.$imagename);
        // Storage::disk('public')->put('category/slider/'.$imagename,$categorys);

       

    } else {
        $imagename = "default.png";
    }

      $category = new Category();
           $category->name = $request->name;
           $category->slug = $slug;
           $category->image = $imagename;
           $category->save();
           Toastr::success('Category Successfully Saved :)' ,'Success');
           return redirect()->route('category.index');
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
        $category=Category::find($id);
        return view('admin.category.edit',compact('category'));
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
       
        $this->validate($request,[
            'name' => 'required',
            'image' => 'mimes:jpeg,png,jpg'
        ]);
        // get form image
        $image = $request->file('image');
        
        $slug = Str::slug($request->name);
        $category=Category::find($id);
    if (isset($image))
    {
        $deletedData='public/storage/category/'.$category->image;
        if(File::exists($deletedData)){
           File::delete($deletedData);
        }
        $imagename =$slug.'-'.uniqid().'.'.$image->getClientOriginalExtension();
//            resize image for category and upload
        Image::make($image)->resize(1600,479)->save('public/storage/category/'.$imagename);
        // Storage::disk('public')->put('category/'.$imagename,$category);
        $deletedData='public/storage/category/slider/'.$category->image;
        if(File::exists($deletedData)){
           File::delete($deletedData);
        }
//            resize image for category and upload
         Image::make($image)->resize(500,333)->save('public/storage/category/slider/'.$imagename);
        // Storage::disk('public')->put('category/slider/'.$imagename,$categorys);

       

    } else {
        $imagename = "default.png";
    }


           $category->name = $request->name;
           $category->slug = $slug;
           $category->image = $imagename;
           $category->update();
           Toastr::success('Category Successfully Updated :)' ,'Success');
           return redirect()->route('category.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category= Category::find($id);
        $deletedData='public/storage/category/'.$category->image;
        if(File::exists($deletedData)){
           File::delete($deletedData);
        }
        $deletedData='public/storage/category/slider/'.$category->image;
        if(File::exists($deletedData)){
           File::delete($deletedData);
        }
        $category->delete();
        Toastr::success('Category Successfully Deleted :)' ,'Success');
           return redirect()->route('category.index');
 
    }
}
