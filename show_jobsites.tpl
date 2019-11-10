<!DOCTYPE html>

<head>
<link href="https://fonts.googleapis.com/css?family=Play|Ubuntu+Condensed&display=swap" rel="stylesheet">
<style>
body {
	background-color: beige;
}
h2 {
  color: chocolate;
  font-family: 'Ubuntu Condensed', sans-serif;
}
label, input, form {
  font-family: 'Play', sans-serif;    
}
.houston { 
	width: 600px;
}
.houston th {
   height: 40px;
   border-bottom:3px solid lavender;
   font-size: 18px;
}
.houston, .houston td, .houston th {
   font-family: 'Play', sans-serif;
   text-align: center;
   padding: 5px;
   color: white;
   background-color: darkslategray;
}
</style>
</head>

<body>

<form action="/addjobsite" method="post">
    <div>
        <h2>Add A Jobsite</h2>
            <label>Name: <input name="jobsiteName" type="text" /></label>
            <input value="Submit" type="submit" /></label>
    </div>
</form>
        
<hr/>
<h2>Current Jobsites</h2>
<table class="houston">
<tr><th>Jobsite ID</th><th>Name</th></tr>
%for row in rows:
    <tr>
    %for col in row:
        <td>{{col}}</td>
    %end
    </tr>
%end
</table>

</body>

