@extends('layouts.backend.app')
@section('title','Category')
    
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
                           CATEGORY ADDED
                            <small>Category Added label</small>
                        </h2>
                    
                    </div>
                    <div class="body">
                        <form action="{{route('category.store')}}" method="post"enctype="multipart/form-data">
                            @csrf
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input type="text" id="name" class="form-control"name="service_name">
                                    <label class="form-label"for="name">Category Name</label>
                                </div>
                            </div>
                            <div class="form-group">
                          
                                    <select name="status" class="form-control">
                                        <option value="0">Select Active/Inactive</option>
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
                                    </select>
                                    <label for="name"> Status</label>
                            </div>
                        

                            <br>
                            <a href="{{route('category.index')}}" class="btn btn-danger m-t-15 waves-effect">BACK</a>
                            <button type="submit" class="btn btn-primary m-t-15 waves-effect">Category Add</button>
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