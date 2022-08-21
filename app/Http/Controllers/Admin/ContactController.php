<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Models\contactMessage;
use App\Http\Controllers\Controller;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $contactmessage=contactMessage::all();
        $trashcontactmsg=contactMessage::onlyTrashed()->latest()->get();
        return view('admin.contact.index',compact('contactmessage','trashcontactmsg'));
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
        contactMessage::find($id)->delete();
        return redirect()->route('contact.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }
    public function restore($id)
    {
        $restores=contactMessage::withTrashed()->find($id)->restore();
        return redirect()->route('contact.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }

    public function permenentlydel($id)
    {
        contactMessage::onlyTrashed()->find($id)->forceDelete();
        return redirect()->route('contact.index')->with('success','Thank-you !.. Category Trashed Successfully.');
    }
}
