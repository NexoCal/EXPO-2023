<?php

include "../databasekey.php";


if (isset($_POST["submit-button"])) {
    $targetTable = $_POST["submit-button"];
    $selectedID = $_POST['id'];
    switch ($targetTable) {
        case ('events'):
            $judul = $_POST["judul"];
            $gambarevent = $_POST["gambar"];
            $tanggal = $_POST["tanggal"];
            $status = $_POST["stat"];
            $desc = $_POST["deskrip"];
            $kategori = $_POST["kat"];
            $sql = "UPDATE events SET gambar = '$gambarevent', judul = '$judul', tanggal = '$tanggal', deskripsi = '$desc', timeline = '$status', id_kategori_event = (SELECT id_kategori_event FROM kategori_event e WHERE e.kategori_event = '$kategori') WHERE id_events = $selectedID ";
            if (mysqli_query($conn, $sql)) {
                echo "New record created successfully";
                header('location:dashboard_events.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            break;
        case ('story'):
            $judul = $_POST['judul'];
            $gambarstory = $_POST['gambar'];
            $deskripsi = $_POST['deskripsi'];
            $isi = $_POST['isi'];
            $sql = "UPDATE story SET gambar = '$gambarstory', isi = '$isi', judul = '$judul', deskripsi_story = '$deskripsi' WHERE id_story = $selectedID";
            if (mysqli_query($conn, $sql)) {
                echo "New record created successfully";
                header('location:dashboard_stories.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            break;
        case ('hotel'):
            $hotel = $_POST['nama'];
            $gambarhotel = $_POST['gambar'];
            $kontak = $_POST['kontak'];
            $alamat = $_POST['alamat'];
            $kabupaten = $_POST['kab'];
            $sql = "UPDATE hotel SET nama = '$hotel', gambar_hotel = '$gambarhotel', alamat = '$alamat', contact = '$kontak', kabupaten = '$kabupaten' WHERE id_hotel = $selectedID";
            if (mysqli_query($conn, $sql)) {
                echo "New record created successfully";
                header('location:dashboard_hotel.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            break;
    }
}
else{
    $targetTable = $_POST["cancel-button"];
    switch ($targetTable){
        case ('cancel-event'):
            header('location:dashboard_events.php');
            break;
        case ('cancel-story'):
            header('location:dashboard_stories.php');
            break;
        case ('cancel-hotel'):
            header('location:dashboard_hotel.php');
            break;
    }
}
