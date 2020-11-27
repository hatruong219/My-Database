-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 02:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbandt_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_User` int(10) UNSIGNED NOT NULL,
  `Pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_User`, `Pass`, `Name`, `Gender`, `Address`, `Username`, `created_at`, `updated_at`) VALUES
(1, '111', 'Admin', 'Nam', 'Quảng Bình', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `ID_Bl` int(10) UNSIGNED NOT NULL,
  `ID_User` int(10) UNSIGNED DEFAULT NULL,
  `ID_Sanpham` int(10) UNSIGNED DEFAULT NULL,
  `Capbac` int(11) NOT NULL,
  `Noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Ngaybl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_hd`
--

CREATE TABLE `chitiet_hd` (
  `ID_Chitiethd` int(10) UNSIGNED NOT NULL,
  `ID_Sanpham` int(10) UNSIGNED DEFAULT NULL,
  `Soluongmua` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `ID_Hoadon` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `ID_Hoadon` int(10) UNSIGNED NOT NULL,
  `Ngaymua` date NOT NULL,
  `ID_User` int(10) UNSIGNED DEFAULT NULL,
  `Tongtien` int(11) NOT NULL,
  `Trangthai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadontam`
--

CREATE TABLE `hoadontam` (
  `ID_Hoadontam` int(10) UNSIGNED NOT NULL,
  `ID_Sanpham` int(10) UNSIGNED DEFAULT NULL,
  `Soluongmua` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `ID_User` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `ID_User` int(10) UNSIGNED NOT NULL,
  `Anhdaidien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Trangthai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`ID_User`, `Anhdaidien`, `Pass`, `Name`, `Gender`, `Address`, `Phone`, `Trangthai`, `created_at`, `updated_at`) VALUES
(1, '10.jpg', '111', 'Hoàng Trường', 'Nam', 'Quảng Bình', 705433390, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loaihang`
--

CREATE TABLE `loaihang` (
  `ID_Loaihang` int(10) UNSIGNED NOT NULL,
  `Namelh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaihang`
--

INSERT INTO `loaihang` (`ID_Loaihang`, `Namelh`, `created_at`, `updated_at`) VALUES
(1, 'Điện Thoại', '2020-11-10 02:32:34', '2020-11-10 02:32:34'),
(3, 'Máy Tính', '2020-11-10 02:38:38', '2020-11-10 02:38:38'),
(4, 'Linh Kiện Điện Tử', '2020-11-10 02:38:48', '2020-11-10 02:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_07_16_071121_create_table_khachhang_table', 1),
(2, '2020_07_16_071212_create_table_loaihang_table', 1),
(3, '2020_07_16_071306_create_table_thuonghieu_table', 1),
(4, '2020_07_16_071412_create_table_hoadon_table', 1),
(5, '2020_07_16_071430_create_table_sanpham_table', 1),
(6, '2020_07_16_071450_create_table_binhluan_table', 1),
(7, '2020_07_16_071524_create_table_chitiethd_table', 1),
(8, '2020_07_16_071545_create_table_quangcao_table', 1),
(9, '2020_07_16_071605_create_table_thongbao_table', 1),
(10, '2020_07_16_071626_create_table_hoadontam_table', 1),
(11, '2020_07_16_072500_create_table_admin_table', 1),
(12, '2020_07_18_010234_add_attribute_binhluan_into__ngaybl_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `ID_Quangcao` int(10) UNSIGNED NOT NULL,
  `Tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_Sanpham` int(10) UNSIGNED NOT NULL,
  `Namesp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Thuonghieu` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ID_Sanpham`, `Namesp`, `Gia`, `Soluong`, `Image`, `Mota`, `ID_Thuonghieu`, `created_at`, `updated_at`) VALUES
(1, 'Điện Thoại Nokia X5 (32GB / 3GB) (Có Tiếng Việt) - Hàng Nhập Khẩu', 10000000, 1, 'nokiax5.PNG', '<p>Nokia X5, Sản phẩm ra đời sau Nokia X6, sở hữu những ưu điểm của nokia X6 như m&agrave;n h&igrave;nh 19:9, tai thỏ , camera k&eacute;p x&oacute;a ph&ocirc;ng ảo diệu. Chạy chip 8 nh&acirc;n, điểm hiệu năng antutu l&ecirc;n tới 130K điểm. Pin 3000 mAh. Đ&acirc;y l&agrave; một trong những sản phẩm chiến lược vực dậy của b&aacute; chủ nokia năm xưa. M&aacute;y bảo h&agrave;nh 12 th&aacute;ng. 1 Đổi 1 trong 15 ng&agrave;y</p>', 2, '2020-11-10 02:44:26', '2020-11-10 02:44:26');

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `ID_Thongbao` int(10) UNSIGNED NOT NULL,
  `Tieude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Noidung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Hinhanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `ID_Thuonghieu` int(10) UNSIGNED NOT NULL,
  `Nameth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Loaihang` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`ID_Thuonghieu`, `Nameth`, `Address`, `Note`, `ID_Loaihang`, `created_at`, `updated_at`) VALUES
(1, 'SAMSUNG', 'Hàn Quốc', 'Công ty Samsung tự hào phát triển thứ 5 thế giới', 1, '2020-11-10 02:39:20', '2020-11-10 02:39:20'),
(2, 'NOKIA', 'Mỹ', 'Công ty có bề dày lịch sử nhất thế giới', 1, '2020-11-10 02:39:32', '2020-11-10 02:39:32'),
(3, 'DELL', 'Italia', 'Công ty máy tính chất lượng thế giới', 3, '2020-11-10 02:39:49', '2020-11-10 02:39:49'),
(4, 'HP', 'Mỹ', 'Tập đoàn sản xuất máy tính mới nổi', 3, '2020-11-10 02:40:01', '2020-11-10 02:40:01'),
(5, 'AmazonBasics', 'Mỹ', 'Công ty sản xuất linh kiện điện tử lớn nhất', 4, '2020-11-10 02:40:27', '2020-11-10 02:40:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_User`),
  ADD UNIQUE KEY `admin_username_unique` (`Username`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`ID_Bl`),
  ADD KEY `binhluan_id_user_foreign` (`ID_User`),
  ADD KEY `binhluan_id_sanpham_foreign` (`ID_Sanpham`);

