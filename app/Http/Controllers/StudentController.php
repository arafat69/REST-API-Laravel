<?php

namespace App\Http\Controllers;

use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    //get all student
    public function showStudent($id = null)
    {
        if ($id == '') {
            $student = Student::orderBy('id', 'desc')->get();
            return response()->json(['students' => $student], 200);
        } else {
            $student = Student::find($id);
            return response()->json(['students' => $student], 200);
        }
    }

    //add new student
    public function AddStudent(Request $request)
    {
        $data = $request->all();
        
        $student = new Student();
        $student->name = $data['name'];
        $student->roll = $data['roll'];
        $student->reg = $data['reg'];
        $student->department = $data['department'];
        $student->save();
        $message = "Student Successfully Added";
        return response()->json(['message' => $message], 201);
    }

    //Update Student
    public function updateStudent(Request $request, $id)
    {
        $data = $request->all();
      
        $student = Student::find($id);
        $student->name = $data['name'];
        $student->roll = $data['roll'];
        $student->reg = $data['reg'];
        $student->department = $data['department'];
        $student->save();
        $message = "Student Successfully Updated";
        return response()->json(['message' => $message], 201);
    }

    //delete student
    public function deleteStudent($id)
    {
        Student::destroy($id);
        $message = "Student Successfully Deleted";
        return response()->json(['message' => $message], 201);
    }
}
