<?php

include "sideheader.php";
include "../databasekey.php";

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Events</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="admin.php">Home</a></li>
                        <li class="breadcrumb-item active">Stories</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <section class="content">
        <div class="container-fluid">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-custom">
                            <h3>Add/Edit Event</h3>
                            <!-- <div class="custom-container">
                                <a href=""><button class="btn btn-primary btn-sm button-top">Add</button></a>
                                <a href=""><button class="btn btn-primary btn-sm button-top">Show Event Category Table</button></a>
                            </div> -->
                        </div>


                        <div class="card-body">

                            <?php
                            if (isset($_GET['id'])) {
                                $selectID = $_GET['id'];
                                $results = mysqli_query($conn, "SELECT e.id_hotel, e.nama,e.gambar_hotel,e.alamat,e.contact,e.kabupaten FROM hotel e  WHERE e.id_hotel = '$selectID'");
                                $row = mysqli_fetch_array($results, MYSQLI_ASSOC);
                            ?>
                                <form action="edititem.php" method="post">
                                    <input required type="hidden" name="id" value="<?php echo $row['id_hotel']; ?>">
                                    <div class="flex-container-form">
                                        <label for="">Nama Hotel</label>
                                        <input type="text" name="nama" id="nama" value="<?php echo $row['nama'] ?>">

                                        <label for="">Path Gambar</label>
                                        <input type="text" name="gambar" id="gambar" value="<?php echo $row['gambar_hotel'] ?>">

                                        <label for="">Kontak</label>
                                        <input type="text" name="kontak" id="kontak" value="<?php echo $row['contact'] ?>">

                                        <label for="">Alamat</label>
                                        <textarea name="alamat" id="alamat" cols="250" rows="2" wrap="hard" maxlength="640"><?php echo $row['alamat'] ?></textarea>

                                        <label for="">Kabupaten</label>
                                        <select name="kab" id="kab">
                                            <option value="yogyakarta" <?php if ($row['kabupaten'] == "yogyakarta") {
                                                                            echo ' selected="selected"';
                                                                        } ?>>Yogyakarta</option>
                                            <option value="gunungkidul" <?php if ($row['kabupaten'] == "gunungkidul") {
                                                                            echo ' selected="selected"';
                                                                        } ?>>Gunung Kidul</option>
                                            <option value="kulonprogo" <?php if ($row['kabupaten'] == "kulonprogo") {
                                                                            echo ' selected="selected"';
                                                                        } ?>>Kulon Progo</option>
                                            <option value="sleman" <?php if ($row['kabupaten'] == "sleman") {
                                                                            echo ' selected="selected"';
                                                                        } ?>>Sleman</option>
                                            <option value="bantul" <?php if ($row['kabupaten'] == "bantul") {
                                                                            echo ' selected="selected"';
                                                                        } ?>>Bantul</option>
                                        </select>
                                        <br>
                                        <br>
                                        <br>
                                        <div>
                                            <button style="width: 10%;" type="submit" value="hotel" name="submit-button" id="buttons">Submit</button>
                                            <a href="dashboard_hotel.php"><button style="width: 10%;" value="cancel-hotel" name="cancel-button" id="buttons">Cancel</button></a>
                                        </div>
                                    </div>

                                </form>

                            <?php } else { ?>
                                <form action="additem.php" method="post">
                                    <div class="flex-container-form">
                                    <label for="">Nama Hotel</label>
                                        <input type="text" name="nama" id="nama">

                                        <label for="">Path Gambar</label>
                                        <input type="text" name="gambar" id="gambar">

                                        <label for="">Kontak</label>
                                        <input type="text" name="kontak" id="kontak">

                                        <label for="">Alamat</label>
                                        <textarea name="alamat" id="alamat" cols="250" rows="2" wrap="hard" maxlength="640"></textarea>

                                        <label for="">Kabupaten</label>
                                        <select name="kab" id="kab">
                                            <option value="yogyakarta">Yogyakarta</option>
                                            <option value="gunungkidul">Gunung Kidul</option>
                                            <option value="kulonprogo">Kulon Progo</option>
                                            <option value="sleman">Sleman</option>
                                            <option value="bantul">Bantul</option>
                                        </select>
                                        <br>
                                        <br>
                                        <br>
                                        <div>
                                            <button style="width: 10%;" type="submit" value="hotel" name="submit-button" id="buttons">Submit</button>
                                            <a href="dashboard_hotel.php"><button style="width: 10%;" type="submit" value="cancel-hotel" name="cancel-button" id="buttons">Cancel</button></a>
                                        </div>
                                    </div>
                                </form>
                            <?php
                            }


                            ?>


                        </div>
                    </div>
                </div>

            </div>
            <!-- /.row -->
            <!-- Main row -->
            <!-- /.row (main row) -->
        </div><!-- /.container-fluid -->
    </section>
    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/js/adminlte.min.js"></script>
    </body>

    </html>