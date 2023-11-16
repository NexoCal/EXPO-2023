<?php
$user = 'root';
$pass = '';
$dbname = 'visityogyakarta';
$servername = 'localhost';

$conn = mysqli_connect($servername, $user, $pass, $dbname);


if (!$conn) {
    die("koneksi gagal: " . mysqli_connect_error());
}
?>
