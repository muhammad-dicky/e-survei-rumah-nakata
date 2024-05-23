-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 23, 2024 at 07:41 AM
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
-- Table structure for table `aksi`
--

CREATE TABLE `aksi` (
  `id_aksi` int NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `tgl_isi` datetime NOT NULL,
  `id_kuesioner` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi`
--

INSERT INTO `aksi` (`id_aksi`, `nipd`, `tgl_isi`, `id_kuesioner`) VALUES
(65, '222', '2019-10-31 16:57:58', 26),
(66, '333', '2019-10-31 16:58:15', 26),
(67, '666', '2019-10-31 16:58:38', 26),
(68, '222', '2019-11-06 06:15:21', 27),
(69, '222', '2024-05-22 02:30:29', 28);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_guru`
--

CREATE TABLE `aksi_guru` (
  `id_aksi_guru` int NOT NULL,
  `nipd` varchar(128) NOT NULL,
  `tgl_isi` datetime NOT NULL,
  `id_survei_guru` int NOT NULL,
  `id_guru` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi_guru`
--

INSERT INTO `aksi_guru` (`id_aksi_guru`, `nipd`, `tgl_isi`, `id_survei_guru`, `id_guru`) VALUES
(56, '222', '2019-10-31 16:53:35', 22, 51),
(57, '777', '2019-11-06 04:17:01', 22, 51),
(58, '777', '2019-11-06 04:17:52', 22, 54),
(59, '222', '2019-11-07 09:43:46', 22, 50),
(60, '333', '2019-11-07 09:45:04', 22, 50),
(62, '333', '2019-11-10 16:21:18', 22, 51),
(63, '222', '2019-11-10 16:48:36', 24, 51),
(64, '333', '2019-11-10 16:49:02', 24, 50),
(65, '555', '2019-11-10 16:49:52', 22, 51),
(66, '555', '2019-11-10 16:50:05', 24, 51),
(67, '444', '2019-11-10 18:07:20', 22, 50);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_guru_tmp`
--

CREATE TABLE `aksi_guru_tmp` (
  `id_aksi_guru_tmp` int NOT NULL,
  `id_aksi_guru` int NOT NULL,
  `soal_no` int NOT NULL,
  `id_opsi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi_guru_tmp`
--

INSERT INTO `aksi_guru_tmp` (`id_aksi_guru_tmp`, `id_aksi_guru`, `soal_no`, `id_opsi`) VALUES
(221, 56, 1, 4),
(222, 56, 2, 3),
(223, 56, 3, 2),
(224, 56, 4, 1),
(225, 57, 1, 4),
(226, 57, 2, 3),
(227, 57, 3, 2),
(228, 57, 4, 4),
(229, 58, 1, 4),
(230, 58, 2, 4),
(231, 58, 3, 4),
(232, 58, 4, 4),
(233, 59, 1, 4),
(234, 59, 2, 4),
(235, 59, 3, 3),
(236, 59, 4, 3),
(237, 60, 1, 4),
(238, 60, 2, 3),
(239, 60, 3, 2),
(240, 60, 4, 2),
(245, 62, 1, 4),
(246, 62, 2, 4),
(247, 62, 3, 4),
(248, 62, 4, 4),
(249, 63, 1, 4),
(250, 63, 2, 3),
(251, 63, 3, 2),
(252, 63, 4, 3),
(253, 64, 1, 4),
(254, 64, 2, 4),
(255, 64, 3, 3),
(256, 64, 4, 2),
(257, 65, 1, 4),
(258, 65, 2, 4),
(259, 65, 3, 3),
(260, 65, 4, 1),
(261, 66, 1, 4),
(262, 66, 2, 4),
(263, 66, 3, 3),
(264, 66, 4, 2),
(265, 67, 1, 4),
(266, 67, 2, 4),
(267, 67, 3, 4),
(268, 67, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_tmp`
--

CREATE TABLE `aksi_tmp` (
  `id_aksi_tmp` int NOT NULL,
  `id_aksi` int NOT NULL,
  `soal_no` int NOT NULL,
  `id_opsi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi_tmp`
--

INSERT INTO `aksi_tmp` (`id_aksi_tmp`, `id_aksi`, `soal_no`, `id_opsi`) VALUES
(151, 65, 1, 4),
(152, 65, 2, 4),
(153, 65, 3, 3),
(154, 65, 4, 2),
(155, 65, 5, 1),
(156, 66, 1, 4),
(157, 66, 2, 4),
(158, 66, 3, 4),
(159, 66, 4, 3),
(160, 66, 5, 2),
(161, 67, 1, 4),
(162, 67, 2, 3),
(163, 67, 3, 4),
(164, 67, 4, 3),
(165, 67, 5, 2),
(166, 68, 1, 4),
(167, 68, 2, 3),
(168, 68, 3, 2),
(169, 68, 4, 2),
(170, 68, 5, 2),
(171, 68, 6, 3),
(172, 68, 7, 3),
(173, 68, 8, 4),
(174, 68, 9, 3),
(175, 68, 10, 3),
(176, 68, 11, 3),
(177, 68, 12, 4),
(178, 68, 13, 2),
(179, 68, 14, 1),
(180, 68, 15, 1),
(181, 68, 16, 1),
(182, 68, 17, 2),
(183, 68, 18, 2),
(184, 68, 19, 3),
(185, 68, 20, 4),
(186, 69, 1, 4),
(187, 69, 2, 3),
(188, 69, 3, 3),
(189, 69, 4, 2),
(190, 69, 5, 3),
(191, 69, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ampuan`
--

CREATE TABLE `ampuan` (
  `id_ampuan` int NOT NULL,
  `id_guru` int NOT NULL,
  `id_kelas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ampuan`
--

INSERT INTO `ampuan` (`id_ampuan`, `id_guru`, `id_kelas`) VALUES
(92, 51, 38),
(93, 51, 43),
(94, 51, 45),
(95, 51, 46),
(108, 50, 43),
(109, 50, 46),
(121, 54, 38),
(122, 54, 43),
(123, 54, 45),
(125, 49, 38),
(126, 49, 43),
(127, 49, 45),
(134, 56, 38),
(135, 56, 45),
(137, 57, 43),
(138, 57, 45),
(140, 58, 43),
(141, 58, 45);

-- --------------------------------------------------------

--
-- Table structure for table `aspek_kepuasan`
--

CREATE TABLE `aspek_kepuasan` (
  `id_aspek_kepuasan` int NOT NULL,
  `aspek` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspek_kepuasan`
--

INSERT INTO `aspek_kepuasan` (`id_aspek_kepuasan`, `aspek`) VALUES
(1, 'Proses KBM'),
(2, 'Pelayanan Karyawan Sebagai Penunjang Pendidikan'),
(3, 'Kelas & Toilet');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`) VALUES
(49, 'Pioneer'),
(50, 'joko anwar'),
(51, 'Rani'),
(54, 'Handoko '),
(56, 'joko'),
(57, 'hendi'),
(58, 'handuk');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(29, 'Pengenalan Lingkungan Sekolah '),
(32, 'Test'),
(33, 'test 2'),
(36, 'jagongan'),
(37, 'Pelayanan');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_pengunjung`
--

CREATE TABLE `kategori_pengunjung` (
  `id_kelas` int NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kategori` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sub` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `sub` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `jurusan`, `sub`) VALUES
(38, 'X', 'IPA', 2),
(43, 'X', 'IPS', 1),
(45, 'X', 'IPS', 2),
(46, '', 'Masyarakat Umum', 1),
(50, 'X', 'Bahasa', 1),
(51, 'Aktif', 'IPA', 3),
(52, 'Aktif', 'Masyarakat', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kuesioner`
--

CREATE TABLE `kuesioner` (
  `id_kuesioner` int NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `id_kategori` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuesioner`
--

INSERT INTO `kuesioner` (`id_kuesioner`, `judul`, `deskripsi`, `tgl_mulai`, `tgl_selesai`, `id_kategori`) VALUES
(26, 'Test Sytem #1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2019-10-31', '2019-11-02', 33),
(27, 'PLS', 'PLS', '2019-11-06', '2019-11-08', 29),
(28, 'test pelayanan 1', 'deskripsi pelayanan kuisioner', '2024-05-22', '2024-05-30', 37);

-- --------------------------------------------------------

--
-- Table structure for table `kuesioner_tmp`
--

CREATE TABLE `kuesioner_tmp` (
  `id_kuesioner_tmp` int NOT NULL,
  `id_kuesioner` int NOT NULL,
  `id_kelas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuesioner_tmp`
--

INSERT INTO `kuesioner_tmp` (`id_kuesioner_tmp`, `id_kuesioner`, `id_kelas`) VALUES
(91, 26, 38),
(92, 26, 43),
(93, 26, 45),
(94, 26, 46),
(96, 27, 38),
(97, 27, 43),
(98, 27, 45),
(99, 27, 46),
(100, 28, 46);

-- --------------------------------------------------------

--
-- Table structure for table `masukan_guru`
--

CREATE TABLE `masukan_guru` (
  `id_masukan_guru` int NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `id_survei_guru` int NOT NULL,
  `id_guru` int NOT NULL,
  `tgl_komen` date NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukan_guru`
--

INSERT INTO `masukan_guru` (`id_masukan_guru`, `nipd`, `id_survei_guru`, `id_guru`, `tgl_komen`, `komentar`) VALUES
(1, '333', 22, 50, '2019-11-07', 'tes'),
(3, '333', 22, 51, '2019-11-10', 'woho'),
(4, '222', 24, 51, '2019-11-10', 'bagus'),
(5, '333', 24, 50, '2019-11-10', 'keren'),
(6, '555', 22, 51, '2019-11-10', 'mantab'),
(7, '555', 24, 51, '2019-11-10', 'super'),
(8, '444', 22, 50, '2019-11-10', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `masukan_kegiatan`
--

CREATE TABLE `masukan_kegiatan` (
  `id_masukan_kegiatan` int NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `id_kuesioner` int NOT NULL,
  `tgl_komen` date NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukan_kegiatan`
--

INSERT INTO `masukan_kegiatan` (`id_masukan_kegiatan`, `nipd`, `id_kuesioner`, `tgl_komen`, `komentar`) VALUES
(1, '222', 28, '2024-05-22', 'ini adalah kolom saran masukan');

-- --------------------------------------------------------

--
-- Table structure for table `opsi`
--

CREATE TABLE `opsi` (
  `id_opsi` int NOT NULL,
  `opsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opsi`
--

INSERT INTO `opsi` (`id_opsi`, `opsi`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Cukup'),
(4, 'Kurang');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_tmp`
--

CREATE TABLE `siswa_tmp` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nipd` int NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `id_kelas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int NOT NULL,
  `soal` text NOT NULL,
  `id_kategori` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `soal`, `id_kategori`) VALUES
(34, 'Pelayanan Bapak / Ibu guru pendamping gugus ', 29),
(35, 'Kegiatan upacara selama PLS', 29),
(36, 'Penyampaian Visi, Misi dan Kultur sekolah', 29),
(37, 'Penyampaian tata tertib siswa dan etika pergaulan di sekolah', 29),
(38, 'Materi Penyuluhan oleh Tim', 29),
(39, 'Pengenalan Lingkungan Sekolah oleh pendamping OSIS', 29),
(40, 'Presentasi Ekstrakurikuler', 29),
(41, 'Pendampingan oleh kakak OSIS selama PLS', 29),
(42, 'Susunan acara dan alokasi waktu kegiatan PLS', 29),
(43, 'Lokasi kegiatan outbond', 29),
(44, 'Penginapan dan sarana MCK di lokasi Outbond', 29),
(45, 'Makan dan minum yang disajikan dalam kegiatan outbond', 29),
(46, 'Dengan kegiatan outbond dapat membangun kebersamaan, keakraban dan berbaur dengan masyarakat', 29),
(47, 'Keakraban dan kekompakan yang dapat dibangun dalam kegiatan PLS', 29),
(48, 'Perlakuan Kakak OSIS kepada peserta PLS', 29),
(49, 'Kemampuan menghargai teman yang dapat dibangun melalui kegiatan outbond', 29),
(50, 'Pelayanan Bapak / Ibu guru pendamping gugus selama kegiatan outbond', 29),
(51, 'Keamanan Selama Kegiatan Outbond', 29),
(52, 'Alat transportasi selama kegiatan outbond', 29),
(53, 'Games / Permainan yang dilakukan selama kegiatan outbond', 29),
(60, 'aaaa', 33),
(62, 'aaa2', 33),
(63, 'aaa3', 33),
(64, 'aaaa4', 33),
(71, 'Test 1', 32),
(72, 'Test 2', 32),
(73, 'Test 3', 32),
(75, 'a', 36),
(76, 'b', 36),
(77, 'c', 36),
(78, 'd', 36),
(79, 'Lokasi', 37),
(80, 'Kebersihan Kamar', 37),
(81, 'Kenyamanan Kamar', 37),
(82, 'Fasilitas Layanan', 37),
(83, 'Snack', 37),
(84, 'Prosedur Pelayanan', 37);

-- --------------------------------------------------------

--
-- Table structure for table `soal_guru`
--

CREATE TABLE `soal_guru` (
  `id_soal_aspek` int NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_guru`
--

INSERT INTO `soal_guru` (`id_soal_aspek`, `pertanyaan`) VALUES
(15, 'Penguasaan Kelas'),
(16, 'Penyampaian Materi'),
(17, 'Komunikasi dengan siswa'),
(18, 'Keterbukaan dalam penilaian ( Pelayanan konseling bagi guru BK )');

-- --------------------------------------------------------

--
-- Table structure for table `soal_kepuasan`
--

CREATE TABLE `soal_kepuasan` (
  `id_soal_kepuasan` int NOT NULL,
  `id_aspek_kepuasan` int NOT NULL,
  `pertanyaan` text NOT NULL,
  `opsi_1` varchar(50) NOT NULL,
  `opsi_2` varchar(50) NOT NULL,
  `opsi_3` varchar(50) NOT NULL,
  `opsi_4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_kepuasan`
--

INSERT INTO `soal_kepuasan` (`id_soal_kepuasan`, `id_aspek_kepuasan`, `pertanyaan`, `opsi_1`, `opsi_2`, `opsi_3`, `opsi_4`) VALUES
(2, 1, 'Saya bisa menyebutkan visi dan misi SMA Bopkri 1 dengan benar dan lancar', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(3, 1, 'Berapa banyak guru yang memberikan rancangan pembelajaran ( silabus ) dan penilaian di setiap awal semester ?', '1 - 3 guru', '4 - 7 guru', '8 - 10 guru', 'lebih dari 10 guru'),
(4, 2, 'Bapak dan Ibu Karyawan ramah dan kooperatif dalam membantu siswa berkaitan dengan administrasi kesiswaaan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(5, 2, 'Pelayanan pembayaran SPP sangat cepat dan memuaskan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(6, 2, 'Pelayanan surat-menyurat yang berkaitan dengan administrasi siswa cepat dan memuaskan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(7, 3, 'Pencahayaan di Kelas memadai', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(8, 3, 'Sirkulasi udara ruang kelas sudah cukup baik', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(9, 3, 'Saklar, stop kontak, LCD Proyektor dan kabel LCD di Kelas dalam keadaan baik dan aman', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju');

-- --------------------------------------------------------

--
-- Table structure for table `survei_guru`
--

CREATE TABLE `survei_guru` (
  `id_survei_guru` int NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_guru`
--

INSERT INTO `survei_guru` (`id_survei_guru`, `tgl_mulai`, `tgl_selesai`) VALUES
(22, '2019-10-31', '2019-11-02'),
(24, '2019-11-12', '2019-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `survei_guru_tmp`
--

CREATE TABLE `survei_guru_tmp` (
  `id_survei_guru_tmp` int NOT NULL,
  `id_survei_guru` int NOT NULL,
  `id_guru` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_guru_tmp`
--

INSERT INTO `survei_guru_tmp` (`id_survei_guru_tmp`, `id_survei_guru`, `id_guru`) VALUES
(62, 22, 49),
(63, 22, 50),
(64, 22, 51),
(65, 22, 54),
(66, 22, 56),
(68, 24, 49),
(69, 24, 50),
(70, 24, 51),
(71, 24, 54),
(72, 24, 56),
(73, 24, 57),
(74, 24, 58);

-- --------------------------------------------------------

--
-- Table structure for table `survei_kepuasan`
--

CREATE TABLE `survei_kepuasan` (
  `id_survei_kepuasan` int NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_kepuasan`
--

INSERT INTO `survei_kepuasan` (`id_survei_kepuasan`, `tgl_mulai`, `tgl_selesai`) VALUES
(2, '2019-10-23', '2019-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `survei_kepuasan_tmp`
--

CREATE TABLE `survei_kepuasan_tmp` (
  `id_survei_kepuasan_tmp` int NOT NULL,
  `id_survei_kepuasan` int NOT NULL,
  `id_kelas` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_kepuasan_tmp`
--

INSERT INTO `survei_kepuasan_tmp` (`id_survei_kepuasan_tmp`, `id_survei_kepuasan`, `id_kelas`) VALUES
(1, 2, 37),
(2, 2, 38),
(3, 2, 43);

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
(30, 'Windy', '222', 'Anna', 46, '22a57394810fd219eb7bbd163021c270', 2),
(31, 'Daniel Setiawan', '666', 'mother', 38, 'c3ec0f7b054e729c5a716c8125839829', 2),
(32, 'Test System', '333', 'test', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(33, 'Suryo Widodo', '444', 'coba', 43, 'c3ec0f7b054e729c5a716c8125839829', 2),
(35, 'Vian', '555', 'Wahyuni', 45, 'c3ec0f7b054e729c5a716c8125839829', 2),
(36, 'Hartono', '4321', 'Diana', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(40, 'hartono', '9999', 'diana', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(41, 'admin', '11', 'admin', 0, '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ampuan`
-- (See below for the actual view)
--
CREATE TABLE `v_ampuan` (
`id_guru` int
,`nama` varchar(50)
,`ampuan` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_a_guru`
-- (See below for the actual view)
--
CREATE TABLE `v_a_guru` (
`id_survei_guru` int
,`id_guru` int
,`responden` bigint
,`sangat_baik` decimal(23,0)
,`baik` decimal(23,0)
,`cukup` decimal(23,0)
,`buruk` decimal(23,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_a_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `v_a_kegiatan` (
`id_kuesioner` int
,`judul` text
,`deskripsi` text
,`tgl_mulai` date
,`tgl_selesai` date
,`responden` bigint
,`sangat_baik` decimal(23,0)
,`baik` decimal(23,0)
,`cukup` decimal(23,0)
,`buruk` decimal(23,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_siswa_tmp`
-- (See below for the actual view)
--
CREATE TABLE `v_siswa_tmp` (
`id` int
,`nama` varchar(50)
,`nipd` int
,`nama_ibu` varchar(50)
,`id_kelas` int
,`kelas` varchar(73)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_soal_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `v_soal_kegiatan` (
`id_kuesioner` int
,`id_soal` int
,`soal` text
,`id_kelas` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_s_guru`
-- (See below for the actual view)
--
CREATE TABLE `v_s_guru` (
`id_survei_guru` int
,`tgl_mulai` date
,`tgl_selesai` date
,`id_guru` int
,`nama` varchar(50)
,`id_kelas` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_s_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `v_s_kegiatan` (
`id_kelas` int
,`id_kuesioner` int
,`judul` text
,`deskripsi` text
,`tgl_mulai` date
,`tgl_selesai` date
,`id_kategori` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_s_kepuasan`
-- (See below for the actual view)
--
CREATE TABLE `v_s_kepuasan` (
`id_soal_kepuasan` int
,`pertanyaan` text
,`opsi_1` varchar(50)
,`opsi_2` varchar(50)
,`opsi_3` varchar(50)
,`opsi_4` varchar(50)
,`id_aspek_kepuasan` int
,`aspek` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user_siswa`
-- (See below for the actual view)
--
CREATE TABLE `v_user_siswa` (
`id` int
,`nama` text
,`nipd` varchar(30)
,`nama_ibu` varchar(50)
,`id_kelas` int
,`password` varchar(200)
,`role` int
,`kelas` varchar(73)
);

-- --------------------------------------------------------

--
-- Structure for view `v_ampuan`
--
DROP TABLE IF EXISTS `v_ampuan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ampuan`  AS SELECT `guru`.`id_guru` AS `id_guru`, `guru`.`nama` AS `nama`, group_concat(' ',`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub` separator ',') AS `ampuan` FROM ((`guru` join `ampuan`) join `kelas`) WHERE ((`guru`.`id_guru` = `ampuan`.`id_guru`) AND (`ampuan`.`id_kelas` = `kelas`.`id_kelas`)) GROUP BY `ampuan`.`id_guru` ;

-- --------------------------------------------------------

--
-- Structure for view `v_a_guru`
--
DROP TABLE IF EXISTS `v_a_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_a_guru`  AS SELECT `aksi_guru`.`id_survei_guru` AS `id_survei_guru`, `aksi_guru`.`id_guru` AS `id_guru`, count(distinct `aksi_guru`.`nipd`) AS `responden`, sum((case when (`aksi_guru_tmp`.`id_opsi` = '4') then 1 else 0 end)) AS `sangat_baik`, sum((case when (`aksi_guru_tmp`.`id_opsi` = '3') then 1 else 0 end)) AS `baik`, sum((case when (`aksi_guru_tmp`.`id_opsi` = '2') then 1 else 0 end)) AS `cukup`, sum((case when (`aksi_guru_tmp`.`id_opsi` = '1') then 1 else 0 end)) AS `buruk` FROM (`aksi_guru` left join `aksi_guru_tmp` on((`aksi_guru`.`id_aksi_guru` = `aksi_guru_tmp`.`id_aksi_guru`))) GROUP BY `aksi_guru`.`id_survei_guru`, `aksi_guru`.`id_guru` ;

-- --------------------------------------------------------

--
-- Structure for view `v_a_kegiatan`
--
DROP TABLE IF EXISTS `v_a_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_a_kegiatan`  AS SELECT `aksi`.`id_kuesioner` AS `id_kuesioner`, `kuesioner`.`judul` AS `judul`, `kuesioner`.`deskripsi` AS `deskripsi`, `kuesioner`.`tgl_mulai` AS `tgl_mulai`, `kuesioner`.`tgl_selesai` AS `tgl_selesai`, count(distinct `aksi`.`nipd`) AS `responden`, sum((case when (`aksi_tmp`.`id_opsi` = '4') then 1 else 0 end)) AS `sangat_baik`, sum((case when (`aksi_tmp`.`id_opsi` = '3') then 1 else 0 end)) AS `baik`, sum((case when (`aksi_tmp`.`id_opsi` = '2') then 1 else 0 end)) AS `cukup`, sum((case when (`aksi_tmp`.`id_opsi` = '1') then 1 else 0 end)) AS `buruk` FROM ((`aksi` left join `aksi_tmp` on((`aksi`.`id_aksi` = `aksi_tmp`.`id_aksi`))) left join `kuesioner` on((`aksi`.`id_kuesioner` = `kuesioner`.`id_kuesioner`))) GROUP BY `aksi`.`id_kuesioner` ;

-- --------------------------------------------------------

--
-- Structure for view `v_siswa_tmp`
--
DROP TABLE IF EXISTS `v_siswa_tmp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_siswa_tmp`  AS SELECT `siswa_tmp`.`id` AS `id`, `siswa_tmp`.`nama` AS `nama`, `siswa_tmp`.`nipd` AS `nipd`, `siswa_tmp`.`nama_ibu` AS `nama_ibu`, `siswa_tmp`.`id_kelas` AS `id_kelas`, concat(`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub`) AS `kelas` FROM (`siswa_tmp` join `kelas`) WHERE (`siswa_tmp`.`id_kelas` = `kelas`.`id_kelas`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_soal_kegiatan`
--
DROP TABLE IF EXISTS `v_soal_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_soal_kegiatan`  AS SELECT `kuesioner`.`id_kuesioner` AS `id_kuesioner`, `soal`.`id_soal` AS `id_soal`, `soal`.`soal` AS `soal`, `kuesioner_tmp`.`id_kelas` AS `id_kelas` FROM ((`kuesioner` join `soal`) join `kuesioner_tmp`) WHERE ((`kuesioner`.`id_kategori` = `soal`.`id_kategori`) AND (`kuesioner_tmp`.`id_kuesioner` = `kuesioner`.`id_kuesioner`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_s_guru`
--
DROP TABLE IF EXISTS `v_s_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_guru`  AS SELECT `survei_guru`.`id_survei_guru` AS `id_survei_guru`, `survei_guru`.`tgl_mulai` AS `tgl_mulai`, `survei_guru`.`tgl_selesai` AS `tgl_selesai`, `guru`.`id_guru` AS `id_guru`, `guru`.`nama` AS `nama`, `ampuan`.`id_kelas` AS `id_kelas` FROM (((`survei_guru` join `survei_guru_tmp`) join `ampuan`) join `guru`) WHERE ((`survei_guru`.`id_survei_guru` = `survei_guru_tmp`.`id_survei_guru`) AND (`survei_guru_tmp`.`id_guru` = `guru`.`id_guru`) AND (`ampuan`.`id_guru` = `guru`.`id_guru`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_s_kegiatan`
--
DROP TABLE IF EXISTS `v_s_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_kegiatan`  AS SELECT `t`.`id_kelas` AS `id_kelas`, `k`.`id_kuesioner` AS `id_kuesioner`, `k`.`judul` AS `judul`, `k`.`deskripsi` AS `deskripsi`, `k`.`tgl_mulai` AS `tgl_mulai`, `k`.`tgl_selesai` AS `tgl_selesai`, `k`.`id_kategori` AS `id_kategori` FROM (`kuesioner` `k` join `kuesioner_tmp` `t`) WHERE (`t`.`id_kuesioner` = `k`.`id_kuesioner`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_s_kepuasan`
--
DROP TABLE IF EXISTS `v_s_kepuasan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_kepuasan`  AS SELECT `soal_kepuasan`.`id_soal_kepuasan` AS `id_soal_kepuasan`, `soal_kepuasan`.`pertanyaan` AS `pertanyaan`, `soal_kepuasan`.`opsi_1` AS `opsi_1`, `soal_kepuasan`.`opsi_2` AS `opsi_2`, `soal_kepuasan`.`opsi_3` AS `opsi_3`, `soal_kepuasan`.`opsi_4` AS `opsi_4`, `aspek_kepuasan`.`id_aspek_kepuasan` AS `id_aspek_kepuasan`, `aspek_kepuasan`.`aspek` AS `aspek` FROM (`soal_kepuasan` join `aspek_kepuasan`) WHERE (`aspek_kepuasan`.`id_aspek_kepuasan` = `soal_kepuasan`.`id_aspek_kepuasan`) ;

-- --------------------------------------------------------

--
-- Structure for view `v_user_siswa`
--
DROP TABLE IF EXISTS `v_user_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_siswa`  AS SELECT `user_siswa`.`id` AS `id`, `user_siswa`.`nama` AS `nama`, `user_siswa`.`nipd` AS `nipd`, `user_siswa`.`nama_ibu` AS `nama_ibu`, `user_siswa`.`id_kelas` AS `id_kelas`, `user_siswa`.`password` AS `password`, `user_siswa`.`role` AS `role`, concat(`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub`) AS `kelas` FROM (`user_siswa` join `kelas`) WHERE (`user_siswa`.`id_kelas` = `kelas`.`id_kelas`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksi`
--
ALTER TABLE `aksi`
  ADD PRIMARY KEY (`id_aksi`);

--
-- Indexes for table `aksi_guru`
--
ALTER TABLE `aksi_guru`
  ADD PRIMARY KEY (`id_aksi_guru`);

--
-- Indexes for table `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  ADD PRIMARY KEY (`id_aksi_guru_tmp`),
  ADD KEY `delete` (`id_aksi_guru`);

--
-- Indexes for table `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  ADD PRIMARY KEY (`id_aksi_tmp`),
  ADD KEY `del` (`id_aksi`);

--
-- Indexes for table `ampuan`
--
ALTER TABLE `ampuan`
  ADD PRIMARY KEY (`id_ampuan`);

--
-- Indexes for table `aspek_kepuasan`
--
ALTER TABLE `aspek_kepuasan`
  ADD PRIMARY KEY (`id_aspek_kepuasan`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_pengunjung`
--
ALTER TABLE `kategori_pengunjung`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kuesioner`
--
ALTER TABLE `kuesioner`
  ADD PRIMARY KEY (`id_kuesioner`);

--
-- Indexes for table `kuesioner_tmp`
--
ALTER TABLE `kuesioner_tmp`
  ADD PRIMARY KEY (`id_kuesioner_tmp`);

--
-- Indexes for table `masukan_guru`
--
ALTER TABLE `masukan_guru`
  ADD PRIMARY KEY (`id_masukan_guru`);

--
-- Indexes for table `masukan_kegiatan`
--
ALTER TABLE `masukan_kegiatan`
  ADD PRIMARY KEY (`id_masukan_kegiatan`);

--
-- Indexes for table `opsi`
--
ALTER TABLE `opsi`
  ADD PRIMARY KEY (`id_opsi`);

--
-- Indexes for table `siswa_tmp`
--
ALTER TABLE `siswa_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_guru`
--
ALTER TABLE `soal_guru`
  ADD PRIMARY KEY (`id_soal_aspek`);

--
-- Indexes for table `soal_kepuasan`
--
ALTER TABLE `soal_kepuasan`
  ADD PRIMARY KEY (`id_soal_kepuasan`);

--
-- Indexes for table `survei_guru`
--
ALTER TABLE `survei_guru`
  ADD PRIMARY KEY (`id_survei_guru`);

--
-- Indexes for table `survei_guru_tmp`
--
ALTER TABLE `survei_guru_tmp`
  ADD PRIMARY KEY (`id_survei_guru_tmp`);

--
-- Indexes for table `survei_kepuasan`
--
ALTER TABLE `survei_kepuasan`
  ADD PRIMARY KEY (`id_survei_kepuasan`);

--
-- Indexes for table `survei_kepuasan_tmp`
--
ALTER TABLE `survei_kepuasan_tmp`
  ADD PRIMARY KEY (`id_survei_kepuasan_tmp`);

--
-- Indexes for table `user_siswa`
--
ALTER TABLE `user_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksi`
--
ALTER TABLE `aksi`
  MODIFY `id_aksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `aksi_guru`
--
ALTER TABLE `aksi_guru`
  MODIFY `id_aksi_guru` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  MODIFY `id_aksi_guru_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  MODIFY `id_aksi_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `ampuan`
--
ALTER TABLE `ampuan`
  MODIFY `id_ampuan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `aspek_kepuasan`
--
ALTER TABLE `aspek_kepuasan`
  MODIFY `id_aspek_kepuasan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kategori_pengunjung`
--
ALTER TABLE `kategori_pengunjung`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `kuesioner`
--
ALTER TABLE `kuesioner`
  MODIFY `id_kuesioner` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `kuesioner_tmp`
--
ALTER TABLE `kuesioner_tmp`
  MODIFY `id_kuesioner_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `masukan_guru`
--
ALTER TABLE `masukan_guru`
  MODIFY `id_masukan_guru` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `masukan_kegiatan`
--
ALTER TABLE `masukan_kegiatan`
  MODIFY `id_masukan_kegiatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa_tmp`
--
ALTER TABLE `siswa_tmp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `soal_guru`
--
ALTER TABLE `soal_guru`
  MODIFY `id_soal_aspek` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `soal_kepuasan`
--
ALTER TABLE `soal_kepuasan`
  MODIFY `id_soal_kepuasan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `survei_guru`
--
ALTER TABLE `survei_guru`
  MODIFY `id_survei_guru` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `survei_guru_tmp`
--
ALTER TABLE `survei_guru_tmp`
  MODIFY `id_survei_guru_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `survei_kepuasan`
--
ALTER TABLE `survei_kepuasan`
  MODIFY `id_survei_kepuasan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survei_kepuasan_tmp`
--
ALTER TABLE `survei_kepuasan_tmp`
  MODIFY `id_survei_kepuasan_tmp` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_siswa`
--
ALTER TABLE `user_siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  ADD CONSTRAINT `delete` FOREIGN KEY (`id_aksi_guru`) REFERENCES `aksi_guru` (`id_aksi_guru`) ON DELETE CASCADE;

--
-- Constraints for table `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  ADD CONSTRAINT `del` FOREIGN KEY (`id_aksi`) REFERENCES `aksi` (`id_aksi`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
