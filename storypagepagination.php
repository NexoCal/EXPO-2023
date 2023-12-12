<?php
include "databasekey.php";

$start = 0;
$end = 4;

$result_page = mysqli_query($conn, "SELECT COUNT('*') as total FROM `story`");
$row_page = mysqli_fetch_assoc($result_page);
$page_count = round($row_page['total'] / $end);

if (isset($_GET['gotopage'])) {
    $numPage = $_GET['gotopage'];
    $start = $end * ($numPage - 1);
}


$result_story = mysqli_query($conn, "SELECT id_story,gambar,judul,deskripsi_story,artikel FROM `story` ORDER BY id_story DESC LIMIT $start,$end");
?>