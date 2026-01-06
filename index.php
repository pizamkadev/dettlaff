<?php
    include "utils.php";
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Rezerwacje</title>
</head>
<body>
    <?php
        $res = select();
        echo "<table><tr><td>Id_rez</td><td>Data</td><td>Godzina</td><td>Miejsca</td><td>Imie</td><td>Nazwisko</td><td>Akcje</td></tr>";
        foreach ($res as $row){
            echo "<tr>";
            echo "<td>".$row['id_rez']."</td>";
            echo "<td>".$row['data']."</td>";
            echo "<td>".$row['godzina']."</td>";
            echo "<td>".$row['miejsca']."</td>";
            echo "<td>".$row['imie']."</td>";
            echo "<td>".$row['nazwisko']."</td>";
            echo "<td><a href='update.php?id_rez=".$row['id_rez']."'>Edytuj</a></td>";
            echo "<td><a href='delete.php?id_rez=".$row['id_rez']."'>Usuń</a></td>";
        }
        echo "</table>";
        echo "<a href='insert.php'>Dodaj rezerwację</a>";
    ?>
</body>
</html>