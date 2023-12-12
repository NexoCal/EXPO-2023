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
                                $results = mysqli_query($conn, "SELECT e.id_events, e.gambar,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategoriEvent FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) WHERE e.id_events = '$selectID'");
                                $row = mysqli_fetch_array($results, MYSQLI_ASSOC);
                            ?>
                                <form action="edititem.php" method="post">
                                    <input required type="hidden" name="id" value="<?php echo $row['id_events']; ?>">
                                    <div class="flex-container-form">
                                        <label for="">Judul Event</label>
                                        <input type="text" name="judul" id="judul" value="<?php echo $row['judul'] ?>">

                                        <label for="">Path Gambar</label>
                                        <input type="text" name="gambar" id="gambar" value="<?php echo $row['gambar'] ?>">

                                        <label for="">Tanggal</label>
                                        <input type="date" name="tanggal" id="tanggal" value="<?php echo $row['tanggal'] ?>">

                                        <label for="">Status</label>
                                        <select name="stat" id="stat">
                                            <option value="ON GOING" <?php if ($row['timeline'] == "ON GOING") echo ' selected="selected"'; ?>>ON GOING</option>
                                            <option value="UPCOMING" <?php if ($row['timeline'] == "UPCOMING") echo ' selected="selected"'; ?>>UPCOMING</option>
                                        </select>

                                        <label for="">Deskripsi</label>
                                        <textarea name="deskrip" id="deskrip" cols="80" rows="5">
                                            <?php echo $row['deskripsi'] ?>
                                        </textarea>

                                        <label for="">Kategori</label>
                                        <select name="kat" id="kat">
                                            <option value="jejepangan" <?php if ($row['kategoriEvent'] == "jejepangan") {
                                                                            echo 'selected="selected"';
                                                                        } ?>>Jejepangan</option>
                                            <option value=""></option>
                                            <option value=""></option>
                                            <option value=""></option>
                                        </select>
                                        <br>
                                        <br>
                                        <br>
                                        <div>
                                            <button style="width: 10%;" type="submit" value="events" name="submit-button" id="buttons">Submit</button>
                                            <a href="dashboard_events.php"><button style="width: 10%;" value="cancel-event" name="cancel-button" id="buttons">Cancel</button></a>
                                        </div>
                                    </div>

                                </form>

                            <?php } else { ?>
                                <form action="additem.php" method="post">
                                    <div class="flex-container-form">
                                        <label for="">Judul Event</label>
                                        <input type="text" name="judul" id="judul">

                                        <label for="">Path Gambar</label>
                                        <input type="text" name="gambar" id="gambar" v>

                                        <label for="">Tanggal</label>
                                        <input type="date" name="tanggal" id="tanggal">

                                        <label for="">Status</label>
                                        <select name="stat" id="stat">
                                            <option value="On Going">ON GOING</option>
                                            <option value="Upcoming">UPCOMING</option>
                                        </select>

                                        <label for="">Deskripsi</label>
                                        <textarea name="deskrip" id="deskrip" cols="80" rows="5"></textarea>

                                        <label for="">Kategori</label>
                                        <select name="kat" id="kat">
                                            <option value="jejepangan">Jejepangan</option>
                                            <option value=""></option>
                                            <option value=""></option>
                                            <option value=""></option>
                                        </select>
                                        <br>
                                        <br>
                                        <br>
                                        <div>
                                            <button style="width: 10%;" type="submit" value="events" name="submit-button" id="buttons">Submit</button>
                                            <a href="dashboard_events.php"><button style="width: 10%;" value="cancel-event" name="cancel-button" id="buttons">Cancel</button></a>
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