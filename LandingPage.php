<?php 
include "databasekey.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="LandingPageStyle.css">
    <title>Visit Yogyakarta</title>
</head>

<body>
    <header>
        <img src="Logo.svg" alt="">
        <nav>
            <ul class="Nav-list">
                <li><a href="">Stories</a></li>
                <li><a href="">Places To Go</a></li>
                <li><a href="">Events</a></li>
                <li><a href="">Things To Do</a></li>
                <li><a href="">Hotels</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <!--This Is Hero-->
        <div class="Hero">
            <div class="Slider">
                <div class="img-container">
                    <img src="assets/image/HeroImages/Dawn of the forest.jpeg" alt="">
                </div>
                <div class="img-container">
                    <img src="assets/image/HeroImages/The Dusk of the Mountain.png" alt="">
                </div>
                <div class="img-container">
                    <img src="assets/image/HeroImages/Tugu.png" alt="">
                </div>
                <div class="img-container">
                    <img src="assets/image/HeroImages/Another Temple.png" alt="">
                </div>
            </div>
            <h1>WELCOME TO YOGYAKARTA</h1>
        </div>
        <!--This Is Events-->
        <div class="Events">
        <?php

$result = mysqli_query($conn, "SELECT gambar,judul FROM `events` ORDER BY id_events DESC");
while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
{
?>
            <div class="Events-card">
                <img src="assets/image/Events/<?php echo $row['gambar']; ?> " alt="">
                <h2><?php echo $row['judul']; ?></h2>
            </div>
            <?php 
}
            ?>
        </div>
    </main>
</body>

</html>