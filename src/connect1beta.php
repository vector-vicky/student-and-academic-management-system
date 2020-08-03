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
$message = "Something went wrong!"

$link = new mysqli ($host,$dbusername,$dbpassword,$dbname);

$sql= "INSERT INTO `admission` (`USN`,`Name`,`Registration_number`,`Department_number`,`Quota`)
values ('$USN','$Name','$Registration_number','$Department_number','$Quota')";

$stmt = mysqli_query($link, $sql);

/*$sql2="SELECT Name FROM admission WHERE USN = ?"
$stmt2 = mysqli_query($link, $sql2);
$stmt2->execute();
$result3 = $stmt2->get_result();
$row2 = $result3->fetch_assoc();

if($result3->num_rows == 1){
echo"<script type='text/javascript'>alert('$message');</script>";*/

}




/*$sql2 = "SELECT `USN` FROM `admission` WHERE Name = '$Name'";
			
			$result = mysqli_query($link, $sql2);
			
			if( $result ){
				while( $row = mysqli_fetch_row($result)){
					$USN = $row[0];
				}
			}
			
			
			$_SESSION["loggedin"] = true;
            $_SESSION["USN"] = $USN;
			
			/*header( "location: carparking3.php" );*/




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

$link = new mysqli ($host,$dbusername,$dbpassword,$dbname);

$sql= "INSERT INTO `general` (`USN`,`Name`,`Address`,`Phone_number`,`Gender`,`DOB`,`Mail_ID`)
values ('$USN','$Name','$Address','$Phone_number','$Gender','$DOB','$Mail_ID')";

$stmt = mysqli_query($link, $sql);

header("location: welcomeadmin.php");
/*$sql2 = "SELECT `USN` FROM `general` WHERE Name = '$Name'";
			
			$result = mysqli_query($link, $sql2);
			
			if( $result ){
				while( $row = mysqli_fetch_row($result)){
					$USN = $row[0];
				}
			}
			
			
			$_SESSION["loggedin"] = true;
            $_SESSION["USN"] = $USN;
			
			/*header( "location: carparking3.php" );*/



$link->close();

?>







