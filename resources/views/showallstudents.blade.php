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
        img {
            height: 35px;
            width: 35px;
        }

        body {
            font-family: verdana;
            font-size: 1.5em;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Student Program</th>
            <th>Student Year</th>
        </tr>
        @foreach($studentCollection as $student)
            <tr>
                <td>{{ $student->studid }}</td>
                <td>{{ $student->studlname }}, {{ $student->studfname }}</td>
                <td>{{ $student->studcourse }}</td>
                <td>{{ $student->studyear }}</td>
                <td class="icons"><a href="{{ route('student.edit', $student->studid)  }}" title="Edit Student Entry"><img src="{{ asset('images/edit-icon.png') }}" alt=""></a></td>
                <td class="icons"><a href="" title="Delete Student Entry"><img src="{{ asset('images/delete-icon.png') }}" alt=""></a></td>
            </tr>
        @endforeach
        <tr>
            <td colspan="6" id="nav-links">{{ $studentCollection->links() }}</td>
        </tr>
    </table>
</body>
</html>