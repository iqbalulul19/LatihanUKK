-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 09:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_8feb_iqbal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_motor`
--

CREATE TABLE `tb_motor` (
  `id_motor` int(10) NOT NULL,
  `nomor_rangka` int(10) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `jenis_motor` varchar(20) NOT NULL,
  `tahun_motor` int(4) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_motor`
--

INSERT INTO `tb_motor` (`id_motor`, `nomor_rangka`, `merek`, `jenis_motor`, `tahun_motor`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1, 1234, 'Honda', 'Matic', 2000, '2023-02-01', '2023-02-08'),
(2, 4321, 'Honda', 'Matic', 2000, '2023-02-10', '2023-02-23'),
(28, 12345, 'Honda', 'Matic', 2022, '2023-02-08', '2023-02-11'),
(29, 111, 'Honda', 'Matic', 2020, '2023-03-07', '2023-03-11'),
(30, 111, 'Honda', 'Matic', 2020, '2023-03-07', '2023-03-11'),
(31, 6666, 'Vario', 'Honda', 2020, '2023-02-08', '2023-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id_peminjam` int(10) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `umur` int(10) NOT NULL,
  `keperluan` varchar(20) NOT NULL,
  `jaminan` varchar(20) NOT NULL,
  `id_motor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id_peminjam`, `nama_peminjam`, `alamat`, `umur`, `keperluan`, `jaminan`, `id_motor`) VALUES
(1, 'Dian As Haryani', 'Karangroto', 18, 'Peminjaman Motor', 'KTP', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_motor`
--
ALTER TABLE `tb_motor`
  ADD PRIMARY KEY (`id_motor`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id_peminjam`),
  ADD KEY `id_motor` (`id_motor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_motor`
--
ALTER TABLE `tb_motor`
  MODIFY `id_motor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  MODIFY `id_peminjam` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD CONSTRAINT `tb_peminjaman_ibfk_1` FOREIGN KEY (`id_motor`) REFERENCES `tb_motor` (`id_motor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
