<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Student;

use Validator;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('addstudent');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $rules = [
            'studid' => 'required|regex:/[0-9]+/|unique:student,studid',
            'studfname' => 'required',
            'studlname' => 'required',
        ];

        $messages = [
            'studid.required' => 'Please supply a student ID number.',
            'studid.regex' => 'Student ID should only be numeric.',
            'studid.unique' => 'Student ID already exists.',
        ];

        $validation = Validator::make($request->input(), $rules, $messages);

        if ($validation->fails()) {     //$validation->passes()
            return redirect()->back()->withInput()->withErrors($validation);
        } else {
            $newStudent = new Student;

            // $newStudent->studid = $request->studid;
            // $newStudent->studfname = $request->studfname;
            // $newStudent->studlname = $request->studlname;
            // $newStudent->studmname = $request->studmname;
            // $newStudent->studcourse = $request->studcourse;
            // $newStudent->studyear = $request->studyear;
    
            // $newStudent->save();

            $newStudent->create([
                'studid' => $request->studid,
                'studfname' => $request->studfname,
                'studmname' => $request->studmname,
                'studlname' => $request->studlname,
                'studcourse' => $request->studcourse,
                'studyear' => $request->studyear
            ]);
    
            return redirect()->to(url('students/all'));
    
            return redirect()->to(route('students.all'));
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        // $totalNumber = count($this->students) - 1;

        // $studentData = Student::findOrFail($id);
        $studentData = Student::where('studid', $id)->first();

        // dd(gettype($studentData));

        if($studentData) {
            return view('found')->with(compact('studentData'));
        }

        else {
            return view('notfound');
        }

        // if($id > $totalNumber) {
        //     return view('notfound');
        // }

        // else {
        //     $data = $this->students[$id];

        //     return view('found')->with('data', $data);
        // }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function showAll() {
        // $studentCollection = Student::get();

        $studentModel = new Student();
        $studentCollection = $studentModel->getAllStudents();

        return view('showallstudents')->with(compact('studentCollection'));
    }
}
