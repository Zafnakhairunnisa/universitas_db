-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 20, 2024 at 02:06 AM
-- Server version: 8.3.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambil_mk`
--

DROP TABLE IF EXISTS `ambil_mk`;
CREATE TABLE IF NOT EXISTS `ambil_mk` (
  `id` int NOT NULL,
  `mahasiswa_id` int DEFAULT NULL,
  `matakuliah_id` int DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `matakuliah_id` (`matakuliah_id`),
  KEY `fk_ambil_mk_mahasiswa` (`mahasiswa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambil_mk`
--

INSERT INTO `ambil_mk` (`id`, `mahasiswa_id`, `matakuliah_id`, `nilai`) VALUES
(1, 1, 1, 85),
(2, 1, 2, 78),
(3, 1, 3, 90),
(4, 2, 1, 75),
(5, 2, 3, 88),
(6, 3, 2, 82),
(7, 3, 4, 79),
(8, 4, 1, 91),
(9, 4, 3, 85),
(10, 4, 5, 88),
(11, 5, 2, 76),
(12, 5, 4, 80),
(13, 6, 2, 85),
(14, 6, 3, 92),
(15, 6, 5, 78);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id` int NOT NULL,
  `NIM` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NIM` (`NIM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `NIM`, `name`, `alamat`) VALUES
(1, '2021001', 'Andi', 'Jl. Merdeka No. 10, Jakarta'),
(2, '2021002', 'Budi', 'Jl. Pahlawan No. 5, Surabaya'),
(3, '2021003', 'Citra', 'Jl. Diponegoro No. 15, Bandung'),
(4, '2021004', 'Dewi', 'Jl. Sudirman No. 20, Semarang'),
(5, '2021005', 'Eko', 'Jl. Gatot Subroto No. 25, Yogyakarta'),
(6, '2021006', 'Viyella', 'Jl. Ahmad Yani No. 30, Medan');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sks` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `name`, `sks`) VALUES
(1, 'A01', 3),
(2, 'A02', 4),
(3, 'A03', 3),
(4, 'B01', 2),
(5, 'B02', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
