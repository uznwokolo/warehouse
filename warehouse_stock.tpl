<h1>Current stock in warehouse</h1>
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