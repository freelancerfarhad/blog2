<?php

namespace App\Http\Controllers\Admin;

use App\Models\blogCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
class BlogCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bcategory=blogCategory::all();
        return view('admin.blogcategory.index',compact('bcategory'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.blogcategory.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $hservices= new blogCategory();
        $hservices->category_name=$request->category_name ;
        $hservices->slug=Str::slug($request->category_name);
        $hservices->status=$request->status ;
        $hservices->save();
        return redirect()->route('blogcat.index');
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
        $bcategory=blogCategory::find($id);
        return view('admin.blogcategory.edit',compact('bcategory'));
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
        $bcategory=blogCategory::find($id);
        $bcategory->category_name=$request->category_name ;
        $bcategory->slug=Str::slug($request->category_name);
        $bcategory->status=$request->status ;
        $bcategory->save();
        return redirect()->route('blogcat.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $aservices=blogCategory::find($id);
        $aservices->delete();
        return redirect()->route('blogcat.index');
    }
}
