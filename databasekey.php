<?php
$user = 'NXCL';
$pass = 'task-404';
$dbname = 'visityogya';
$servername = 'localhost';

$conn = mysqli_connect($servername, $user, $pass, $dbname);
if (!$conn) {
    die("koneksi gagal: " . mysqli_connect_error());
}
?>
