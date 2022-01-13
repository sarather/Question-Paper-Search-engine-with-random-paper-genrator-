<html>
<head><style>.b{
color: #fff !important;
text-transform: uppercase;
text-decoration: none;
background: #60a3bc;
padding: 20px;
align:left;
border-radius: 50px;
display: inline-block;
border: none;
transition: all 0.4s ease 0s;
}
.body{
	height:100%;
	
}</style></head>

<form action="index.php" action="POST"> <button class="b"> Home Page </button></form>
<body bgcolor="#ff99cc" ></body>
</html>

<?php 
$con=mysqli_connect('localhost','root','','dbphpsearch');


$name = $_POST['name'];
$subject = $_POST['subject'];
$department = $_POST['department'];
$message = $_POST['message'];

$sql = "insert into request1(name,subject,department,message) values ('$name','$subject','$department','$message')";
	if(!mysqli_query($con,$sql)) {
	echo "Not Inserted";
}
else {
	echo "Request Successfully Inserted ";
}
?>