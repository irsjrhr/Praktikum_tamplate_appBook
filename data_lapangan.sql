-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 09:29 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum_regular_latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_lapangan`
--

CREATE TABLE `data_lapangan` (
  `id_lapangan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `waktu_buka` varchar(100) NOT NULL,
  `waktu_tutup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_lapangan`
--

INSERT INTO `data_lapangan` (`id_lapangan`, `nama`, `harga`, `deskripsi`, `waktu_buka`, `waktu_tutup`) VALUES
(1, 'Lapangan 1', '20000', 'lorem', '6', '10'),
(2, 'Lapangan 2', '30000', 'lorem', '8', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_lapangan`
--
ALTER TABLE `data_lapangan`
  ADD PRIMARY KEY (`id_lapangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_lapangan`
--
ALTER TABLE `data_lapangan`
  MODIFY `id_lapangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
