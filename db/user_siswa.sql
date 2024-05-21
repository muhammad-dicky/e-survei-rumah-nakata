-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2024 at 08:13 AM
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
-- Database: `e_survei_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_siswa`
--

CREATE TABLE `user_siswa` (
  `id` int NOT NULL,
  `nama` text NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `id_kelas` int NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_siswa`
--

INSERT INTO `user_siswa` (`id`, `nama`, `nipd`, `nama_ibu`, `id_kelas`, `password`, `role`) VALUES
(20, 'System Default', '1', 'default', 0, '1b1f3c1005c23645b582d2ff993f0d14', 1),
(30, 'Windy', '222', 'Anna', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(31, 'Daniel Setiawan', '666', 'mother', 38, 'c3ec0f7b054e729c5a716c8125839829', 2),
(32, 'Test System', '333', 'test', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(33, 'Suryo Widodo', '444', 'coba', 43, 'c3ec0f7b054e729c5a716c8125839829', 2),
(35, 'Vian', '555', 'Wahyuni', 45, 'c3ec0f7b054e729c5a716c8125839829', 2),
(36, 'Hartono', '4321', 'Diana', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(40, 'hartono', '9999', 'diana', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(41, 'admin', '11', 'admin', 0, '21232f297a57a5a743894a0e4a801fc3', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_siswa`
--
ALTER TABLE `user_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_siswa`
--
ALTER TABLE `user_siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
