<?php

/*require "config1.php";*/

session_start();

$USN = $_POST[ "USN" ];
$Subject_code = $_POST[ "Subject_code" ];
$First_internals = $_POST[ "First_internals" ];
$Second_internals = $_POST[ "Second_internals" ];
$Third_internals = $_POST[ "Third_internals" ];
$Final_internals = $_POST[ "Final_internals" ];
$Result = $_POST[ "Result" ];

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "dbstudent";
$message = "Oops!!Something went wrong!";


$link = new mysqli ($host,$dbusername,$dbpassword,$dbname);

$sql= "Update `marks1` set `First_internals`='$First_internals',`Second_internals`='$Second_internals',`Third_internals`='$Third_internals',`Result`='$Result' where USN = '$USN' and Subject_code='$Subject_code' ";
 

$stmt = mysqli_query($link, $sql);

 if (mysqli_error($link))
      {
	echo"<script type='text/javascript'>alert('$message');window.location.href='welcometeacher.php';</script>";

        

      }
else{
header( "location: welcometeacher.php" );
}






$link->close();

?>