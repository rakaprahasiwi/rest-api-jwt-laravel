<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth as FacadesJWTAuth;
use Tymon\JWTAuth\JWTAuth;

class AuthController extends Controller
{
    public $loginAfterSignUp = true;

    public function login(Request $request){
        $credentials = $request->only("email", "password");
        $token = null;

        if(!$token = FacadesJWTAuth::attempt($credentials)){
            return response()->json([
                "status" => false,
                "message" => "Unauthorzed"
            ]);
        }

        return response()->json([
            "status" => true,
            "token" => $token
        ]);
    }

    public function register(Request $request){
        $this->validate($request, [
            "name" => "required|string",
            "email" => "required|email|unique:users",
            "password" => "required|string|min:6|max:10"
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        if($this->loginAfterSignUp){
            $login = $this->login($request);
        } else {
            $login = "try to login";
        }

        return response()->json([
            "status" => true,
            "user" => $user,
            "login" => $login
        ]);
    }

    public function logout(Request $request){
        $this->validate($request, [
            "token" => "required"
        ]);

        try{
            FacadesJWTAuth::invalidate($request->token);

            return response()->json([
                "status" => true,
                "message" => "User logged out successfully"
            ]);
        } catch(JWTException $exception){
            return response()->json([
                "status" => false,
                "message" => "Ops, the user can not be logged out"
            ]);
        }
    }
}
