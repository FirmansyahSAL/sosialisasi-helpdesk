-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 07:59 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sosial`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_tiket`
--

CREATE TABLE `detail_tiket` (
  `id_detail` int(11) NOT NULL,
  `tiket_id` int(11) DEFAULT NULL,
  `tanggapan` text NOT NULL,
  `gambar_tanggapan` text NOT NULL,
  `waktu_tanggapan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_tiket`
--

INSERT INTO `detail_tiket` (`id_detail`, `tiket_id`, `tanggapan`, `gambar_tanggapan`, `waktu_tanggapan`) VALUES
(5, 1, 'hoka hoke', '20210418105922.jpg', '2021-04-18'),
(6, 2, 'besok pagi pekerja akan datang', '20210418032708.jpg', '2021-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `divisi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `divisi`) VALUES
(1, 'Desain'),
(2, 'Tehknologi Informasi'),
(3, 'Kawasan'),
(4, 'Supply Chain'),
(5, 'Kapal Perang'),
(6, 'Kapal Niaga'),
(7, 'Kapal Selam'),
(8, 'Pemasaran & Penjualan');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `jabatan`) VALUES
(1, 'Manager'),
(2, 'IT Staff'),
(3, 'QA');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `no_tiket` text NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `judul_tiket` text NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_tiket` text,
  `users_id` int(10) NOT NULL,
  `status_tiket` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `no_tiket`, `tgl_daftar`, `judul_tiket`, `deskripsi`, `gambar_tiket`, `users_id`, `status_tiket`) VALUES
(1, '1604210001', '2021-04-15 17:00:00', 'test tiket kesekian', 'cahaya illahi', '160421000120210416105457.jpg', 30, 3),
(2, '1704210001', '2021-04-16 17:00:00', 'test tiket kedua', 'kedua nih', NULL, 30, 3),
(3, '1704210002', '2021-04-16 17:00:00', 'kerusakan pada lan card', 'tidak bisa mendeteksi wifi', NULL, 30, 0),
(4, '2304210001', '2021-04-22 17:00:00', 'kerusakan pada lan card', 'ya siap dong', '230421000120210423091402.jpg', 30, 0),
(5, '2304210002', '2021-04-22 17:00:00', 'gak ada sih', 'apa yah', NULL, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `nik` varchar(200) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `jabatan_id` varchar(50) NOT NULL,
  `divisi_id` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_user` text NOT NULL,
  `level_user` int(2) NOT NULL,
  `status_user` enum('active','non active') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `nik`, `username`, `email`, `password`, `jabatan_id`, `divisi_id`, `created`, `modified`, `image_user`, `level_user`, `status_user`) VALUES
