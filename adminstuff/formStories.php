<?php

include "sideheader.php";
include "C:/xampp/htdocs/EXPO2023/databasekey.php";

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
                                $results = mysqli_query($conn, "SELECT e.id_story, e.gambar,e.isi,e.judul,e.deskripsi_story FROM story e  WHERE e.id_story = '$selectID'");
                                $row = mysqli_fetch_array($results, MYSQLI_ASSOC);
                            ?>
                                <form action="edititem.php" method="post">
                                    <input required type="hidden" name="id" value="<?php echo $row['id_story']; ?>">
                                    <div class="flex-container-form">
                                        <label for="">Judul Story</label>
                                        <input type="text" name="judul" id="judul" value="<?php echo $row['judul'] ?>">

                                        <label for="">Path Gambar</label>
                                        <input type="text" name="gambar" id="gambar" value="<?php echo $row['gambar'] ?>">

                                        <label for="">Deskripsi Singkat</label>
                                        <textarea name="deskripsi" id="deskrip" cols="250" rows="2" wrap="hard" maxlength="640"><?php echo $row['deskripsi_story'] ?></textarea>

                                        <label for="">Isi</label>
                                        <textarea name="isi" id="isian" cols="80" rows="5"><?php echo $row['isi'] ?></textarea>
                                        <br>
                                        <br>
                                        <br>
                                        <div>
                                            <button style="width: 10%;" type="submit" value="story" name="submit-button" id="buttons">Submit</button>
                                            <a href="dashboard_stories.php"><button style="width: 10%;" value="cancel-story" name="submit-button" id="buttons">Cancel</button></a>
                                        </div>
                                    </div>

                                </form>

                            <?php } else { ?>
                                <form action="additem.php" method="post">
                                    <div class="flex-container-form">
                                        <label for="">Judul Story</label>
                                        <input type="text" name="judul" id="judul">

                                        <label for="">Path Gambar</label>
                                        <input type="text" name="gambar" id="gambar" v>

                                        <label for="">Deskripsi Singkat</label>
                                        <textarea name="deskripsi" id="deskrip" cols="80" rows="1"></textarea>

                                        <label for="">Isi</label>
                                        <textarea name="isi" id="isian" cols="80" rows="5"></textarea>
                                        <br>
                                        <br>
                                        <br>
                                        <div>
                                            <button style="width: 10%;" type="submit" value="story" name="submit-button" id="buttons">Submit</button>
                                            <a href="dashboard_stories.php"><button style="width: 10%;" value="cancel-event" name="submit-button" id="buttons">Cancel</button></a>
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