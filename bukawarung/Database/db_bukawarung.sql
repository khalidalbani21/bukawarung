-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 05:03 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Khalid Adam Albani', 'khalidalbani21', '1a0a47744dfcd2491e51de052db5b745', '+62895392053460', 'khalidalbani21@gmail.com', 'Jln.Narogong Cantik'),
(2, 'Hilmi', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+62895392053461', 'hilmialbani21@gmail.com', 'Jln.Narogong Indah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(4, 'Laptop'),
(5, 'Handphone'),
(6, 'Headset');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(5, 4, 'Asus', 4000000, '<p>Spesifikasi<br />\r\nIntel Core I7-1255U</p>\r\n\r\n<p>Ram 16 GB DDR5</p>\r\n\r\n<p>VGA RTX 3060 8GB</p>\r\n', 'produk1589853135.png', 1, '2020-05-19 01:52:15'),
(6, 4, 'HP', 6000000, '<p>Spesifikasi</p>\r\n\r\n<p>Intel Core I5 8600U</p>\r\n\r\n<p>Ram 8GB DDR4</p>\r\n\r\n<p>VGA GTX 1650 4GB</p>\r\n', 'produk1589853165.png', 1, '2020-05-19 01:52:45'),
(7, 4, 'Acer', 8000000, '<p>Spesifikasi</p>\r\n\r\n<p>Amd Ryzen 3250u</p>\r\n\r\n<p>Ram 8GB DDR4</p>\r\n\r\n<p>VGA Radeon</p>\r\n', 'produk1589853182.png', 1, '2020-05-19 01:53:02'),
(8, 5, 'Vivo', 3000000, '<ul>\r\n	<li>\r\n	<p>Prosesor</p>\r\n\r\n	<p>Qualcomm Snapdragon 778G</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM&amp;ROM</p>\r\n\r\n	<p>8 GB + 256 GB<br />\r\n	12 GB + 512 GB<br />\r\n	*RAM aktual yang tersedia sedikit lebih kecil dari 8 GB dan 12 GB karena penyimpanan sistem operasi dan aplikasi bawaan.<br />\r\n	*ROM aktual yang tersedia sedikit lebih kecil dari 256 GB dan 512 GB karena penyimpanan sistem operasi dan aplikasi bawaan.</p>\r\n	</li>\r\n	<li>\r\n	<p>Baterai</p>\r\n\r\n	<p>4600 mAh</p>\r\n	</li>\r\n	<li>\r\n	<p>Fast Charging</p>\r\n\r\n	<p>80W<br />\r\n	* Dilengkapi dengan pengisi daya standar vivo yang mendukung daya pengisian daya hingga 80W. Daya pengisian daya yang sebenarnya disesuaikan secara dinamis seiring dengan perubahan situasi, dan tergantung pada penggunaan yang sebenarnya.</p>\r\n	</li>\r\n</ul>\r\n', 'produk1715265446.jpeg', 1, '2020-05-19 01:53:23'),
(9, 5, 'Samsung', 8000000, '<p>Spesifikasi :</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Prosesor</strong>: MediaTek MT6765 Helio P35 (12nm), Octa-core (4x2.35 GHz Cortex-A53 &amp; 4x1.8 GHz Cortex-A53).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>RAM</strong>: Varian RAM yang tersedia adalah 2GB, 3GB, dan 4GB.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Penyimpanan Internal</strong>: Pilihan penyimpanan internal antara 32GB dan 64GB, dapat diperluas dengan kartu microSD hingga 1TB (slot khusus).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kamera Utama</strong>: Triple kamera belakang:</p>\r\n\r\n	<ul>\r\n		<li>Kamera utama: 13 MP, f/2.2, (wide), PDAF</li>\r\n		<li>Kamera kedua: 2 MP, f/2.4, (macro)</li>\r\n		<li>Kamera ketiga: 2 MP, f/2.4, (depth)</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kamera Depan</strong>: Kamera depan 5 MP, f/2.2, (wide).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Layar</strong>: Layar PLS IPS 6.5 inci dengan resolusi 720 x 1600 piksel dan kerapatan piksel sekitar 270 ppi.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Baterai</strong>: Baterai Non-removable Li-Po 5000 mAh.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sistem Operasi</strong>: Android 10 dengan antarmuka pengguna One UI.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Fitur Tambahan</strong>: Sensor sidik jari (dipasang di belakang), radio FM, jack audio 3.5mm, dual SIM, konektivitas 4G LTE.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Desain</strong>: Desain belakang plastik polikarbonat dengan modul kamera yang menonjol, dan varian warna yang tersedia.</p>\r\n	</li>\r\n</ol>\r\n', 'produk1715265197.jpeg', 1, '2020-05-19 01:53:46'),
(10, 5, 'Poco', 2500000, '<p>Spesifikasi :</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Prosesor</strong>: Qualcomm Snapdragon 662 Octa-core (4x2.0 GHz Kryo 260 Gold &amp; 4x1.8 GHz Kryo 260 Silver).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>RAM</strong>: Varian RAM yang tersedia adalah 4GB.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Penyimpanan Internal</strong>: Pilihan penyimpanan internal antara 64GB dan 128GB.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kamera Utama</strong>: Triple kamera belakang:</p>\r\n\r\n	<ul>\r\n		<li>Kamera utama: 48 MP, f/1.8, (wide), 1/2.0&quot;, 0.8&micro;m, PDAF</li>\r\n		<li>Kamera kedua: 2 MP, f/2.4, (macro)</li>\r\n		<li>Kamera ketiga: 2 MP, f/2.4, (depth)</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Kamera Depan</strong>: Kamera depan 8 MP, f/2.1, (wide), 1/4.0&quot;, 1.12&micro;m.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Layar</strong>: Layar IPS LCD 6.53 inci dengan resolusi 1080 x 2340 piksel dan kerapatan piksel sekitar 395 ppi.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Baterai</strong>: Baterai Non-removable Li-Po 6000 mAh dengan pengisian cepat 18W.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sistem Operasi</strong>: MIUI 12 berdasarkan Android 10.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Fitur Tambahan</strong>: Sensor sidik jari (dipasang di samping), radio FM, jack audio 3.5mm, pengisian reverse, dual SIM, konektivitas 4G LTE.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Desain</strong>: Desain belakang polikarbonat dengan modul kamera yang menonjol, dan varian warna yang tersedia.</p>\r\n	</li>\r\n</ol>\r\n', 'produk1715266196.jpeg', 1, '2020-05-19 01:54:16'),
(11, 6, 'Xiaomi, Oppo, Vivo, Samsung', 50000, '<p><strong>Xiaomi</strong> seringkali menggunakan driver unit dengan ukuran yang besar untuk menghasilkan suara berkualitas tinggi.</p>\r\n\r\n<p><strong>Oppo</strong> sering menonjolkan kualitas suara yang unggul dengan teknologi audio canggih.</p>\r\n\r\n<p><strong>Vivo</strong> sering menghadirkan headset dengan kualitas audio yang tinggi, dengan fokus pada detail suara yang jernih dan bass yang kuat.</p>\r\n\r\n<p><strong>Samsung</strong> sering menghadirkan headset dengan kualitas audio yang unggul, dengan fokus pada pengalaman mendengarkan yang imersif.</p>\r\n', 'produk1589853286.png', 1, '2020-05-19 01:54:46'),
(22, 6, 'HyperX', 2000000, '<ul>\r\n	<li>Driver: 53mm Neodymium</li>\r\n	<li>Frekuensi Respons: 15Hz&ndash;25,000Hz</li>\r\n	<li>Impedansi: 60 ohm</li>\r\n	<li>Koneksi: USB untuk PC &amp; Mac, 3.5mm stereo untuk PS4, Xbox One, Wii U, Mac, dan perangkat mobile</li>\r\n	<li>Mikrofon: Pengurangan noise, bisa dilepas</li>\r\n	<li>Material: Baja Aluminium, Busa memory foam</li>\r\n</ul>\r\n', 'produk1715482550.jpeg', 1, '2024-05-12 02:55:50'),
(23, 6, 'Logitech', 6000000, '<p>Headphone:</p>\r\n\r\n<ul>\r\n	<li>Berat: 278 g</li>\r\n	<li>Driver: PRO-G 40 mm</li>\r\n	<li>Respons frekuensi: 20 Hz-20 KHz</li>\r\n	<li>Impedansi: 39 Ohm (pasif), 5k Ohm (aktif)</li>\r\n	<li>Sensitivitas: 87,5 dB SPL/mW</li>\r\n</ul>\r\n\r\n<p>Mikrofon (Boom):</p>\r\n\r\n<ul>\r\n	<li>Pola Pickup Mikrofon: Cardioid (Unidireksional)</li>\r\n	<li>Ukuran: 6 mm</li>\r\n	<li>Respons frekuensi: 100 Hz - 10 KHz</li>\r\n	<li>Jangkauan Wireless10Mungkin beragam, bergantung pada kondisi lingkungan dan komputasi. Daya tahan baterai berdasarkan volume headset yang ditetapkan ke 50%.: Hingga jarak 20 meter</li>\r\n	<li>Jenis Koneksi: LIGHTSPEED wireless via USB</li>\r\n</ul>\r\n', 'produk1715482688.jpeg', 1, '2024-05-12 02:58:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
