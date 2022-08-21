<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\ambulenceService;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
class AmCategory extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $acategory=ambulenceService::all();
        return view('admin.acategory.index',compact('acategory'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.acategory.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $aservices= new ambulenceService();
        $aservices->service_name=$request->service_name ;
        $aservices->slug=Str::slug($request->service_name);
        $aservices->status=$request->status ;
        $aservices->save();
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
        $category=ambulenceService::find($id);
        return view('admin.acategory.edit',compact('category'));
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
        $aservices=ambulenceService::find($id);
        $aservices->service_name=$request->service_name ;
        $aservices->slug=Str::slug($request->service_name);
        $aservices->status=$request->status ;
        $aservices->save();
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
        $aservices=ambulenceService::find($id);
        $aservices->delete();
        return redirect()->route('category.index');
    }
}
