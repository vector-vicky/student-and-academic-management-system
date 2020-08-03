<?php

/*require "config1.php";*/

session_start();

$USN = $_POST[ "USN" ];
$Name = $_POST[ "Name" ];
$Registration_number = $_POST[ "Registration_number" ];
$Department_number = $_POST[ "Department_number" ];
$Quota = $_POST[ "Quota" ];

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "dbstudent";

$link = new mysqli ($host,$dbusername,$dbpassword,$dbname);

$sql= "INSERT INTO `admission` (`USN`,`Name`,`Registration_number`,`Department_number`,`Quota`)
values ('$USN','$Name','$Registration_number','$Department_number','$Quota')";

$stmt = mysqli_query($link, $sql);




$link->close();

?>

<?php

/*require "config1.php";*/

$Address = $_POST[ "Address" ];
$Phone_number = $_POST[ "Phone_number" ];
$Gender = $_POST[ "Gender" ];
$DOB = $_POST[ "DOB" ];
$Mail_ID = $_POST[ "Mail_ID" ];
$USN = $_POST[ "USN" ];
$Name = $_POST[ "Name" ];

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "dbstudent";
$message = "Oops!!Something went wrong!";


$link = new mysqli ($host,$dbusername,$dbpassword,$dbname);

$sql= "INSERT INTO `general` (`USN`,`Name`,`Address`,`Phone_number`,`Gender`,`DOB`,`Mail_ID`)
values ('$USN','$Name','$Address','$Phone_number','$Gender','$DOB','$Mail_ID')";

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







