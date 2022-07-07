<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        input, select {
            margin-bottom: 10px;
        }

        span {
            color: #f00;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <section id="creation-form">
    <form action="{{  route('students.save')  }}" method="post">
        <input type="hidden" name="_token" value="{{ csrf_token() }}">
        <label for="studid">
            Student ID:
            <input type="text" name="studid" id="studid" value="{{ old('studid') }}">
            @foreach($errors->get('studid') as $errorMessage)
                <span>{{  $errorMessage  }}</span>
            @endforeach
        </label>
        <br>
        <label for="studfname">
            First Name:
            <input type="text" name="studfname" id="studfname" value="{{  old('studfname')  }}">
            @foreach($errors->get('studfname') as $errorMessage)
                <span>{{  $errorMessage  }}</span>
            @endforeach
        </label>
        <br>
        <label for="studmname">
            Middle Name (optional):
            <input type="text" name="studmname" id="studmname">
        </label>
        <br>
        <label for="studlname">
            Last Name:
            <input type="text" name="studlname" id="studlname" value="{{  old('studlname')  }}">
            @foreach($errors->get('studlname') as $errorMessage)
                <span>{{  $errorMessage  }}</span>
            @endforeach
        </label>
        <br>
        <label for="studprogram">
            Program:
        </label>
        <select name="studcourse" id="studcourse">
            <option value="BSCS" selected>Bachelor of Science in Computer Science</option>
            <option value="BSIT">Bachelor of Science in Information Technology</option>
            <option value="BSEMC">Bachelor of Science in Entertainment and Multimedia Computing</option>
        </select> 
        <br>
        <label for="studyear">
            Year:
        </label>
        <select name="studyear" id="studyear">
            <option value="1" selected>First Year</option>
            <option value="2">Second Year</option>
            <option value="3">Third Year</option>
            <option value="4">Fourth Year</option>
        </select> 
        <br>
        <button type="submit">
            Add Student
        </button>
        <button type="reset">
            Clear Values
        </button>
    </form>
    </section>
</body>
</html>