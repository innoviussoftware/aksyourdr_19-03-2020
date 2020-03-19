<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Crypt;
use App\User;
use App\Role;
use Hash;
use DB;
use Validator;
use Auth;
use Config;
use App\MasterAdminSetting;

class HomeController extends Controller
{
    private $user;
    private $role;
    public function __construct(User $user, Role $role)
    {
        $this->user = $user;
        $this->role = $role;
    }

    const SUCCESS = 'success';

    public function index()
    {
        
        return view('admin.index', compact('index'));
    }

    public function editProfile()
    {

        $current_user = auth()->user();// dd($current_user);
        
        $profile = $current_user;

        return view('admin.users.editprofile', compact('profile'));
    }

    public function updateProfile(Request $request)
    {
        $current_user = auth()->user();

        $this->validate($request, [
            'name'=>'required|max:50',
            'email' => 'required|email|unique:users,email,'.$current_user->id,
            'mobile' => 'bail|required|numeric|digits:9|unique:users,mobile,'.$current_user->id,
            'doctor_profile'=>'image',
        ],[
                    'name.required' => 'Please enter name',
                    'email.required' => 'Please enter email address',
                    'mobile.required' => 'Please enter mobile number',
                    'mobile.unique'=>'Mobile number has been already taken',
                    'mobile.digits'=>'Mobile number must be 9 digits long',
                    'doctor_profile.image'=>'Please provide valid file type',
                    'doctor_profile.uploaded'=>'Please provide valid file type'                    
                    
        ]);

        if (isset($request->doctor_profile)) {
            $image = $request->doctor_profile;
            $path = $image->store('doctor_profile');
        } else {
            $image = $request->hidden_image;
            $path = $image;
        }

        $update_attributes = array(
                'first_name'=>request('name'),
                'mobile'=>ltrim(request('mobile'), '0'),
                'email'=>request('email'),
                'profile_pic'=>$path,
        );
        
        $user = $this->user->updateById($request->id, $update_attributes);
        return redirect()->route('admin.edit.profile')
                    ->with(self::SUCCESS, 'Profile updated successfully.');
    }

    public function changePassword()
    {
        $current_user = auth()->user();
        $profile = $current_user;
        return view('admin.users.change_password', compact('profile'));
    }

    public function updateChangePassword(Request $request)
    {
        $validator = Validator::make($request->all(), [
                    'oldpassword' => 'required',
                    'newpassword' => 'bail|required|min:6|max:8',
                    'confirmpassword' => 'bail|required||min:6|max:8|same:newpassword'
        ],[
                    'oldpassword.required' => 'Please enter old password',
                    'newpassword.required' => 'Please enter new password',
                    'confirmpassword.required' => 'Please enter confirm password',
                    'newpassword.min'=>'You have to newpassword at least 6 digit!',
                    'newpassword.max'=>'Newpassword maximum 8 digits allowed',
                    'confirmpassword.min'=>'You have to confirmpassword at least 6 digit!',
                    'confirmpassword.max'=>'Confirmpassword maximum 8 digits allowed',
                    'confirmpassword.same'=>'Confirm password and new password is not matched',
        ]);
        $errors = $validator->errors();
        if ($validator->fails()) {
            return redirect()->back()
                            ->withInput($request->all())
                            ->withErrors($errors);
            exit;
        }

        $current_user = auth()->user();
       
        $user = User::find($current_user->id);
        if (!Hash::check($request->oldpassword, $user->password)) {
            return redirect()->back()
                            ->withInput($request->all())
                            ->withErrors(['Old password did not match.']);
            exit;
        }

        $password = Hash::make(request('confirmpassword'));
        $update_attributes['password'] = $password;
        $user = $this->user->updateById($request->id, $update_attributes);
        return redirect()->route('admin.change.password')
                    ->with(self::SUCCESS, 'Password changed successfully.');
    }

    public function masterpricesetting()
    {
        
        $masteradmin = MasterAdminSetting::select('id','price')->find(1);
        
        return view('admin.users.mastersetting', compact('masteradmin'));
    }

    public function masterpricesettingstore(Request $request)
    {
        
        $masteradmin = MasterAdminSetting::find(1);
        $masteradmin->price = request('price');
        $masteradmin->save();
        return redirect()->back();
        // return view('admin.users.mastersetting', compact('masteradmin'));
    }

}
