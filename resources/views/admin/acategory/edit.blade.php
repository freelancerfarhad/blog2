@extends('layouts.backend.app')
@section('title','category')
    
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
                           CATAGORY EDIT
                            <small>Category Edit label</small>
                        </h2>
                    
                    </div>
                    <div class="body">
                        <form action="{{route('category.update',$category->id)}}" method="post"enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input type="text" id="name" class="form-control"name="service_name"value="{{$category->service_name}}">
                                    <label class="form-label"for="name">Category Name</label>
                                </div>
                            </div>

                            <div class="form-group form-float">
                                <div class="form-line">
                                    <select name="status" class="form-control">
                                        <option value="0">Select Active/Inactive</option>
                                        <option value="1"@if($category->status==1) selected @endif>Active</option>
                                        <option value="0"@if($category->status==0) selected @endif>Inactive</option>
                                    </select>
                                 
                                </div>
                            </div>

                            <br>
                            <a href="{{route('category.index')}}" class="btn btn-danger m-t-15 waves-effect">BACK</a>
                            <button type="submit" class="btn btn-primary m-t-15 waves-effect">Update Category</button>
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