<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserApiController extends Controller
{

    //User Login
    public function loginUser(Request $request)
    {
        $user = User::where('email', $request->email)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            $message = "Incorrect email or password";
            return response()->json(['message'=>$message],422);
        }
        $token = $user->createToken('my-aap-token')->plainTextToken;
        $response = [
            'user' => $user,
            'token' => $token
        ];
        return response()->json($response, 200);
    }

    //Show All Users
    public function showUser($id = null)
    {
        if ($id == '') {
            $users = User::all();
            return response()->json(['Users' => $users], 200);
        } else {
            $users = User::find($id);
            return response()->json(['Users' => $users], 200);
        }
    }

    //Add New User
    public function addUser(Request $request)
    {
        $data = $request->all();
        // return $data;

        //custom error message
        // $rulse=[
        //     'name'=>'required',
        //     'email'=>'required|email|unique::users',
        //     'password'=>'required'
        // ];
        // $customMessage=[
        //     'name.required'=>'Name is Required',
        //     'email.required'=>'Email is Required',
        //     'email.email'=>'Email must be a valid Email',
        //     'password.required'=>'Password is Required'
        // ];
        // $validataion = Validator($data,$rulse,$customMessage);

        $user = new User();
        $user->name = $data['name'];
        $user->email = $data['email'];
        $user->password = bcrypt($data['password']);
        $user->save();
        $message = 'User Successfully Added';
        return response()->json(['message' => $message], 201);
    }


    public function addMultipleUser(Request $request)
    {
        $data = $request->all();
        // return $data;

        if ($data['users']) {

            foreach ($data['users'] as $addUser) {
                $user = new User();
                $user->name = $addUser['name'];
                $user->email = $addUser['email'];
                $user->password = bcrypt($addUser['password']);
                $user->save();
                $message = 'User Successfully Added';
            }

            return response()->json(['message' => $message], 201);
        }
    }

    //delete user
    public function deleteUser($id)
    {
       User::destroy($id);
       $message = "User Successfully Deleted";
        return response()->json(['message' => $message], 201);
    }

    //logout user
    public function logoutUser()
    {
        
    }

}
