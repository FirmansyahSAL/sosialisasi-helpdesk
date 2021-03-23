-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Agu 2018 pada 05.01
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proje`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'fslaksana', 'admin', 'fa196c829e6dbfd690f0ca2414ce1f5d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publikasi`
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
-- Dumping data untuk tabel `publikasi`
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
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesanku` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `pesanku`, `waktu`) VALUES
(2, 'dent town', 'whatdoyouwant@gmail.com', '<p>assalamualaikuam</p>', '2018-05-14 03:44:19'),
(3, 'felisa', 'fslaksana@gmail.com', '<p>assalamualaikum wr wb</p>', '2018-05-18 01:46:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `title` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `visi_misi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`title`, `deskripsi`, `visi_misi`) VALUES
('TENTANG PT PAL INDONESIA', '<p>PT. PAL Indonesia (Persero), bermula dari sebuah galangan kapal yang bernama MARINA dan didirikan oleh pemerintah Belanda pada tahun 1939. Pada masa pendudukan Jepang, Perusahaan ini beralih nama menjadi Kaigun SE 2124. Setelah kemerdekaan, Pemerintah Indonesia menasionalisasi Perusahaan ini dan mengubah namanya menjadi Penataran Angkatan Laut (PAL). Pada tanggal 15 April 1980, Pemerintah mengubah status Perusahaan dari Perusahaan Umum menjadi Perseroan Terbatas sesuai dengan akta No. 12, yang dibuat oleh Notaris Hadi Moentoro, SH. Lokasi Perusahaan di Ujung, Surabaya, dengan kegiatan utama memproduksi kapal perang dan kapal niaga, memberikan jasa perbaikan dan pemeliharaan kapal, serta rekayasa umum dengan spesifikasi tertentu berdasarkan pesanan. Kemampuan rancang bangun yang menonjol dari PAL Indonesia telah memasuki pasaran internasional dan kualitasnya telah diakui dunia. Kapal-kapal produksi PAL Indonesia telah melayari perairan di seluruh dunia.</p>\r\n', '<p>PAL INDONESIA sebagai perusahaan di bidang perkapalan dan produk rekayasa. Dan juga penyedia perawatan dan perbaikan kapal, mengenali kebutuhan untuk menyesuaikan standard kerja yang terbaik; Menyediakan garansi kepada pelanggan untuk kwalitas produk dan layanan Menyediakan garansi kepada pelanggan, semua proses produksi dan output semua simpati tehadap lingkungan. Selalu menekankan pada kesehatan dan keselamatan. Sistem menejemen PAL SMPAL telah diterbitkan dalam upaya memenuhi semua tujuan dan mewakili kumpulan petunjuk kehati-hatian untuk semua kegiatan, operasi kerja dan semua fungsi yang mempengaruhi kwalitas produk, lingkungan dan kesehatan dan keselamatan kerja. Semua petunjuk manual kerja berdasarkan kwalitas standard yang diakui internasional : Organisasi internasional untuk standard ISO 9001 Organisasi intersaional untuk standard ISO 14001 Yang berkaitan dengan kesehatan dan keselamatan kerja seri OHSAS 18001 dan regulasi mentri tenaga kerja No. Per 05/Men/1996. Untuk memastikan bahwa usaha kita benar kita telah menerapkan prinsip tata kelola perusahaan; Oleh karena itu semua karyawan mempunyai tanggung jawab yang sama untuk: Mengutamakan kwalitas produk dan jasa perusahaan. Mencegah polusi di lingkungan dan tempat kerja Meyakinkan bahwa semua upaya dilakukan untuk memastikan standard kesehatan dan keselamatan kerja. Untuk memastikan usaha pada jalur yang benar PAL INDONESIA menerapkan prinsip-prinsip tata kelola perusahaan.</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `publikasi`
--
ALTER TABLE `publikasi`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publikasi`
--
ALTER TABLE `publikasi`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
