-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 03:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_berita_tk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berlangganan`
--

CREATE TABLE `tb_berlangganan` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_berlangganan`
--

INSERT INTO `tb_berlangganan` (`id`, `email`) VALUES
(7, 'ferozyla123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategoripost`
--

CREATE TABLE `tb_kategoripost` (
  `id_kat` int(5) NOT NULL,
  `kategori_post` varchar(30) NOT NULL,
  `slug_katpost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategoripost`
--

INSERT INTO `tb_kategoripost` (`id_kat`, `kategori_post`, `slug_katpost`) VALUES
(1, 'Prestasi Siswa', 'prestasi'),
(2, 'Kegiatan', 'kegiatan'),
(3, 'Penting', 'penting');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post`
--

CREATE TABLE `tb_post` (
  `id_post` int(11) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `tgl_post` date NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `gambar_berita` varchar(20) NOT NULL,
  `deskripsi_berita` text NOT NULL,
  `kategori_berita` varchar(225) NOT NULL,
  `isi_berita` text NOT NULL,
  `id_user` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_post`
--

INSERT INTO `tb_post` (`id_post`, `id_kat`, `tgl_post`, `judul_berita`, `gambar_berita`, `deskripsi_berita`, `kategori_berita`, `isi_berita`, `id_user`) VALUES
(869, 2, '2022-01-03', 'Green School', '61d29c4ec9093.jpeg', 'Penanaman bibt Pohon', 'kegiatan', 'Kebersamaan Wali murid sebagai bentuk dedikasi terhadap TK Negeri Pembina Kota madiun dimana anak anak mereka menimba ilmu dan sedangkan para Wali murid tidak mau kalah berpartisipasi dalam pengembangan Keindahan TK', 'admin'),
(870, 1, '2022-01-03', 'Kunjungan Walikota Menuju Penilaian Nasional', '61d29e946d0cf.jpeg', 'Dilansir pada Madiuntoday', 'prestasi', 'MADIUN – Tinggal selangkah lagi upaya yang harus ditempuh TK Negeri Pembina untuk menjadi juara nasional dalam Lomba Sekolah Sehat (LHS). Ini setelah lembaga pendidikan di Kota Madiun itu terpilih sebagai perwakilan Provinsi Jawa Timur untuk maju ke taraf yang lebih tinggi.\r\n\r\nPenilaian LHS diperkirakan akan berlangsung pada Juni mendatang. Karenanya, berbagai persiapan harus segera dimatangkan. Untuk itu, Walikota Madiun Maidi pun turut memantau sejauh mana persiapan yang telah dilakukan.\r\n\r\n‘’Ini sudah tingkat nasional. Tidak boleh setengah-setengah. Semua OPD saya minta membantu untuk mempersiapkan TK Negeri Pembina sebelum penilaian,’’ tuturnya saat memberikan arahan dalam Rapat Koordinasi Pembinaan UKS TK Negeri Pembina di sekolah tersebut, Jumat (17/5).\r\n\r\n', 'admin'),
(871, 2, '2022-01-03', 'Bersih Bersih Lingkungan TK', '61d2d2cb8fa1a.jpg', 'Bersama Murid Kelas A', 'kegiatan', 'Kegiatan rutin bersih bersih lingkungan sekolah sudah sering di lakukan agar menumbuhkan rasa percaya diri dan hidup bersih bagi murid - murid.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_post_populer`
--

CREATE TABLE `tb_post_populer` (
  `id` int(11) NOT NULL,
  `id_user_populer` char(5) NOT NULL,
  `gambar_berita_populer` varchar(225) NOT NULL,
  `judul_berita_populer` varchar(225) NOT NULL,
  `detail_berita_populer` varchar(225) NOT NULL,
  `isi_berita_populer` text NOT NULL,
  `tgl_berita_populer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_post_populer`
--

INSERT INTO `tb_post_populer` (`id`, `id_user_populer`, `gambar_berita_populer`, `judul_berita_populer`, `detail_berita_populer`, `isi_berita_populer`, `tgl_berita_populer`) VALUES
(20, 'admin', '61d29aeedff5b.jpeg', 'Kedatangan Tim Juri Tingkat Nasional ', 'Di Lansir pada Madiuntoday', 'MADIUN – Tinggal selangkah lagi bagi TK Negeri Pembina Kota Madiun untuk dinobatkan sebagai Sekolah Sehat Tingkat Nasional tahun ini. Satu tahapan penting telah terlewati. Yakni, setelah tim juri dari kementerian terkait dan Pemprov Jatim melaksanakan penjurian di sekolah tersebut, Selasa (16/7).', '2022-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `idb` int(11) NOT NULL,
  `id_user` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nama_lengkap` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`idb`, `id_user`, `username`, `password`, `nama_lengkap`) VALUES
(4, 'admin', 'admin', '$2y$10$3U.Od3UOXlIt2M.VCxutiu9vtPcuz7Cm5qacPX5E1QC1LloK8epHa', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berlangganan`
--
ALTER TABLE `tb_berlangganan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategoripost`
--
ALTER TABLE `tb_kategoripost`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id_post`,`id_kat`,`id_user`);

--
-- Indexes for table `tb_post_populer`
--
ALTER TABLE `tb_post_populer`
  ADD PRIMARY KEY (`id`,`id_user_populer`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`idb`,`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berlangganan`
--
ALTER TABLE `tb_berlangganan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_kategoripost`
--
ALTER TABLE `tb_kategoripost`
  MODIFY `id_kat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=872;

--
-- AUTO_INCREMENT for table `tb_post_populer`
--
ALTER TABLE `tb_post_populer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `idb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
