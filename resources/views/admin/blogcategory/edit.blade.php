@extends('layouts.backend.app')
@section('title','tag')
    
@push('css')
    
@endpush
@section('content')
    

    <div class="container-fluid">
      

        <!-- Vertical Layout | With Floating Label -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                           TAGS EDIT
                            <small>Tag Edit label</small>
                        </h2>
                    
                    </div>
                    <div class="body">
                        <form action="{{route('blogcat.update',$bcategory->id)}}" method="post">
                            @csrf
                            @method('PUT')
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input type="text" id="name" class="form-control"name="category_name"value="{{$bcategory->category_name}}">
                                    <label class="form-label"for="name">Tag Name</label>
                                </div>
                            </div>

                            <div class="form-group form-float">
                                <div class="form-line">
                                    <select name="status" class="form-control">
                                        <option value="0">Select Active/Inactive</option>
                                        <option value="1"@if($bcategory->status==1) selected @endif>Active</option>
                                        <option value="0"@if($bcategory->status==0) selected @endif>Inactive</option>
                                    </select>
                                  </div>
                            </div>

                            <br>
                            <a href="{{route('blogcat.index')}}" class="btn btn-danger m-t-15 waves-effect">BACK</a>
                            <button type="submit" class="btn btn-primary m-t-15 waves-effect">Update Tag</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Vertical Layout | With Floating Label -->
   
    </div>



@endsection
@push('js')
    
@endpush