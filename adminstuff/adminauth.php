<?php 
include "../databasekey.php";

$username = $_POST['username'];
$password = $_POST['password'];
$password = md5($password);

$prevQuery = mysqli_query($conn, "SELECT * FROM `admin` WHERE username = '$username'");
$data = mysqli_fetch_array($prevQuery, MYSQLI_ASSOC);

if ($password == md5($data['password'])){
    $_SESSION['admin'] = $data['id_admin'];
    echo "<script>alert('Login Successful')</script>";
    header('location:dashboard_main.php');
}else{
    header('location:adminLogin.php?access=fail');
}


?>