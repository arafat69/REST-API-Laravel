<?php

use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserApiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/login',[UserApiController::class,'loginUser']);
Route::get('/logout',[UserApiController::class,'logoutUser']);

Route::group(['middleware'=>'auth:sanctum'],function(){
//route for show user
Route::get('/users/{id?}',[UserApiController::class,'showUser']);
// Route for add user
Route::post('/add-user',[UserApiController::class,'addUser']);
// Route for add Multiple user
Route::post('/add-multiple-user',[UserApiController::class,'addMultipleUser']);
// Route for delete  user
Route::get('/delete_user/{id}',[UserApiController::class,'deleteUser']);

//Route for fetch student
Route::get('/student/{id?}',[StudentController::class,'showStudent']);
//Route for add student
Route::post('/add_student',[StudentController::class,'AddStudent']);
//Route for Update student
Route::post('/update_student/{id}',[StudentController::class,'updateStudent']);
//Route for Delete student
Route::get('/delete_student/{id}',[StudentController::class,'deleteStudent']);

});


