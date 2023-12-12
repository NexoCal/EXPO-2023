<?php

include 'databasekey.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/NavBarStyle.css">
    <link rel="stylesheet" href="Style/PlacePageStyle.css">
    <link rel="stylesheet" href="Style/Landing/footer.css">
    <title>Document</title>
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
    <!--Hero-->
    <div class="Hero">
        <div class="img-container">
            <img src="assets/image/PlacesToGo/PlaceHero.jpg" alt="">
        </div>
        <h1>PLACE TO GO</h1>
    </div>
    <div class="places">
        <h1>YOGYAKARTA</h1>
        <div class="place-card-container">
            <?php
            $result = mysqli_query($conn, "SELECT p.id_gambar_reg,p.nama_tempat,p.gambar,p.cerita,d.region FROM gambar_region p join daerah_region d on (p.id_daerah = d.id_region) WHERE p.id_daerah = 1");
            while ($rows = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            ?>
                <a href="GenericPlace.php?idplace=<?php echo $rows['id_gambar_reg']; ?>">
                    <div class="place-card">
                        <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                            </div>
                            <div class="card-text">
                                <h2><?php echo $rows['nama_tempat'] ?></h2>

                            </div>
                        </div>
                    </div>
                </a>
            <?php
            }
            ?>
        </div>

        <h1>GUNUNG KIDUL</h1>
        <div class="place-card-container">
            <?php
            $result = mysqli_query($conn, "SELECT p.id_gambar_reg,p.nama_tempat,p.gambar,p.cerita,d.region FROM gambar_region p join daerah_region d on (p.id_daerah = d.id_region) WHERE p.id_daerah = 2");
            while ($rows = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            ?>
                <a href="GenericPlace.php?idplace=<?php echo $rows['id_gambar_reg']; ?>">
                    <div class="place-card">
                        <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                            </div>
                            <div class="card-text">
                                <h2><?php echo $rows['nama_tempat'] ?></h2>

                            </div>
                        </div>
                    </div>
                </a>
            <?php
            }
            ?>
        </div>

        <h1>KULON PROGO</h1>
        <div class="place-card-container">
            <?php
            $result = mysqli_query($conn, "SELECT COUNT(*) as total FROM gambar_region p join daerah_region d on (p.id_daerah = d.id_region) WHERE p.id_daerah = 3");
            $rows = mysqli_fetch_array($result, MYSQLI_ASSOC);
            if ($rows['total'] == 0) { ?>
                <h3>No Data Found, Sorry...</h3>
                <?php
            } else {
                $result = mysqli_query($conn, "SELECT p.id_gambar_reg,p.nama_tempat,p.gambar,p.cerita,d.region FROM gambar_region p join daerah_region d on (p.id_daerah = d.id_region) WHERE p.id_daerah = 3");
                while ($rows = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                ?>
                    <a href="GenericPlace.php?idplace=<?php echo $rows['id_gambar_reg']; ?>">
                        <div class="place-card">
                            <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                            <div class="card-content">
                                <div class="card-img">
                                    <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                                </div>
                                <div class="card-text">
                                    <h2><?php echo $rows['nama_tempat'] ?></h2>

                                </div>
                            </div>
                        </div>
                    </a>
            <?php
                }
            }
            ?>
        </div>

        <h1>SLEMAN</h1>
        <div class="place-card-container">
            <?php
            $result = mysqli_query($conn, "SELECT p.id_gambar_reg,p.nama_tempat,p.gambar,p.cerita,d.region FROM gambar_region p join daerah_region d on (p.id_daerah = d.id_region) WHERE p.id_daerah = 4");
            while ($rows = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            ?>
                <a href="GenericPlace.php?idplace=<?php echo $rows['id_gambar_reg']; ?>">
                    <div class="place-card">
                        <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                            </div>
                            <div class="card-text">
                                <h2><?php echo $rows['nama_tempat'] ?></h2>

                            </div>
                        </div>
                    </div>
                </a>
            <?php
            }

            ?>
        </div>

        <h1>BANTUL</h1>
        <div class="place-card-container">
            <?php
            $result = mysqli_query($conn, "SELECT p.id_gambar_reg,p.nama_tempat,p.gambar,p.cerita,d.region FROM gambar_region p join daerah_region d on (p.id_daerah = d.id_region) WHERE p.id_daerah = 5");
            while ($rows = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            ?>
                <a href="GenericPlace.php?idplace=<?php echo $rows['id_gambar_reg']; ?>">
                    <div class="place-card">
                        <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                        <div class="card-content">
                            <div class="card-img">
                                <img src="assets/image/PlacesToGo/<?php echo $rows['region'] ?>/<?php echo $rows['gambar'] ?>" alt="">
                            </div>
                            <div class="card-text">
                                <h2><?php echo $rows['nama_tempat'] ?></h2>

                            </div>
                        </div>
                    </div>
                </a>
            <?php
            }
            ?>
        </div>
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
    <script src="javascripts/navbarscript.js"></script>
</body>

</html>