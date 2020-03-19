<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <style>
             @font-face {
              font-family: 'DINNextLTArabic-Medium';
              src: url('DINNextLTArabic-Medium.ttf') format('truetype');
                  font-weight: normal;
                  font-style: normal;
          }
            /** 

                Set the margins of the page to 0, so the footer and the header

                can be of the full height and width !

             **/

            @page {

                margin: 0cm 0cm;
                font-family: 'DINNextLTArabic-Medium';

            }



            /** Define now the real margins of every page in the PDF **/

            body {

                margin-top: 3cm;

                margin-left: 2cm;

                margin-right: 2cm;

                margin-bottom: 2cm;

            }



            /** Define the header rules **/

            header {

                position: fixed;

                top: 0cm;

                left: 0cm;

                right: 0cm;

                height: 3cm;

            }



            /** Define the footer rules **/

            footer {

                position: fixed; 

                bottom: 0cm; 

                left: 0cm; 

                right: 0cm;

                height: 1cm;

            }

            main{

                position: fixed; 

                top: 5cm; 

                

            }

            #footer {

                position: absolute;

                top: 50%;

                left: 50%;

                transform: translateX(-50%) translateY(-50%);

                max-width: 100%;

                max-height: 100%;

            }

            .invoice table {

            margin: 15px;

        }

        .invoice h3 {

            margin-left: 15px;

        }
          * { font-family: DejaVu Sans, sans-serif; }
        </style>

    </head>

    <body>

        <!-- Define header and footer blocks before your content -->

        <header>

            <img src="laboratory_pdf_header.png" alt="Logo" class="logo" width="100%" height="230px" />

        </header>



        <footer>

          <div class="invoice" style="padding-left: 2.2em;margin-top: -3em;">

            <div class="row">

              <div class="col-xs-12">

                  <label>Date:</label>

                  <label>{{date('d-m-Y')}}</label>

              </div>

            </div>



            <div class="row">

              <div class="col-xs-12">

                  <label>Doctor Name:</label>

                  <label>{{isset($visit_investigation->doctor->first_name)?$visit_investigation->doctor->first_name:''}}  {{isset($visit_investigation->doctor->last_name)?$visit_investigation->doctor->last_name:''}}</label>

              </div>

            </div>

          </div>

            <img src="pdf_footer.png" id="footer" alt="Logo" class="logo" width="50%" height="70%" />



        </footer>



        <!-- Wrap the content of your PDF inside a main tag -->

        <main style="padding-top: 3em;">

            <div class="invoice">

    

    <div class="invoice" style="padding-left: 2.2em;">



        

            

            <div class="row">

              <div class="col-xs-12">

                  <label>EMR No:</label>

                  <label>{{isset($visit_investigation->patient)?$visit_investigation->patient->emr_number:''}}</label>

              </div>

            </div>



            <div class="row">

              <div class="col-xs-6">

                  <label>Patient Name:</label>

                  <label>{{isset($visit_investigation->patient)?$visit_investigation->patient->first_name:''}} {{isset($visit_investigation->patient)?$visit_investigation->patient->last_name:''}}</label>

              </div>

            </div>



            <div class="row">

              <div class="col-xs-6">

                  <label>AGE:</label>

                  <label>{{isset($visit_investigation->patient)?$visit_investigation->patient->age:''}}</label>

              </div>

            </div>



    </div>

    <table class="table table-bordered">

              <thead>

                <tr>

                  <th scope="col">No</th>

                  <th scope="col">Patient Name</th>

                  <th scope="col">Investigation Name</th>

                  <th scope="col">Note</th>

                  <th scope="col">Doctor Name</th>

                </tr>

              </thead>

              <tbody>

                 <?php $i=1;?>

                 

               <tr>

                     

                      <td scope="col">{{$i}}</td>

                      <td scope="col">{{($visit_investigation->patient) ?$visit_investigation->patient->first_name:''}}</td>

                      <td scope="col">{{($visit_investigation->investigation_name) ? $visit_investigation->investigation_name : ''}}</td>

                      <td scope="col">{{($visit_investigation->note) ? $visit_investigation->note : ''}}</td>

                      <td scope="col">{{isset($visit_investigation->doctor->first_name)?$visit_investigation->doctor->first_name:''}}  {{isset($visit_investigation->doctor->last_name)?$visit_investigation->doctor->last_name:''}}</td>

                      

                      

                  </tr>

                  <?php $i++;?>

               

              </tbody>

    </table> 

</div>

        </main>

    </body>

</html>