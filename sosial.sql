-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 03:47 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(8, 'Pemasaran & Penjualan'),
(9, 'HCM & Command Media');

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
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesanku` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `pesanku`, `waktu`) VALUES
(2, 'dent town', 'whatdoyouwant@gmail.com', '<p>assalamualaikuam</p>', '2018-05-14 03:44:19'),
(3, 'felisa', 'fslaksana@gmail.com', '<p>assalamualaikum wr wb</p>', '2018-05-18 01:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `publikasi`
--

CREATE TABLE `publikasi` (
  `kode` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `created` date NOT NULL,
  `tag` enum('Tekhnologi Informasi','Kapal Niaga','Kapal Perang','Akutansi','Desain','Kapal Selam','Pemasaran & Penjualan Bangkap','Rekayasa Umum','Pemeliharaan & Perbaikan','Penjualan Rekumhar','Jaminan Kualitas','Supply Chain','Perbendaharaan','HCM & Command Media','Kawasan') NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL,
  `hit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publikasi`
--

INSERT INTO `publikasi` (`kode`, `title`, `foto`, `created`, `tag`, `aktif`, `hit`) VALUES
(139, 'another goal', '14282dasar routing.pdf', '2018-08-01', 'Tekhnologi Informasi', 'Ya', 26),
(140, 'postinor', '487792Cara_Instalasi_Mikrotik_Server.pdf', '2018-08-03', 'Kapal Perang', 'Ya', 5),
(141, 'hagia sovie', '728576Dasar_Komputer_dan_Pemrograman.pdf', '2018-08-04', 'Kapal Niaga', 'Ya', 0),
(143, 'amd', '744232buatdb.pdf', '2018-08-08', 'Desain', 'Ya', 0),
(144, 'intel', '422760jarkom.pdf', '2018-07-31', 'Kawasan', 'Ya', 0),
(145, 'whatde', '384674mengetik 10 jari.pdf', '2018-08-05', 'Kapal Selam', 'Ya', 0),
(147, 'ya tuhan', '622344membuataplikasisederhanadenganmicrosoftacces', '2018-08-06', 'Pemasaran & Penjualan Bangkap', 'Ya', 0),
(148, 'filehelp', '101959Dasar_Komputer_dan_Pemrograman.pdf', '2018-08-02', 'Supply Chain', 'Ya', 0),
(151, 'database MYSQL', '216186Bab 4 MySQL.PDF', '2018-08-08', 'HCM & Command Media', 'Ya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `title` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `visi_misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`title`, `deskripsi`, `visi_misi`) VALUES
('TENTANG PT PAL INDONESIA', '<p>PT. PAL Indonesia (Persero), bermula dari sebuah galangan kapal yang bernama MARINA dan didirikan oleh pemerintah Belanda pada tahun 1939. Pada masa pendudukan Jepang, Perusahaan ini beralih nama menjadi Kaigun SE 2124. Setelah kemerdekaan, Pemerintah Indonesia menasionalisasi Perusahaan ini dan mengubah namanya menjadi Penataran Angkatan Laut (PAL). Pada tanggal 15 April 1980, Pemerintah mengubah status Perusahaan dari Perusahaan Umum menjadi Perseroan Terbatas sesuai dengan akta No. 12, yang dibuat oleh Notaris Hadi Moentoro, SH. Lokasi Perusahaan di Ujung, Surabaya, dengan kegiatan utama memproduksi kapal perang dan kapal niaga, memberikan jasa perbaikan dan pemeliharaan kapal, serta rekayasa umum dengan spesifikasi tertentu berdasarkan pesanan. Kemampuan rancang bangun yang menonjol dari PAL Indonesia telah memasuki pasaran internasional dan kualitasnya telah diakui dunia. Kapal-kapal produksi PAL Indonesia telah melayari perairan di seluruh dunia.</p>\r\n', '<p>PAL INDONESIA sebagai perusahaan di bidang perkapalan dan produk rekayasa. Dan juga penyedia perawatan dan perbaikan kapal, mengenali kebutuhan untuk menyesuaikan standard kerja yang terbaik; Menyediakan garansi kepada pelanggan untuk kwalitas produk dan layanan Menyediakan garansi kepada pelanggan, semua proses produksi dan output semua simpati tehadap lingkungan. Selalu menekankan pada kesehatan dan keselamatan. Sistem menejemen PAL SMPAL telah diterbitkan dalam upaya memenuhi semua tujuan dan mewakili kumpulan petunjuk kehati-hatian untuk semua kegiatan, operasi kerja dan semua fungsi yang mempengaruhi kwalitas produk, lingkungan dan kesehatan dan keselamatan kerja. Semua petunjuk manual kerja berdasarkan kwalitas standard yang diakui internasional : Organisasi internasional untuk standard ISO 9001 Organisasi intersaional untuk standard ISO 14001 Yang berkaitan dengan kesehatan dan keselamatan kerja seri OHSAS 18001 dan regulasi mentri tenaga kerja No. Per 05/Men/1996. Untuk memastikan bahwa usaha kita benar kita telah menerapkan prinsip tata kelola perusahaan; Oleh karena itu semua karyawan mempunyai tanggung jawab yang sama untuk: Mengutamakan kwalitas produk dan jasa perusahaan. Mencegah polusi di lingkungan dan tempat kerja Meyakinkan bahwa semua upaya dilakukan untuk memastikan standard kesehatan dan keselamatan kerja. Untuk memastikan usaha pada jalur yang benar PAL INDONESIA menerapkan prinsip-prinsip tata kelola perusahaan.</p>');

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
(1, '1604210001', '2021-04-15 17:00:00', 'test tiket kesekian', 'cahaya illahi', '160421000120210416105457.jpg', 30, 1),
(2, '1704210001', '2021-04-16 17:00:00', 'test tiket kedua', 'kedua nih', NULL, 30, 1),
(3, '1704210002', '2021-04-16 17:00:00', 'kerusakan pada lan card', 'tidak bisa mendeteksi wifi', NULL, 30, 0);

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
(30, NULL, 'logika', 'ika@gmail.com', '$2y$10$sx.VMWYydWFK9qSJTkmjIuXuFUQCaZPQIujm32qcHiSrk2o4nHdQC', '', '', '2021-03-24 13:20:34', '2021-03-24 13:20:34', '', 1, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

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
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`title`);

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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detail_tiket`
--
ALTER TABLE `detail_tiket`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
