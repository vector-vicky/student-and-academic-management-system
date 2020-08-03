<?php

/*require "config1.php";*/

session_start();



$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "dbstudent";
$message = "Oops!!Something went wrong!";

$link = new mysqli ($host,$dbusername,$dbpassword,$dbname);

$Department_number = $_POST[ "Department_number" ];
$Department_name = $_POST[ "Department_name" ];

$sql= "INSERT INTO `department` 
(`Department_number`,`Department_name`)
values ('$Department_number','$Department_name');";

$stmt = mysqli_query($link, $sql);
 if (mysqli_error($link))
      {

	echo"<script type='text/javascript'>alert('$message');window.location.href='welcomeadmin.php';</script>";

         

      }
else{
header( "location: welcomeadmin.php" );
}


$link->close();

?>