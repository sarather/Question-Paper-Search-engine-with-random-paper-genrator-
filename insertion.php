<?php session_start();
if (isset($_POST['submit'])) {


    include_once "dbh.php";

    $sub = $_POST['sub'];
    $question = $_POST['Question'];
    $year = $_POST['Year'];
    $teacher = $_POST['Teacher'];

    if ($sub == "C++") {
        $query = "insert into cplusplus(question,year,teacher) values(?,?,?)";
        $values = array($question, $year, $teacher);
        $cdn = "mysql:host=localhost;dbname=dbphpsearch";
        $object = new PDO($cdn, "root", "");
        $ref = $object->prepare($query);
        $ref->execute($values);
    } else {
        $query = "insert into $sub(question,year,teacher) values(?,?,?)";
        $values = array($question, $year, $teacher);
        $cdn = "mysql:host=localhost;dbname=dbphpsearch";
        $object = new PDO($cdn, "root", "");
        $ref = $object->prepare($query);
        $ref->execute($values);
    }


    echo "<h1>Insertion Successful in $sub</h1><br>";
    echo '<form action="index1.php"><input type="submit" value="Add More"></form>';
} else echo "You Failed";
