<?php 
include "heading.html";

?>

<html>


<body style="background-color:#66ffff;">


</body></html>
<?php session_start();
if(isset($_POST['submit'])){

    
   include_once "dbh1.php";
    
    $sub = $_POST['sub'];
    $number = $_POST['noq'];
    
    if($sub == 'C++'){
        $rql = "SELECT * FROM cplusplus";
        $result = mysqli_query($conn, $rql);
        $max = mysqli_num_rows($result);

        for($i=1; $i<=$number; $i++){
            $rand = mt_rand(1,$max);
            $sql = "SELECT * FROM cplusplus WHERE serial=$rand";
            $result = mysqli_query($conn, $sql);
            while ($row = $result->fetch_assoc()) {
            echo $row['question']." <i>(".$row['year'].")</i> <br>";
            }
        }
    }
else {


    
    $rql = "SELECT * FROM $sub";
    $result = mysqli_query($conn, $rql);
    $max = mysqli_num_rows($result);
    
    for($i=1; $i<=$number; $i++){
        $rand = mt_rand(1,$max);
        $sql = "SELECT * FROM $sub WHERE serial=$rand";
        $result = mysqli_query($conn, $sql);
        while ($row = $result->fetch_assoc()) {
        echo $row['question']." <i>(".$row['year'].")</i> <br>";
        }
    }
}
    
    
}
else echo "You Failed";

?>
<br><br>
<html>

<form action="index.php" method="POST">
<button> End Test</button></form></html>
