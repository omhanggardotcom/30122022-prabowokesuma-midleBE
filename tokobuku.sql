-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 08:38 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `category_buku` varchar(50) DEFAULT NULL,
  `keyword_buku` text DEFAULT NULL,
  `penerbit_buku` varchar(100) NOT NULL,
  `harga_buku` double NOT NULL,
  `stock` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `category_buku`, `keyword_buku`, `penerbit_buku`, `harga_buku`, `stock`) VALUES
(1, 'Matematika Cerdas IA', 'Matematika', 'matematika, buku, pelajaran,ajar', 'Trigata Media', 100000, 100),
(2, 'Cerdas Cermat IIB', 'umum', 'cerdas, cermat, buku, kelas dua', 'Erlamba', 20000, 100),
(3, 'Kreatif IVA', 'umum', 'buku, kreatif, kelas empat', 'Erlamba', 40000, 10),
(4, 'Pengetahuan Sosial VA', 'sosial', 'sos, sosial, buku, kelas lima', 'Trilangga', 155000, 12),
(6, 'Cerdas Cermat IIA', 'umum', 'cerdas, cermat, buku, kelas dua', 'Trilangga', 45000, 11),
(7, 'Sains SD Lengkap', 'sains', 'sd, buku, sains', 'Cepat Gita', 120000, 13),
(8, 'Pintar Matematika Untuk SD', 'matematika', 'matematika, umum, buku, sd', 'Karya Dunia', 55000, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
