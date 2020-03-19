

@extends('layouts.admin')

@section('content')

<div id="content">

        <div class="container-fluid">

          <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  @if(isset($clinic))
                  <b>
                    <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('admin.hospital.index') }}" class="breadcrumb-item active crumb">Update :: Hospital</a></li>
                  </b>
                  @else
                  <b>
                    <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('admin.hospital.index') }}" class="breadcrumb-item active crumb">Add :: Hospital</a></li>
                  </b>
                  @endif
                </ol>
            </nav>
          <!-- Page Heading -->
          <div class="row">
            <div class="col-8">
              @if(isset($clinic))
                
               <!--  <div class="caption pull-left" style="padding-bottom: 1em;padding-left: 0.5em;">
                      <i class="fa fa-th-list"></i> &nbsp;
                      <span class="caption-subject sbold uppercase font-dark">Update :: Clinic</span>
                </div> -->
              @else
             <!--  <div class="caption pull-left" style="padding-bottom: 1em;padding-left: 0.5em;">
                      <i class="fa fa-th-list"></i> &nbsp;
                      <span class="caption-subject sbold uppercase font-dark">Add :: Clinic</span>
               </div> -->
               
              @endif
            </div>
            <!-- <div class="col-4 text-right">
              <a href="{{ route('admin.hospital.index') }}" class="btn btn-secondary btn-sm rounded-circle"><i class="fa fa-arrow-left"></i></a>
            </div> -->
          </div>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-body">
              <div class="row">

                <div class="col-12"> 
                  @if (count($errors) > 0)
                    <div class="alert alert-danger">
                      <strong>Whoops!</strong> There were some problems with your input.<br><br>
                      <ul>
                         @foreach ($errors->all() as $error)
                           <li>{{ $error }}</li>
                         @endforeach
                      </ul>
                    </div>
                  @endif
                </div>
                
                <div class="col-8">

                  @if(isset($clinic))
                    <form class="form-horizontal" action="{{ route('admin.hospital.update') }}" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="_method" value="PATCH">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <input type="hidden" value="{{ $clinic->id }}" name="id" />
                  @else
                    <form class="form-horizontal" action="{{ route('admin.hospital.store') }}" method="post" enctype="multipart/form-data">
                  @endif
                    
                    @csrf

                    <div class="form-group row">
                      <label for="staticEmail" class="col-sm-3 col-form-label col-form-label-sm">Name<span class="text-danger">*</span></label>
                      <div class="col-sm-9">
                        @if(isset($clinic))
                          <input type="text" name="name" class="form-control form-control-sm" value="{{ $clinic->name }}">
                        @else
                          <input type="text" name="name" class="form-control form-control-sm" value="{{ old('name') }}">
                        @endif
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="staticEmail" class="col-sm-3 col-form-label col-form-label-sm">Name Arabic<span class="text-danger">*</span></label>
                      <div class="col-sm-9">
                        @if(isset($clinic))
                          <input type="text" name="ar_name" class="form-control form-control-sm" value="{{ $clinic->ar_name }}">
                        @else
                          <input type="text" name="ar_name" class="form-control form-control-sm" value="{{ old('ar_name') }}">
                        @endif
                      </div>
                    </div>
                    @if(isset($clinic))
                    <button type="submit" class="btn btn-warning ">Update</button>
                    @else
                    <button type="submit" class="btn btn-warning">Submit</button>
                    @endif
                    <a href="{{route('admin.hospital.index')}} " class="btn btn-secondary">Cancel</a>
                    
                  
                  </form>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

</div>


@endsection

@section('custom_js')

@endsection