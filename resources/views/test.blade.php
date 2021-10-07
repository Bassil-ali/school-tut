@foreach ($groups as $group)
<tr>

    <td>
        <ul>
            @foreach ($group->students as $student)
                <li>{{$student->name}}</li>
            @endforeach
        </ul>
    </td>
</tr>
@endforeach



<br>
<br>

@foreach ($students as $student)
<tr>
    <td>
        <ul>
            {@foreach ($student->groups as $group)
                <li>{{$group->group_name}} </li>
            @endforeach}
        </ul>
    </td>
</tr>
@endforeach
