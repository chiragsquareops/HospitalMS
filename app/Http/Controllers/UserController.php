<?php
 
namespace App\Http\Controllers;
 
use App\Jobs\NewUserWelcomeMail;
use App\Models\User;
use Illuminate\Http\Request;
 
class UserController extends Controller
{
    public function create(Request $request)
    {
        // validate your request
 
        // create a user
        $user = User::create([
            "name"=> $request->name,
            "email" => $request->email
            // other fields
        ]);
 
        // dispatch your queue job
        dispatch(new NewUserWelcomeMail($user));
 
        // return your response
    }
}
