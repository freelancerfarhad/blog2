@extends('layouts.backend.app')

@section('title','Post')
@push('css')
<link href="{{asset('public/assets/backend/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css')}}" rel="stylesheet">

@endpush
@section('content')
    
<div class="container-fluid">
    <div class="block-header">
        <h2>
            <a href="{{route('blogpost.create')}}"class="btn btn-primary">
                <i class="material-icons">add</i>
                <span>Post Add</span>
            </a>
        </h2>
    </div>
    <!-- Exportable Table -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                       All Posts
                       {{-- <span class="badge bg-blue">{{$posts->count()}}</span> --}}
                    </h2>
                 
                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category</th>
                                    <th>Title</th>
                                    <th>Descritopn</th>
                                    <th>Image</th>
                                    <th>status</th>
                                    <th>Created_at</th>
                                
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Category</th>
                                    <th>Title</th>
                                    <th>Descritopn</th>
                                    <th>Image</th>
                                    <th>status</th>
                                    <th>Created_at</th>
                                
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            <tbody>
                            @foreach ($blogpost as $key=>$post)
                            <tr>
                                <td>{{$key+1}}</td>
                                <td>{{$post->category->category_name}}</td>
                                <td>{{Str::limit($post->blog_title,10)}}</td>
                                <td>{!! Str::limit($post->description,10) !!}</td>
                                <td>
                                    <img src="{{asset($post->image)}}" width="60"height="40">
                                </td>
                             
                                <td>
                                    @if($post->status==true)
                                         <span class="badge bg-blue">Published</span>
                                    @else
                                    <span class="badge bg-pink">Panding</span>
                                    @endif
                                 </td>
                                <td>{{$post->created_at->diffForHumans()}}</td>
                              
                                <td>
                                   
                                    {{-- <a href="{{route('blogpost.show',$post->id)}}"class="btn btn-primary  waves-effect">
                                        <i class="material-icons">visibility</i>
                                    </a> --}}
                                    <a href="{{route('blogpost.edit',$post->id)}}"class="btn btn-info  waves-effect">
                                        <i class="material-icons">edit</i>
                                    </a>
                                    <button class="btn btn-danger waves-effect"type="button"onclick="deletepost({{$post->id}})">
                                        <i class="material-icons">delete</i>
                                    </button>
                                    <form id="delete-form-{{$post->id}}" action="{{route('blogpost.destroy',$post->id)}}" method="post"style="display:none;">
                                        @csrf
                                        @method('DELETE')
                                    </form>
                                   
                                </td>
                            </tr>
                            @endforeach
                              
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #END# Exportable Table -->
</div>


@endsection
@push('js')

    <!-- Jquery DataTable Plugin Js -->
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/jquery.dataTables.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/extensions/export/buttons.flash.min.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/extensions/export/jszip.min.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/extensions/export/pdfmake.min.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/extensions/export/vfs_fonts.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/extensions/export/buttons.html5.min.js')}}"></script>
    <script src="{{asset('public/assets/backend/plugins/jquery-datatable/extensions/export/buttons.print.min.js')}}"></script>
    <script src="{{asset('public/assets/backend/js/pages/tables/jquery-datatable.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.17/dist/sweetalert2.all.min.js"></script>
    <script type="text/javascript">
        function deletepost(id){
             
                    const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: 'btn btn-success',
                        cancelButton: 'btn btn-danger'
                    },
                    buttonsStyling: false
                    })

                    swalWithBootstrapButtons.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, delete it!',
                    cancelButtonText: 'No, cancel!',
                    reverseButtons: true
                    }).then((result) => {
                    if (result.isConfirmed) {
                      event.preventDefault();
                      document.getElementById('delete-form-'+id).submit();
                    } else if (
                        /* Read more about handling dismissals below */
                        result.dismiss === Swal.DismissReason.cancel
                    ) {
                        swalWithBootstrapButtons.fire(
                        'Cancelled',
                        'Your Data  is safe :)',
                        'error'
                        )
                    }
                    })
        }
 </script>
@endpush