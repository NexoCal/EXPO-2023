<?php

include "sideheader.php";
include "C:/xampp/htdocs/EXPO2023/databasekey.php";

unset($_SESSION['ord-hotel']);
unset($_SESSION['ord-story']);
unset($_SESSION['ord-events']);

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Place To Go</h1>
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
                            <h3>List of Places</h3>
                            <div class="custom-container">
                                <a href=""><button class="btn btn-primary btn-sm button-top">Add</button></a>
                                <a href=""><button class="btn btn-primary btn-sm button-top">Show Region Table</button></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 5%"> NO</th>
                                        <th style="width: 5%"> ID</th>
                                        <th> NAMA</th>
                                        <th> CERITA</th>
                                        <th> DAERAH</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $nomor = 1;
                                    $results = mysqli_query($conn, "SELECT e.id_gambar_reg,e.nama_tempat,e.gambar,e.cerita, k.region FROM gambar_region e join daerah_region k on (e.id_daerah=k.id_region) ORDER BY e.id_gambar_reg ASC");
                                    while ($rows = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
                                    ?>
                                        <tr>
                                            <td><?php echo $nomor; ?></td>
                                            <td><?php echo $rows['id_gambar_reg']; ?></td>
                                            <td><?php echo $rows['nama_tempat']; ?></td>
                                            <td><?php echo $rows['cerita']; ?></td>
                                            <td><?php echo $rows['region']; ?></td>
                                            <td><a style="color: white;" href=""><button class="btn btn-primary btn-sm edit-button">Edit</button></a></td>
                                            <td><a style="color: white;" href="deleteitem.php?id=<?php echo $rows['id_gambar_reg'];?>&table=gambar_region"><button class="btn btn-primary btn-sm delete-button">Delete</button></a></td>
                                        </tr>
                                    <?php
                                        $nomor = $nomor + 1;
                                    }
                                    ?>
                                </tbody>
                            </table>
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