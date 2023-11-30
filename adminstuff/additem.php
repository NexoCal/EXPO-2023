<?php

include "C:/xampp/htdocs/EXPO2023/databasekey.php";

$targetTable = $_POST["submit-button"];


if (isset($_POST["submit-button"])) {
    switch ($targetTable) {
        case ('events'):
            $judul = $_POST["judul"];
            $gambarevent = $_POST["gambar"];
            $tanggal = $_POST["tanggal"];
            $status = $_POST["stat"];
            $desc = $_POST["deskrip"];
            $kategori = $_POST["kat"];
            $sql = "INSERT INTO `events` (`id_events`, `gambar`, `judul`, `tanggal`, `deskripsi`, `timeline`, `id_kategori_event`) VALUES ('', '$gambarevent', '$judul', '$tanggal', '$desc', '$status' , (SELECT id_kategori_event FROM kategori_event e WHERE e.kategoriEvent = '$kategori'))";
            if (mysqli_query($conn, $sql)) {
                echo "New record created successfully";
                header('location:dashboard_events.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
        case ('cancel-event'):
            header('location:dashboard_events.php');
    }
}
