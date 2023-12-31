<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="dashboardstyle.css">
    <link rel="stylesheet" href="placestyleadmin.css">
    <link rel="stylesheet" href="formeventstyle.css">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <title>Document</title>
</head>

<body>

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4" style="background-color:rgb(233, 190, 111); position:fixed;">
        <!-- Brand Logo -->
        <a href="index3.html" class="brand-link">
            <img src="Logo.svg" alt="" style="opacity: 1">
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu">
                    <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
                    <li class="nav-item menu-open">
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="dashboard_stories.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Stories</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="dashboard_placetogo.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Place To Go</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="dashboard_events.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Events</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="dashboard_hotel.php" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Hotel</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <script src="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/js/adminlte.min.js"></script>
</body>

</html>