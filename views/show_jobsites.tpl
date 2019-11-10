% include('main_nav.tpl', title='Jobsites')

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

