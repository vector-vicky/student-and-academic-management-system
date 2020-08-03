<html>
<head><title>Details</title>
<meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; 
		background: url(use6.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  }
table {
    border-top: double;
    border-bottom: double;
    border-right: blank
}
thead, tbody, tfoot {
    border-top: solid;
    border-bottom: solid
}
colgroup {
    border-right: solid
}
td, th { border: 1px solid }
        .wrapper{ width: 350px; padding: 20px; 
		}
        .wrapper{ width: 350px; padding: 20px; 
		}
    </style></head>

<body>
<div class="page-header">
        <font size="9" color="#0066ff">
            STUDENT DETAILS
        </font>
    </div>
	<br style="line-height: 10;">
<div class="table-responsive">
		<table align="center" class="table table-bordered">
		<thead>
			<tr>
				<th>USN</th>
				<th>Name</th>
				
			</tr>
			</thead>
			<tbody>
			<?php

			$Department_number = $_POST[ "Department_number" ];
			$conn = mysqli_connect("localhost","root","","dbstudent");
			
			$sql = "CALL proc($Department_number)";
			$result = $conn->query($sql);

			while ($row = $result-> fetch_assoc()){
				echo "<tr><td>". $row["USN"] ."</td><td>". $row["Name"] ."</td></tr>";
			}
			echo"</table>";

			$conn-> close();
			?>
			</tbody>
		</table>
		</div>
<div>
<a href="welcomeadmin.php" class="btn btn-danger">HOME</a>
</div>
</body>
</html>