<html>
<body background="hh.jpg">
<head><style>	.td {
  width:150px;
  border-spacing:20 30px;	
  padding-left:1100px;
}
.c{
	color:#fff;
	background: #ffb3b3;
	width:250px;
	height:40px;
	margin: 3px 410px;
	text-transform: uppercase;
}
.b{
color: #fff !important;
text-transform: uppercase;
text-decoration: none;
background: #60a3bc;
border-radius: 50px;
display: inline-block;
border: none;
width:100px;
height:50px;
transition: all 0.4s ease 0s;
text-align:center;
}
.tt{
	border:2px solid;
}
.button {
			color: #fff !important;
			background: #ed3330;
			padding: 15px 30px;
			margin: 3px 400px;
			border-radius:30px;
			display: inline-block;
			border: none;
			transition: all 0.4s ease 0s;
			margin-left: 405px;
			;
		}
.in {
			padding: 10px 180px;
			border-radius: 40px;
			display: inline-block;
			margin: 8px 405px;
			border: none;
			transition: all 0.4s ease 0
		}
</style></head><table><tr><td>
<h1>Welcome</h1></td> <td class="td"><form action="index.html" action="POST"> <button class="b">View Options </button></form></td></tr></table>
<form action="searchdep.php" method="POST" autocomplete="off">
			<select class="c" name="search">
  <option value="Computer Department">Computer Department</option>
  <option value="English Department">English Department</option>
  <option value="Management Department">Management Department </option>
  <option value="Social Department">Social Department</option>
</select><br><br>

			<button class="button" type="submit" name="submit-search">Search !! </button>
</form><br><br>
<table border="2"align="center"> <tr><td><mark>Name </td></mark> <td><mark>Subject</td></mark> <td><mark> Department</mark></td><td><mark>Message</mark></td></tr>

<?php

	$con=mysqli_connect('localhost','root','','dbphpsearch');
	$sql ="Select * from request1;";
	$result=mysqli_query($con, $sql);
	$queryResults=mysqli_num_rows($result);
	if($queryResults>0){
		while($row = mysqli_fetch_assoc($result)){
			
			echo "<tr><td>".$row['name']."</td><td>".$row['subject']."</td><td>".$row['department']."</td><td>".$row['message']."</td></tr>";
		}
	}

?>
</table><br><br><br><br><br>
			
</html>