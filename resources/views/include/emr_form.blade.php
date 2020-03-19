<?php
$medicines = App\Medicine::where('status',1)->get();
$investigations= App\Investigation::where('status',1)->get();
$specialitys= App\Speciality::where('status',1)->get();
?>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>
<style type="text/css">
  .ui-autocomplete-loading { background:url(http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.2/themes/smoothness/images/ui-anim_basic_16x16.gif) no-repeat right center }
</style>
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

         <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>-->
<div id='content' class="container col-md-10 col-md-offset-1  text well audiohide" align="" style="background-color:none !important;border:none !important;">
	<div id="serverMsg"></div>
	<div class="row">
		<form method="post" id="emr_form" action="{{ route('front.home.emrStore') }}" enctype="multipart/form-data">
			@csrf
			<input type="hidden" id="type_visit" name="type_visit" value="">
			<input type="hidden" name="doctor_id" value="{{$user->id}}">
			<input type="hidden" id="patient_id" name="patient_id" value="">
			<input type="hidden" id="calltype" name="calltype" value="">
			<div class="col-md-6">
				<div class="form-group col-md-12">
					<label for="inputEmail4">EMR Number</label>
					<input type="text" class="form-control" id="emr_number" placeholder="EMR No" value="" name="emrno" readonly>
				</div>
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<b id="type_visit_label"></b>
						</div>
						<div class="panel-body">
							<div class="form-group col-md-12">
								<label for="inputAddress">Physican Note</label>
								<textarea class="form-control" placeholder="Add Note" name="physicannote"></textarea>
							</div>

							<div class="form-group col-md-12">
								<label for="inputAddress">Physican Diagnosis</label>
								<input type="text" class="form-control" id="automplete-1" placeholder="Physican Diagnosis" value="" name="physicandiagnosis">
							</div>
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">
										<b>Prescriptions</b>
									</div>
									<div class="panel-body">
										<div class="Prescriptionnew" id="newprsc">
											<div class="form-group row">
												<div class="col-xs-9 -col-sm-6 col-md-10">
													<select class="form-control form-control-sm required medicines_select selectpicker" title="Search Medicines" name="medicines[]" id="medicines0" data-count="0"  data-live-search="true">
														<option value="">Select Medicines</option>
														@foreach($medicines as $medicine)
														<option value="{{$medicine->id }}">{{ $medicine->name }}</option>
														@endforeach
													</select>
												</div>
												<div class="col-xs-3 col-sm-6 col-md-2">
													<button type="button" style="" class="add_prsc btn btn-primary"><i class="fa fa-plus"></i></button>
												</div>
											</div>

											<div class="disprecord dc0">
												<div class="form-group row">
													<div class="col-sm-6">
														<input type="text" name="dose[]" class="form-control form-control-sm dose" value="" id="dose0" placeholder="Dose">
													</div>
													<div class="col-sm-4">
														<select class="form-control form-control-sm required dosetype" title="Search Medicines" name="dosetype[]" id="medicines0" data-count="0" >
															<option value="">Select Dose</option>
															<option value="mg">Mg</option>
															<option value="ml/g">ml/g</option>
															<option value="mcg">mcg</option>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="staticEmail" class="col-sm-12 col-form-label col-form-label-sm">Frequency:</label>
												</div>
												<div class="form-group row">
													<div class="col-sm-3">
														<input type="text" name="frequency1[]" class="form-control form-control-sm frequency1" value="" id="frequency10" placeholder="Morning">
													</div>
													<div class="col-sm-3">
														<input type="text" name="frequency2[]" class="form-control form-control-sm frequency2" value="" id="frequency20" placeholder="Noon">
													</div>
													<div class="col-sm-3">
														<input type="text" name="frequency3[]" class="form-control form-control-sm frequency3" value="" id="frequency30" placeholder="Night">
													</div>
												</div>
												<div class="form-group row">
													<div class="col-sm-10">
														<input type="number" name="duration[]" class="form-control form-control-sm duration" value="" id="duration0" placeholder="Duration">
													</div>
												</div>
												<div class="form-group row">
													<div class="col-sm-10">
														<input type="text" name="route[]" class="form-control form-control-sm route" value="" id="duration0" placeholder="Route">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<b>Investigation</b>
									</div>
									<div class="panel-body">
										<div class="Investnew" id="newinvestment">
											<div class="form-group row">
												<div class="col-xs-9 col-sm-8 col-md-10">
													<select class="form-control form-control-sm required investigation_select" title="Search Medicines" name="investigation[]" id="investigation" data-count="0">
														<option value="">Select Investigation</option>
														@foreach($investigations as $investigation)
														<option value="{{$investigation->id }}">{{ $investigation->testname_english }}</option>
														@endforeach
													</select>
												</div>
												<div class="col-xs-3 col-sm-4 col-md-2">
													<button type="button" style="" class="add_invest btn btn-primary"><i class="fa fa-plus"></i></button>
												</div>
											</div>
											<div class="form-group  row">
												<div class="col-xs-9 col-sm-8 col-md-10">
													<textarea class="form-control notes" placeholder="Add notes" name="notes[]"></textarea>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<b>Referral</b>
									</div>
									<div class="panel-body">
										<div class="referralnew" id="newreferral">
											<div class="disprecord">
												<div class="form-group row">
													<div class="col-xs-9 col-sm-8 col-md-10">
														<select class="form-control form-control-sm required medicines_change referral_select" title="Search Medicines" name="referral[]" id="medicines0" data-count="0">
															<option value="">Select Speciality of doctor</option>
															@foreach($specialitys as $speciality)
															<option value="{{$speciality->id }}">{{ $speciality->name }}</option>
															@endforeach
														</select>
													</div>
													<div class="col-xs-3 col-sm-4 col-md-2">
														<button type="button" style="" class="add_ref btn btn-primary"><i class="fa fa-plus"></i></button>
													</div>
												</div>
												<div class="form-group row">
													<div class="col-xs-12 col-sm-12 col-md-10">
														<select class="form-control form-control-sm required select_doctor"  title="Search Medicines" name="doctor[]" id="doctordata0" data-count="0">
															<option value="">Select doctor</option>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<div class="col-xs-12 col-sm-12 col-md-10">
														<textarea class="form-control diagnosis" placeholder="Write diagnosis" name="diagnosis[]"></textarea>
													</div>
												</div>
												<div class="form-group row">
													<div class="col-xs-12 col-sm-12 col-md-10">
														<textarea class="form-control reasonreferral" placeholder="Reason for referral" name="referraldetails[]"></textarea>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group col-md-12">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<script>
	var availableTutorials2 = [];
	$(function() {

		$( "#automplete-1" ).autocomplete({
			source: function( request, response ) {

				$.ajax({
					url: "<?php echo URL::to('front/icd_record'); ?>",
					type: 'get',
					dataType: "json",
					data: {
						doctor_id: request.term.split( /,\s*/ ).pop()
					},
					success: function( data ) {
						console.log(data);
						// alert("ASd");
						response( data );
						setTimeout(function(){handler(request, response);}, 1000);

					}
				});
			},
			select: function (event, ui) {
                     // Set selectionalert
                     $('#automplete-1').val(ui.item.label);
                     return false;
                 }

             });
	});

