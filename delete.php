<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    
</body>
</html>
<?php
    include 'utils.php';
    $id_rez = $_GET['id_rez'];
    $res = selectById($id_rez);
    if($_POST){
        delete($id_rez);
        var_dump(delete($id_rez));
        header("Location: index.php");
    }
?>