(1, NULL, 'Admin', 'FSlaksana@gmail.com', '$2y$10$FiS4gqbT7E5lgL.Lt5tyQOsO4zbiVabX0tk7EzhgMhJQvdnxIuFKi', '1', '9', '2021-03-21 14:17:45', '2021-04-10 14:55:42', '', 1, 'active'),
(10, NULL, 'oliver', 'bvb@gmail.com', '$2y$10$fT.CJZyzSnpYcl2psMnEROuyDqxthgfGBgXvFAMGEo4rMd4X4fPNS', '', '', '2021-03-22 03:50:38', '2021-03-22 03:50:38', '', 1, 'active'),
(11, NULL, 'bambang', 'asih638@yahoo.com', '$2y$10$Tu3phEiTg/qsLXFxMWGYTeI18ZogyAgAPvyFzWJxlyn9B05X5Atce', '', '', '2021-03-22 03:51:31', '2021-03-22 03:51:31', '', 1, 'active'),
(12, NULL, 'lenovo', 'vincenzo@yahoo.co.id', '$2y$10$Kt2sZPcIxhyGz2Mqc5JWdunZkXChQeZzmujt4If28FwX4AlIRqyWu', '', '', '2021-03-22 03:53:29', '2021-03-22 03:53:29', '', 1, 'active'),
(13, NULL, 'birds', 'love@go.id', '$2y$10$n9FmgLgWmn49/F.H9Z3jyOluhMMQkafvgSIv4uf5fdU8hF05Sk1QC', '', '', '2021-03-22 03:56:27', '2021-03-22 03:56:27', '', 1, 'active'),
(14, NULL, 'kashima', 'undercontrol@go.id', '$2y$10$8GMUDtFokWEb14VfEj7/uulsvCofQHFbldBcFdNSVgtfTti/glQoW', '', '', '2021-03-22 03:58:52', '2021-03-22 03:58:52', '', 1, 'active'),
(15, NULL, 'isti', 'mewa@gmail.com', '$2y$10$n/fHdKqii55mkfCEQGN2y.GaED4ljTUpIlGadDgn4HiwTFNAv7.oi', '', '', '2021-03-22 04:00:17', '2021-03-22 04:00:17', '', 1, 'active'),
(16, NULL, 'gowinda', 'hariana@gmail.com', '$2y$10$zuZopGobs7CxYl9fvNUykOtMpyPhzK2Q72yOdYHsMaSM0tDIHbPh.', '', '', '2021-03-22 04:03:35', '2021-03-22 04:03:35', '', 1, 'active'),
(17, NULL, 'rukmi', 'sitisuprihatin662@gmail.com', '$2y$10$V01tuoDxfJXeDO2Px.JWSehHlciYBznCIj6.n0/7lKfjvm5Vkj5pK', '', '', '2021-03-22 04:07:12', '2021-03-22 04:07:12', '', 1, 'active'),
(18, NULL, 'dicoding', 'info@prakerja.co.id', '$2y$10$DEBNQEEYrZQHOFF7Wmv3b.oByS3z.OggS0Uub2qBND/B1g.F9afMi', '', '', '2021-03-22 04:12:01', '2021-03-22 04:12:01', '', 1, 'active'),
(19, NULL, 'yudi', 'yudi@gmail.com', '$2y$10$jvII/JvD0lFweD4Oqpb4CuHUWv4bFOU50MZDcQJdq4dxSffKXxZru', '', '', '2021-03-22 04:13:10', '2021-03-22 04:13:10', '', 1, 'active'),
(20, NULL, 'son', 'heung@gmail.com', '$2y$10$DT5tQYoAd45Mnb92nOGUyu.GjawnX5YnXS1sv8vkM1AdKYRMkwGoe', '', '', '2021-03-22 04:15:02', '2021-03-22 04:15:02', '', 1, 'active'),
(21, NULL, 'hurash', 'wer@gmail.com', '$2y$10$A3Ip6RdouwQfeW4kb90OH.MnaCoWJZWWDr3vJLsrvCoA/TQRC5ib.', '', '', '2021-03-22 04:21:54', '2021-03-22 04:21:54', '', 1, 'active'),
(22, NULL, 'ria', 'rifa@gmail.com', '$2y$10$W4N6b0XcFqSsrsnb6Sj0ROS.rBO5GwMuzUv3fhZyDqiaS7MPDhTey', '', '', '2021-03-22 04:23:13', '2021-03-22 04:23:13', '', 1, 'active'),
(23, NULL, 'yul', 'iiii@info.com', '$2y$10$JnDuXwiWGOyVf4ccOY9e1OSk3Jxb1z2VsiPHcKC7d1Iv9Xoq0YBlG', '', '', '2021-03-22 04:25:54', '2021-03-22 04:25:54', '', 1, 'active'),
(24, NULL, 'aaaa', 'aaaaaaa@gmail.com', '$2y$10$uzWLOlTRL9ovaDG45cX5wu64oeWD6T3odSqHHT/vYA/FJsxQdYoHm', '', '', '2021-03-22 04:27:14', '2021-03-22 04:27:14', '', 1, 'active'),
(25, NULL, 'ibu', 'olahraga@gmail.com', '$2y$10$aql5tbfVyhZ0J7qv0thJ1ONiXcf.FO8Q4GKguYgP53jQ89aFGYTvO', '', '', '2021-03-22 04:33:28', '2021-03-22 04:33:28', '', 1, 'active'),
(26, NULL, 'axioo', 'id@gmail.com', '$2y$10$.bpwqx3QhxJv8S6wJBnbfe7GR9OgkQLG2vFJDydcuHnpKIEofVT7O', '', '', '2021-03-22 11:54:00', '2021-03-22 11:54:00', '', 1, 'active'),
(27, NULL, 'hannsa', 'ay@gmail.com', '$2y$10$pPii2gDsJFelrJtDgD8WneRWBgDeeKW3KgAyo6oD13ZChjTt71uPm', '', '', '2021-03-22 12:01:06', '2021-03-22 12:01:06', '', 1, 'active'),
(28, NULL, 'luffy', 'one@gmail.com', '$2y$10$ItR/Vi96gaNqKsW8F8mzHuE9qH4.cwNasLolNNStgGe8Aex449nlS', '', '', '2021-03-22 12:18:39', '2021-03-22 12:18:39', '', 1, 'active'),
(29, NULL, 'laporte', 'gini@gmail.com', '$2y$10$hI78WxAJnCvEv46V0anF.OQrDfi8RfZaYWkQNwmFtOv9.XTecS21C', '', '', '2021-03-24 01:09:43', '2021-03-24 01:09:43', '', 1, 'active'),
(30, '111111111111', 'logika', 'ika@gmail.com', '$2y$10$sx.VMWYydWFK9qSJTkmjIuXuFUQCaZPQIujm32qcHiSrk2o4nHdQC', '1', '9', '2021-03-24 13:20:34', '2021-04-21 03:25:48', '', 1, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_tiket`
--
ALTER TABLE `detail_tiket`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `user_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_tiket`
--
ALTER TABLE `detail_tiket`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
