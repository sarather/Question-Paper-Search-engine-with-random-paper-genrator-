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
border-radius: 50px;
display: inline-block;
border: none;
transition: all 0.4s ease 0s;
}
</style>
</head><table><tr><td>
<h1>Seach Results</h1></td> <td class="td"><form action="index.php" action="POST"> <button class="b"> Home Page </button></form></td></tr></table>
	<div class="article-container">
		<?php
		if (isset($_POST['submit-search'])) {
			$search = mysqli_real_escape_string($conn, $_POST['search']);
			$sql = "SELECT * FROM article WHERE a_title LIKE '%$search%' OR a_question1 LIKE '%$search%' OR a_question2 LIKE '%$search%'
				OR a_question3 LIKE '%$search%'
				OR a_question4 LIKE '%$search%' 
				OR a_question5 LIKE '%$search%' 
				OR a_question6 LIKE '%$search%' 
				OR a_question7 LIKE '%$search%'
				OR a_question8 LIKE '%$search%' 
				OR a_question9 LIKE '%$search%'
				OR a_question10 LIKE '%$search%' 
				OR a_department LIKE '%$search%' 
				OR a_year LIKE '%search' 
				OR a_date LIKE '%$search%'";
			$result = mysqli_query($conn, $sql);
			$queryResult = mysqli_num_rows($result);
			echo "You have found  " . $queryResult . "  results!!";

			if ($queryResult > 0) {
				while ($row = mysqli_fetch_assoc($result)) {
					echo "<a href='article.php?title=" . $row['a_title'] . "&date=" . $row['a_date'] . "'><div class='withoutUndies'>
					<h3>" . $row['a_title'] . "</h3>
					<p>" . $row['a_year'] . "</p>
					<p>" . $row['a_question1'] . "</p>
					<p>" . $row['a_question2'] . "</p>
					<p>" . $row['a_date'] . "</p>
					<p>" . $row['a_department'] . "</p>
				</div>";
				}
			} else {
				echo "No result found!!!";
			}
		}


		?>
	</div>
	</html>