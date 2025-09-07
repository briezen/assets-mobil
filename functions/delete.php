<?php
include '../includes/koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $query = "DELETE FROM assets WHERE id = '$id'";

    if (mysqli_query($conn, $query)) {
        header('Location: ../pages/tabel.php');
    } else {
        header('Location: ../pages/tabel.php');
    }
}
