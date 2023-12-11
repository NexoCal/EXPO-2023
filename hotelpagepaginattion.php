<?php
include "databasekey.php";

$start = 0;
$end = 10;

if (isset($_GET['filtering'])) {
    $filter = $_GET['filtering'];

    switch ($filter) {
        case ('bantul'):
            $result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `hotel` WHERE kabupaten='$filter'");
            $row_page = mysqli_fetch_assoc($result_page);
            $page_count = round($row_page['total'] / $end);

            if (isset($_GET['gotopagehotel'])) {
                $numPage = $_GET['gotopagehotel'];
                $start = $end * ($numPage - 1);
            }

            $result_hotel = mysqli_query($conn, "SELECT id_hotel,nama,gambar_hotel,alamat,contact,link,kabupaten FROM `hotel` WHERE kabupaten='$filter' ORDER BY id_hotel DESC LIMIT $start,$end");
            break;
        case ('gunungkidul'):
            $result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `hotel` WHERE kabupaten='$filter'");
            $row_page = mysqli_fetch_assoc($result_page);
            $page_count = round($row_page['total'] / $end);

            if (isset($_GET['gotopagehotel'])) {
                $numPage = $_GET['gotopagehotel'];
                $start = $end * ($numPage - 1);
            }
            $result_hotel = mysqli_query($conn, "SELECT id_hotel,nama,gambar_hotel,alamat,contact,link,kabupaten FROM `hotel` WHERE kabupaten='$filter' ORDER BY id_hotel DESC LIMIT $start,$end");
            break;
        case ('kulonprogo'):
            $result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `hotel` WHERE kabupaten='$filter'");
            $row_page = mysqli_fetch_assoc($result_page);
            $page_count = round($row_page['total'] / $end);

            if (isset($_GET['gotopagehotel'])) {
                $numPage = $_GET['gotopagehotel'];
                $start = $end * ($numPage - 1);
            }
            $result_hotel = mysqli_query($conn, "SELECT id_hotel,nama,gambar_hotel,alamat,contact,link,kabupaten FROM `hotel` WHERE kabupaten='$filter' ORDER BY id_hotel DESC LIMIT $start,$end");
            break;
        case ('sleman'):
            $result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `hotel` WHERE kabupaten='$filter'");
            $row_page = mysqli_fetch_assoc($result_page);
            $page_count = round($row_page['total'] / $end);

            if (isset($_GET['gotopagehotel'])) {
                $numPage = $_GET['gotopagehotel'];
                $start = $end * ($numPage - 1);
            }
            $result_hotel = mysqli_query($conn, "SELECT id_hotel,nama,gambar_hotel,alamat,contact,link,kabupaten FROM `hotel` WHERE kabupaten='$filter' ORDER BY id_hotel DESC LIMIT $start,$end");
            break;
        case ('yogyakarta'):
            $result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `hotel` WHERE kabupaten='$filter'");
            $row_page = mysqli_fetch_assoc($result_page);
            $page_count = round($row_page['total'] / $end);

            if (isset($_GET['gotopagehotel'])) {
                $numPage = $_GET['gotopagehotel'];
                $start = $end * ($numPage - 1);
            }
            $result_hotel = mysqli_query($conn, "SELECT id_hotel,nama,gambar_hotel,alamat,contact,link,kabupaten FROM `hotel` WHERE kabupaten='$filter' ORDER BY id_hotel DESC LIMIT $start,$end");
            break;
        case ('reset'):


            $result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `hotel`");
            $row_page = mysqli_fetch_assoc($result_page);
            $page_count = round($row_page['total'] / $end);

            if (isset($_GET['gotopagehotel'])) {
                $numPage = $_GET['gotopagehotel'];
                $start = $end * ($numPage - 1);
            }
            $result_hotel = mysqli_query($conn, "SELECT id_hotel,nama,gambar_hotel,alamat,contact,link,kabupaten FROM `hotel` ORDER BY id_hotel DESC LIMIT $start,$end");
            break;
    }
} else {
    $result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `hotel`");
    $row_page = mysqli_fetch_assoc($result_page);
    $page_count = round($row_page['total'] / $end);

    if (isset($_GET['gotopagehotel'])) {
        $numPage = $_GET['gotopagehotel'];
        $start = $end * ($numPage - 1);
    }

    $result_hotel = mysqli_query($conn, "SELECT id_hotel,nama,gambar_hotel,alamat,contact,link,kabupaten FROM `hotel` ORDER BY id_hotel DESC LIMIT $start,$end");

}
