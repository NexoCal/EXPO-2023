<?php

include "sideheader.php";
include "C:/xampp/htdocs/EXPO2023/databasekey.php";

unset($_SESSION['ord-hotel']);
unset($_SESSION['ord-events']);
unset($_SESSION['ord-place']);

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Stories</h1>
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
                            <h3>List of Stories</h3>
                            <div class="custom-container">
                                <a href="formStories.php"><button class="btn btn-primary btn-sm button-top">Add</button></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 5%"> NO</th>
                                        <th style="width: 5%"> ID</th>
                                        <th> JUDUL</th>
                                        <th> DESKRIPSI</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $nomor = 1;
                                    $results = mysqli_query($conn, "SELECT id_story, judul, deskripsi_story FROM story ORDER BY id_story ASC");
                                    while ($rows = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
                                    ?>
                                        <tr>
                                            <td><?php echo $nomor; ?></td>
                                            <td><?php echo $rows['id_story']; ?></td>
                                            <td><?php echo $rows['judul']; ?></td>
                                            <td><?php echo $rows['deskripsi_story']; ?></td>
                                            <td><a style="color: white;" href="formStories.php?id=<?php echo $rows['id_story'];?>"><button class="btn btn-primary btn-sm edit-button">Edit</button></a></td>
                                            <td><a style="color: white;" href="deleteitem.php?id=<?php echo $rows['id_story'];?>&table=story"><button class="btn btn-primary btn-sm delete-button">Delete</button></a></td>
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