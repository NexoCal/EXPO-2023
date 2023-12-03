<?php

include "sideheader.php";
include "C:/xampp/htdocs/EXPO2023/databasekey.php";

unset($_SESSION['ord-events']);
unset($_SESSION['ord-story']);
unset($_SESSION['ord-place']);

?>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Hotels</h1>
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
                            <h3>List of Hotels</h3>
                            <div class="custom-container">
                                <a href="formHotel.php"><button class="btn btn-primary btn-sm button-top">Add</button></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 5%"> NO</th>
                                        <th style="width: 5%"> ID</th>
                                        <th> NAMA</th>
                                        <th> ALAMAT</th>
                                        <th> KONTAK</th>
                                        <th> KABUPATEN</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $nomor = 1;
                                    $results = mysqli_query($conn, "SELECT id_hotel, nama, alamat, contact, kabupaten FROM hotel ORDER BY id_hotel ASC");
                                    while ($rows = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
                                    ?>
                                        <tr>
                                            <td><?php echo $nomor; ?></td>
                                            <td><?php echo $rows['id_hotel']; ?></td>
                                            <td><?php echo $rows['nama']; ?></td>
                                            <td><?php echo $rows['alamat']; ?></td>
                                            <td><?php echo $rows['contact']; ?></td>
                                            <td><?php echo $rows['kabupaten']; ?></td>
                                            <td><a style="color: white;" href="formHotel.php?id=<?php echo $rows['id_hotel']; ?>"><button class="btn btn-primary btn-sm edit-button">Edit</button></a></td>
                                            <td><a style="color: white;" href="deleteitem.php?id=<?php echo $rows['id_hotel']; ?>&table=hotel"><button class="btn btn-primary btn-sm delete-button">Delete</button></a></td>
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
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- DataTables  & Plugins -->
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="plugins/jszip/jszip.min.js"></script>
    <script src="plugins/pdfmake/pdfmake.min.js"></script>
    <script src="plugins/pdfmake/vfs_fonts.js"></script>
    <script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <!-- Page specific script -->
    <script>
        $(function() {
            $("#example1").DataTable({
                "paging": true,
                "lengthChange": true,
                "searching": true,
                "ordering": true,
                "info": false,
                "autoWidth": false,
                "responsive": false,
                "scrollX": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $("body").on("click", ".btn-delete-row", function(e) {
                if (confirm("Apakah anda yakin ingin menghapus?") === false) {
                    e.preventDefault();
                }
            });
        });
    </script>
    </body>

    </html>