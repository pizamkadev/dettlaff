<?php
    include 'utils.php';
    $id_rez = $_GET['id_rez'];
    $res = selectById($id_rez);
    if($_POST){
        delete($id_rez);
        Header("Location: index.php");
    }
?>