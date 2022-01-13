<?php
$username=$_POST['user'];
$password=md5($_POST['pass']);

$username=stripcslashes($username);
$password=stripcslashes($password);



$con= mysqli_connect("localhost", "root","");
mysqli_select_db($con,"dbphpsearch");

$result =mysqli_query($con,"select * from teacher where username='$username' and password='$password'")
	or die("failed to query database ".mysqli_error($con));
$row = mysqli_fetch_array($result);
if($row['username'] == $username && $row['password'] == $password) {
	
	header("Location: index.html");
}
else
	header("Location: failed.html");
	

?>