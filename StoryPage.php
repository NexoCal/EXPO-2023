<?php

include 'databasekey.php';
include 'storypagepagination.php';


if (isset($_GET['gotopage'])){
    $id = $_GET['gotopage'];
}else{
    $id = 1;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/StroyPageStyle.css">
    <link rel="stylesheet" href="Style/NavBarStyle.css">
    <link rel="stylesheet" href="Style/Landing/footer.css">
    <title>Document</title>
</head>

<body id="<?php echo $id ?>">
    <header>
        <a href="index.php"><img src="Logo.svg" alt=""></a>
        <nav>
            <ul class="Nav-list">
                <li><a href="StoryPage.php">Stories</a></li>
                <li><a href="PlacePage.php">Places To Go</a></li>
                <li><a href="EventPage.php">Events</a></li>
                <li><a href="HotelPage.php">Hotels</a></li>
            </ul>
        </nav>
    </header>
    <!--Hero-->
    <div class="Hero">
        <div class="img-container">
            <img src="assets/image/Stories/StoryHero.png" alt="">
        </div>
        <h1>STORIES</h1>
    </div>
    <!--About-->
    <div>
        <div class="about-container">
            <h1>KEEP YOURSELF UPDATED</h1>
            <p>View a dozen or more of interesting and latest stories about yogyakarta, where
                useful information can be found to help your journey ranging from places and
                food recommendation to history and arts you can find it all here.
            </p>
        </div>
    </div>
    <!--Cards-->

    <div class="Stories">
        <div class="stories-header">
            <h1>LATEST STORIES</h1>
        </div>
        <div class="stories-container">
            <?php while ($row = mysqli_fetch_array($result_story, MYSQLI_ASSOC)) {
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
            };

            ?>


        </div>
        <div class="pagination">
            <a href=""><</a>
                    <?php
                    for ($i = 1; $i <= $page_count; $i++) {
                    ?>
                        <a href="?<?php echo "gotopage=" . $i ?>" align="center"><?php echo $i ?></a>
                    <?php
                    }
                    ?>
                    <a href="">></a>
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

    <script>
        let links = document.querySelectorAll('.pagination > a');
        let bodyId = parseInt(document.body.id);
        links[bodyId].classList.add('active');
    </script>
</body>

</html>