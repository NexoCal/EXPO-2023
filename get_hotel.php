<?php
  $koneksi = mysqli_connect('localhost', 'root', '', 'test');
    function getAllHotels()
    {
        global $koneksi;
        $query = "SELECT * FROM hotel";
        if( isset($_GET['yogyakarta'])) :
            $search = $_GET['yogyakarta'];
            $query = " SELECT * FROM hotel WHERE kabupaten LIKE '%$search%'";
        endif;
        if( isset($_GET['bantul'])) :
          $search = $_GET['bantul'];
          $query = " SELECT * FROM hotel WHERE kabupaten LIKE '%$search%'";
        endif;
        if( isset($_GET['sleman'])) :
          $search = $_GET['sleman'];
          $query = " SELECT * FROM hotel WHERE kabupaten LIKE '%$search%'";
        endif;
        if( isset($_GET['kulonprogo'])) :
          $search = $_GET['kulonprogo'];
          $query = " SELECT * FROM hotel WHERE kabupaten LIKE '%$search%'";
        endif;
        if( isset($_GET['gunungkidul'])) :
          $search = $_GET['gunungkidul'];
          $query = " SELECT * FROM hotel WHERE kabupaten LIKE '%$search%'";
        endif;
        $result = mysqli_query($koneksi, $query);
        $rows = [];
        while( $row = mysqli_fetch_assoc($result) ){
            $rows[] = $row;
        }
    return $rows;
    }
?>