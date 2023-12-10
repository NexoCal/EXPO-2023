<?php

include 'databasekey.php';
include 'hotelpagepaginattion.php';

if (isset($_GET['gotopagehotel'])) {
    $id = $_GET['gotopagehotel'];
} else {
    $id = 1;
}

if (isset($_GET['filtering'])) {
    $filter = $_GET['filtering'];

    switch ($filter) {
        case ('bantul'):
            $idfilter = 0;
            break;
        case ('gunungkidul'):
            $idfilter = 1;
            break;
        case ('kulonprogo'):
            $idfilter = 2;
            break;
        case ('sleman'):
            $idfilter = 3;
            break;
        case ('yogyakarta'):
            $idfilter = 4;
            break;
        case ('reset'):
            $idfilter = 5;
            break;
    }
}else{
    $idfilter = 5;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Style/HotelPageStyle.css">
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
    <div class="about">
        <div class="about-container">
            <h1>HOTELS IN YOGYAKARTA</h1>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                Illo corrupti excepturi fuga neque cupiditate in quia,
                adipisci dignissimos ex iste quod est possimus quas odio laborum repudiandae, porro, laudantium alias!</p>
        </div>
    </div>
    <div class="hotel">
        <div class="hotel-container">
            <div class="filter">
                <div class="filters-link" id="<?php echo $idfilter?>">
                    <p style="background-color: transparent;">Filter By:</p>
                    <a href="?<?php echo "filtering=bantul" ?>">Bantul</a>
                    <a href="?<?php echo "filtering=gunungkidul" ?>">Gunung Kidul</a>
                    <a href="?<?php echo "filtering=kulonprogo" ?>">Kulon Progo</a>
                    <a href="?<?php echo "filtering=sleman" ?>">Sleman</a>
                    <a href="?<?php echo "filtering=yogyakarta" ?>">Kota Yogyakarta</a>
                    <a href="?<?php echo "filtering=reset" ?>">Default</a>
                </div>
            </div>
            <div class="hotel-card-container">
                <?php while ($row = mysqli_fetch_array($result_hotel, MYSQLI_ASSOC)) { ?>
                    <div class="card-hotel">
                        <div class="card-img">
                            <img src="assets/image/Hotels/<?php echo $row['kabupaten'] ?>/<?php echo $row['gambar_hotel'] ?>" alt="">
                        </div>
                        <div class="card-content">
                            <h1><?php echo $row['nama'] ?></h1>
                            <p class="alamat-content"><?php echo $row['alamat'] ?></p>
                            <p class="kontak-content"><?php echo $row['contact'] ?></p>
                            <a href="<?php echo $row['link'] ?>">Visit Site</a>
                        </div>
                    </div>
                <?php } ?>
            </div>

        </div>


    </div>
    <div class="pagination">
        <a href="">
            <</a>
                <?php
                for ($i = 1; $i <= $page_count; $i++) {
                ?>
                    <a href="<?php if (isset($_GET['gotopagehotel']) && $_GET['gotopagehotel'] == $i) {
                                    echo "#";
                                } else {
                                    echo "?gotopagehotel=" . $i;
                                } ?>" align="center"><?php echo $i ?></a>
                <?php
                }
                ?>
                <a href="">></a>
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
        links[bodyId].classList.add('activepage');

        
    </script>

    <script>
        let filters = document.querySelectorAll('.filters-link > a')
        let filterId = parseInt(document.querySelector('.filters-link').id);
        filters[filterId].classList.add('activefilter');
    </script>



</body>

</html>