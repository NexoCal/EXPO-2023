<?php 

include "get_hotel.php";
include "databasekey.php";
$hotels = getAllHotels();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="HotelCss.css" />
    <title>Hotels</title>
</head>

<body>
    <!-- nav -->
    <header>
        <img src="Logo.svg" alt="" />
        <nav>
            <ul class="Nav-list">
                <li><a href="">Stories</a></li>
                <li><a href="">Places To Go</a></li>
                <li><a href="">Events</a></li>
                <li><a href="">Things To Do</a></li>
                <li><a href="Hotel.php">Hotels</a></li>
            </ul>
        </nav>
    </header>
    <!-- end nav -->

    <!--  -->
    <section class="comment">
        <div>
            <h1>Hotels in Yogyakarta</h1>
            <p>
                Yogyakarta, or Jogja, is a famous tourist destination in Indonesia, and the city offers a wide choice of
                hotels for tourists. From luxury five-star hotels to cultural guesthouses, Jogja provides accommodation
                for every taste and
                budget. Located on the island of Java, this city not only offers natural beauty and rich cultural
                heritage, but also various accommodation facilities that pamper visitors. Whether you are looking for
                luxurious comfort, a touch of
                local culture, or an economical stay, Yogyakarta has a selection of hotels to suit your various travel
                needs.
            </p>
        </div>
    </section>
    <!-- end -->

    <!-- middle -->
    <section>

        <div class="bgcolor">
            <br><br><br>
            <form action="Hotel.php" method="GET">
                <div class=" filter">
                    <h2>Filter By:</h2>
                    <button name="yogyakarta" class="btn" type="submit" value="yogyakarta">Yogyakarta</button><br /><br>
                    <button name="bantul" class="btn" type="submit" value="bantul"> Bantul</button><br><br>
                    <button name="kulonprogo" class="btn" type="submit" value="kulonprogo">Kulon
                        Progo</button><br /><br>
                    <button name="sleman" class="btn" type="submit" value="sleman">Sleman</button><br /><br>
                    <button name="gunungkidul" class=" btn" type="submit" value="gunungkidul">Gunung Kidul</button>
                </div>
            </form>
        </div>


        <div class="hotels">
            <?php foreach ($hotels as $hotel) : ?>
            <br /><br /><br />
            <div class="content">
                <div>
                    <img src="../assets/image/Hotels/<?= $hotel['kabupaten'];?>/<?= $hotel['gambar_hotel'];?>">
                </div>
                <div>
                    <a href="<?= $hotel['link']; ?>" target="_blank">
                        <h2>
                            <?= $hotel['nama']; ?>
                        </h2>
                    </a>
                    <p>
                        <?= $hotel['alamat']; ?><br><br><?=$hotel['contact']; ?>
                    </p>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </section>
    <!-- end middle -->

    <!-- footer -->
    <footer>
        <div class="foot-container">
            <div class="foot-img">
                <img src="Logo.svg" alt="" />
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
                        <img src="assets/image/Logo/Logo-X.webp" alt="" />
                    </div>

                    <div class="logo-container">
                        <img src="assets/image/Logo/GitHub_Invertocat_Logo.svg.png" alt="" />
                    </div>

                    <div class="logo-container">
                        <img src="assets/image/Logo/patreon-creators-patreon.png" alt="" />
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- end footer -->
</body>

</html>