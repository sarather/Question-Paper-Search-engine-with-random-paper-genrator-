<?php 
	include 'header.php';
	include 'articlebg.html';
?>
<html><head><link rel="stylesheet" type="text/css" href="style.css"><style>
	.td {
  width:150px;
  border-spacing:0 15px;	
  align:left;
  padding-left:1130px;
}
.b{
border: none;
background: #404040;
color: #ffffff !important;
font-weight: 100;
padding: 20px;
text-transform: uppercase;
border-radius: 6px;
display: inline-block;
transition: all 0.3s ease 0s;
}</style> </head>
<table><tr><td>
<h1>Results</h1></td> <td class="td"><form action="index.php" action="POST"> <button class="b"> Home Page </button></form></td>
</tr></table>
</html>

<div class="article-container">
	<?php 
		$title = mysqli_real_escape_string($conn, $_GET['title']);
		$date = mysqli_real_escape_string($conn, $_GET['date']);

	$sql = "SELECT * FROM article WHERE a_title='$title' AND a_date='$date'";
		$result = mysqli_query($conn , $sql);
		$queryResults = mysqli_num_rows($result);

		if($queryResults >0){
			while ($row = mysqli_fetch_assoc($result)) {
				echo "<div class=''>
					<h3>".$row['a_title']."</h3>
					<p>".$row['a_year']."</p>
					<p>".$row['a_question1']."</p>
					<p>".$row['a_question2']."</p>
					<p>".$row['a_question3']."</p>
					<p>".$row['a_question4']."</p>
					<p>".$row['a_question5']."</p>
					<p>".$row['a_question6']."</p>
					<p>".$row['a_question7']."</p>
					<p>".$row['a_question8']."</p>
					<p>".$row['a_question9']."</p>
					<p>".$row['a_question10']."</p>
					
					<p>".$row['a_date']."</p>
					<p>".$row['a_department']."</p>
				</div>";
			}
		}

	?>	

</div>
</body>