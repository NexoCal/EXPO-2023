<?php

include "sideheader.php";
include "C:/xampp/htdocs/EXPO2023/databasekey.php";

session_start();
unset($_SESSION['ord-hotel']);
unset($_SESSION['ord-story']);
unset($_SESSION['ord-place']);




$sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.id_events ASC";
if(isset($_GET['sort'])){
    $sort = $_GET['sort'];
    if ($_SESSION['ord-events'] == 3){
        $_SESSION['ord-events'] = 0;  
    }
    $ord = $_SESSION['ord-events'];
    switch ($sort){
        case 'id':
            if($ord == 0){
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.id_events ASC";
                $_SESSION['ord-events'] = 1;
            }else{
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.id_events DESC";
                $_SESSION['ord-events'] = 0;
            }
            break;
        case 'judul':
            if($ord == 0){
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.judul ASC";
                $_SESSION['ord-events'] = 1;
            }else{
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.judul DESC";
                $_SESSION['ord-events'] = 0;
            }
            break;
        case 'tanggal':
            if($ord == 0){
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.tanggal ASC";
                $_SESSION['ord-events'] = 1;
            }else{
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.tanggal DESC";
                $_SESSION['ord-events'] = 0;
            }
            break;
        case 'status':
            if($ord == 0){
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.timeline ASC";
                $_SESSION['ord-events'] = 1;
            }else{
                $sql = "SELECT e.id_events,e.judul,e.deskripsi,e.tanggal,e.timeline, k.kategori_event FROM events e join kategori_event k on (e.id_kategori_event=k.id_kategori_event) ORDER BY e.timeline DESC";
                $_SESSION['ord-events'] = 0;
            }
            break;
    }

}




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
                            <h3>List of Events</h3>
                            <div class="custom-container">
                                <a href="formEvents.php"><button class="btn btn-primary btn-sm button-top">Add</button></a>
                                <a href=""><button class="btn btn-primary btn-sm button-top">Show Event Category Table</button></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 5%"> NO</th>
                                        <th style="width: 5%"><a href="dashboard_events.php?sort=id" style="color: black;"> ID</a></th>
                                        <th><a href="dashboard_events.php?sort=judul" style="color: black;"> JUDUL</a></th>
                                        <th><a href="dashboard_events.php?sort=tanggal" style="color: black;"> TANGGAL</a></th>
                                        <th><a href="dashboard_events.php?sort=status" style="color: black;"> STATUS</a></th>
                                        <th><a> KATEGORI</a></th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $nomor = 1;
                                    $results = mysqli_query($conn, $sql);
                                    while ($rows = mysqli_fetch_array($results, MYSQLI_ASSOC)) {
                                    ?>
                                        <tr>
                                            <td><?php echo $nomor; ?></td>
                                            <td><?php echo $rows['id_events']; ?></td>
                                            <td style="width: 600px;"><?php echo $rows['judul']; ?></td>
                                            <td><?php echo $rows['tanggal']; ?></td>
                                            <td><?php echo $rows['timeline']; ?></td>
                                            <td><?php echo $rows['kategori_event']; ?></td>
                                            <td style="width: 11%;">
                                                <a style="color: white;" href="formEvents.php?id=<?php echo $rows['id_events']; ?>"><button class="btn btn-primary btn-sm edit-button">Edit</button></a>
                                                <a style="color: white;" href="deleteitem.php?id=<?php echo $rows['id_events']; ?>&table=events"><button class="btn btn-primary btn-sm delete-button">Delete</button></a>
                                            </td>
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