@extends('layouts.backend.app')

@section('title','All_Author')
@push('css')
<link href="{{asset('public/assets/backend/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css')}}" rel="stylesheet">

@endpush
@section('content')
    
<div class="container-fluid">
    <div class="block-header">
  
    </div>
    <!-- Exportable Table -->
    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                       Ambulance Service Message and Contact
                       {{-- <span class="badge bg-blue">{{$authors->count()}}</span> --}}
                    </h2>
                 
                </div>
                @php
                //    $messages= DB::table('ambulance_messages')->get();
                    // $aservices=DB::table('ambulence_services')->where('status',1)->get();
                @endphp
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>phone</th>
                                    <th>Form</th>
                                    <th>To</th>
                                    <th>Reffer</th>
                                    <th>Updated_Time</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>ID</th>
                                    <th>Category</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>phone</th>
                                    <th>Form</th>
                                    <th>To</th>
                                    <th>Reffer</th>
                                    <th>Updated_Time</th>
                                    <th>Action</th>
                                </tr>
                            </tfoot>
                            <tbody>
                            @foreach ($messages as $key=>$message)
                            <tr>
                                <td>{{$key+1}}</td>
                                {{-- <td>{{$message->service->service_name}}</td> --}}
                                <td>{{$message->category_id}}</td>
                                <td>{{$message->name}}</td>
                                <td>{{$message->email}}</td>
                                <td>{{$message->phone}}</td>
                                <td>{{$message->from}}</td>
                                <td>{{$message->to}}</td>
                                <td>{{$message->reff}}</td>
                                <td>{{$message->created_at->diffForHumans()}}</td>
                                <td>
                                 
                                    <button class="btn btn-danger waves-effect"type="button"onclick="deleteApostMessage({{$message->id}})">
                                        <i class="material-icons">delete</i>
                                    </button>
                                    <form id="delete-form-{{$message->id}}" action="{{route('message.destroy',$message->id)}}" method="post"style="display:none;">
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

        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                         Trush And Delete Data or Message
                           {{-- <span class="badge bg-blue">{{$authors->count()}}</span> --}}
                        </h2>
                     
                    </div>
                    @php
                    //    $messages= DB::table('ambulance_messages')->get();
                        // $aservices=DB::table('ambulence_services')->where('status',1)->get();
                    @endphp
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-exportable">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Category</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>phone</th>
                                        <th>Form</th>
                                        <th>To</th>
                                        <th>Reffer</th>
                                        <th>Updated_Time</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Category</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>phone</th>
                                        <th>Form</th>
                                        <th>To</th>
                                        <th>Reffer</th>
                                        <th>Updated_Time</th>
                                        <th>Action</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                @foreach ($trashcategory as $key=>$trashcategory)
                                <tr>
                                    <td>{{$key+1}}</td>
                                    {{-- <td>{{$message->service->service_name}}</td> --}}
                                    <td>{{$trashcategory->category_id}}</td>
                                    <td>{{$trashcategory->name}}</td>
                                    <td>{{$trashcategory->email}}</td>
                                    <td>{{$trashcategory->phone}}</td>
                                    <td>{{$trashcategory->from}}</td>
                                    <td>{{$trashcategory->to}}</td>
                                    <td>{{$trashcategory->reff}}</td>
                                    <td>{{$trashcategory->created_at->diffForHumans()}}</td>
                                    <td>
                                     
                                        <a href="{{route('amessages.restore',$trashcategory->id)}}"class="btn btn-primary btn-sm">Re-store</a> 
                            
                                        <button class="btn btn-danger waves-effect"type="button"onclick="deleteApostMessage({{$trashcategory->id}})">
                                            <i class="material-icons">delete</i>
                                        </button>
                                        <form id="delete-form-{{$trashcategory->id}}" action="{{route('category.permenentlydel',$trashcategory->id)}}" method="post"style="display:none;">
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
        function deleteApostMessage(id){
             
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