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
        <!--This Is Place To Go-->
        <div class="Place">
            <div class="place-title">
                <h2>Popular Place</h2>
            </div>
            <div class="place-container">
                <div class="place-card">
                    <img src="assets/image//PlacesToGo/candi prambanan.png" alt="">
                    <div class="content">
                        <div class="card-text">
                            <h2>CANDI PRAMBANAN</h2>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus voluptatem voluptas, magni animi hic facilis.</p>
                    </div>
                </div>

                <div class="place-card">
                    <img src="assets/image//PlacesToGo/kraton.png" alt="">
                    <div class="content">
                        <div class="card-text">
                            <h2>KRATON</h2>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus voluptatem voluptas, magni animi hic facilis.</p>
                    </div>
                </div>

                <div class="place-card">
                    <img src="assets/image//PlacesToGo/malioboro 2.png" alt="">
                    <div class="content">
                        <div class="card-text">
                            <h2>MALIOBORO STREET</h2>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus voluptatem voluptas, magni animi hic facilis.</p>
                    </div>
                </div>

                <div class="place-card">
                    <img src="assets/image//PlacesToGo/taman sari.png" alt="">
                    <div class="content">
                        <div class="card-text">
                            <h2>TAMAN SARI PARK</h2>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus voluptatem voluptas, magni animi hic facilis.</p>
                    </div>
                </div>

                <div class="place-card">
                    <img src="assets/image//PlacesToGo/tugu.png" alt="">
                    <div class="content">
                        <div class="card-text">
                            <h2>TUGU</h2>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus voluptatem voluptas, magni animi hic facilis.</p>
                    </div>
                </div>

                <div class="place-card">
                    <img src="assets/image//PlacesToGo/candi prambanan.png" alt="">
                    <div class="content">
                        <div class="card-text">
                            <h2>CANDI UII</h2>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus voluptatem voluptas, magni animi hic facilis.</p>
                    </div>
                </div>

                <div class="place-card">
                    <img src="assets/image//PlacesToGo/kraton.png" alt="">
                    <div class="content">
                        <div class="card-text">
                            <h2>KRATOS</h2>
                        </div>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus voluptatem voluptas, magni animi hic facilis.</p>
                    </div>
                </div>
            </div>
        </div>

        <!--This Is Things do-->
        <div class="Things">
            
            <div class="things-title">
                <h2>Things you can do</h2>
            </div>
            <div class="things-container">
                <div class="big-section">
                    <img src="assets/image/Things/Culture.png" alt="">
                </div>
                <div class="small-section">
                    <div class="section-1">
                        <div class="card-long">
                            <img src="assets/image/Things/Culinary.png" alt="">
                        </div>
                        <div class="card-small">
                            <img src="assets/image/Things/Mountain.png" alt="">
                        </div>
                    </div>
                    <div class="section-2">
                        <div class="card-small">
                            <img src="assets/image/Things/Beach.png" alt="">
                        </div>
                        <div class="card-long">
                            <img src="assets/image/Things/Grass.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="banner-deco"></div>
        </div>

        <!--This Is Hotel-->
        <div>
            <div>

            </div>
        </div>

        <!--This Is Events-->
        <div class="Events">

            <?php
            $result = mysqli_query($conn, "SELECT gambar,judul FROM `events` ORDER BY id_events DESC");
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
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