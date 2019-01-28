-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 12:04 PM
-- Server version: 10.1.30-MariaDB
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
-- Database: `db_smk_mekar_arum`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `gambar` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `penulis`, `tanggal`) VALUES
(2, 'Pelatihan Jurnalistik di SMA 1 HARAPAN', 'SMA 1 HARAPAN menjadi tempat berlangsungnya acara pelatihan Jurnalistik Ramadhan bertajuk Membudayakan Santri Menulis. Acara yang diselenggarakan oleh harian Suara Merdeka bekerjasama dengan PT. Telkom ini dibuka oleh Pengasuh, KH. Masruri Abdul Mughni dan disambut baik oleh wakil Bupati Brebes ini berlangsung di Gedung Serba Guna PP. Al Hikmah 2. Bermaksud mengenalkan pentingnya menulis untuk kalangan santri dengan media Internet saat ini dan diadakan di bulan Ramadhan agar kami mendapat barokah dari bulan suci, selain dapat berbagi ilmu dengan santri di Al Hikmah 2 tutur Drs. Agus Fathuddin Yusuf selaku ketua panitia Sarasehan.', 'artikel/erna.jpg', 'Admin', '2018-09-23'),
(3, 'Beasiswa bagi Peraih Medali Olimpiade Sains', 'Direktur Jenderal Pendidikan Menengah Kementerian Pendidikan dan Kebudayaan (Kemdikbud) Ahmad Jazidie mengatakan, semua peraih medali olimpiade sains berhak mendapatkan beasiswa dari pemerintah. Hal itu dijamin Kemdikbud lewat Peraturan Menteri Pendidikan Nasional Nomor 62/2009 tentang pemberian beasiswa kepada peserta didik jenjang pendidikan menengah dan tinggi peraih medali Olimpiade Sains Internasional.\r\n\r\nSyaratnya tidak boleh dobel. Sepanjang dia belum dapat beasiswa dari pihak lain, pasti bisa dapat dari pemerintah, kata Jazidie di Jakarta, Jumat (25/7).', 'artikel/lusi2.jpg', 'Admin', '2018-09-23'),
(4, 'tes', 'tes', 'artikel/g2.jpg', 'Admin', '2018-09-27'),
(5, 'tes', 'tea', 'artikel/g4.jpg', 'Admin', '2018-09-27');

-- --------------------------------------------------------

--
-- Table structure for table `ekstrakulikuler`
--

CREATE TABLE `ekstrakulikuler` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ekstrakulikuler`
--

INSERT INTO `ekstrakulikuler` (`id`, `nama`, `deskripsi`) VALUES
(2, 'PMR', 'tes'),
(3, 'Sepak Bola', 'tes'),
(4, 'Pramuka', 'Pramuka dilaksnakan pada hari sabtu');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `berkas` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `berkas`, `deskripsi`) VALUES
(1, 'galeri/g5.jpg', 'Paskibra'),
(4, 'galeri/g3.jpg', 'perpus'),
(5, 'galeri/g4.jpg', 'Pramuka dilaksnakan pada hari sabtu'),
(6, 'galeri/g5.jpg', 'tes dong');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `umur` int(2) DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `nama`, `jenis_kelamin`, `umur`, `alamat`, `id_mapel`) VALUES
(2, '312378627678283', 'Aida Jundana', 'Laki-Laki', 25, 'Ciamis', 2),
(4, '312378627678283', 'Dani Purnama', 'Laki-Laki', 81, 'Bandung', 1),
(5, '', '', 'Laki-Laki', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama`) VALUES
(1, 'Matematika'),
(2, 'IPa-Fisika'),
(3, 'IPS - Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` text,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `nama`, `isi`, `gambar`) VALUES
(1, 'Sejarah', 'SMA Negeri 1 Harapan berdiri sejak tanggal 1 November tahun 1877. Terletak di Jalan Bodjong 149 (Jl. Pemuda 149). Mula-mula adalah HBS (Hogere Bunger School). Pada tahun 1930 dipergunakan untuk untuk HBS dan AMS (Algemene Meddelbare School), kemudian tahun 1937 HBS pindah di jalan Oei Tong Ham (sekarang Jl Menteri Supeno No. 1 / SMU 1 Harapan), sedangkan bangunan di jalan Bodjong dipergunakan untuk AMS dan MULO.Pada zaman pendudukan Jepang bangunan ini dipergunakan untuk SMT (Sekolah Menengah Tinggi).', 'profil/lusi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` int(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `alamat` varchar(500) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama`, `jenis_kelamin`, `angkatan`, `alamat`, `kelas`) VALUES
(1, 13782738, 'Dani Purnama', 'Laki-Laki', 2014, 'Bandung', 'III'),
(2, 13782738, 'Dani Purnama', 'Laki-Laki', 2014, 'Bandung', 'III');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ekstrakulikuler`
--
ALTER TABLE `ekstrakulikuler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
