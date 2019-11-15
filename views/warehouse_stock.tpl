% include('main_nav.tpl', title='Warehouse Stock')

<form action="/additem" method="post">
    <div>
        <h2>Add Item to Warehouse</h2>
            <label>Item ID: <input name="itemId" type="text" /></label>
            <label>Item Name: <input name="itemName" type="text" /></label>
            <label>Location: <input name="itemLocation" type="text" />
            <input value="Submit" type="submit" /></label>
    </div>
</form>   
<hr/>
<form action="/assigntool" method="post">
    <div>
        <h2>Assign Tool to Jobsite</h2>
            <label>Item ID: <input name="itemId" type="text" /></label>
            <label>Jobsite Name: <input name="jobsiteName" type="text" />
            <input value="Submit" type="submit" /></label>
    </div>
</form>
<hr/>
<h2>Available Stock</h2>
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

