<?php 
include 'heading.html';
?>
<html>

<head>
	<link rel="stylesheet" href="Style2.css">
</head>

<body>
	<form action="insertpaper.php" method="POST">
		<center>
			<input type="text" name="a_title" placeholder="Title"><br><br>
			<input type="text" name="a_year" placeholder="Year"><br><br>
			<input type="text" name="question1" placeholder="Question 1"><br><br>
			<input type="text" name="question2" placeholder="Question 2"><br><br>
			<input type="text" name="question3" placeholder="Question 3"><br><br>
			<input type="text" name="question4" placeholder="Question 4"><br><br>
			<input type="text" name="question5" placeholder="Question 5"><br><br>
			<input type="text" name="question6" placeholder="Question 6"><br><br>
			<input type="text" name="question7" placeholder="Question 7"><br><br>
			<input type="text" name="question8" placeholder="Question 8"><br><br>
			<input type="text" name="question9" placeholder="Question 9"><br><br>
			<input type="text" name="question10" placeholder="Question 10"><br><br>
			<input type="date" name="date" placeholder="date"><br><br>
			<input type="text" name="department" placeholder="Department"><br><br>
			<button>Insert</button>
		</center>
		</form>
</body>

</html>