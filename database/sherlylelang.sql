-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 05:44 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sherlylelang`
--

-- --------------------------------------------------------

--
-- Table structure for table `history_lelang`
--

CREATE TABLE `history_lelang` (
  `id_history` int(10) UNSIGNED NOT NULL,
  `id_lelang` int(10) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `penawaran_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_lelang`
--

INSERT INTO `history_lelang` (`id_history`, `id_lelang`, `id_barang`, `id_user`, `penawaran_harga`) VALUES
(2, 17, 14, 1, 310000000),
(3, 20, 16, 1, 23569000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) UNSIGNED NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `harga_awal` int(20) UNSIGNED NOT NULL,
  `deskripsi_barang` varchar(100) NOT NULL,
  `status_barang` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `gambar`, `tgl`, `harga_awal`, `deskripsi_barang`, `status_barang`) VALUES
(14, 'yamaha Aerox 1200x900', 'Harga-Yamaha-Aerox-1200x900.jpg', '0000-00-00', 304000000, 'Warna hitam kuning\r\nBanyak disukai anak muda\r\nPanel meter sudah full digital dan cukup informatif\r\nE', 1),
(16, 'motor listrik viar new Q1', 'motor_listrik_viar_new_Q1L.jpg', '0000-00-00', 21520000, 'Menggunakan baterai\r\nDaya baterai awet\r\nBodynya kecil\r\nBisa menempuh jarak 60 km', 0),
(17, 'honda vario 160 2023', 'honda_vario_160_2023.jpg', '0000-00-00', 40574000, 'Dimensi diperbesar\r\nMesin eSP+4 katup mirip hondba PCX 160\r\nPakai ban gambot bikin gemuk', 0),
(18, 'honda pcx 160', 'honda_pcx_160.jpg', '0000-00-00', 38250000, 'Desain kian mewah\r\nPerfoma meningkat\r\nPosisi berkendara rileks\r\nStabilitas macam skutik Eropa', 0),
(19, 'honda nmax 2022', 'yamaha-nmax-2022.jpg', '0000-00-00', 49500000, 'Desain motor besar\r\nHarga lebih bervariasi\r\nBagian kaki motor lebih besar\r\nKadar oktan 98 atau setar', 0),
(20, 'motor listrik Gesitsss', 'motor-listrik-gesits4.jpg', '0000-00-00', 31500000, 'Buatan asli Indonesia\r\nMotor ramah lingkungan\r\nGaransi 3 tahun untuk baterai \r\nLebih hemat dan ekono', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lelang`
--

CREATE TABLE `tb_lelang` (
  `id_lelang` int(11) UNSIGNED NOT NULL,
  `id_barang` int(11) UNSIGNED NOT NULL,
  `tgl_lelang` datetime NOT NULL,
  `pemenang` varchar(225) NOT NULL,
  `harga_akhir` int(20) UNSIGNED DEFAULT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_petugas` int(10) UNSIGNED NOT NULL,
  `status` enum('dibuka','ditutup') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lelang`
--

INSERT INTO `tb_lelang` (`id_lelang`, `id_barang`, `tgl_lelang`, `pemenang`, `harga_akhir`, `id_user`, `id_petugas`, `status`) VALUES
(14, 20, '2023-02-16 14:23:00', '', NULL, 2, 3, 'dibuka'),
(17, 14, '2023-03-04 14:37:00', 'sherly anatasya', 310000000, 2, 2, 'ditutup'),
(18, 17, '2023-03-08 13:50:00', '', NULL, 2, 12, 'ditutup'),
(19, 18, '2023-03-01 20:36:00', '', NULL, 2, 3, 'ditutup'),
(20, 16, '2023-03-15 13:52:00', '', NULL, 2, 11, 'dibuka'),
(21, 18, '2023-02-09 16:38:00', '', NULL, 2, 2, 'dibuka');

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) UNSIGNED NOT NULL,
  `level` enum('administrator','petugas','masyarakat') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'administrator'),
(2, 'petugas'),
(3, 'masyarakat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masyarakat`
--

CREATE TABLE `tb_masyarakat` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_level` int(11) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(96) NOT NULL,
  `telp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_masyarakat`
--

INSERT INTO `tb_masyarakat` (`id_user`, `id_level`, `nama_lengkap`, `username`, `password`, `telp`) VALUES
(1, 3, 'sherly anatasya', 'sherly', '$2y$10$PTzu0yN6ma1UasklBblzdOCD.CoYzUZ7OuY7lu5kDkqLpY86Wqt3C', '0892747624825'),
(2, 3, 'sherly ana', 'sherlya', '$2y$10$ZEYSOx20mXKT7qAZ.rMzGufylskA2nmiYpDptVJTMcBN29PCib5aq', '081234567890'),
(3, 3, 'safira', 'safira', '$2y$10$q3mfS1h.6iunevmLcS1gSe4rcMUjPgtcFUNkgJp9cy2s7iq4fEhFq', '085344765788');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(10) UNSIGNED NOT NULL,
  `nama_petugas` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(96) NOT NULL,
  `id_level` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `id_level`) VALUES
(2, 'Petugas', 'petugas', '$2y$10$PTzu0yN6ma1UasklBblzdOCD.CoYzUZ7OuY7lu5kDkqLpY86Wqt3C', 2),
(3, 'Administrator', 'admin', '$2y$10$PTzu0yN6ma1UasklBblzdOCD.CoYzUZ7OuY7lu5kDkqLpY86Wqt3C', 1),
(11, 'jefri nichol', 'jefri nichol', '$2y$10$J1dC.rZJ/2zUl42yVuOkduvuBd8j/qOE76BHBCICQs4noV7wVMCOe', 2),
(12, 'salsa', 'salsa', '$2y$10$hYupJSOe6Ifh8Tk05h5tf.SaVVABk28GE09d1koXoBJ0YXpTD6mFG', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_lelang` (`id_lelang`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD PRIMARY KEY (`id_lelang`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history_lelang`
--
ALTER TABLE `history_lelang`
  MODIFY `id_history` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_lelang`
--
ALTER TABLE `tb_lelang`
  MODIFY `id_lelang` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history_lelang`
--
ALTER TABLE `history_lelang`
  ADD CONSTRAINT `history_lelang_ibfk_1` FOREIGN KEY (`id_lelang`) REFERENCES `tb_lelang` (`id_lelang`),
  ADD CONSTRAINT `history_lelang_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`),
  ADD CONSTRAINT `history_lelang_ibfk_4` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`);

--
-- Constraints for table `tb_lelang`
--
ALTER TABLE `tb_lelang`
  ADD CONSTRAINT `tb_lelang_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `tb_petugas` (`id_petugas`),
  ADD CONSTRAINT `tb_lelang_ibfk_4` FOREIGN KEY (`id_barang`) REFERENCES `tb_barang` (`id_barang`),
  ADD CONSTRAINT `tb_lelang_ibfk_5` FOREIGN KEY (`id_user`) REFERENCES `tb_masyarakat` (`id_user`);

--
-- Constraints for table `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD CONSTRAINT `tb_masyarakat_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);

--
-- Constraints for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD CONSTRAINT `tb_petugas_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_level` (`id_level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
