<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\homeServiceMessage;
use App\Http\Controllers\Controller;

class HmessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $homemessage=homeServiceMessage::all();
        $trashomemessage=homeServiceMessage::onlyTrashed()->latest()->get();
        return view('admin.hmessage.index',compact('homemessage','trashomemessage'));
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
        homeServiceMessage::find($id)->delete();
        return redirect()->route('home-message.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }
    public function restore($id)
    {
        $restores=homeServiceMessage::withTrashed()->find($id)->restore();
        return redirect()->route('home-message.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }

    public function permenentlydel($id)
    {
        homeServiceMessage::onlyTrashed()->find($id)->forceDelete();
        return redirect()->route('home-message.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }
}
