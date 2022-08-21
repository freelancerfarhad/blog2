<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\ambulanceMessage;
use App\Http\Controllers\Controller;

class AmessageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $messages=ambulanceMessage::all();
        $trashcategory=ambulanceMessage::onlyTrashed()->latest()->get();
        return view('admin.amessage.index',compact('messages','trashcategory'));
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
        ambulanceMessage::find($id)->delete();
        return redirect()->route('message.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }
    public function restore($id)
    {
        $restores=ambulanceMessage::withTrashed()->find($id)->restore();
        return redirect()->route('message.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }

    public function permenentlydel($id)
    {
        ambulanceMessage::onlyTrashed()->find($id)->forceDelete();
        return redirect()->route('message.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }
}
