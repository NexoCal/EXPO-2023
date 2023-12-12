<?php

include "databasekey.php"

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/Landing/LandingPageStyle.css">
    <link rel="stylesheet" href="Style/Landing/LandingStory.css">
    <link rel="stylesheet" href="Style/Landing/LandingEvents.css">
    <link rel="stylesheet" href="Style/Landing/LandingHeroStyle.css">
    <link rel="stylesheet" href="Style/Landing/LandingPlaceStyle.css">
    <link rel="stylesheet" href="Style/Landing/LandingAboutStyle.css">
    <link rel="stylesheet" href="Style/Landing/footer.css">
    <link rel="stylesheet" href="Style/NavBarStyle.css">
    <title>Visit Yogyakarta</title>
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
        <!--This Is About-->
        <div class="About">
            <div class="about-content">
                <div class="about-image">
                    <img src="mount.png" alt="">
                </div>
                <div class="about-desc">
                    <h1>ABOUT YOGYAKARTA</h1>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing
                        elit. Soluta excepturi vero consequatur
                        exercitationem debitis eius,
                        nihil eum esse culpa, consequuntur dignissimos,
                        cupiditate ipsam deserunt repellendus!
                    </p>
                </div>
            </div>

        </div>
        <!--This Is Place-->
        <div class="Place">
            <div class="place-title">
                <h2>Popular Place</h2>
                <p>Spots and landmarks people often visit, where many activities can be found</p>
            </div>
            <div class="place-container">
                <div class="place-card">
                    <img src="assets/image//PlacesToGo/candi_prambanan.png" alt="">
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
                    <img src="assets/image//PlacesToGo/candi_prambanan.png" alt="">
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
                <h2 align='center'>Activities Category</h2>
                <p align='center'>Activities sorted by catagory for you to choose and plan your ADVENTURE</p>
            </div>
            <div class="things-container">
                <div class="big-section">
                    <img src="assets/image/Things/Culture.png" alt="">
                    <h3>Culture</h3>
                </div>
                <div class="small-section">
                    <div class="card-long">
                        <img src="assets/image/Things/Culinary.png" alt="">
                        <h3>Culinary</h3>
                    </div>
                    <div class="card-small">
                        <img src="assets/image/Things/Mountain.png" alt="">
                        <h3>Hiking</h3>
                    </div>


                    <div class="card-small">
                        <img src="assets/image/Things/Beach.png" alt="">
                        <h3>Beach</h3>
                    </div>
                    <div class="card-long">
                        <img src="assets/image/Things/Grass.png" alt="">
                        <h3>Tracking</h3>
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
            <div class="Event-title">
                <h1 align="center">Upcoming Events</h1>
                <p align="center">Interested in joining these Events</p>
            </div>
            <div class="event-container">
                <?php
                $counter = 0;
                $result = mysqli_query($conn, "SELECT gambar,judul FROM `events` ORDER BY tanggal DESC");
                while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                ?>
                    <div class="event-card-container">
                        <div class="Events-card">
                            <img src="assets/image/Events/<?php echo $row['gambar']; ?> " alt="">
                            <h2><?php echo $row['judul']; ?></h2>
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
                    $counter = $counter + 1;
                    if ($counter == 3) {
                        break;
                    }
                }
                ?>
            </div>

        </div>

        <!--This Is Stories-->
        <div class="Stories">
            <div class="stories-title">
                <h1 align="center">Our Latest Stories</h1>
                <p align="center">Useful and intresting storis to help you on your ADVENTURE</p>
            </div>
            <div class="stories-container">
                <?php
                $result = mysqli_query($conn, "SELECT gambar,judul,deskripsi_story,artikel FROM `story` ORDER BY id_story DESC");
                $limiter = 0;
                while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                ?>
                    <div class="stories-card">
                        <div class="stories-image">
                            <img src="assets/image/Stories/<?php echo $row['gambar']; ?>" alt="">
                        </div>
                        <div class="stories-content">
                            <h2><?php echo $row['judul']; ?></h2>
                            <p style="text-align: justify;"><?php echo $row['deskripsi_story']; ?></p>
                            <a href="Artikel/<?php echo $row['artikel']; ?>" align='center'>Read more</a>
                        </div>
                    </div>

                <?php
                    $limiter = $limiter + 1;
                    if ($limiter == 5) {
                        break;
                    }
                };
                ?>

            </div>
        </div>
    </main>
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

    <script>
        function shownav() {
            var x = document.getElementById("NavNav");
            if (x.className === "navhead") {
                x.className = "active";
            } else {
                x.className = "navhead";
            }
        }
    </script>

</body>

</html>