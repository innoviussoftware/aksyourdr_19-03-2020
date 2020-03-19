public function specialitydoctorelistwithfilter(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
           'gender'  => 'required',
           'speciality_id'  => 'required',
           // 'language'  => 'required'
        ]);
        if ($validator->fails()) {
            $errorMessage = implode(',', $validator->errors()->all());
            return response()->json(['errors' => $errorMessage], 422);
        } else {
        if(request('consultant') == 1){
            $consultant = array(1);
        }elseif(request('consultant')==2){
            $consultant = array(2);
        }else{
            $consultant = array(1,2);
        }
        $user = Auth::user();
        
        if($request->gender == 'all'){
            if(request('language') == 'ar'){
            $DoctorSpeciality=DoctorSpeciality::select('doctor_speciality.*','users.ask_id as ask_doctor_id','users.ar_first_name as first_name','users.national_id','users.last_name','users.mobile','users.profile_pic','users.gender','users.fees','users.discount','doctor_availability.status','doctor_education.course','doctor_experience.year','users.doctor_code as group_code',
                DB::raw('users.fees * users.discount /100  as discountprice'))->join('users', 'doctor_speciality.user_id', '=', 'users.id')
            ->leftjoin('doctor_availability', 'doctor_speciality.user_id', '=', 'doctor_availability.doctor_id')
            ->leftjoin('doctor_education', 'doctor_speciality.user_id', '=', 'doctor_education.user_id')
            ->leftjoin('doctor_experience', 'doctor_speciality.user_id', '=', 'doctor_experience.user_id')
           
            ->where('speciality_id',$request->speciality_id)->whereIn('consultant',$consultant)->groupBy('user_id')->orderBy('id', 'DESC')->get(); 
            
            
                foreach ($DoctorSpeciality as $key => $value) {
                    $doctorid = $value->user_id;
                    if($doctorid){
                        $language = DoctorLanguage::where('user_id',$doctorid)->get();
                        $followupdate=EmrDetails::where('patient_id',$user->id)->where('doctor_id',$doctorid)->latest()->first();
                        $course=DoctorEducation::where('user_id',$doctorid)->get();
                        $year=DoctorExperience::where('user_id',$doctorid)->get();


                        if(isset($followupdate)){
                            if($followupdate->call_type == 'regular')
                            {
                                $date_time=date('Y-m-d', strtotime(isset($followupdate->followup_date)?$followupdate->followup_date:''. ' + 14 days'));
                                $currentdate=date('Y-m-d');
                                if($date_time <= $currentdate)
                                {
                                    $value['followup_or_not'] = 'true';
                                }
                                else{
                                    $value['followup_or_not'] = 'false';
                                }
                            }
                        }

                        if(isset($followupdate)){
                            if($followupdate->call_type == 'followup')
                            {
                                $value['followup_or_not'] = 'false';
                                $followupdate=EmrDetails::where('id',$followupdate->id)->update(['call_type'=>'regular']);
                            }
                        }

                        if($language){
                            $lan = '';
                            foreach ($language as $lkey => $lvalue) {
                                $lan .=  $lvalue->language->name.',';
                            }
                            $lan = rtrim($lan, ',');
                            $value['speak_language'] = $lan;
                        }

                        if($course){
                            $cour = '';
                            foreach ($course as $lkey => $lvalue) {
                                $cour .=  $lvalue->course.',';
                            }
                            $cour = rtrim($cour, ',');
                            $value['course'] = $cour;
                        }

                        if($year){

                            $yr = '';
                            foreach ($year as $lkey => $lvalue) {
                                
                                $yr .=  $lvalue->year.',';
                            }
                            $year = rtrim($yr, ',');
                            $value['year'] = $year;
                        }
                        
                        $value['followup_date'] = isset($followupdate->followup_date)?$followupdate->followup_date:'';
                        $value['call_type'] = isset($followupdate->followup_date)?$followupdate->call_type:'';
                    }
                }
            }else{
            $DoctorSpeciality=DoctorSpeciality::select('doctor_speciality.*','users.ask_id as ask_doctor_id','users.first_name','users.national_id','users.last_name','users.mobile','users.profile_pic','users.gender','users.fees','users.discount','doctor_availability.status','doctor_education.course','doctor_experience.year','users.doctor_code as group_code',
                DB::raw('users.fees * users.discount /100  as discountprice')
                )->join('users', 'doctor_speciality.user_id', '=', 'users.id')
            ->leftjoin('doctor_availability', 'doctor_speciality.user_id', '=', 'doctor_availability.doctor_id')
            ->leftjoin('doctor_education', 'doctor_speciality.user_id', '=', 'doctor_education.user_id')
            ->leftjoin('doctor_experience', 'doctor_speciality.user_id', '=', 'doctor_experience.user_id')
            ->where('speciality_id',$request->speciality_id)->whereIn('consultant',$consultant)->orderBy('id', 'DESC')->get(); 
            foreach ($DoctorSpeciality as $key => $value) {
                $doctorid = $value->user_id;
                if($doctorid){
                    $language = DoctorLanguage::where('user_id',$doctorid)->get();
                    $followupdate=EmrDetails::where('patient_id',$user->id)->where('doctor_id',$doctorid)->latest()->first();
                    $course=DoctorEducation::where('user_id',$doctorid)->get();
                    $year=DoctorExperience::where('user_id',$doctorid)->get();
                    
                    if(isset($followupdate)){
                        if($followupdate->call_type == 'regular')
                        {
                            $date_time=date('Y-m-d', strtotime(isset($followupdate->followup_date)?$followupdate->followup_date:''. ' + 14 days'));
                            $currentdate=date('Y-m-d');
                            if($date_time <= $currentdate)
                            {
                                $value['followup_or_not'] = 'true';
                            }
                            else{
                                $value['followup_or_not'] = 'false';
                            }
                        }
                    }
                    

                    if(isset($followupdate)){

                        if($followupdate->call_type == 'followup')
                        {

                            $value['followup_or_not'] = 'false';
                            $followupdate=EmrDetails::where('id',$followupdate->id)->update(['call_type'=>'regular']);
                        }
                    }
                    
                    if($language){
                        $lan = '';
                        foreach ($language as $lkey => $lvalue) {
                            $lan .=  $lvalue->language->name.',';
                        }
                        $lan = rtrim($lan, ',');
                        $value['speak_language'] = $lan;
                        
                    }
                     if($course){
                            $cour = '';
                            foreach ($course as $lkey => $lvalue) {
                                $cour .=  $lvalue->course.',';
                            }
                            $cour = rtrim($cour, ',');
                            $value['course'] = $cour;
                        }

                        if($year){

                            $yr = '';
                            foreach ($year as $lkey => $lvalue) {
                                
                                $yr .=  $lvalue->year.',';
                            }
                            $year = rtrim($yr, ',');
                            $value['year'] = $year;
                        }
                        
                     $value['followup_date'] = isset($followupdate->followup_date)?$followupdate->followup_date:'';
                       $value['call_type'] = isset($followupdate->followup_date)?$followupdate->call_type:'';
                }
            }
            } 
        }else{
            if(request('language') == 'ar'){
            $DoctorSpeciality=DoctorSpeciality::select('doctor_speciality.*','users.ask_id as ask_doctor_id','users.ar_first_name as first_name','users.national_id','users.last_name','users.mobile','users.profile_pic','users.gender','users.fees','users.discount','doctor_availability.status','doctor_education.course','doctor_experience.year','users.doctor_code as group_code',DB::raw('users.fees * users.discount /100  as discountprice')
            )->join('users', 'doctor_speciality.user_id', '=', 'users.id')
            ->leftjoin('doctor_availability', 'doctor_speciality.user_id', '=', 'doctor_availability.doctor_id')
            ->leftjoin('doctor_education', 'doctor_speciality.user_id', '=', 'doctor_education.user_id')
            ->leftjoin('doctor_experience', 'doctor_speciality.user_id', '=', 'doctor_experience.user_id')
            ->where('speciality_id',$request->speciality_id)->whereIn('consultant',$consultant)->where('gender',$request->gender)->orderBy('id', 'DESC')->get();
            
            foreach ($DoctorSpeciality as $key => $value) {
                $doctorid = $value->user_id;
                if($doctorid){
                    $language = DoctorLanguage::where('user_id',$doctorid)->get();
                   $followupdate=EmrDetails::where('patient_id',$user->id)->where('doctor_id',$doctorid)->latest()->first();
                   $course=DoctorEducation::where('user_id',$doctorid)->get();
                        $year=DoctorExperience::where('user_id',$doctorid)->get();
                    if(isset($followupdate)){
                            if($followupdate->call_type == 'regular')
                            {
                                    $date_time=date('Y-m-d', strtotime(isset($followupdate->followup_date)?$followupdate->followup_date:''. ' + 14 days'));
                                    $currentdate=date('Y-m-d');
                                    if($date_time <= $currentdate)
                                    {
                                        $value['followup_or_not'] = 'true';
                                    }
                                    else{
                                        $value['followup_or_not'] = 'false';
                                    }
                            }
                    }
                    
                    if(isset($followupdate)){
                        if($followupdate->call_type == 'followup')
                        {
                                $value['followup_or_not'] = 'false';
                                $followupdate=EmrDetails::where('id',$followupdate->id)->update(['call_type'=>'regular']);
                        }
                    }

                    

                    if($language){
                        $lan = '';
                        foreach ($language as $lkey => $lvalue) {
                            $lan .=  $lvalue->language->name.',';
                        }
                        $lan = rtrim($lan, ',');
                        $value['speak_language'] = $lan;
                    }
                     if($course){
                            $cour = '';
                            foreach ($course as $lkey => $lvalue) {
                                $cour .=  $lvalue->course.',';
                            }
                            $cour = rtrim($cour, ',');
                            $value['course'] = $cour;
                        }

                        if($year){

                            $yr = '';
                            foreach ($year as $lkey => $lvalue) {
                                
                                $yr .=  $lvalue->year.',';
                            }
                            $year = rtrim($yr, ',');
                            $value['year'] = $year;
                        }
                    
                     $value['followup_date'] = isset($followupdate->followup_date)?$followupdate->followup_date:'';
                       $value['call_type'] = isset($followupdate->followup_date)?$followupdate->call_type:'';
                }
            }
            }else{
            $DoctorSpeciality=DoctorSpeciality::select('doctor_speciality.*','users.ask_id as ask_doctor_id','users.first_name','users.national_id','users.last_name','users.mobile','users.profile_pic','users.gender','users.fees','users.discount','doctor_availability.status','doctor_education.course','doctor_experience.year','users.doctor_code as group_code',DB::raw('users.fees * users.discount /100  as discountprice')
            )->join('users', 'doctor_speciality.user_id', '=', 'users.id')
            ->leftjoin('doctor_availability', 'doctor_speciality.user_id', '=', 'doctor_availability.doctor_id')
            ->leftjoin('doctor_education', 'doctor_speciality.user_id', '=', 'doctor_education.user_id')
            ->leftjoin('doctor_experience', 'doctor_speciality.user_id', '=', 'doctor_experience.user_id')
            ->where('speciality_id',$request->speciality_id)->where('gender',$request->gender)->whereIn('consultant',$consultant)->orderBy('id', 'DESC')->get();
            foreach ($DoctorSpeciality as $key => $value) {
                $doctorid = $value->user_id;
                if($doctorid){
                    $language = DoctorLanguage::where('user_id',$doctorid)->get();
                    $followupdate=EmrDetails::where('patient_id',$user->id)->where('doctor_id',$doctorid)->latest()->first();
                    $course=DoctorEducation::where('user_id',$doctorid)->get();
                        $year=DoctorExperience::where('user_id',$doctorid)->get();
                    if(isset($followupdate)){
                        if($followupdate->call_type == 'regular')
                        {
                                $date_time=date('Y-m-d', strtotime(isset($followupdate->followup_date)?$followupdate->followup_date:''. ' + 14 days'));
                                $currentdate=date('Y-m-d');
                                if($date_time <= $currentdate)
                                {
                                    $value['followup_or_not'] = 'true';
                                }
                                else{
                                    $value['followup_or_not'] = 'false';
                                }
                        }
                    }
                    
                    if(isset($followupdate)){
                        if($followupdate->call_type == 'followup')
                        {
                                $value['followup_or_not'] = 'false';
                                $followupdate=EmrDetails::where('id',$followupdate->id)->update(['call_type'=>'regular']);
                        }
                    }
                    
                    if($language){
                        $lan = '';
                        foreach ($language as $lkey => $lvalue) {
                            $lan .=  $lvalue->language->name.',';
                        }
                        $lan = rtrim($lan, ',');
                        $value['speak_language'] = $lan;
                    }
                     if($course){
                            $cour = '';
                            foreach ($course as $lkey => $lvalue) {
                                $cour .=  $lvalue->course.',';
                            }
                            $cour = rtrim($cour, ',');
                            $value['course'] = $cour;
                        }

                        if($year){

                            $yr = '';
                            foreach ($year as $lkey => $lvalue) {
                                
                                $yr .=  $lvalue->year.',';
                            }
                            $year = rtrim($yr, ',');
                            $value['year'] = $year;
                        }
                   
                    $value['followup_date'] = isset($followupdate->followup_date)?$followupdate->followup_date:'';
                       $value['call_type'] = isset($followupdate->followup_date)?$followupdate->call_type:'';
                }
            }
            }
        }
        return response()->json(['data' => $DoctorSpeciality], 200);
        } 

    }