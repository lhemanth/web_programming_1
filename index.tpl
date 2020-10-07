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
</tr>

%for row in rows: 
    <tr>
    %for i in row:
        <td>{{str(i)}}</td>
    %end
    </tr>
%end
</table>

</body>
</html>