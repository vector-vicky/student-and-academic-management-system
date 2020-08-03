<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: loginadmin.php");
    exit;
}

?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <style type="text/css">
        body{ font: 14px sans-serif; text-align: center;
background: url(use9.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover; }
    </style>
</head>
<body>
    <div class="page-header">
        <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to student & academic management system.</h1>
    </div>
	<br style="line-height:25;">
	<div class="list-group">
  <a href="enterdepartmentadmin.html" class="list-group-item">View students detail(Department wise)</a>
  <a href="general.html" class="list-group-item">Add a new student</a>
  <a href="department.html" class="list-group-item">Add department</a>
  <a href="subject.html" class="list-group-item">Add subject</a>
</div>
    <br style="line-height: 5;">
        
    
        <div><a href="resetadmin.php" class="btn btn-warning">Reset Your Password</a></div><br>
        <a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
    
</body>
</html>