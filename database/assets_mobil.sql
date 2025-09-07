-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2025 at 06:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assets_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int NOT NULL,
  `nama_pembeli` varchar(255) DEFAULT NULL,
  `merk_mobil` enum('Toyota','Honda','Mitsubishi','Suzuki','Nissan') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nomor_telp` varchar(255) NOT NULL,
  `harga` decimal(15,2) DEFAULT NULL,
  `kota_pengantaran` varchar(255) NOT NULL,
  `tanggal_pembelian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Delivered','Not Delivered') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Not Delivered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `nama_pembeli`, `merk_mobil`, `nomor_telp`, `harga`, `kota_pengantaran`, `tanggal_pembelian`, `status`) VALUES
(1, 'Atmojo Rahardjo', 'Mitsubishi', '087782618882', 200000000.00, 'Bandung', '2025-03-01 09:01:24', 'Delivered'),
(12, 'Ahmad', 'Suzuki', '08992001012', 80000000.00, 'Bandung', '2025-03-04 09:19:19', 'Delivered'),
(13, 'Alif Ramadhan', 'Mitsubishi', '08127778819', 100000000.00, 'Bogor', '2025-03-04 12:41:03', 'Delivered'),
(14, 'Hierich', 'Suzuki', '087782190192', 90000000.00, 'Jakarta', '2025-03-05 12:52:47', 'Delivered'),
(15, 'Dandi', 'Honda', '08127778819', 70000000.00, 'Solo', '2025-03-05 12:59:30', 'Delivered'),
(16, 'Herman', 'Suzuki', '089921920122', 99000000.00, 'Bekasi', '2025-03-13 14:49:34', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`) VALUES
(1, 'Dandi Gustaf Zakhir', 'dannzkhr11', '$2y$10$XwFiiQu4Q5Gcd8T9dqQTzuh8JgvZqxpcKVKlRDPycSovYU0vZWFLa', '2025-03-05 10:03:25'),
(2, 'ahmad', 'ahmad1222', '$2y$10$T.ZNMXWHeXUUIiSiQA4RPuOOdj9K1OdAl.1J1ed0crnV8DPZPyn9S', '2025-03-05 10:35:00'),
(3, 'Dandi Zakhir', 'danzkhr11', '$2y$10$QHujlmmf3iDdm1Gf9XnAYOVmgsMqNpwP8uQHjbZ4DFAKpai7VGFnW', '2025-03-05 12:55:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