</script>
<script type="text/javascript">
	$(function() {
		$("body").on("submit","#emr_form",function (e){
			e.preventDefault();
			var datastring = $(this).serialize();

			$.ajax({
				url:"{{ route('front.home.emrUserStore') }}",
				type:'post',
				data:datastring,
				success: function(e){
					$("#serverMsg").removeClass('alert alert-danger');
					$("#serverMsg").addClass('alert alert-success');
					$("#serverMsg").html("<p>Successfully submitted.</p>");
					$("#emr_form")[0].reset();
					window.scrollTo(0, 0);
				},
				error: function(e){
					console.log("error");
					console.log(e);
					if(e.status == 422){
						var html = "";
						for(var i = 0; i < e.responseJSON.errors.length; i++ ){
							html += "<p>"+e.responseJSON.errors[i]+"</p>";
						}
					}
					$("#serverMsg").removeClass('alert alert-success');
					$("#serverMsg").addClass('alert alert-danger');
					$("#serverMsg").html(html);
					window.scrollTo(0, 0);
				}
			});
		});
	});

	var count = 1;

	$('body').on('click', '.add_ref', function () {

		$('#newreferral').append('<div class="disprecord"><div class="box-body"><div class="form-group row"><div class="col-xs-9 col-sm-8 col-md-10"><select class="form-control form-control-sm required medicines_change referral_select" title="Search Medicines" name="referral[]" id="medicines'+count+'" data-count="'+count+'"><option value="">Select Speciality of doctor</option> <?php if(isset($specialitys)){?>@foreach($specialitys as $speciality)<option value="{{$speciality->id }}">{{ $speciality->name }}</option>@endforeach<?php }?></select></div><div class="col-xs-3 col-sm-4 col-md-2"><button type="button" style="" class="remove_ref btn btn-primary"><i class="fa fa-minus"></i></button></div></div><div class="form-group row"><div class="col-xs-12 col-sm-12 col-md-10"><select class="form-control form-control-sm required select_doctor" title="Search Medicines" name="doctor[]" id="doctordata'+count+'" data-count="0"><option value="">Select doctor</option></select></div></div><div class="form-group row"><div class="col-xs-12 col-sm-12 col-md-10"><textarea class="form-control diagnosis" placeholder="Write diagnosis" name="diagnosis[]"></textarea></div></div><div class="form-group row"><div class="col-xs-12 col-sm-12 col-md-10"><textarea class="form-control reasonreferral" placeholder="Reason for referral" name="referraldetails[]"></textarea></div></div></div></div>');
		count ++;
	});

	$('body').on('click', '.remove_ref', function (e) {
		$(this).closest('.box-body').remove();

	});


	$('body').on('click', '.add_invest', function () {

		$('#newinvestment').append('<div class="box-body"><div class="form-group row"><div class="col-xs-9 col-sm-8 col-md-10"><select class="form-control form-control-sm required investigation_select" title="Search Medicines" name="investigation[]" id="medicines0" data-count="0"><option value="">Select Investigation</option><?php if(isset($investigations)){?>@foreach($investigations as $investigation)<option value="{{$investigation->id }}">{{ $investigation->testname_english }}</option>@endforeach<?php }?></select></div><div class="col-xs-3 col-sm-4 col-md-2"><button type="button" style="" class="remove_invest btn btn-primary"><i class="fa fa-minus"></i></button></div></div><div class="form-group  row"><div class="col-xs-9 col-sm-8 col-md-10"><textarea class="form-control notes" placeholder="Add notes" name="notes[]"></textarea></div></div></div>');

		count ++;
	});

	$('body').on('click', '.remove_invest', function (e) {
		$(this).closest('.box-body').remove();

	});


	$('body').on('click', '.add_prsc', function () {

		$('#newprsc').append('<div class="box-body"><div class="form-group row"><div class="col-xs-9 -col-sm-6 col-md-10"><select class="form-control form-control-sm required medicines_select selectpicker" title="Search Medicines" name="medicines[]" id="medicines'+count+'" data-count="'+count+'" data-live-search="true"><option value="">Select Medicines</option><?php if(isset($medicines)){?>@foreach($medicines as $medicine)<option value="{{$medicine->id }}">{{ $medicine->name }}</option>@endforeach<?php }?></select></div><div class="col-xs-3 col-sm-6 col-md-2"><button type="button" style="" class="remove_prsc btn btn-primary"><i class="fa fa-minus"></i></button></div></div><div class="disprecord dc'+count+'"><div class="form-group row"><div class="col-sm-6"><input type="text" name="dose[]" class="form-control form-control-sm dose" value="" id="dose0" placeholder="Dose"></div><div class="col-sm-4"><select class="form-control form-control-sm required dosetype" title="Search Medicines" name="dosetype[]" id="medicines0" data-count="0" ><option value="">Select Dose</option><option value="mg">Mg</option><option value="ml/g">ml/g</option><option value="mcg">mcg</option></select></div></div><div class="form-group row"><label for="staticEmail" class="col-sm-12 col-form-label col-form-label-sm">Frequency:</label></div><div class="form-group row"><div class="col-sm-3"><input type="text" name="frequency1[]" class="form-control form-control-sm frequency1" value="" id="frequency10" placeholder="Morning" ></div><div class="col-sm-3"><input type="text" name="frequency2[]" class="form-control form-control-sm frequency2" value="" id="frequency20" placeholder="Noon"></div><div class="col-sm-3"><input type="text" name="frequency3[]" class="form-control form-control-sm frequency3" value="" id="frequency30" placeholder="Night" ></div></div><div class="form-group row"><div class="col-sm-10"><input type="number" name="duration[]" class="form-control form-control-sm duration" value="" id="duration0" placeholder="Duration" ></div></div><div class="form-group row"><div class="col-sm-10"><input type="text" name="route[]" class="form-control form-control-sm route" value="" id="duration0" placeholder="route" ></div></div></div></div>');
		 $('.selectpicker').selectpicker();

		count ++;
	});
	$('body').on('click', '.remove_prsc', function (e) {
		$(this).closest('.box-body').remove();

	});

	$(function() {

		$("body").on("change",".medicines_change", function(){

			var id=$(this).attr('id');

			$('.disprecord').addClass(id);

			var speciality_id = $(this).val();


			var count=$(this).data('count');

			var details = '<?php echo URL::to('front/specialitywisedoctor'); ?>';
			if(speciality_id)
			{
				$.ajax({
					type:'get',
					url:details,
					data: {
						speciality_id: speciality_id,
						count:count,
						id:id
					},
					success:function(data){


						$('#doctordata'+count).empty();
						$('#doctordata'+count).append('<option value="">Select Doctor</option>');
						$.each(data, function( index, value ) {

							$('#doctordata'+count).append('<option value="' + value.doctor_id + '">'+ value.first_name +'</option>');
						});



					}
				});
			}
			else
			{
				$('#doctordata'+count).empty();
				$('#doctordata'+count).append('<option value="">Select Doctor</option>');
			}

		});
	});
		//Medicines Select
		$(function() {
			$("body").on("change",".medicines_select", function(){

				var selected = $(this).val();
				var dc = $(this).attr("data-count");

				if(selected)
				{
					// alert(selected);
					var mdetails = '<?php echo URL::to('front/medicalrecord'); ?>';
					$.ajax({
						type:'get',
						url:mdetails,
						data: {
							medicines: selected
						},
						success:function(data){
							console.log(data.dose);
							$(".dc"+dc+" .dose").val(data.dose);
							$(".dc"+dc+" .route").val(data.route);
							// alert("Adssd");
							// $('#doctordata'+count).empty();
							// $('#doctordata'+count).append('<option value="">Select Doctor</option>');
							// $.each(data, function( index, value ) {
							// 	$('#doctordata'+count).append('<option value="' + value.doctor_id + '">'+ value.first_name +'</option>');
							// });
						}
					});

					$(".dose").prop('required',true);
					$(".dosetype").prop('required',true);
					$(".frequency1").prop('required',true);
					$(".frequency2").prop('required',true);
					$(".frequency3").prop('required',true);
					$(".duration").prop('required',true);
					$(".route").prop('required',true);
				}
				else
				{
					$(".dose").prop('required',false);
					$(".dosetype").prop('required',false);
					$(".frequency1").prop('required',false);
					$(".frequency2").prop('required',false);
					$(".frequency3").prop('required',false);
					$(".duration").prop('required',false);
					$(".route").prop('required',false);
				}

			});
		});
		//Investigation Select
		$(function() {
			$("body").on("change",".investigation_select", function(){

				var selected = $(this).val();
				if(selected)
				{
					$(".notes").prop('required',true);
				}
				else
				{
					$(".notes").prop('required',false);
				}


			});
		});
		//Refferal Select
		$(function() {
			$("body").on("change",".referral_select", function(){
				var selected = $(this).val();
				if(selected)
				{
					$(".select_doctor").prop('required',true);
					$(".diagnosis").prop('required',true);
					$(".reasonreferral").prop('required',true);
				}
				else
				{
					$(".select_doctor").prop('required',false);
					$(".diagnosis").prop('required',false);
					$(".reasonreferral").prop('required',false);
				}

			});
		});
	
$(function() {
  $('.selectpicker').selectpicker();
});
	</script>
