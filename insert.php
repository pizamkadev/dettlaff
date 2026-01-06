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
?>
<form method="POST">
    <input type="date" require id="data" name="data">
    <input type="time" require id="godzina" name="godzina">
    <input type="number" require id="miejsca" name="miejsca">
    <input type="text" require id="imie" name="imie">
    <input type="text" require id="nazwisko" name="nazwisko">
    <button type="submit">Dodaj</button>
</form>

<?php
    if($_POST){
        insert($_POST['data'], $_POST['godzina'], $_POST['miejsca'], $_POST['imie'], $_POST['nazwisko']);
        header("Location: index.php");
    }
?>