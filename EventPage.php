<?php

include "databasekey.php"

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/EventPageStyle.css">
    <link rel="stylesheet" href="Style/NavBarStyle.css">
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
            <img src="assets/image/Events/HeroEvent.png" alt="">
        </div>
        <h1>EVENTS</h1>
    </div>
    <!--About-->
    <div class="about">
        <div class="about-container">
            <div class="about-content">
                <h1>EVENTS</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt, cumque in.
                    Laborum numquam corporis, dignissimos delectus pariatur facere qui voluptatem.</p>
            </div>
        </div>
    </div>
    <!--ONGOING-->
    <div class="Events-ongoing">
        <div class="ongoing-title">
            <h1>ONGOING EVENTS</h1>
        </div>
        <div class="ongoing-card-container">
            <div class="ongoing-card">
                <img src="assets/image/Events/beyond_bound.png" alt="">
                <div class="ongoing-content">
                    <div class="card-title">
                        <h2>BEYOND<br>BORDER</h2>
                        <a href="">Detail</a>
                    </div>
                </div>
            </div>

            <div class="ongoing-card">
                <img src="assets/image/Events/heheboi_1.png" alt="">
                <div class="ongoing-content">
                    <div class="card-title">
                        <h2>LENGGAHING KARJUNO</h2>
                        <a href="">Detail</a>
                    </div>
                </div>
            </div>

            <div class="ongoing-card">
                <img src="assets/image/Events/heritage_walk.jpg" alt="">
                <div class="ongoing-content">
                    <div class="card-title">
                        <h2>JOGJA HERITAGE WALK</h2>
                        <a href="">Detail</a>
                    </div>
                </div>
            </div>

            <div class="ongoing-card">
                <img src="assets/image/Events/pacuan-kuda.jpg" alt="">
                <div class="ongoing-content">
                    <div class="card-title">
                        <h2>PACUAN KUDA JOGJA DERBY </h2>
                        <a href="">Detail</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="Events-up">
        <div class="upcoming-title">
            <h1>UPCOMING EVENTS</h1>
        </div>
        <div class="upcoming-card-container">
            <?php
            $result = mysqli_query($conn, "SELECT gambar,judul FROM `events` WHERE timeline = 'UPCOMING' ORDER BY tanggal DESC");
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            ?>
                <div class="event-card-container">
                    <div class="Events-card">
                        <img src="assets/image/Events/<?php echo $row['gambar']; ?> " alt="">
                        <div class="card-title-up">
                            <h2><?php echo strtoupper($row['judul']); ?></h2>
                        </div>
                    </div>
                    <div class="Events-card-hover">
                        <div class="Event-img-frame">
                            <img src="assets/image/Events/<?php echo $row['gambar']; ?> " alt="">
                        </div>
                        <h3><?php echo $row['judul']; ?></h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Molestias dolor vero et quae asperiores vitae.
                        </p>
                        <p>
                            12 Nov 2023 - 14 Nov 2023
                        </p>
                    </div>
                </div>



            <?php

            }
            ?>

            <?php
            $result = mysqli_query($conn, "SELECT gambar,judul FROM `events` WHERE timeline = 'UPCOMING' ORDER BY tanggal DESC");
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            ?>
                <div class="event-card-container">
                    <div class="Events-card">
                        <img src="assets/image/Events/<?php echo $row['gambar']; ?> " alt="">
                        <div class="card-title-up">
                            <h2><?php echo strtoupper($row['judul']); ?></h2>
                        </div>
                    </div>
                    <div class="Events-card-hover">
                        <div class="Event-img-frame">
                            <img src="assets/image/Events/<?php echo $row['gambar']; ?> " alt="">
                        </div>
                        <h3><?php echo $row['judul']; ?></h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Molestias dolor vero et quae asperiores vitae.
                        </p>
                        <p>
                            12 Nov 2023 - 14 Nov 2023
                        </p>
                    </div>
                </div>



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