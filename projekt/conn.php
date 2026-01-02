<?php
    $conn = new mysqli('localhost', 'root', '', 'rezerwacje');

    if(!$conn){
        echo "BŁĄD!!!!".mysqli_error();
    }
?>