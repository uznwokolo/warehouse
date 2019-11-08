<!DOCTYPE html>

<head>
<link href="https://fonts.googleapis.com/css?family=Play|Ubuntu+Condensed&display=swap" rel="stylesheet">
<style>
h2 {
  color: orange;
  font-family: 'Ubuntu Condensed', sans-serif;
}
label, input, form, tr, th, td {
  font-family: 'Play', sans-serif;    
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
<table>
<tr><th>Item ID</th><th>Name</th><th>Location</th></tr>
%for row in rows:
    <tr>
    %for col in row:
        <td>{{col}}</td>
    %end
    </tr>
%end
</table>

</body>

