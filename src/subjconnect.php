<?php

/*require "config1.php";*/

$Department_number = $_POST[ "Department_number" ];
$Subject_code = $_POST[ "Subject_code" ];
$Subject_name = $_POST[ "Subject_name" ];
$Credits = $_POST[ "Credits" ];
$Semester = $_POST[ "Semester" ];


$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "dbstudent";
$message = "Oops!!Something went wrong!";

$link = new mysqli ($host,$dbusername,$dbpassword,$dbname);

$sql= "INSERT INTO `subjects` (`Department_number`,`Subject_code`,`Subject_name`,`Semester`,`Credits`)
values ('$Department_number','$Subject_code','$Subject_name','$Semester','$Credits')";

$stmt = mysqli_query($link, $sql);

 if (mysqli_error($link))
      {
	echo"<script type='text/javascript'>alert('$message');window.location.href='welcomeadmin.php';</script>";

         echo('Error: ' . mysqli_error($link));

      }
else{
header( "location: welcomeadmin.php" );
}



/*$sql2 = "SELECT `Subject_code` FROM `subjects` WHERE Subject_name = '$Subject_name'";
			
			$result = mysqli_query($link, $sql2);
			
			if( $result ){
				while( $row = mysqli_fetch_row($result)){
					$Subject_code = $row[0];
				}
			}
			
			
			$_SESSION["loggedin"] = true;
            $_SESSION["Subject_code"] = $Subject_code;
			
			/*header( "location: carparking3.php" );*/



$link->close();

?>