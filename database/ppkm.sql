-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2021 at 04:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppkm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nomor_telp_admin` varchar(15) NOT NULL,
  `alamat_admin` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nomor_telp_admin`, `alamat_admin`, `id_user`) VALUES
(7, '08587165900', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

CREATE TABLE `tb_banner` (
  `id_banner` int(11) NOT NULL,
  `nama_banner` text NOT NULL,
  `foto_banner` text NOT NULL,
  `id_umkm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksi`
--

CREATE TABLE `tb_detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_foto`
--

CREATE TABLE `tb_foto` (
  `id_foto` int(11) NOT NULL,
  `foto` text NOT NULL,
  `keterangan_foto` text,
  `id_umkm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_informasi`
--

CREATE TABLE `tb_informasi` (
  `id_informasi` int(11) NOT NULL,
  `judul_informasi` varchar(100) NOT NULL,
  `isi_informasi` text NOT NULL,
  `gambar` text NOT NULL,
  `status_informasi` enum('aktif','tidak aktif','','') NOT NULL,
  `id_umkm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_produk`
--

CREATE TABLE `tb_kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_produk` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_umkm`
--

CREATE TABLE `tb_kategori_umkm` (
  `id_kategori_umkm` int(11) NOT NULL,
  `nama_kategori_umkm` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori_umkm`
--

INSERT INTO `tb_kategori_umkm` (`id_kategori_umkm`, `nama_kategori_umkm`, `keterangan`) VALUES
(1, 'Kuliner', 'jn');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keranjang`
--

CREATE TABLE `tb_keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `nama_konsumen` varchar(100) NOT NULL,
  `username_konsumen` varchar(20) NOT NULL,
  `password_konsumen` text NOT NULL,
  `email_konsumen` varchar(50) NOT NULL,
  `foto_konsumen` text NOT NULL,
  `nomor_telp_konsumen` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_join` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_konsumen` enum('aktif','tidak aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`id_konsumen`, `nama_konsumen`, `username_konsumen`, `password_konsumen`, `email_konsumen`, `foto_konsumen`, `nomor_telp_konsumen`, `jenis_kelamin`, `tanggal_lahir`, `tanggal_join`, `status_konsumen`) VALUES
(1, 'Farah Fitriavida A', 'farahfitriavidaa', '827ccb0eea8a706c4c34a16891f84e7b', 'ffitri2009@yahoo.co.id', 'konsumen.jpg', '08587165900', '', '0000-00-00', '2020-12-30 08:40:14', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kontak`
--

CREATE TABLE `tb_kontak` (
  `id_kontak` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `website` text,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(20) NOT NULL,
  `pemilik_rekening` varchar(50) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_market`
--

CREATE TABLE `tb_market` (
  `id_market` int(11) NOT NULL,
  `nama_market` varchar(50) NOT NULL,
  `alamat_market` text NOT NULL,
  `link_market` varchar(255) NOT NULL,
  `id_umkm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengiriman`
--

CREATE TABLE `tb_pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_umkm` int(11) NOT NULL,
  `no_resi` text,
  `status_pengiriman` enum('belum_dikirim','dikirim') NOT NULL DEFAULT 'belum_dikirim'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_portofolio`
--

CREATE TABLE `tb_portofolio` (
  `id_portofolio` int(11) NOT NULL,
  `judul_portofolio` varchar(100) NOT NULL,
  `foto_portofolio` text NOT NULL,
  `keterangan` text NOT NULL,
  `alamat` text NOT NULL,
  `tanggal` date NOT NULL,
  `id_umkm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `foto_produk` text NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `id_umkm` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `status_produk` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_promo`
--

CREATE TABLE `tb_promo` (
  `id_promo` int(11) NOT NULL,
  `id_umkm` int(11) DEFAULT NULL,
  `nama_promo` text NOT NULL,
  `kode_promo` text NOT NULL,
  `besar_promo` int(11) NOT NULL,
  `minimal_belanja` int(11) DEFAULT NULL,
  `maksimum_potongan` int(11) NOT NULL,
  `status_promo` enum('aktif','tidak aktif','expired') DEFAULT NULL,
  `foto_promo` text,
  `berlaku_sampai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_slide`
--

CREATE TABLE `tb_slide` (
  `id_slide` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `deskripsi` text NOT NULL,
  `url` text NOT NULL,
  `status` enum('aktif','tidak aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_konsumen` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `id_promo` int(11) DEFAULT NULL,
  `besar_diskon` int(11) DEFAULT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `detail_alamat` text NOT NULL,
  `ekspedisi_pengiriman` varchar(255) NOT NULL,
  `estimasi_pengiriman` varchar(255) NOT NULL,
  `ongkos_kirim` int(11) NOT NULL,
  `bukti_pembayaran` text NOT NULL,
  `resi` varchar(255) NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('menunggu pembayaran','menunggu konfirmasi','diproses','dikirim','diterima','dana dikirim','selesai','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_umkm`
--

CREATE TABLE `tb_umkm` (
  `id_umkm` int(11) NOT NULL,
  `nama_umkm` varchar(100) NOT NULL,
  `alamat_umkm` text NOT NULL,
  `kota_asal` text NOT NULL,
  `provinsi_asal` text NOT NULL,
  `deskripsi_umkm` text NOT NULL,
  `nomor_telp_umkm` varchar(15) NOT NULL,
  `id_kategori_umkm` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_umkm`
--

INSERT INTO `tb_umkm` (`id_umkm`, `nama_umkm`, `alamat_umkm`, `kota_asal`, `provinsi_asal`, `deskripsi_umkm`, `nomor_telp_umkm`, `id_kategori_umkm`, `id_user`) VALUES
(1, 'UMKM Makan Padang', 'Jl', '', '', 'aas', '08587165916', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto_user` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_join` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` enum('Admin','UMKM') NOT NULL,
  `status` enum('aktif','tidak aktif','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_lengkap`, `username`, `password`, `email`, `foto_user`, `tanggal_lahir`, `tanggal_join`, `level`, `status`) VALUES
(0, 'Farah', 'ngetest', '827ccb0eea8a706c4c34a16891f84e7b', 'test123@gmail.com', 'user.jpg', '2020-12-02', '2020-12-30 01:45:50', '', 'tidak aktif'),
(1, 'Farah Fitriavida A', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'farahfitriavidaa@gmail.com', 'admin.jpg', '0000-00-00', '2020-12-30 08:46:37', 'Admin', 'aktif'),
(2, 'Arnita Aprilia', 'umkm1', '827ccb0eea8a706c4c34a16891f84e7b', 'umkm1@gmail.com', 'umkm.jpg', '0000-00-00', '2020-12-30 09:00:15', 'UMKM', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD PRIMARY KEY (`id_banner`),
  ADD KEY `fk_umkm` (`id_umkm`);

--
-- Indexes for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_umkm` (`id_umkm`);

--
-- Indexes for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  ADD PRIMARY KEY (`id_informasi`),
  ADD KEY `id_umkm` (`id_umkm`);

--
-- Indexes for table `tb_kategori_produk`
--
ALTER TABLE `tb_kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indexes for table `tb_kategori_umkm`
--
ALTER TABLE `tb_kategori_umkm`
  ADD PRIMARY KEY (`id_kategori_umkm`);

--
-- Indexes for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_konsumen` (`id_konsumen`),
  ADD KEY `id_barang` (`id_produk`);

--
-- Indexes for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indexes for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tb_market`
--
ALTER TABLE `tb_market`
  ADD PRIMARY KEY (`id_market`),
  ADD KEY `id_umkm` (`id_umkm`);

--
-- Indexes for table `tb_pengiriman`
--
ALTER TABLE `tb_pengiriman`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `fk_transaksi` (`id_transaksi`),
  ADD KEY `fk_umkm` (`id_umkm`);

--
-- Indexes for table `tb_portofolio`
--
ALTER TABLE `tb_portofolio`
  ADD PRIMARY KEY (`id_portofolio`),
  ADD KEY `id_umkm` (`id_umkm`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `id_umkm` (`id_umkm`),
  ADD KEY `id_kategori_produk` (`id_kategori_produk`);

--
-- Indexes for table `tb_promo`
--
ALTER TABLE `tb_promo`
  ADD PRIMARY KEY (`id_promo`),
  ADD KEY `fk_umkm` (`id_umkm`);

--
-- Indexes for table `tb_slide`
--
ALTER TABLE `tb_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_konsumen` (`id_konsumen`),
  ADD KEY `id_promo` (`id_promo`);

--
-- Indexes for table `tb_umkm`
--
ALTER TABLE `tb_umkm`
  ADD PRIMARY KEY (`id_umkm`),
  ADD KEY `id_kategori_umkm` (`id_kategori_umkm`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_banner`
--
ALTER TABLE `tb_banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_foto`
--
ALTER TABLE `tb_foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_produk`
--
ALTER TABLE `tb_kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_kategori_umkm`
--
ALTER TABLE `tb_kategori_umkm`
  MODIFY `id_kategori_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kontak`
--
ALTER TABLE `tb_kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_market`
--
ALTER TABLE `tb_market`
  MODIFY `id_market` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_pengiriman`
--
ALTER TABLE `tb_pengiriman`
  MODIFY `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_portofolio`
--
ALTER TABLE `tb_portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_promo`
--
ALTER TABLE `tb_promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_slide`
--
ALTER TABLE `tb_slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_umkm`
--
ALTER TABLE `tb_umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD CONSTRAINT `tb_admin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);

--
-- Constraints for table `tb_banner`
--
ALTER TABLE `tb_banner`
  ADD CONSTRAINT `tb_banner_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`);

--
-- Constraints for table `tb_detail_transaksi`
--
ALTER TABLE `tb_detail_transaksi`
  ADD CONSTRAINT `tb_detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`),
  ADD CONSTRAINT `tb_detail_transaksi_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_foto`
--
ALTER TABLE `tb_foto`
  ADD CONSTRAINT `tb_foto_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`);

--
-- Constraints for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  ADD CONSTRAINT `tb_informasi_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`);

--
-- Constraints for table `tb_keranjang`
--
ALTER TABLE `tb_keranjang`
  ADD CONSTRAINT `tb_keranjang_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `tb_konsumen` (`id_konsumen`),
  ADD CONSTRAINT `tb_keranjang_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tb_produk` (`id_produk`);

--
-- Constraints for table `tb_market`
--
ALTER TABLE `tb_market`
  ADD CONSTRAINT `tb_market_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`);

--
-- Constraints for table `tb_pengiriman`
--
ALTER TABLE `tb_pengiriman`
  ADD CONSTRAINT `tb_pengiriman_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tb_transaksi` (`id_transaksi`),
  ADD CONSTRAINT `tb_pengiriman_ibfk_2` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`);

--
-- Constraints for table `tb_portofolio`
--
ALTER TABLE `tb_portofolio`
  ADD CONSTRAINT `tb_portofolio_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`);

--
-- Constraints for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD CONSTRAINT `tb_produk_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`),
  ADD CONSTRAINT `tb_produk_ibfk_2` FOREIGN KEY (`id_kategori_produk`) REFERENCES `tb_kategori_produk` (`id_kategori_produk`);

--
-- Constraints for table `tb_promo`
--
ALTER TABLE `tb_promo`
  ADD CONSTRAINT `tb_promo_ibfk_1` FOREIGN KEY (`id_umkm`) REFERENCES `tb_umkm` (`id_umkm`);

--
-- Constraints for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD CONSTRAINT `tb_transaksi_ibfk_1` FOREIGN KEY (`id_konsumen`) REFERENCES `tb_konsumen` (`id_konsumen`),
  ADD CONSTRAINT `tb_transaksi_ibfk_2` FOREIGN KEY (`id_promo`) REFERENCES `tb_promo` (`id_promo`);

--
-- Constraints for table `tb_umkm`
--
ALTER TABLE `tb_umkm`
  ADD CONSTRAINT `tb_umkm_ibfk_1` FOREIGN KEY (`id_kategori_umkm`) REFERENCES `tb_kategori_umkm` (`id_kategori_umkm`),
  ADD CONSTRAINT `tb_umkm_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