--
-- Indexes for table `chitiet_hd`
--
ALTER TABLE `chitiet_hd`
  ADD PRIMARY KEY (`ID_Chitiethd`),
  ADD KEY `chitiet_hd_id_sanpham_foreign` (`ID_Sanpham`),
  ADD KEY `chitiet_hd_id_hoadon_foreign` (`ID_Hoadon`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ID_Hoadon`),
  ADD KEY `hoadon_id_user_foreign` (`ID_User`);

--
-- Indexes for table `hoadontam`
--
ALTER TABLE `hoadontam`
  ADD PRIMARY KEY (`ID_Hoadontam`),
  ADD KEY `hoadontam_id_sanpham_foreign` (`ID_Sanpham`),
  ADD KEY `hoadontam_id_user_foreign` (`ID_User`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ID_User`),
  ADD UNIQUE KEY `khachhang_phone_unique` (`Phone`);

--
-- Indexes for table `loaihang`
--
ALTER TABLE `loaihang`
  ADD PRIMARY KEY (`ID_Loaihang`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`ID_Quangcao`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID_Sanpham`),
  ADD KEY `sanpham_id_thuonghieu_foreign` (`ID_Thuonghieu`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`ID_Thongbao`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`ID_Thuonghieu`),
  ADD KEY `thuonghieu_id_loaihang_foreign` (`ID_Loaihang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_User` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `ID_Bl` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitiet_hd`
--
ALTER TABLE `chitiet_hd`
  MODIFY `ID_Chitiethd` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ID_Hoadon` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadontam`
--
ALTER TABLE `hoadontam`
  MODIFY `ID_Hoadontam` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ID_User` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loaihang`
--
ALTER TABLE `loaihang`
  MODIFY `ID_Loaihang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `ID_Quangcao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID_Sanpham` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `ID_Thongbao` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `ID_Thuonghieu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_id_sanpham_foreign` FOREIGN KEY (`ID_Sanpham`) REFERENCES `sanpham` (`ID_Sanpham`) ON DELETE CASCADE,
  ADD CONSTRAINT `binhluan_id_user_foreign` FOREIGN KEY (`ID_User`) REFERENCES `khachhang` (`ID_User`) ON DELETE CASCADE;

--
-- Constraints for table `chitiet_hd`
--
ALTER TABLE `chitiet_hd`
  ADD CONSTRAINT `chitiet_hd_id_hoadon_foreign` FOREIGN KEY (`ID_Hoadon`) REFERENCES `hoadon` (`ID_Hoadon`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitiet_hd_id_sanpham_foreign` FOREIGN KEY (`ID_Sanpham`) REFERENCES `sanpham` (`ID_Sanpham`) ON DELETE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_id_user_foreign` FOREIGN KEY (`ID_User`) REFERENCES `khachhang` (`ID_User`) ON DELETE CASCADE;

--
-- Constraints for table `hoadontam`
--
ALTER TABLE `hoadontam`
  ADD CONSTRAINT `hoadontam_id_sanpham_foreign` FOREIGN KEY (`ID_Sanpham`) REFERENCES `sanpham` (`ID_Sanpham`) ON DELETE CASCADE,
  ADD CONSTRAINT `hoadontam_id_user_foreign` FOREIGN KEY (`ID_User`) REFERENCES `khachhang` (`ID_User`) ON DELETE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_id_thuonghieu_foreign` FOREIGN KEY (`ID_Thuonghieu`) REFERENCES `thuonghieu` (`ID_Thuonghieu`) ON DELETE CASCADE;

--
-- Constraints for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD CONSTRAINT `thuonghieu_id_loaihang_foreign` FOREIGN KEY (`ID_Loaihang`) REFERENCES `loaihang` (`ID_Loaihang`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
