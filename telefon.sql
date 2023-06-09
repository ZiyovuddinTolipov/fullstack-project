-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 07:30 PM
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
-- Database: `maishiy_texnika`
--

-- --------------------------------------------------------

--
-- Table structure for table `telefon`
--

CREATE TABLE `telefon` (
  `id` int(20) NOT NULL,
  `nomi` varchar(40) NOT NULL,
  `ishlab_chiquvchi` varchar(40) NOT NULL,
  `doimiy_xotira` varchar(40) NOT NULL,
  `tezkor_xotira` varchar(40) NOT NULL,
  `narxi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `telefon`
--

INSERT INTO `telefon` (`id`, `nomi`, `ishlab_chiquvchi`, `doimiy_xotira`, `tezkor_xotira`, `narxi`) VALUES
(1, 'Iphone X', 'Apple', '128GB', '6GB', '300$'),
(2, 'Galaxy A21', 'samsung', '128GB', '4GB', '270$'),
(3, 'Redmi Not 8 Pro', 'Xiomi', '128gb', '6gb', '260$'),
(4, 'Galaxy A51', 'samsung', '128gb', '6gb', '300$');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `telefon`
--
ALTER TABLE `telefon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `telefon`
--
ALTER TABLE `telefon`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
