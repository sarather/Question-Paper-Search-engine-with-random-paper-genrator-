<?php 
include 'header.php';
include 'sb.html';
?>
<html>

<head>
	<link rel="stylesheet" type="text/css" href="style.css" ><style>
	.td {
  width:150px;
  border-spacing:0 15px;	
  align:left;
  padding-left:986px;
}
.b{
color: #fff !important;
text-transform: uppercase;
text-decoration: none;
background: #60a3bc;
padding: 20px;
border-radius: 10px;
display: inline-block;
border: none;
transition: all 0.4s ease 0s;
}
</style>
</head><table><tr>
<td><form action="index.html" action="POST"> <button class="b">View Options </button></form></td><td><form action="index.php" action="POST"> <button class="b"> Home Page </button></form></td></tr></table>

<h1>Seach Results</h1>
		<div class="article-container">
		<?php
		if (isset($_POST['submit-search'])) {
			$search = mysqli_real_escape_string($conn, $_POST['search']);
			$sql = "SELECT * FROM request1 WHERE name LIKE '%$search%' OR subject LIKE '%$search%' OR department LIKE '%$search%'";
			$result = mysqli_query($conn, $sql);
			$queryResult = mysqli_num_rows($result);
			echo "You have found  " . $queryResult . "  results!!";
	
			if ($queryResult > 0) {
				while ($row = mysqli_fetch_assoc($result)) {
					echo "<?department=" . $row['department'] . "'><div class='withoutUndies'>
					<table border=4 	><tr>
					<td>" . $row['name'] . "</td>
					<td>" . $row['subject'] . "</td>
					<td><mark>" . $row['department'] . "</mark></td>
					<td>" . $row['message'] . "</td><br></table>
				";
				}
			} else {
				echo "No result found!!!";
			}
		}


		?>	
	</div>
	</html>