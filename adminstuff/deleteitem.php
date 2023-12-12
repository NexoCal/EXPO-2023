<?php

include "../databasekey.php";

$targetTable = $_GET["table"];


if (isset($_GET['id'])) {
    switch ($targetTable) {
        case ('events'):
            $selectedID = $_GET['id'];
            $sql = "DELETE FROM `events` WHERE id_events = $selectedID";
            if (mysqli_query($conn, $sql)) {
                header('location:dashboard_events.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            break;
        case ('story'):
            $selectedID = $_GET['id'];
            $sql = "DELETE FROM `story` WHERE id_story = $selectedID";
            if (mysqli_query($conn, $sql)) {
                header('location:dashboard_stories.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            break;
        case ('hotel'):
            $selectedID = $_GET['id'];
            $sql = "DELETE FROM `hotel` WHERE id_hotel = $selectedID";
            if (mysqli_query($conn, $sql)) {
                header('location:dashboard_hotel.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            break;
        case ('gambar_region'):
            $selectedID = $_GET['id'];
            $sql = "DELETE FROM `gambar_region` WHERE id_gambar_reg = $selectedID";
            if (mysqli_query($conn, $sql)) {
                header('location:dashboard_hotel.php');
            } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($conn);
            }
            break;
    }
}
