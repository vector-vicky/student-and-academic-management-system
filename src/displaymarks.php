<html>
<head><title>Marks</title>
<meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; text-align: center;
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
            STUDENT ACADEMIC DETAILS
        </font>
    </div>
	<br style="line-height: 10;">
<div class="table-responsive">
		<table align="center" class="table table-bordered">
		<thead>
			<tr>
				<th>Subject code</th>
				<th>First Internals</th>
				<th>Second Internals</th>
				<th>Third Internals</th>
				<th>Final Internals</th>
				<th>Result</th>
			</tr>
			</thead>
			<tbody>
			<?php
			$USN = $_POST[ "USN" ];
			$conn = mysqli_connect("localhost","root","","dbstudent");
			
			$sql = "SELECT Subject_code, First_internals, Second_internals, Third_internals, Final_internals, Result FROM marks1 where USN = '$USN'";
			$result = $conn->query($sql);
			while ($row = $result-> fetch_assoc()){
				echo "<tr><td>". $row["Subject_code"] ."</td><td>". $row["First_internals"] ."</td><td>". $row["Second_internals"]."</td><td>". $row["Third_internals"]."</td><td>". $row["Final_internals"]."</td><td>". $row["Result"] ."</td></tr>";
			}
			echo"</table>";

			$conn-> close();
			?>
			</tbody>
		</table>
		<div>
		<a href="welcometeacher.php" class="btn btn-danger">HOME</a>
</body>
</html>