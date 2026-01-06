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
?>
<form method="POST">
    <?php foreach ($res as $row): ?>
        <input type="date" require id="data" name="data" value="<?=$row['data']?>">
        <input type="time" require id="godzina" name="godzina" value="<?=$row['godzina']?>">
        <input type="number" require id="miejsca" name="miejsca" value="<?=$row['miejsca']?>">
        <input type="text" require id="imie" name="imie" value="<?=$row['imie']?>">
        <input type="text" require id="nazwisko" name="nazwisko" value="<?=$row['nazwisko']?>">
        <button type="submit">Edytuj</button>
    <?php endforeach;?>
</form>

<?php
    if($_POST){
        update($id_rez, $_POST['data'], $_POST['godzina'], $_POST['miejsca'], $_POST['imie'], $_POST['nazwisko']);
        header("Location: index.php");
    }
?>