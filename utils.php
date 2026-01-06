<?php
    include_once "conn.php";

    function select(){
        global $conn;
        $sql = "SELECT rezerwacje.id_rez, rezerwacje.data, rezerwacje.godzina, rezerwacje.miejsca, klienci.imie, klienci.nazwisko  
            from rezerwacje join klienci on klienci.id = rezerwacje.id_klienta";
        $res = $conn->query($sql);
        $wynik = $res->fetch_all(MYSQLI_ASSOC);
        return $wynik;
    }

    function selectById($id){
        global $conn;
        $sql = "SELECT rezerwacje.data, rezerwacje.godzina, rezerwacje.miejsca, klienci.imie, klienci.nazwisko  
            from rezerwacje join klienci on klienci.id = rezerwacje.id_klienta where rezerwacje.id_rez = ".$id."";
        $res = $conn->query($sql);
        $wynik = $res->fetch_all(MYSQLI_ASSOC);
        return $wynik;
    }

    function update($id, $data, $godzina, $miejsce, $imie, $nazwisko){
        global $conn;
        $sql = "UPDATE rezerwacje 
            JOIN klienci ON klienci.id = rezerwacje.id_klienta 
            SET klienci.imie = '$imie', klienci.nazwisko ='$nazwisko', 
            rezerwacje.data = '$data', rezerwacje.godzina = '$godzina', rezerwacje.miejsca = '$miejsce'
            WHERE rezerwacje.id_rez = $id;";
        $res = $conn->query($sql);
        return $res;
    }

    function delete($id){
        global $conn;
        $sql = "DELETE FROM rezerwacje WHERE id_rez = $id";
        $res = $conn->query($sql);
        return $res;
    }

    function insert($data, $godzina, $miejsce, $imie, $nazwisko){
        global $conn;
        $sql = "INSERT INTO rezerwacje (data, godzina, miejsca, id_klienta) 
        VALUES ('$data', '$godzina', '$miejsce', (SELECT id FROM klienci WHERE imie = '$imie' AND nazwisko = '$nazwisko'))";
        $res = $conn->query($sql);
        return $res;
    }
?>