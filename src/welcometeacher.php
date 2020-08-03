<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: loginteacher.php");
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
  background-size: cover; }}
    </style>
</head>
<body>
    <div class="page-header">
        <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1>
    </div>
	<br style="line-height:20;">
	<div class="list-group">
  <a href="enterdepartmentteacher.html" class="list-group-item">View students detail(Department wise)</a>
  <a href="marks1.html" class="list-group-item">Enter student mark</a>
  <a href="marks2.html" class="list-group-item">Update student mark</a>
  <a href="markstest.html" class="list-group-item">View student marks</a>
</div>
    <br style="line-height: 5;">
        <div>
        <a href="resetteacher.php" class="btn btn-warning">Reset Your Password</a></div><br>
        <a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
    
</body>
</html>