<?php
include '../includes/koneksi.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Ambil data dari form
    $id = $_POST['id'];
    $name = $_POST['nama_pembeli'];
    $merk = $_POST['merk_mobil'];
    $telp = $_POST['nomor_telp'];
    $harga = $_POST['harga'];
    $kota = $_POST['kota_pengantaran'];
    $status = $_POST['status'];

    // Simpan data ke database
    $query = "UPDATE assets 
              SET nama_pembeli = '$name', 
                  merk_mobil = '$merk', 
                  nomor_telp = '$telp', 
                  harga = '$harga', 
                  kota_pengantaran = '$kota', 
                  status = '$status' 
              WHERE id = '$id'";

    $result = mysqli_query($conn, $query);

    if ($result) {
        header('Location: ../pages/tabel.php');
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}
