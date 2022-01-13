<?php session_start();
include_once "dbh1.php";
include "heading.html";
$sql = "SELECT * FROM subjects"; //incomplete
$result = mysqli_query($conn, $sql);
?>
<!DOCTYYPE html>
    <html>

    <head>
        <title>Random Question Generator</title>
    </head>

    <body style="background-color:#66ffff;">



        <form method="POST" action="process.randquest.php">
            <center>

                Subject: <select name="sub" id="sub">
                    <?php
                    while ($row = $result->fetch_assoc()) :

                        echo "<option>" . $row['subjects'] . "</option>";

                    endwhile; ?>
                </select><br>



                No. of questions to Generate: <select name="noq" id="noq">
                    <?php
                    for ($i = 1; $i <= 2; $i++) {
                        echo "<option>" . $i . "</option>";
                    }

                    ?>
                </select> <br>

                <input type="submit" name="submit" value="Generate" style="color:white; background-image:linear-gradient(to right,green,green);">
            </center>
        </form>
        <center>
            <a href="index1.php">Insert Questions</a><br><br>
			<form action="index.php"method="POST" ><button> Logout </button></form>
		</center>
    </body>

    </html>