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

<form action="/additem" method="post">
    <div>
        <h2>Add Item to Warehouse Stock</h2>
            <label>Item ID: <input name="itemId" type="text" /></label>
            <label>Item Name: <input name="itemName" type="text" /></label>
            <label>Location: <input name="itemLocation" type="text" />
            <input value="Submit" type="submit" /></label>
    </div>
</form>
        
<hr/>
<h2>Current stock in warehouse</h2>
<table class="houston">
<tr><th>Item ID</th><th>Name</th><th>Location</th><th>Assigned To</th></tr>
%for row in rows:
    <tr>
    %for col in row:
        <td>{{col}}</td>
    %end
    </tr>
%end
</table>

</body>

