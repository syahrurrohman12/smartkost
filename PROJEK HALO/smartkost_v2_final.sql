-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 12:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartkost_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(8) NOT NULL,
  `role` varchar(10) DEFAULT 'Admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`email`, `username`, `password`, `role`) VALUES
('asdasdasdasd', 'asdasda', 'asdasd', 'Admin'),
('haohao@gmail.com', 'hfdzn', '87654321', 'Admin'),
('hfdzn56@gmail.com', 'hafidzan', '43215678', 'Admin'),
('otong@gmail.com', 'otong', 'otong123', 'Admin'),
('tazkyh55@gmail.com', 'Tazky', '12345678', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `detail_bayar`
--

CREATE TABLE `detail_bayar` (
  `id_transaksi` int(11) DEFAULT NULL,
  `harga_kamar` int(6) NOT NULL,
  `harga_tambahan` int(5) DEFAULT NULL,
  `total_harga` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_bayar`
--

INSERT INTO `detail_bayar` (`id_transaksi`, `harga_kamar`, `harga_tambahan`, `total_harga`) VALUES
(31, 600000, 20000, 620000),
(32, 600000, 50000, 650000),
(33, 450000, 0, 450000),
(34, 600000, 0, 600000),
(35, 600000, 0, 600000),
(36, 600000, 0, 600000),
(37, 600000, 0, 600000),
(38, 600000, 0, 600000),
(39, 600000, 0, 600000),
(40, 600000, 0, 600000),
(41, 600000, 0, 600000),
(42, 600000, 0, 600000),
(43, 600000, 0, 600000),
(44, 600000, 0, 600000),
(45, 600000, 0, 600000),
(46, 600000, 0, 600000),
(47, 600000, 0, 600000),
(48, 600000, 0, 600000),
(49, 600000, 0, 600000),
(50, 600000, 0, 600000),
(51, 450000, 0, 450000),
(52, 450000, 0, 450000),
(53, 450000, 0, 450000),
(54, 450000, 0, 450000),
(55, 450000, 0, 450000),
(56, 450000, 0, 450000),
(57, 450000, 0, 450000),
(58, 600000, 0, 600000),
(59, 600000, 0, 600000),
(60, 600000, 0, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `no_kamar` char(4) NOT NULL,
  `tipe_kamar` enum('Kamar Mandi Dalam','Kamar Mandi Luar') DEFAULT NULL,
  `harga_kamar` int(6) NOT NULL,
  `status_kamar` enum('Terisi','Tersedia') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`no_kamar`, `tipe_kamar`, `harga_kamar`, `status_kamar`) VALUES
('KA01', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA02', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA03', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA04', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA05', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA06', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA07', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA08', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA09', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA10', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA11', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA12', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA13', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA14', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA15', 'Kamar Mandi Dalam', 600000, 'Terisi'),
('KA16', 'Kamar Mandi Dalam', 600000, 'Tersedia'),
('KB01', 'Kamar Mandi Luar', 450000, 'Terisi'),
('KB02', 'Kamar Mandi Luar', 450000, 'Terisi'),
('KB03', 'Kamar Mandi Luar', 450000, 'Terisi'),
('KB04', 'Kamar Mandi Luar', 450000, 'Terisi'),
('KB05', 'Kamar Mandi Luar', 450000, 'Terisi'),
('KB06', 'Kamar Mandi Luar', 450000, 'Terisi'),
('KB07', 'Kamar Mandi Luar', 450000, 'Terisi');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `tanggal` date NOT NULL,
  `detail` varchar(255) DEFAULT 'Pembayaran Kost',
  `jumlah` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`tanggal`, `detail`, `jumlah`) VALUES
('2023-12-02', 'Pembayaran Kost', 620000),
('2023-12-02', 'Listrik', 200000),
('2023-12-02', 'Pembayaran Kost', 650000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 450000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000),
('2023-12-02', 'Pembayaran Kost', 600000);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik`
--

CREATE TABLE `pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_pemilik` varchar(50) NOT NULL,
  `alamat_pemilik` varchar(100) NOT NULL,
  `notelp_pemilik` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemilik`
--

INSERT INTO `pemilik` (`id_pemilik`, `email`, `nama_pemilik`, `alamat_pemilik`, `notelp_pemilik`) VALUES
(1, 'tazkyh55@gmail.com', 'Tazky', 'Bandung', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `tgl_pengeluaran` date NOT NULL,
  `detail_pengeluaran` varchar(255) DEFAULT NULL,
  `jumlah_pengeluaran` int(7) DEFAULT NULL,
  `no_kamar` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`tgl_pengeluaran`, `detail_pengeluaran`, `jumlah_pengeluaran`, `no_kamar`) VALUES
('2023-12-02', 'Listrik', 200000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `no_kamar` char(4) NOT NULL,
  `email_penyewa` varchar(50) NOT NULL,
  `nama_penyewa` varchar(50) NOT NULL,
  `alamat_penyewa` varchar(100) NOT NULL,
  `notelp_penyewa` varchar(15) NOT NULL,
  `notelp_ortu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `no_kamar`, `email_penyewa`, `nama_penyewa`, `alamat_penyewa`, `notelp_penyewa`, `notelp_ortu`) VALUES
(1, 'KA01', 'nadilafeelzahh@gmail.com', 'Nadila Filzah Widyawati', 'Jember, Jawa Timur', '085204983814', '082116453280'),
(2, 'KA02', 'lindadwiwinandha@gmail.com', 'Linda Dwi Winandha', 'Pasuruan, Jawa Timur', '085806693627', '085706157928'),
(3, 'KA03', 'fetianjelinaaa13@gmail.com', 'Feti Anjelina', 'Banyuwangi, Jawa Timur', '2147483647', '2147483647'),
(4, 'KA04', 'salsabillaalysha094@gmail.com', 'Alysha Salsabilla', 'Bondowoso, Jawa Timur', '2147483647', '2147483647'),
(5, 'KA05', 'setiyawati0803@gmail.com', 'Sulis Setiyawati', 'Nganjuk, Jawa Timur', '2147483647', '2147483647'),
(6, 'KA06', 'zaidavinandia24@gmail.com', 'Zaida Vinandia', 'Wonogiri, Jawa Tengah', '2147483647', '2147483647'),
(7, 'KA07', 'rahmaniafatwan21@gmail.com', 'Ayu Rahmania Fatwan', 'Banyuwangi, Jawa Timur', '2147483647', '2147483647'),
(8, 'KA08', 'garanivahasna@gmail.com', 'Hasna Garaniva Futaihana', 'Wonogiri, Jawa Tengah', '2147483647', '2147483647'),
(9, 'KA09', 'intanbudipramesty26@gmail.com', 'Intan Budi Pramesty', 'Mojokerto, Jawa Timur', '2147483647', '2147483647'),
(10, 'KA10', 'dinacarlina1907@gmail.com', 'Dina Carlina', 'Ponorogo, Jawa Timur', '2147483647', '2147483647'),
(11, 'KA11', 'raniaasih3@gmail.com', 'Raras Kurniasih', 'Sragen, Jawa Tengah', '2147483647', '2147483647'),
(12, 'KA12', 'lintangkawuryaan@gmail.com', 'Lintang Kawuryan', 'Madiun, Jawa Timur', '2147483647', '2147483647'),
(13, 'KA13', 'ayunitt1212@gmail.com', 'Ayu Anita Dewi', 'Banyuwangi, Jawa Timur', '2147483647', '2147483647'),
(14, 'KA14', 'elokrahma25@gmail.com', 'Elok Rahma Safitri', 'Banyuwangi, Jawa Timur', '214748364', '2147483647'),
(15, 'KA15', 'ulfiaumirahmadhani@gmail.com', 'Ulfia Umi Rahmadhani', 'Nganjuk, Jawa Timur', '2147483647', '2147483647'),
(16, 'KB01', 'marisaadel24@gmail.com', 'Marisa Adel Liyah', 'Purworejo, Jawa Tengah', '2147483647', '2147483647'),
(17, 'KB02', 'ajalala624@gmail.com', 'Siti Nur Latifa', 'Situbondo, Jawa Timur', '2147483647', '2147483647'),
(18, 'KB03', 'sariamah.13@gmail.com', 'Syarifatul Dwi A', 'Situbondo, Jawa Timur', '2147483647', '2147483647'),
(19, 'KB04', 'zidarizqi01@gmail.com', 'Zida Rizqi Amalia', 'Jember, Jawa Timur', '2147483647', '2147483647'),
(20, 'KB05', 'lrstnp@gmail.com', 'Larasati Nurisa Priyatno', 'Probolinggo, Jawa Timur', '2147483647', '2147483647'),
(21, 'KB06', 'imanianurul24@gmail.com', 'Nurul Imania', 'Situbondo, Jawa Timur', '2147483647', '2147483647'),
(22, 'KB07', 'intanimutlucu26@gmail.com', 'Intan Adelia', 'Banyuwangi, Jawa Timur', '2147483647', '2147483647');

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id_penyewa` int(11) DEFAULT NULL,
  `nama_penyewa` varchar(50) NOT NULL,
  `tgl_akhir_sewa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id_penyewa`, `nama_penyewa`, `tgl_akhir_sewa`) VALUES
(NULL, 'Nadila Filzah Widyawati', '2024-02-28'),
(NULL, 'Linda Dwi Winandha', '2024-01-31'),
(NULL, 'Feti Anjelina', '2024-01-31'),
(NULL, 'Alysha Salsabilla', '2023-12-31'),
(NULL, 'Sulis Setiyawati', '2023-12-31'),
(NULL, 'Zaida Vinandia', '2023-12-31'),
(NULL, 'Ayu Rahmania Fatwan', '2023-12-31'),
(NULL, 'Hasna Garaniva Futaihana', '2023-12-31'),
(NULL, 'Intan Budi Pramesty', '2023-12-31'),
(NULL, 'Dina Carlina', '2023-12-31'),
(NULL, 'Raras Kurniasih', '2023-12-31'),
(NULL, 'Lintang Kawuryan', '2023-12-31'),
(NULL, 'Ayu Anita Dewi', '2023-12-31'),
(NULL, 'Elok Rahma Safitri', '2023-12-31'),
(NULL, 'Ulfia Umi Rahmadhani', '2023-12-31'),
(NULL, 'Marisa Adel Liyah', '2023-12-31'),
(NULL, 'Siti Nur Latifa', '2023-12-31'),
(NULL, 'Syarifatul Dwi A', '2023-12-31'),
(NULL, 'Zida Rizqi Amalia', '2023-12-31'),
(NULL, 'Larasati Nurisa Priyatno', '2023-12-31'),
(NULL, 'Nurul Imania', '2023-12-31'),
(NULL, 'Intan Adelia', '2023-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_penyewa` int(11) DEFAULT NULL,
  `no_kamar` char(4) NOT NULL,
  `nama_penyewa` varchar(50) NOT NULL,
  `tgl_transaksi` date DEFAULT curdate(),
  `tgl_mulai_sewa` date DEFAULT NULL,
  `tgl_akhir_sewa` date DEFAULT NULL,
  `jumlah_bulan` int(2) DEFAULT NULL,
  `fasilitas_tambahan` varchar(50) DEFAULT NULL,
  `harga_tambahan` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_penyewa`, `no_kamar`, `nama_penyewa`, `tgl_transaksi`, `tgl_mulai_sewa`, `tgl_akhir_sewa`, `jumlah_bulan`, `fasilitas_tambahan`, `harga_tambahan`) VALUES
(31, NULL, 'KA01', 'Nadila Filzah Widyawati', '2023-12-02', '2023-12-02', '2023-12-14', 1, '-', 20000),
(32, NULL, 'KA04', 'Alysha Salsabilla', '2023-12-02', '2024-01-01', '2024-01-31', 1, '-', 50000),
(33, NULL, 'KB03', 'Syarifatul Dwi A', '2023-12-02', '2023-11-01', '2023-11-30', 1, '-', 0),
(34, NULL, 'KA09', 'Intan Budi Pramesty', '2023-12-02', '2023-10-01', '2023-10-31', 1, '-', 0),
(35, NULL, 'KA09', 'Intan Budi Pramesty', '2023-12-02', '2024-01-01', '2024-01-31', 1, '-', 0),
(36, NULL, 'KA01', 'Nadila Filzah Widyawati', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(37, NULL, 'KA02', 'Linda Dwi Winandha', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(38, NULL, 'KA03', 'Feti Anjelina', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(39, NULL, 'KA04', 'Alysha Salsabilla', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(40, NULL, 'KA05', 'Sulis Setiyawati', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(41, NULL, 'KA06', 'Zaida Vinandia', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(42, NULL, 'KA07', 'Ayu Rahmania Fatwan', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(43, NULL, 'KA08', 'Hasna Garaniva Futaihana', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(44, NULL, 'KA09', 'Intan Budi Pramesty', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(45, NULL, 'KA10', 'Dina Carlina', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(46, NULL, 'KA11', 'Raras Kurniasih', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(47, NULL, 'KA12', 'Lintang Kawuryan', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(48, NULL, 'KA13', 'Ayu Anita Dewi', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(49, NULL, 'KA14', 'Elok Rahma Safitri', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(50, NULL, 'KA15', 'Ulfia Umi Rahmadhani', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(51, NULL, 'KB01', 'Marisa Adel Liyah', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(52, NULL, 'KB02', 'Siti Nur Latifa', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(53, NULL, 'KB03', 'Syarifatul Dwi A', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(54, NULL, 'KB04', 'Zida Rizqi Amalia', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(55, NULL, 'KB05', 'Larasati Nurisa Priyatno', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(56, NULL, 'KB06', 'Nurul Imania', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(57, NULL, 'KB07', 'Intan Adelia', '2023-12-02', '2023-12-01', '2023-12-31', 1, '-', 0),
(58, NULL, 'KA02', 'Linda Dwi Winandha', '2023-12-02', '2024-01-01', '2024-01-31', 1, '-', 0),
(59, NULL, 'KA03', 'Feti Anjelina', '2023-12-02', '2023-11-01', '2023-11-30', 1, '-', 0),
(60, NULL, 'KA03', 'Feti Anjelina', '2023-12-02', '2024-01-01', '2024-01-31', 1, '-', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `detail_bayar`
--
ALTER TABLE `detail_bayar`
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`no_kamar`);

--
-- Indexes for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD PRIMARY KEY (`id_pemilik`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD KEY `no_kamar` (`no_kamar`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`),
  ADD KEY `no_kamar` (`no_kamar`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD KEY `id_penyewa` (`id_penyewa`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_penyewa` (`id_penyewa`),
  ADD KEY `no_kamar` (`no_kamar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemilik`
--
ALTER TABLE `pemilik`
  MODIFY `id_pemilik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `id_penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_bayar`
--
ALTER TABLE `detail_bayar`
  ADD CONSTRAINT `detail_bayar_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Constraints for table `pemilik`
--
ALTER TABLE `pemilik`
  ADD CONSTRAINT `pemilik_ibfk_1` FOREIGN KEY (`email`) REFERENCES `akun` (`email`);

--
-- Constraints for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_ibfk_1` FOREIGN KEY (`no_kamar`) REFERENCES `kamar` (`no_kamar`);

--
-- Constraints for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD CONSTRAINT `penyewa_ibfk_1` FOREIGN KEY (`no_kamar`) REFERENCES `kamar` (`no_kamar`);

--
-- Constraints for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`id_penyewa`) REFERENCES `penyewa` (`id_penyewa`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_penyewa`) REFERENCES `penyewa` (`id_penyewa`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`no_kamar`) REFERENCES `kamar` (`no_kamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
