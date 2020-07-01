-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 04:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `hapus_produk`
--

CREATE TABLE `hapus_produk` (
  `id_produk` int(10) DEFAULT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `kategori` int(10) DEFAULT NULL,
  `tgl_hapus` date DEFAULT NULL,
  `user_cust` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) DEFAULT NULL,
  `produk` int(10) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `harga` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `nama_kategori`) VALUES
(1, 'Headset'),
(2, 'Keyboard'),
(3, 'Mouse'),
(4, 'Mousepad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `pelanggan` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `nama_produk` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL,
  `harga` varchar(10) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `kategori` int(10) DEFAULT NULL,
  `stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `gambar`, `kategori`, `stok`) VALUES
(1, 'Headphone Steelseries Arctis3', 'The best headset for everywhere you game.\r\n- Discord certified clear cast noise canceling microphones for clear, natural sounding voice comm on all platforms\r\n- Artis signature soundscape emphasizes critical sounds tibhive you an audio advantage', '1430000', 'h1.jpg', 1, 10),
(2, 'Steelseries Arctis 3 Black with 7.1 Surround - Put', 'Features :\r\n- Arctis perfectly contours to your head while evenly distributing the weight of the headset across the entire Ski Goggle band.\r\n- The ClearCast microphone uses a proprietary bidirectional design delivering unmatched sound clarity', '1000000', 'h21.jpg', 1, 15),
(3, 'Steelseries Apex M750 (Mechanical RGB with LED)', 'Bahan Atas: Paduan Aluminium Seri 5000\r\nN-Key Roll Over: 104-Key (Semua)\r\nAnti-Ghosting\r\nIluminasi: RGB per-kunci yang dapat dikontrol secara individual, termasuk pola keyboard keseluruhan, dan efek pengetikan reaktif.\r\nBerat: 1 kg / 2,2 lbs\r\nTinggi: 153', '2080000', 'k1.jpg', 2, 4),
(4, 'Steelseries Apex 7 Fullsize - Mechanical Keyboard ', 'Top Material : Aircraft Grade Aluminum Alloy Frame\r\nN-Key Roll Over : 104-Key\r\nAnti-Ghosting :100%\r\nIllumination :Dynamic Per Key RGB Illumination\r\nLifetime : 50 Million Keypresses\r\nComopatibility\r\nOS : Windows and Mac OS X. USB port required', '2499000', 'k2.jpg', 2, 6),
(5, 'Steelseries Apex Pro TKL', 'Type & Name\r\nOmniPoint Adjustable Mechanical Switch (Analog Hall Effect Magnetic Sensor)\r\nActuation Point : 0.4mm to 3.6mm (More info)\r\nForce : 45cN\r\nResponse Time : 0.7ms (More info)\r\nLifetime : 100 Million Keypresses', '2750000', 'k3.jpg', 2, 3),
(6, 'Logitech G300S Gaming Mouse', 'Specifications:\r\n- 9 PROGRAMMABLE CONTROLS\r\n- ONBOARD MEMORY PROFILES\r\n- EASY-TO-USE CONFIGURATION SOFTWARE\r\n\r\nTECHNICAL SPECIFICATIONS\r\nTracking\r\nResolution: 250 2,500 dpi\r\nMax. acceleration: >20G*\r\nMax Speed: 60 ips (1.5m/s)', '209000', 'm1.png', 3, 20),
(7, 'Steelseries Rival 600 Gaming Mouse', 'Dikembangkan dengan tiga prinsip dasar kinerja revolusioner, ketahanan yang tidak nyata, dan fleksibilitas yang kuat, Rival 600 memberikan saat para profesional membutuhkannya, dalam pertempuran.\r\n60-Juta Klik Saklar Mekanik.', '1175000', 'm2.jpg', 3, 7),
(8, 'Steelseries Rival 310 Black With TrueMove3 Costom ', 'Pertama di Dunia Benar 1 sampai 1 Esports Sensor\r\nTeknologi sensor TrueSove3 milik SteelSeries memiliki 1 sampai 1 pelacakan untuk latensi ultra-rendah dan akurasi yang tepat.\r\nTombol Split-Trigger Eksklusif\r\nDengan menawarkan switch mekanik 50 juta Klik', '790000', 'm3.jpg', 3, 0),
(9, 'Steelseries Qck Prism', 'Deskripsi Produk\r\n360-degree 12 zone Prism RGB Illumination\r\nDual-Textured Surface\r\nGameSense Lighting Support\r\nPrismSync Support', '980000', 'mp1.jpg', 4, 5),
(10, 'Steelseries Qck Mini', 'Perfect Mouse Tracking\r\nTested by the top mouse sensor manufacturer, the high thread count and surface variation optimize tracking accuracy for both optical and laser sensors with minimal friction.\r\nRubber Base', '170000', 'mp2.jpg', 4, 10);

--
-- Triggers `tbl_produk`
--
DELIMITER $$
CREATE TRIGGER `hapus_barang` AFTER DELETE ON `tbl_produk` FOR EACH ROW begin
insert into hapus_produk (id_produk, nama_produk, deskripsi, harga, gambar, kategori, tgl_hapus, user_cust) values (old.id_produk, old.nama_produk, old.deskripsi, old.harga, old.gambar, old.kategori, sysdate(), current_user);
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `cookie` varchar(100) NOT NULL,
  `role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `email`, `password`, `cookie`, `role`) VALUES
(21, 'ammanft', 'Amman Fathoni', 'ammanft@gmail.com', '8411f96ea9778aa1b50058bc16d4d346', '', 'admin'),
(22, 'sigit', 'Priyo Sigit Pamungkas', 'xiaogit@gmail.com', '6662e4e67d109097b872621eb0b62bf9', '', 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `user_cust`
--

CREATE TABLE `user_cust` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cust`
--

INSERT INTO `user_cust` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(8, 'Amman Fathoni', 'amman@gmail.com', 'amman', '23b9e175f2c4d6cabb1c30873b57146f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cust`
--
ALTER TABLE `user_cust`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_cust`
--
ALTER TABLE `user_cust`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
