-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2017 at 12:59 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perek`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud_permissions`
--

CREATE TABLE `crud_permissions` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_permissions`
--

INSERT INTO `crud_permissions` (`id`, `name`, `permissions`) VALUES
(1, 'admin', '{\"crud_permissions\":\"011111\",\"crud_users\":\"011111\",\"data_reklame\":\"011111\"}');

-- --------------------------------------------------------

--
-- Table structure for table `crud_users`
--

CREATE TABLE `crud_users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_users`
--

INSERT INTO `crud_users` (`id`, `username`, `password`, `permissions`) VALUES
(1, 'admin', 'admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_reklame`
--

CREATE TABLE `data_reklame` (
  `id` int(11) NOT NULL,
  `nama_titik` varchar(50) NOT NULL,
  `lokasi_jalan` varchar(50) NOT NULL,
  `lokasi_kecamatan` enum('Boja','Brangsong','Cepiring','Gemuh','Kaliwungu','Kaliwungu selatan','Kangkung','Kendal','Limbangan','Mijen','Ngampel','Pagerruyung','Patean','Patebon','Pegandon','Plantungan','Ringinarum','Rowosari','Singorojo','Sukorejo','Weleri') NOT NULL,
  `sarana_reklame` enum('Taman','Bahu jalan','Lainnya') NOT NULL,
  `jenis_reklame` enum('Reklame papan','Reklame kain','Reklame melekat','Reklame berjalan','Reklame udara','Reklame suara','Reklame film & slide','Reklame peragaan') NOT NULL,
  `bentuk_reklame` enum('Vertikal','Horizontal','Lainnya') NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `tanggal_habis` date NOT NULL,
  `foto_reklame` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_reklame`
--

INSERT INTO `data_reklame` (`id`, `nama_titik`, `lokasi_jalan`, `lokasi_kecamatan`, `sarana_reklame`, `jenis_reklame`, `bentuk_reklame`, `tanggal_daftar`, `tanggal_habis`, `foto_reklame`) VALUES
(1, 'Titik A1', 'Jl. Pemuda', 'Boja', 'Bahu jalan', 'Reklame papan', 'Horizontal', '2017-06-05', '2017-07-10', 0x61343165632d696d675f61312e6a7067),
(2, 'Titik A2', 'Jl. Raya boja', 'Boja', 'Taman', 'Reklame papan', 'Horizontal', '2017-06-05', '2017-07-10', 0x63393961312d696d675f61322e6a7067),
(3, 'Titik A3', 'Jl. Seroja', 'Boja', 'Bahu jalan', 'Reklame papan', 'Horizontal', '2017-06-05', '2017-07-10', 0x61393231372d696d675f61332e6a7067),
(4, 'Titik A4', 'Jl. Kartini', 'Boja', 'Lainnya', 'Reklame papan', 'Horizontal', '2017-06-05', '2017-07-10', 0x61323739332d696d675f61342e6a7067),
(5, 'Titik A5', 'Jl. Pahlawan', 'Boja', 'Bahu jalan', 'Reklame papan', 'Vertikal', '2017-06-05', '2017-07-10', 0x39633263652d696d675f61352e6a7067),
(6, 'Titik A6', 'Jl. Sri agung', 'Cepiring', 'Taman', 'Reklame papan', 'Vertikal', '2017-06-01', '2017-06-14', 0x37386634362d696d675f61362e6a7067),
(7, 'Titik A7', 'Jl. St Semut', 'Cepiring', 'Lainnya', 'Reklame film & slide', 'Horizontal', '2017-06-01', '2017-06-14', 0x35353938352d696d675f61372e6a7067),
(8, 'Titik A8', 'Jl. Kesatrian', 'Cepiring', 'Bahu jalan', 'Reklame film & slide', 'Horizontal', '2017-06-01', '2017-06-14', 0x34643864332d696d675f61382e6a7067),
(9, 'Titik A9', 'Jl. Cepiring gemuh', 'Cepiring', 'Bahu jalan', 'Reklame film & slide', 'Horizontal', '2017-06-01', '2017-06-14', 0x34623339372d696d675f61392e6a7067),
(10, 'Titik B1', 'Jl. Tentara pelajar', 'Cepiring', 'Bahu jalan', 'Reklame papan', 'Vertikal', '2017-06-01', '2017-06-14', 0x36653565362d696d675f62312e6a7067),
(11, 'Titik B2', 'Jl. Raya kayulapis', 'Kaliwungu', 'Lainnya', 'Reklame papan', 'Horizontal', '2017-06-01', '2017-10-25', 0x36653061622d696d675f62322e6a7067),
(12, 'Titik B3', 'Jl. Kartini', 'Kaliwungu', 'Lainnya', 'Reklame papan', 'Lainnya', '2017-06-01', '2017-10-25', 0x32633363362d696d675f62332e6a7067),
(13, 'Titik B4', 'Jl. Raya timur kaliwungu', 'Kaliwungu', 'Taman', 'Reklame kain', 'Vertikal', '2017-06-01', '2017-10-25', 0x35613362662d696d675f62342e6a7067),
(14, 'Titik B5', 'Jl. Raya tampingan', 'Kaliwungu', 'Bahu jalan', 'Reklame papan', 'Horizontal', '2017-06-01', '2017-10-25', 0x39383937382d696d675f62352e6a7067),
(15, 'Titik B6', 'Jl. Karina raya', 'Kaliwungu', 'Bahu jalan', 'Reklame papan', 'Horizontal', '2017-06-01', '2017-10-25', 0x38393066372d696d675f62362e6a7067),
(16, 'Titik B7', 'Jl. Pangeran d juminah', 'Kaliwungu selatan', 'Bahu jalan', 'Reklame papan', 'Vertikal', '2017-06-05', '2017-06-20', 0x36396135632d696d675f62372e6a7067),
(17, 'Titik B8', 'Jl. Raya kedungsuren', 'Kaliwungu selatan', 'Bahu jalan', 'Reklame papan', 'Vertikal', '2017-06-05', '2017-06-20', 0x61393835362d696d675f62382e6a7067),
(18, 'Titik B9', 'Jl. Sukomulyo', 'Kaliwungu selatan', 'Bahu jalan', 'Reklame papan', 'Horizontal', '2017-06-05', '2017-06-20', 0x64393166322d696d675f62392e6a7067),
(19, 'Titik C1', 'Jl. Raya plantaran', 'Kaliwungu selatan', 'Lainnya', 'Reklame papan', 'Horizontal', '2017-06-05', '2017-06-20', 0x61623731662d696d675f63312e6a7067),
(20, 'Titik C2', 'Jl. Karangsari', 'Kaliwungu selatan', 'Bahu jalan', 'Reklame papan', 'Horizontal', '2017-06-05', '2017-06-20', 0x37663933342d696d675f63322e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud_permissions`
--
ALTER TABLE `crud_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crud_users`
--
ALTER TABLE `crud_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_reklame`
--
ALTER TABLE `data_reklame`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud_permissions`
--
ALTER TABLE `crud_permissions`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crud_users`
--
ALTER TABLE `crud_users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_reklame`
--
ALTER TABLE `data_reklame`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
