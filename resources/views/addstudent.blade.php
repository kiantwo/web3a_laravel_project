<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="{{  asset('css/bootstrap.css')   }}">
    <script src="{{  asset('js/bootstrap.js')   }}"></script>
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
    <h1>Add Student Information</h1>
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
            @php
                $count = 1;
            @endphp

            @foreach($programs as $program)
                @if(($count == 1) and (old('studcourse') <> $program['prog_sname']))
                    <option value="{{  $program['prog_sname'] }}" selected>{{ $program['prog_fname'] }}</option>
                @elseif(old('studcourse') === $program['prog_sname'])
                    <option value="{{  $program['prog_sname'] }}" selected>{{ $program['prog_fname'] }}</option>
                @else
                <option value="{{  $program['prog_sname'] }}">{{ $program['prog_fname'] }}</option>
                @endif

                @php
                    $count++;
                @endphp
            @endforeach
            <!-- <option value="BSEMC">Bachelor of Science in Entertainment and Multimedia Computing</option> -->
        </select> 
        <br>
        <label for="studyear">
            Year:
        </label>
        <select name="studyear" id="studyear">
            @php
                $count = 1;
            @endphp

            @foreach($years as $key=>$value)
                @if(($count == 1) and (old('studyear') <> $value))
                    <option value="{{  $key }}" selected>{{ $value }}</option>
                @elseif(old('studyear') === $value)
                    <option value="{{  $key }}" selected>{{ $value }}</option>
                @else
                <option value="{{  $key }}">{{ $value }}</option>
                @endif

                @php
                    $count++;
                @endphp
            @endforeach
        </select> 
        <br>
        <button type="submit" class="btn btn-primary">
            Add Student
        </button>
        <button type="reset" class="btn btn-danger">
            Clear Values
        </button>
    </form>
    </section>
</body>
</html>