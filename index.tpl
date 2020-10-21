<html>
<head>
<title>Web Programming</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
<link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet" >
</head>
<body>
<h3 class=" w3-center"><b>Web Programming Home Work 1</b></h3>


<table class="w3-table w3-bordered w3-border">
<tr>
<td><b>ID</b></td>
<td><b> Name </b> </td>
<td><b>Status </b></td>
<td><b>Check Status </b></td>
</tr>



%for row in rows:
    <tr>
        <td>
            {{row[0]}}
        </td>
        <td>
            {{row[1]}}
        </td>
        <td>
        %if row[2]==0:
            <a href="/set_status/{{row[0]}}/1"><i class="material-icons">check_box_outline_blank</i></a>
        %else:
            <a href="/set_status/{{row[0]}}/0"><i class="material-icons">check_box</i></a>
        %end
        </td>
<td> {{row[2]}}</td>
    </tr>
%end
</table>

  <a href="/add_item"><button class="w3-button w3-block w3-green" >Add Student</button></a>

</body>
</html>