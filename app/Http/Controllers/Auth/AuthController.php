<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Profile;
use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * Where to redirect users after login / registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware($this->guestMiddleware(), ['except' => 'logout']);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'identifier' => 'required|unique:users|integer',
            //'name' => 'required|max:255',
            //'email' => 'required|email|max:255',
            'password' => 'required|min:6|confirmed',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return User::create([
            'identifier' => $data['identifire'],
            //'name' => $data['name'],
            //'email' => $data['email'],
            'password' => bcrypt($data['password']),
        ]);
    }

    /**
     * @api {post} /login Request an authentication token to use the application. 
     * @apiVersion 0.1.0
     * @apiName Login
     * @apiGroup AUTH
     *
     * @apiParam {integer} identifier     User unique citizen id.
     * @apiParam {string}  password       User password.
     *
     * @apiSuccess {JSON} json Success message.
     * @apiSuccessExample {json}  authtoken  Use this to send every request to server.
     * {
     * "response": {
     *     "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9......",
     *     "user": {
     *         "id": 1,
     *         "identifier": "1082940074",
     *         "created_at": "2016-12-11 17:22:08",
     *         "updated_at": "2016-12-11 17:22:08"
     *     }
     * }
     * }
     *
     * @apiError {JSON} json Error message.
     * @apiErrorExample {json} error Invalid credentials.
     * {
     * "error": "invalid_credentials"
     * }
     */
    public function login(Request $request)
    {
        $credentials = $request->only('identifier', 'password');

        try {
            $exp = strtotime("+1 months");
            $customClaims = ['exp' => $exp];

            if (! $token = JWTAuth::attempt($credentials, $customClaims)) {
                return response()->json(['error' => 'invalid_credentials'], 401);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'could_not_create_token', 'e'=>$e], 500);
        }

        $user = JWTAuth::toUser($token);
        //$user->profile = $user->profile;
        //$user->roles = $user->roles;
        $response = ['token'=>$token, 'user'=>$user];
        return response()->json(compact('response'));
    }

    /**
     * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = $this->validator($request->all());

        if ($validator->fails()) {
            return Response()->json(['response' => $validator->errors()], 200);
        }

        //Auth::guard($this->getGuard())->login($this->create($request->all()));
        $exp = strtotime("+1 months");
        $customClaims = ['exp' => $exp];
        $token = JWTAuth::fromUser($this->create($request->all()), $customClaims);

        //return redirect($this->redirectPath());
        return Response()->json(compact('token'), 200);
    }

    /**
     * return the authenticated user
     *
     * @return Response
     */
    static function getAuthenticatedUser()
    {
        try {

            if (! $user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['user_not_found'], 404);
            }
        } catch (TokenExpiredException $e) {
            return response()->json(['token_expired'], $e->getStatusCode());
        } catch (TokenInvalidException $e) {
            return response()->json(['token_invalid'], $e->getStatusCode());
        } catch (JWTException $e) {
            return response()->json(['token_absent'], $e->getStatusCode());
        }

        // the token is valid and we have found the user via the sub claim
        //return response()->json(compact('user'));
        return $user;
    }

   /**
     * @api {get} /logout Request to destroy authtoken authorization. 
     * @apiVersion 0.1.0
     * @apiName Logout
     * @apiGroup AUTH
     *
     * @apiHeader {String} Autorization Autorization header.
     * @apiHeaderExample {json} Header-Example:
     * {
     *     "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9......."
     * }
     *
     * @apiSuccess {JSON} json Success message.
     * @apiSuccessExample {json}  authtoken  Use this to send every request to server.
     * {
     *     "response": "logged out successfully"
     * }
     *
     * @apiError {JSON} json Error message.
     * @apiErrorExample {json} error Invalid credentials.
     * {
     *     "error": "invalid_credentials"
     * }
     */
    public function logout()
    {
        $token = JWTAuth::getToken();
        if(!$token){
            return response()->json(['response'=>'Token not provided']);
        }
        try{
            JWTAuth::invalidate($token);
        } catch(TokenInvalidException $e){
            return response()->json(['response'=>'The token is invalid'], $e->getStatusCode());
        } catch(TokenBlacklistedException $e){
            return response()->json(['response'=>'The token is blacklisted'], $e->getStatusCode());
        }
        return response()->json(['response'=>'logged out successfully'], 200);
    }

    public function refresh(Request $request)
    {
        $credentials = $request->only('identifier', 'password');
        try{
            //$token = JWTAuth::getToken();
            $exp = strtotime("+6 months");
            $customClaims = ['exp' => $exp];

            if (! $token = JWTAuth::attempt($credentials, $customClaims)) {
                return response()->json(['error' => 'invalid_credentials'], 401);
            }
            $user = JWTAuth::toUser($token);
            $user->profile = $user->profile;
            $user->roles = $user->roles;
            $response = ['token'=>$token, 'user'=>$user];
            /* $user = JWTAuth::toUser($token);
            $token = JWTAuth::fromUser($user, $customClaims); */
            //$token = JWTAuth::refresh($token, $customClaims);
        } catch(\Exception $e){
            return response()->json(['response'=>$e->getMessage()]);
        }
        return response()->json(compact('response'));
    }

    private function randomText() {

        $characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < 10; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    public function recovery_password(Request $request)
    {
        $email = $request->get('email');
        $profile = Profile::where('email1','=', $email)
                       ->orWhere('email2','=', $email)->first();
        $user = User::find($profile->user_id);

        $newPassword =  $this->randomtext();
        if($user){
                    $user->password =  \Hash::make($newPassword);
                    $user->save();
            \Mail::send('emails.RecoveryPassword', ['email' => $email, 'newPassword' => $newPassword],
                function($message) use ($email, $user, $newPassword){

                    $message->to($email, $user->profile->first_name)
                        ->subject("Password Changed!");
                    \Log::info('pass: '.$newPassword);
                });
            return response()->json(['response' => 'Enviando correo'], 200);
        }else{
            return response()->json(['response' => 'Los sentimos, el email no existe'], 404);
        }

    }
    public function change_password(Request $request)
    {
        $objPassword = $request->all();
        $user = User::where('email',$objPassword['email'])->first();
        $hashedPassword = $user->password;

        if (Hash::check($objPassword['password_current'], $hashedPassword)){
            $user->password = Hash::make($objPassword['password_new']);
            $user->save();
        }else{
            return response()->json(['error' => 'Contraseña invalida'], 404);
        }
    }
}
