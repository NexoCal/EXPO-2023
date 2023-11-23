<?php

include "sideheader.php";

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Dashboard</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="admin.php">Home</a></li>
                        <li class="breadcrumb-item active">Berita</li>
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
                        <div class="card-header">
                            <h3 class="card-title">Daftar Berita</h3>
                        </div>
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th> NO</th>
                                        <th> ID</th>
                                        <th> JUDUL</th>
                                        <th> ISI</th>
                                        <th> DESKRIPSI</th>
                                        <th> GAMBAR</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $nomor = 1;
                                    $results = mysqli_query($conn, "SELECT b.*, k.nama_kategori FROM berita b join kategori k on (b.id_kategori=k.id_kategori) ORDER BY b.id_berita DESC");
                                    while ($rows = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
                                    ?>
                                        <tr>
                                            <td><?php echo $nomor; ?></td>
                                            <td><?php echo $rows['id_story']; ?></td>
                                            <td><?php echo $rows['judul']; ?></td>
                                            <td><?php echo $rows['isi']; ?></td>
                                            <td><?php echo $rows['deskripsi_story']; ?></td>
                                            <td><?php echo $rows['gambar']; ?></td>
                                            <td><a style="color: white;" href=""><button class="btn btn-primary btn-sm">Edit</button></a></td>
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