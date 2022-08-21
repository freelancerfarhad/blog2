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
                           TAGS ADDED
                            <small>With floating label</small>
                        </h2>
                    
                    </div>
                    <div class="body">
                        <form action="{{route('blogcat.store')}}" method="post">
                            @csrf
                            <div class="form-group form-float">
                                <div class="form-line">
                                    <input type="text" id="name" class="form-control"name="category_name">
                                    <label class="form-label"for="name">Category</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-line">
                                 
                                    <select name="status" class="form-control">
                                        <option value="0">Active/In-Actice</option>
                                        <option value="1">Active</option>
                                        <option value="0">In-Active</option>
                                    </select>

                                    
                                </div>
                            </div>
                            

                            <br>
                            <a href="{{route('blogcat.index')}}" class="btn btn-danger m-t-15 waves-effect">BACK</a>
                            <button type="submit" class="btn btn-primary m-t-15 waves-effect">Add New</button>
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