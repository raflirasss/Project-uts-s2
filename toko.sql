-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 12, 2023 at 12:10 PM
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
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`) VALUES
(5, 'Coffe Tools'),
(6, 'Denali'),
(1, 'Elektronik'),
(2, 'Furniture'),
(3, 'Makanan'),
(4, 'Minuman');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pemesan` varchar(45) NOT NULL,
  `alamat_pemesan` varchar(45) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `nama_pemesan`, `alamat_pemesan`, `no_hp`, `email`, `jumlah_pesanan`, `deskripsi`, `produk_id`) VALUES
(1, '2023-04-08', 'Abdurrahman Ziyad', 'Depok', '082094374577', 'ziyad@gmail.com', 2, 'Pesanan Meja Belajar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int(11) NOT NULL,
  `min_stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_jual`, `harga_beli`, `stok`, `min_stok`, `deskripsi`, `kategori_produk_id`) VALUES
(2, 'MB01', 'Meja Belajar', 2000000, 1500000, 6, 2, 'Meja yang difungsikan untuk membaca, menulis, dan yang pasti untuk belajar.', 2),
(3, 'CS01', 'Coffe Scale', 123000, 100000, 100, 1, 'Timbangan elektronik ini memiliki ukuran yang mini dan cocok untuk mendukung perlengkapan dapur Anda. Timbangan ini dapat Anda manfaatkan untuk menimbang bahan makanan dengan tepat karena dapat mengukur berat hingga 0.1 g. Timbangan elektronik dari Taffware Digipounds juga memiliki fitur timer sehingga Anda dapat memanfaatkannya untuk mengetahui timing yang pas ketika Anda memasak.', 5),
(6, 'KT01', 'Kettle Thermo', 254000, 100000, 100, 1, 'Teko ini merupakan katel khusus untuk membuat kopi espresso atau teh dengan cara yang mudah dan cepat. Anda dapat memanaskan air sampai suhu yang tepat karena teko ini dilengkapi dengan thermometer untuk mengukur suhu panas di dalam teko.', 5),
(7, 'VD01', 'Vietnam Dripper', 32000, 100000, 100, 1, 'Alat ini berguna untuk menyaring kopi yang biasa digunakan pada teknik penyaringan kopi Vietnam. Terbuat dari bahan stainless steel, membuat filter ini tidak gampang berkarat dan juga awet digunakan dalam jangka waktu lama.', 5),
(8, 'DS01', 'Denali Syrup Vanilla', 92700, 100000, 100, 1, 'Sirup Denali merupakan sirup premium yang banyak digunakan dalam industri hotel, restoran maupun kafe sebagai sirup gourmet dan sudah sangat familiar dikalangan para Barista. Sirup premium yang di impor langsung dari UK ini dikemas dalam botol ekslusif dengan volume 750ml. Sirup ini sesuai digunakan untuk keperluan pribadi ataupun dalam acara jamuan. Tersedia dalam berbagai varian rasa.', 6),
(9, 'DS02', 'Denali Syrup Lychee', 92700, 100000, 100, 1, 'Sirup Denali merupakan sirup premium yang banyak digunakan dalam industri hotel, restoran maupun kafe sebagai sirup gourmet dan sudah sangat familiar dikalangan para Barista. Sirup premium yang di impor langsung dari UK ini dikemas dalam botol ekslusif dengan volume 750ml. Sirup ini sesuai digunakan untuk keperluan pribadi ataupun dalam acara jamuan. Tersedia dalam berbagai varian rasa.', 6),
(10, 'DS03', 'Denali Syrup Banana', 92700, 100000, 100, 1, 'Sirup Denali merupakan sirup premium yang banyak digunakan dalam industri hotel, restoran maupun kafe sebagai sirup gourmet dan sudah sangat familiar dikalangan para Barista. Sirup premium yang di impor langsung dari UK ini dikemas dalam botol ekslusif dengan volume 750ml. Sirup ini sesuai digunakan untuk keperluan pribadi ataupun dalam acara jamuan. Tersedia dalam berbagai varian rasa.', 6),
(11, 'DS04', 'Denali Syrup Chocolate', 92700, 50000, 100, 1, 'Sirup Denali merupakan sirup premium yang banyak digunakan dalam industri hotel, restoran maupun kafe sebagai sirup gourmet dan sudah sangat familiar dikalangan para Barista. Sirup premium yang di impor langsung dari UK ini dikemas dalam botol ekslusif dengan volume 750ml. Sirup ini sesuai digunakan untuk keperluan pribadi ataupun dalam acara jamuan. Tersedia dalam berbagai varian rasa.', 6),
(12, 'DS05', 'Denali Syrup Greentea', 92700, 50000, 100, 1, 'Sirup Denali merupakan sirup premium yang banyak digunakan dalam industri hotel, restoran maupun kafe sebagai sirup gourmet dan sudah sangat familiar dikalangan para Barista. Sirup premium yang di impor langsung dari UK ini dikemas dalam botol ekslusif dengan volume 750ml. Sirup ini sesuai digunakan untuk keperluan pribadi ataupun dalam acara jamuan. Tersedia dalam berbagai varian rasa.', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`tanggal`),
  ADD KEY `fk_pesanan_produk1_idx` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_produk_kategori_produk_idx` (`kategori_produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori_produk` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
