<?php session_start();
include_once "dbh1.php";
include "heading.html";
$year = 1990;
$sql = "SELECT * FROM subjects";
$result = mysqli_query($conn, $sql);
?>

<!DOCTYPE HTML>
<html>

<head>
    <title>
        RANDOM PAPERS INSERTION
    </title>
</head>

<body style="background-color:#66ffff;">
	<marquee> Please Use  < br > tag without space at end of each <mark> question </mark>  It will help to display the questions in a systematic order... Insert
	5 Question at a time </marquee> 
    <form action="insertion.php" method="POST">
        <center>

            Subject: <select name="sub" id="sub">
                <?php
                while ($row = $result->fetch_assoc()) :

                    echo "<option>" . $row['subjects'] . "</option>";

                endwhile; ?>
            </select><br>

            <textarea placeholder="Question" name="Question" id="Question" style="resize:none; height:100px; width:500px;" required></textarea><br>
            <select name="Year" id="Year">
                <?php
                for ($year = 1990; $year <= date("Y"); $year++) {
                    print("<option>" . $year . "</option>");
                } ?>
            </select> <br />
            <input type="text" placeholder="Teacher's Name" name="Teacher" id="Teacher" required><br />
            <button type="submit" name="submit" id="submit">Submit</button>
            <center>
    </form>
    <a href="randquest.php" style="text-decoration:none;">Random Questions Generator</a>
</body>

</html>