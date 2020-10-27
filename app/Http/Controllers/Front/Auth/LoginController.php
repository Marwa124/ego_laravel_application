<?php

namespace App\Http\Controllers\Front\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Repositories\RoleRepository;
use App\Repositories\UploadRepository;
use App\Repositories\UserRepository;
use function Couchbase\basicDecoderV1;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Request;
use Laravel\Socialite\Facades\Socialite;
use Prettus\Validator\Exceptions\ValidatorException;
use Spatie\Permission\Models\Role;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';
    // private $userRepository;
    // private $uploadRepository;
    // private $roleRepository;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // UserRepository $userRepository, UploadRepository $uploadRepository, RoleRepository $roleRepository
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        // $this->userRepository = $userRepository;
        // $this->uploadRepository = $uploadRepository;
        // $this->roleRepository = $roleRepository;
    }

    /**
     * Redirect the user to the Facebook authentication page.
     *
     * @return \Illuminate\Http\Response
     */
    public function redirectToProvider($service)
    {
        return Socialite::driver($service)->redirect();
    }




    public function index(){
        return view('front.auth.login');
    }

    /**
     * Obtain the user information from Facebook.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback()
    {

        // dd(request()->all());
        // $userSocial = Socialite::driver($service)->user();
        $user = User::where('email',request()->email)->first();


        // if(!$user){
        //     $user = new User;
        //     $user->name = $userSocial->name;
        //     $user->email = $userSocial->email;
        //     $user->password = bcrypt(str_random());
        //     $user->save();
        //     $defaultRoles = $this->roleRepository->findByField('default','1');
        //     $defaultRoles = $defaultRoles->pluck('name')->toArray();
        //     $user->assignRole($defaultRoles);

        //     try {
        //         $upload = $this->uploadRepository->create(['uuid' => $userSocial->token]);
        //         $upload->addMediaFromUrl($userSocial->avatar_original)
        //             ->withCustomProperties(['uuid' => $userSocial->token])
        //             ->toMediaCollection('avatar');

        //         $cacheUpload = $this->uploadRepository->getByUuid($userSocial->token);
        //         $mediaItem = $cacheUpload->getMedia('avatar')->first();
        //         $mediaItem->copy($user, 'avatar');
        //     } catch (ValidatorException $e) {
        //         Flash::error($e->getMessage());
        //     }
        // }
            if(!$user){
                Flash::error('Wrong Email or Password');
            }

        auth()->login($user,true);
        return redirect()->route('front.index');

        // return redirect('front/home');
    }




    public function register()
    {
        return view('front.auth.register');
    }

    /**
     * Obtain the user information from Facebook.
     *
     * @return \Illuminate\Http\Response
     */
    public function registerProcess()
    {
        try{

            // $rules = [
            //     'phone'      => 'required|regex:/(^\+(?:[0-9]?){6,14}[0-9]$)|(^01(1|2|0|5)[0-9]{8}$)',
            //     // 'email'   => 'required|email|unique:users,email',
            //     'password'   => 'required|min:8|confirmed',
            //     'email'      => 'required|string|email|max:255|unique:users,email|confirmed',
            //   ];
            //   $messages = [
            //     'phone.regex' => 'enter a valid phone number',
            //     'password.min:8' => 'password has to be minimum 8 chars',
            //     'password.confirmed' => 'password confirmation is invalid',
            //     'email.confirmed' => 'email confirmation is invalid',
            //     'email.unique' => 'email has to be unique'
            //   ];
            //   dd($this->validate($request, $rules, $messages));
            //   $this->validate($request, $rules, $messages);



            $validate = \Validator::make(\request()->all(),[
                // regex:/(^\+(?:[0-9]?){6,14}[0-9]$)|(^01(1|2|0|5)[0-9]{8}$)/
                'phone'      => 'required',
                // 'email'   => 'required|email|unique:users,email',
                'password'   => 'required|min:8|confirmed',
                'email'      => 'required|string|email|max:255|unique:users,email|confirmed',
            ]);

            // if($validate->fails() ){
            //     return back();
            // }
            if($validate->fails())
            {
                return back()->with('error', $validate->errors()->first());
            }

            if(\request('privacy') != 1){
                return back();

            }


            $user =  User::create(
                [
                    'name' =>  \request('username'),
                    'email' =>  \request('email'),
                    'password' =>  Hash::make(\request('password')),
                ]
            );

            $role = Role::findOrFail(4);
            $user->assignRole($role);

            $user = User::where('email',\request('email'))->first();

            if(!$user){
                Flash::error('Wrong Email or Password');
            }

            auth()->login($user,true);
            return redirect()->route('front.index');

            // return redirect('front/home');

        }
        catch (\Exception $e){
            return back();

        }


    }
}
