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
    }
?>