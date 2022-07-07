<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        img {
            height: 20px;
            width: 20px;
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
                <td><a href="" title="Edit Student Entry"><img src="{{ asset('images/edit-icon.png') }}" alt=""></a></td>
                <td><a href="" title="Delete Student Entry"><img src="{{ asset('images/delete-icon.png') }}" alt=""></a></td>
            </tr>
        @endforeach
    </table>
</body>
</html>