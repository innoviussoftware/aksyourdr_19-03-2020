@extends('layouts.admin')



@section('content')

<!-- Main Content -->

<div id="content">



  <!-- Begin Page Content -->

  <div class="container-fluid">



    <!-- Page Heading -->

    <!-- <div class="d-sm-flex align-items-center justify-content-between mb-4">

      <h1 class="h3 mb-0 text-gray-800">Coming Soon...</h1>

    </div> -->

    <div class="row" style="margin-bottom: 5em;">

    	<div class="col-sm-4">

	        <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">

			  <div class="card-body">

			    <h5 class="card-title">Total Doctors</h5>

			    <?php   $response = App\User::whereHas('roles', function ($q) {

               			 $q->where('id', 2);

			            })->where('status',1)->count();

			            if(isset($response)){?>

						    <p class="card-text">{{$response}}</p>

						<?php }else{?>

							 <p class="card-text">0</p>

						<?php }?>	

			  </div>

			</div>

		</div>



		<div class="col-sm-4">

			<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">

			  <div class="card-body">

			    <h5 class="card-title">Total Patients</h5>

			    <?php   $response1 = App\User::whereHas('roles', function ($q) {

               			 $q->where('id', 3);

			            })->where('status',1)->count();

			            if(isset($response1)){?>

						    <p class="card-text">{{$response1}}</p>

						<?php }else{?>

							 <p class="card-text">0</p>

						<?php }?>	

			  </div>

			</div>

		</div>



		<div class="col-sm-4" style="display: none;">

			<div class="card text-white bg-primary mb-3" style="max-width: 18rem;">

			  <div class="card-body">

			    <h5 class="card-title">Total Income</h5>

			    <?php   

						$payment_details=DB::table('payment_detail')->select('payment_detail.*','paymentplan.type as paymenttype','paymentplan.price as paymentprice','users.*')->where('payment_detail.type',1)->join('users','payment_detail.user_id','=','users.id')->join('paymentplan','payment_detail.package_id','=','paymentplan.id')

						->sum('paymentplan.price');



			            if(isset($payment_details)){?>

						    <p class="card-text">{{$payment_details}}</p>

						<?php }else{?>

							 <p class="card-text">0</p>

						<?php }?>	

			  </div>

			</div>

		</div>

	</div>

	<nav aria-label="breadcrumb" style="display: none;">

                <ol class="breadcrumb">

                 <b>

                    <li class="breadcrumb-item active" aria-current="page"><a href="{{ route('admin.paymentdetails.index') }}" class="breadcrumb-item active crumb">Listing :: Payment Details</a></li>

                  </b>

                </ol>

            </nav>

	<div class="table-responsive" style="display: none;">

                

                <table class="table table-bordered" id="medicinesdatatable" width="100%" cellspacing="0">

                  <thead>

                    <tr>

                      <th></th>

                      <th>User Name</th>

                      <th>EMR No</th>

                      <th>Package Name</th>

                      <th>Payment type</th>

                      <th>Payment Status</th>

                      <th>Price</th>

                      <th>Start Date</th>

                      <th>End Date</th>

                      <th>Transaction Id</th>

                    </tr>

                  </thead>

                  <tbody>

                  </tbody>

                </table>

              </div>

  </div>

  <!-- /.container-fluid -->



</div>

<!-- End of Main Content -->

@endsection



@section('custom_js')

<!-- Page level plugins -->

<script src="{!! asset('admin_assets/vendor/chart.js/Chart.min.js') !!}"></script>

<!-- Page level custom scripts -->

<script src="{!! asset('admin_assets/js/demo/chart-area-demo.js') !!}"></script>

<script src="{!! asset('admin_assets/js/demo/chart-pie-demo.js') !!}"></script>

<script>

    $(document).ready(function () {

        var medicinesdatatable = $('#medicinesdatatable').DataTable({

            responsive: true,

            "processing": true,

            "ajax": "{{ route('admin.paymentdetails.paymentdetailsarray') }}",

            "language": {

                "emptyTable": "No Paymentdetails available"

            },

            "order": [[0, "desc"]],

        });

        medicinesdatatable.columns([0]).visible(false, false);

    }); // end of document ready

</script>

@endsection

