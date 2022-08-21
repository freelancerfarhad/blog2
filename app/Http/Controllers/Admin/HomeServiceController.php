<?php

namespace App\Http\Controllers\Admin;

use App\Models\HomeService;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $homeservices=HomeService::all();
        return view('admin.homeservice.index',compact('homeservices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.homeservice.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $hservices= new HomeService();
        $hservices->name=$request->name ;
        $hservices->slug=Str::slug($request->name);
        $hservices->status=$request->status ;
        $hservices->save();
        return redirect()->route('homeservice.index');
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
        $homeservice=HomeService::find($id);
        return view('admin.homeservice.edit',compact('homeservice'));
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
        $aservices=HomeService::find($id);
        $aservices->name=$request->name ;
        $aservices->slug=Str::slug($request->name);
        $aservices->status=$request->status ;
        $aservices->save();
        return redirect()->route('homeservice.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $aservices=HomeService::find($id);
        $aservices->delete();
        return redirect()->route('homeservice.index');
    }
}
