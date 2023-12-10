<?php

$alerting = "<script>console.log('success')</script>";

if (isset($_GET['access'])) {
    $alerting = "<script> alert('Authentication Failed Please Check Your Username and Password')</script>";
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Admin</title>
    <link rel="stylesheet" href="adminstyle.css">
</head>

<body>
    <div class="container">
        <img src="../assets/image/HeroImages/The Dusk of the Mountain.png" alt="">
        <div class="image">
            <img src="Logo.svg" alt="">
        </div>
        <div class="login-form">
            <form action="adminauth.php" method="post">
                <h2 align="center" style="border-radius: 7px;">Login</h2>
                <label for="">Username</label><br>
                <input type="text" name="username" id="user" placeholder="Username" required><br>
                <label for="">Password</label><br>
                <input type="password" name="password" id="pass" placeholder="Password" required><br>
                <button id="btn" type="submit">Login</button>
            </form>
        </div>
    </div>

    <?php echo $alerting; ?>


</body>

</html>