<?php
if (isset($_POST['submit'])) {
    include '../includes/koneksi.php';

    // Ambil data dari form
    $name = $_POST['nama_pembeli'];
    $merk = $_POST['merk_mobil'];
    $telp = $_POST['nomor_telp'];
    $harga = $_POST['harga'];
    $kota = $_POST['kota_pengantaran'];
    $status = $_POST['status'];

    // Simpan data ke database
    $query = "INSERT INTO assets (nama_pembeli, merk_mobil, nomor_telp, harga, kota_pengantaran, status) 
              VALUES ('$name', '$merk', '$telp', $harga, '$kota', '$status')";
    $result = mysqli_query($conn, $query);

    if ($result) {
        header('Location: ../pages/tabel.php');
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}

?>