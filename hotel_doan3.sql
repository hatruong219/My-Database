-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 02:20 PM
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
-- Database: `hotel_doan3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_Admin` int(10) UNSIGNED NOT NULL,
  `Pass_Admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_Admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Img_Admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender_Admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username_Admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_Admin`, `Pass_Admin`, `Name_Admin`, `Img_Admin`, `Gender_Admin`, `Username_Admin`, `created_at`, `updated_at`) VALUES
(1, '111', 'Hoài Hoài', '6.jpg', 'Nữ', 'hoaixinhgai', '2020-07-31 14:18:14', NULL),
(2, '111', 'Trường', '3.jpg', 'Nam', 'vantue2192000', '2020-07-31 14:18:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_29_142200_create_table_admin_table', 1),
(4, '2020_07_29_142253_create_table_tblarea_table', 1),
(5, '2020_07_29_142357_create_table_tbluser_table', 1),
(6, '2020_07_29_142440_create_table_tblhotel_table', 1),
(7, '2020_07_29_142502_create_table_tblroom_table', 1),
(8, '2020_07_29_142558_create_table_tblreview_table', 1),
(9, '2020_07_29_142702_create_table_tblcomment_table', 1),
(10, '2020_07_29_142731_create_table_tbllike_table', 1),
(11, '2020_07_29_142754_create_table_tblbill_table', 1),
(13, '2020_08_01_153024_add_attribute__low_price__hotel_into_tblhotel_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblarea`
--

CREATE TABLE `tblarea` (
  `ID_Area` int(10) UNSIGNED NOT NULL,
  `Name_Area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblarea`
--

INSERT INTO `tblarea` (`ID_Area`, `Name_Area`) VALUES
(1, 'Miền Bắc'),
(2, 'Miền Trung'),
(3, 'Miền Nam');

-- --------------------------------------------------------

--
-- Table structure for table `tblbill`
--

CREATE TABLE `tblbill` (
  `ID_Bill` int(10) UNSIGNED NOT NULL,
  `Datein_Bill` date NOT NULL,
  `Dateout_Bill` date NOT NULL,
  `NumberRoom_Bill` int(11) NOT NULL,
  `Total_Bill` int(11) NOT NULL,
  `Status_Bill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_User` int(10) UNSIGNED DEFAULT NULL,
  `ID_Room` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblbill`
--

INSERT INTO `tblbill` (`ID_Bill`, `Datein_Bill`, `Dateout_Bill`, `NumberRoom_Bill`, `Total_Bill`, `Status_Bill`, `ID_User`, `ID_Room`, `created_at`, `updated_at`) VALUES
(1, '2020-07-18', '2020-07-20', 1, 4000000, 'Đã thanh toán', 1, 1, '2020-07-30 14:32:59', '2020-07-31 09:53:46'),
(2, '2020-07-08', '2020-07-10', 1, 3000000, 'Chưa thanh toán', 2, 2, '2020-08-01 14:32:59', '2020-07-31 09:53:32'),
(3, '2020-11-21', '2020-12-01', 2, 30000000, 'Chưa thanh toán', 2, 1, '2020-09-10 09:40:26', '2020-09-10 09:40:26'),
(5, '2020-09-18', '2020-09-20', 1, 2000000, 'Chưa thanh toán', 3, 1, '2020-09-10 10:12:25', '2020-09-10 10:12:25'),
(6, '2020-09-30', '2020-10-05', 1, 5000000, 'Chưa thanh toán', 3, 1, '2020-09-10 10:16:06', '2020-09-10 10:16:06'),
(7, '2020-09-20', '2020-09-22', 1, 3000000, 'Chưa thanh toán', 1, 2, '2020-09-11 17:54:52', '2020-09-11 17:54:52'),
(8, '2020-09-20', '2020-09-23', 1, 3000000, 'Chưa thanh toán', 3, 1, '2020-09-11 19:34:25', '2020-09-11 19:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomment`
--

CREATE TABLE `tblcomment` (
  `ID_Comment` int(10) UNSIGNED NOT NULL,
  `ID_Room` int(10) UNSIGNED DEFAULT NULL,
  `ID_User` int(10) UNSIGNED DEFAULT NULL,
  `Content_Comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcomment`
--

INSERT INTO `tblcomment` (`ID_Comment`, `ID_Room`, `ID_User`, `Content_Comment`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'asdasd', '2020-09-11 10:11:18', '2020-09-11 10:11:18'),
(2, 1, 3, 'asdasd', '2020-09-11 10:14:06', '2020-09-11 10:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblhotel`
--

CREATE TABLE `tblhotel` (
  `ID_Hotel` int(10) UNSIGNED NOT NULL,
  `Name_Hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address_Hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Level_Hotel` int(11) NOT NULL,
  `Img_Hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Information_Hotel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Area` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `LowPrice_Hotel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblhotel`
--

INSERT INTO `tblhotel` (`ID_Hotel`, `Name_Hotel`, `Address_Hotel`, `Level_Hotel`, `Img_Hotel`, `Information_Hotel`, `ID_Area`, `created_at`, `updated_at`, `LowPrice_Hotel`) VALUES
(1, 'Khách sạn Vin Peal Đà Lạt', 'Đà Lạt', 4, 'haonoi2.jpg', '<p>Kh&aacute;ch sạn của tập đo&agrave;n Vin group</p>', 2, '2020-07-29 14:21:45', '2020-08-03 23:22:41', 1000000),
(2, 'Thiên Ý', 'Quảng Bình', 3, 'A11.PNG', 'Khách sạn vô cùng nổi tiếng và xịn xò', 2, '2020-07-31 14:21:45', '2020-08-03 23:24:05', 2000000),
(3, 'Cửu Long', 'TP.HCM', 5, 'A11.PNG', 'Khách sạn lớn nhất miền Nam', 3, '2020-07-23 14:24:52', '2020-08-03 23:18:39', 0),
(6, 'The Q Hotel', 'Đà Nẵng', 3, 'hue2.jpg', '<p>Kh&aacute;ch sạn v&ocirc; c&ugrave;ng l&acirc;u đời b&ecirc;n cạnh bờ biển Đ&agrave; Nẵng</p>', 2, '2020-07-31 08:14:06', '2020-08-03 23:24:24', 10),
(7, 'Mường Thanh', 'Lai Châu', 5, 'hue1.jpg', '<p>Kh&aacute;ch sạn nằm ở vị tr&iacute; v&ocirc; c&ugrave;ng thuận tiện cho việc ngắm cảnh tr&ecirc;n n&uacute;i của du kh&aacute;ch.</p>', 1, '2020-08-01 06:00:57', '2020-08-03 23:17:55', 0),
(8, 'Mộc Châu Hotel', 'Sơn La', 1, 'hue2.jpg', '<p>Kh&aacute;ch sạn gần đồng cỏ</p>', 1, '2020-08-01 06:01:41', '2020-08-03 23:18:14', 0),
(9, 'Khách sạn Soloria', 'Vũng Tàu', 5, 'khanoi1.jpg', '<p>Kh&aacute;ch sạn v&ocirc; c&ugrave;ng lớn v&agrave; nổi tiếng b&ecirc;n cạnh bờ biển Vũng T&agrave;u</p>', 3, '2020-08-01 06:19:11', '2020-08-03 23:15:08', 112121),
(11, 'Khách sạn Pacific Hà Nội', 'Hà Nội', 3, 'hanoi3.jpg', '<p>Ch&agrave;o đ&oacute;n bạn đến với Pan Pacific Hanoi, &quot;M&aacute;i nh&agrave; xa&quot; của bạn ở H&agrave; Nội. Pan Pacific Hanoi sẽ mang đến cho bạn qu&atilde;ng thời gian lưu tr&uacute; thư gi&atilde;n v&agrave; dễ chịu nhất c&oacute; thể. Đ&acirc;y cũng l&agrave; l&yacute; do tại sao nhiều kh&aacute;ch du lịch tiếp tục quay trở lại kh&aacute;ch sạn sau nhiều năm.</p>\r\n\r\n<p>Gần c&aacute;c địa danh như Chua Tran Quoc (0,3 km) v&agrave; Imperial Citadel of Thang Long (1,7 km) đ&atilde; l&agrave;m Pan Pacific Hanoi trở th&agrave;nh lựa chọn l&yacute; tưởng cho những ai muốn đến thăm những địa danh y&ecirc;u th&iacute;ch n&agrave;y ở H&agrave; Nội.</p>', 1, '2020-08-03 23:10:42', '2020-08-03 23:10:42', 0),
(12, 'Điện Biên Hotel', 'Điện Biên', 4, 'saigon1.png', '<p>Kh&aacute;ch sạn nổi tiếng gần di t&iacute;ch lịch sử&nbsp;Điện Bi&ecirc;n phủ</p>', 1, '2020-08-03 23:33:34', '2020-08-03 23:33:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllike`
--

CREATE TABLE `tbllike` (
  `ID_Like` int(10) UNSIGNED NOT NULL,
  `ID_User` int(10) UNSIGNED DEFAULT NULL,
  `ID_Room` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `ID_Review` int(10) UNSIGNED NOT NULL,
  `Title_Review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Img_Review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Content_Review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `ID_Room` int(10) UNSIGNED NOT NULL,
  `Name_Room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Empty_Room` int(11) NOT NULL,
  `Kind_Room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price_Room` int(11) NOT NULL,
  `Star_Room` int(11) NOT NULL,
  `Status_Room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Img_Room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Des_Room` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Hotel` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`ID_Room`, `Name_Room`, `Empty_Room`, `Kind_Room`, `Price_Room`, `Star_Room`, `Status_Room`, `Img_Room`, `Des_Room`, `ID_Hotel`, `created_at`, `updated_at`) VALUES
(1, 'Phòng đơn đẳng cấp', 10, '1 Người', 1000000, 1, '', 'phong1.jpg', '<p>ph&ograve;ng 1 người đẳng cấp ho&agrave;ng gia</p>', 1, '2020-08-01 14:26:22', '2020-08-03 23:22:32'),
(2, 'Phòng đôi sang chảnh', 10, '2 Người', 1500000, 5, '', 'phong2.jpg', '<p>Ph&ograve;ng d&agrave;nh cho c&aacute;c cặp t&igrave;nh nh&acirc;n</p>', 1, '2020-07-31 14:26:22', '2020-08-03 23:22:41'),
(6, 'Phòng gia đình ấm cúng', 100, 'Gia đình', 2000000, 0, '', 'phong3.jpg', '<p>Ph&ograve;ng thiết kế theo kiểu căn hộ thu nhỏ, đem đến cảm gi&aacute;c ấm c&uacute;ng như ở nh&agrave;</p>', 2, '2020-08-01 08:03:21', '2020-08-03 23:24:05'),
(7, 'Phòng đôi đặc biệt', 222, '2 Người', 10, 0, '', '1480392187_bannernew4-_1920x1080.jpg', '<p>sadas</p>', 6, '2020-08-01 08:59:04', '2020-08-03 23:24:24'),
(8, 'Phòng King 1 người', 10, '1 Người', 3000000, 0, '', 'phon8.webp', '<p>Ph&ograve;ng sạch sẽ tho&aacute;ng m&aacute;t ph&ugrave; hợp với 1 người ở</p>', 1, '2020-08-03 23:22:20', '2020-08-03 23:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID_User` int(10) UNSIGNED NOT NULL,
  `Img_User` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone_User` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass_User` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name_User` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Gender_User` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `National_User` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status_User` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID_User`, `Img_User`, `Phone_User`, `Pass_User`, `Name_User`, `Gender_User`, `National_User`, `Status_User`, `created_at`, `updated_at`) VALUES
(1, '6.jpg', '0705433390', '111', 'Hoàng Trường', 'Nam', 'Việt Nam', NULL, '2020-07-30 14:31:00', NULL),
(2, '7.jpg', '0987100666', '111', 'Tiểu Cô Nương', 'Nữ', 'Truyền thuyết', NULL, '2020-08-01 14:31:00', NULL),
(3, '4.jpg', '1234', '111', 'Cô nương 2', 'Nam', 'Việt Nam', 'Null', '2020-09-10 10:03:09', '2020-09-10 10:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_Admin`),
  ADD UNIQUE KEY `admin_username_admin_unique` (`Username_Admin`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblarea`
--
ALTER TABLE `tblarea`
  ADD PRIMARY KEY (`ID_Area`);

--
-- Indexes for table `tblbill`
--
ALTER TABLE `tblbill`
  ADD PRIMARY KEY (`ID_Bill`),
  ADD KEY `tblbill_id_user_foreign` (`ID_User`),
  ADD KEY `tblbill_id_room_foreign` (`ID_Room`);

--
-- Indexes for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD PRIMARY KEY (`ID_Comment`),
  ADD KEY `tblcomment_id_room_foreign` (`ID_Room`),
  ADD KEY `tblcomment_id_user_foreign` (`ID_User`);

--
-- Indexes for table `tblhotel`
--
ALTER TABLE `tblhotel`
  ADD PRIMARY KEY (`ID_Hotel`),
  ADD KEY `tblhotel_id_area_foreign` (`ID_Area`);

--
-- Indexes for table `tbllike`
--
ALTER TABLE `tbllike`
  ADD PRIMARY KEY (`ID_Like`),
  ADD KEY `tbllike_id_user_foreign` (`ID_User`),
  ADD KEY `tbllike_id_room_foreign` (`ID_Room`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`ID_Review`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ID_Room`),
  ADD KEY `tblroom_id_hotel_foreign` (`ID_Hotel`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID_User`),
  ADD UNIQUE KEY `tbluser_phone_user_unique` (`Phone_User`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID_Admin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblarea`
--
ALTER TABLE `tblarea`
  MODIFY `ID_Area` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbill`
--
ALTER TABLE `tblbill`
  MODIFY `ID_Bill` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomment`
--
ALTER TABLE `tblcomment`
  MODIFY `ID_Comment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblhotel`
--
ALTER TABLE `tblhotel`
  MODIFY `ID_Hotel` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbllike`
--
ALTER TABLE `tbllike`
  MODIFY `ID_Like` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `ID_Review` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ID_Room` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID_User` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbill`
--
ALTER TABLE `tblbill`
  ADD CONSTRAINT `tblbill_id_room_foreign` FOREIGN KEY (`ID_Room`) REFERENCES `tblroom` (`ID_Room`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblbill_id_user_foreign` FOREIGN KEY (`ID_User`) REFERENCES `tbluser` (`ID_User`) ON DELETE CASCADE;

--
-- Constraints for table `tblcomment`
--
ALTER TABLE `tblcomment`
  ADD CONSTRAINT `tblcomment_id_room_foreign` FOREIGN KEY (`ID_Room`) REFERENCES `tblroom` (`ID_Room`) ON DELETE CASCADE,
  ADD CONSTRAINT `tblcomment_id_user_foreign` FOREIGN KEY (`ID_User`) REFERENCES `tbluser` (`ID_User`) ON DELETE CASCADE;

--
-- Constraints for table `tblhotel`
--
ALTER TABLE `tblhotel`
  ADD CONSTRAINT `tblhotel_id_area_foreign` FOREIGN KEY (`ID_Area`) REFERENCES `tblarea` (`ID_Area`) ON DELETE CASCADE;

--
-- Constraints for table `tbllike`
--
ALTER TABLE `tbllike`
  ADD CONSTRAINT `tbllike_id_room_foreign` FOREIGN KEY (`ID_Room`) REFERENCES `tblroom` (`ID_Room`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbllike_id_user_foreign` FOREIGN KEY (`ID_User`) REFERENCES `tbluser` (`ID_User`) ON DELETE CASCADE;

--
-- Constraints for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD CONSTRAINT `tblroom_id_hotel_foreign` FOREIGN KEY (`ID_Hotel`) REFERENCES `tblhotel` (`ID_Hotel`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
