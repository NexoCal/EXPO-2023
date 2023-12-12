<?php

include "databasekey.php";

$id = $_GET['idplace'];

$result_place = mysqli_query($conn, "SELECT p.id_gambar_reg,p.nama_tempat,p.gambar,p.cerita,d.region FROM gambar_region p join daerah_region d on (p.id_daerah = d.id_region) WHERE p.id_gambar_reg = $id");
$rows = mysqli_fetch_array($result_place, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $rows['nama_tempat'];?></title>
    <link rel="stylesheet" href="Style/NavBarStyle.css">
    <link rel="stylesheet" href="Style/Landing/footer.css">
    <link rel="stylesheet" href="Style/GenericStyle.css">
</head>

<body>
    <div class="Navbar">
        <div class="img-logo">
            <a href="index.php"><img src="Logo.svg" alt=""></a>
        </div>
        <header class="navhead" id="NavNav">
            <nav>
                <ul class="Nav-list">
                    <li><a href="StoryPage.php">Stories</a></li>
                    <li><a href="PlacePage.php">Places To Go</a></li>
                    <li><a href="EventPage.php">Events</a></li>
                    <li><a href="HotelPage.php">Hotels</a></li>
                </ul>
            </nav>
        </header>
        <a href="javascript:void(0);" class="icon" onclick="shownav()">&#9776;</a>
    </div>

    <div class="content">
        <div class="img-container" style="height: 560px;">
            <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar']?>" alt="" style="position: absolute; top: 0%">
        </div>
        <div class="judul-arti"><h1><?php echo $rows['nama_tempat'];?></h1></div>
        <div class="paraga"><p><?php echo $rows['cerita'];?></p></div>

    </div>


    <div class="foot-container">
        <div class="foot-img">
            <img src="Logo.svg" alt="">
        </div>
        <div class="foot-addr">
            <h3>Address</h3>
            <div class="addr-info">
                <ul>
                    <li><a href="">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="">Support</a></li>
                </ul>
            </div>
        </div>
        <div class="foot-links">
            <h3>Quick Link</h3>
            <div class="links">
                <ul>
                    <li><a href="">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="">Support</a></li>
                </ul>
            </div>
        </div>
        <div class="foot-media">
            <h3>Follow Us</h3>
            <div class="foot-logo">
                <div class="logo-container">
                    <img src="assets/image/Logo/Logo-X.webp" alt="">

                </div>

                <div class="logo-container">
                    <img src="assets/image/Logo/GitHub_Invertocat_Logo.svg.png" alt="">

                </div>

                <div class="logo-container">
                    <img src="assets/image/Logo/patreon-creators-patreon.png" alt="">

                </div>


            </div>
        </div>
    </div>

</body>

</html>