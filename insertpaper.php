<?php 
$con = mysqli_connect('localhost','root','');
if(!$con) {
	echo "Not connected";
}
if (!mysqli_select_db($con,'dbphpsearch')){
	echo 'Database Not Selected';	
	
}
$a_title = $_POST['a_title'];
$a_year = $_POST['a_year'];
$a_question1= $_POST['question1'];
$a_question2= $_POST['question2'];
$a_question3= $_POST['question3'];
$a_question4= $_POST['question4'];
$a_question5= $_POST['question5'];
$a_question6= $_POST['question6'];
$a_question7= $_POST['question7'];
$a_question8= $_POST['question8'];
$a_question9= $_POST['question9'];
$a_question10= $_POST['question10'];
$a_date = $_POST['date'];
$a_department=$_POST['department'];


$sql = "insert  into article (a_title,a_year,a_question1,a_question2,a_question3,a_question4,a_question5,a_question6,a_question7,a_question8,a_question9,a_question10,a_date,a_department) 
values ('$a_title','$a_year','$a_question1','$a_question2','$a_question3','$a_question4','$a_question5','$a_question6','$a_question7','$a_question8','$a_question9','$a_question10','$a_date','$a_department')";
	if(!mysqli_query($con,$sql)) {
	echo "Not Inserted";
}
else {
	header("Location: logout.php");
}
?>