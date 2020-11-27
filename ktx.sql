-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2019 lúc 02:56 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ktx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_pass`, `created_at`, `updated_at`) VALUES
(1, 'Hoang Anh Truong' , '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `area`
--

CREATE TABLE `area` (
  `area_id` int(10) UNSIGNED NOT NULL,
  `area_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_floor` int(11) NOT NULL,
  `num_room` int(11) NOT NULL,
  `num_st` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `area`
--

INSERT INTO `area` (`area_id`, `area_name`, `num_floor`, `num_room`, `num_st`, `created_at`, `updated_at`) VALUES
(1, 'Khu A', 5, 60, 400, NULL, NULL),
(2, 'Khu B', 5, 60, 400, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baocao`
--

CREATE TABLE `baocao` (
  `id_baocao` int(10) NOT NULL,
  `phong` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay` date NOT NULL,
  `chuthich` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf32 COLLATE utf32_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `baocao`
--

INSERT INTO `baocao` (`id_baocao`, `phong`, `hoten`, `noidung`, `hinhanh`, `ngay`, `chuthich`, `status`) VALUES
(2, 'B403', 'Hoàng Anh Trường', 'Phòng B403 bị hỏng vòi sens', 'voi-sen5.jpg', '2019-12-14', 'Cần sửa chửa', 'Đã khắc phục');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `month` date NOT NULL,
  `money_electric` int(11) NOT NULL,
  `money_water` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bill_id`, `room_id`, `month`, `money_electric`, `money_water`, `total`, `status`, `created_at`, `updated_at`) VALUES
(16, 21, '2019-12-01', 75000, 300000, 487500, 'Đã thanh toán', NULL, NULL),
(17, 16, '2019-12-01', 184500, 780000, 1253850, 'Đã thanh toán', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `detail_id` int(10) UNSIGNED NOT NULL,
  `bill_id` int(10) UNSIGNED DEFAULT NULL,
  `firts_electric` int(11) NOT NULL,
  `end_electric` int(11) NOT NULL,
  `num_electric` int(11) NOT NULL,
  `firts_water` int(11) NOT NULL,
  `end_water` int(11) NOT NULL,
  `num_water` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`detail_id`, `bill_id`, `firts_electric`, `end_electric`, `num_electric`, `firts_water`, `end_water`, `num_water`, `created_at`, `updated_at`) VALUES
(16, 16, 0, 50, 50, 0, 60, 60, NULL, NULL),
(17, 17, 0, 123, 123, 0, 156, 156, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flood`
--

CREATE TABLE `flood` (
  `flood_id` int(10) UNSIGNED NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `flood_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_room_flood` int(11) NOT NULL,
  `num_st_flood` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `flood`
--

INSERT INTO `flood` (`flood_id`, `area_id`, `flood_name`, `num_room_flood`, `num_st_flood`, `created_at`, `updated_at`) VALUES
(1, 1, 'A1', 12, 5, NULL, NULL),
(2, 1, 'A2', 12, 84, NULL, NULL),
(3, 2, 'B3', 12, 96, NULL, NULL),
(4, 2, 'B4', 12, 96, NULL, NULL),
(5, 1, 'A3', 12, 96, NULL, NULL),
(6, 1, 'A4', 12, 96, NULL, NULL),
(8, 1, 'A5', 12, 96, NULL, NULL),
(9, 2, 'B5', 12, 96, NULL, NULL),
(10, 2, 'B2', 12, 96, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_04_192241_create_area_table', 1),
(2, '2019_12_04_192247_create_flood_table', 1),
(3, '2019_12_04_192253_create_room_table', 1),
(4, '2019_12_04_192259_create_student_table', 1),
(5, '2019_12_04_192307_create_noti_table', 1),
(6, '2019_12_04_192312_create_price_table', 1),
(7, '2019_12_04_192318_create_report_table', 1),
(8, '2019_12_04_192325_create_bill_table', 1),
(9, '2019_12_04_192331_create_bill_detail_table', 1),
(10, '2019_12_04_192337_create_admin_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noti`
--

CREATE TABLE `noti` (
  `noti_id` int(10) UNSIGNED NOT NULL,
  `noti_date` date NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noti_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noti_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `noti`
--

INSERT INTO `noti` (`noti_id`, `noti_date`, `title`, `noti_content`, `noti_img`, `created_at`, `updated_at`) VALUES
(9, '2019-12-08', 'Lao động chủ nhật xanh tháng 12/2019', 'Thông báo đến các phòng khu B kí túc xá, sáng ngày 15/12 đúng 7h30 tập trung lao động chủ nhật xanh. Những phòng không tham gia sẽ không được đăng kí ở kí túc xá vào học kì sau.', NULL, NULL, NULL),
(10, '2019-12-01', 'Thông báo: Đề phòng và ngăn ngừa kiến ba khoang', 'jnjn', 'lao-chu-nhat-xanh481054.jpg', NULL, NULL),
(11, '2019-12-01', 'Lao động chủ nhật xanh tháng 12/2019', 'Thông báo đến các phòng khu B kí túc xá, sáng ngày 15/12 đúng 7h30 tập trung lao động chủ nhật xanh. Những phòng không tham gia sẽ không được đăng kí ở kí túc xá vào học kì sau.', 'lao-chu-nhat-xanh4897.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `price`
--

CREATE TABLE `price` (
  `price_id` int(10) UNSIGNED NOT NULL,
  `Thời gian` date NOT NULL,
  `price_electric` int(11) NOT NULL,
  `price_water` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `price`
--

INSERT INTO `price` (`price_id`, `Thời gian`, `price_electric`, `price_water`, `created_at`, `updated_at`) VALUES
(1, '2019-10-01', 1500, 5000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `room_id` int(10) UNSIGNED NOT NULL,
  `flood_id` int(10) UNSIGNED NOT NULL,
  `room_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captain_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `captain_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_member` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`room_id`, `flood_id`, `room_name`, `captain_name`, `captain_phone`, `num_member`, `created_at`, `updated_at`) VALUES
(12, 2, 'B203', 'Trần Thị Mỹ Linh', '0356942846', 2, NULL, NULL),
(14, 2, 'B205', 'Tô Thị Minh Ánh', '0326587426', 3, NULL, NULL),
(15, 2, 'B206', 'Nguyễn Thị Lan Anh', '0368649758', 2, NULL, NULL),
(16, 2, 'B207', 'Trần Thị Thúy Hằng', '0369587585', 2, NULL, NULL),
(17, 2, 'B208', 'Nguyễn Tứ Diện', '0369897584', 1, NULL, NULL),
(18, 2, 'B209', 'Nguyễn Tứ Diện', '0369769475', 1, NULL, NULL),
(21, 3, 'B302', 'Trần Thị Thu Hoài', '04515415885', 7, NULL, NULL),
(22, 3, 'B303', 'Hellloo', '48632745', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `st_id` int(10) UNSIGNED NOT NULL,
  `msv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_birthday` date NOT NULL,
  `st_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `st_bike` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `st_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`st_id`, `msv`, `email`, `st_pass`, `st_name`, `st_class`, `st_school`, `st_birthday`, `st_phone`, `room_id`, `st_bike`, `st_address`, `created_at`, `updated_at`) VALUES
(39, 'tdquang.18it3@sict.udn.vn', 'tdquang.18it3@sict.udn.vn', '1234545', 'Nguyen Van Hoang', '445', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 21, '2698-245644', '23', NULL, NULL),
(40, 'tdquang.18it3@sict.udn.vn', 'tdquang.18it3@sict.udn.vn', '1234545', 'Nguyen Van Hoang', '445', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 21, '2698-245644', '23', NULL, NULL),
(41, '18it12', 'tdquang.18it3@sict.udn.vn', '1234545', 'Nguyen Van Hoa', '445', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 21, '2698-245644', '23', NULL, NULL),
(44, '18it12333', 'tdquang.18it3@sict.udn.vn', '1234545', 'Nguyen Van Hoanggg', '445', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 21, '2698-245644', '23', NULL, NULL),
(45, '18it12333', 'tdquang.18it3@sict.udn.vn', '1234545', 'Nguyen Van Hoanggg', '445', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 21, '2698-245644', '23', NULL, NULL),
(46, '18it12333ccc', 'tdquang.18it3@sict.udn.vn', '1234545', 'Nguyen Van Hoangggss', '445', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 21, '2698-245644', '23ss', NULL, NULL),
(51, '18IT121', NULL, '1245', 'Nguyen Van Hoang', '445', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 21, '2698-245644', '22 ĐN', NULL, NULL),
(52, '17it3', NULL, '1234545', 'Nguyen Van An', '17IT2', 'Khoa CNTT va TT', '2019-12-01', '0367417346', 14, '2698-2456', 'Quang BÌnh', NULL, NULL),
(53, '19it111', NULL, '6789', 'Ha Huy Hoang', '19it4', 'Khoa CNTT va TT', '2000-12-07', '0315954959', 14, '2698-2456', 'TP Da Nang', NULL, NULL),
(56, 'fsvfssfvfs', NULL, 'sfvfssfvs', 'sfvsf', 'sfvf', 'sfvfs', '2019-12-01', 'sfvfs', 14, 'sdvs', 'sfvfsvsfv', NULL, NULL),
(57, '18IT1200', NULL, 'dfvdf', 'Nguyen Van Hai', 'fvdfv', 'sfvdfv', '2019-12-08', 'dfvdfv', 12, 'dfvfd', 'vdfvfd', NULL, NULL),
(58, '18IT120000', 'tdquang.18it3@sict.udn.vn', '123456', 'AAAAAAAAAAAAAAAAAA', 'AA', 'AA', '2019-11-29', '1687417346', 15, '2698-245644', 'HELOO', NULL, NULL),
(59, '18IT121', NULL, '1234545', 'Nguyen Van Hoang', '44', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 15, 'sdvsdvdsvdsv', '23', NULL, NULL),
(62, 'dfv', NULL, 'dfvdf', 'dfv', 'dfv', 'dfv', '2019-11-28', 'dfvf', 17, 'sfv', 'dfvfd', NULL, NULL),
(64, 'bn m', NULL, 'fghnhnf', 'fnhgn', 'nhg', 'hfnh', '2019-12-07', 'fhnfhnfhnf', 18, 'bdgb', 'dgbdb', NULL, NULL),
(65, 'bn m', NULL, 'sfvfsv', 'fnhgn', 'nhg', 'hfnh', '2019-12-07', 'fhnfhnfhnf', 12, 'bdgb', 'dgbdb', NULL, NULL),
(66, '18IT168', NULL, '123456', 'Trần Dương Quang', '18IT3', 'Khoa CNTT va TT', '1999-01-23', '0387417346', 16, '77S2-2634', 'Ân Tường Tây, Hoài Ân, Bình Định.', NULL, NULL),
(67, '18IT187', NULL, '123456', 'Hoành Anh Trường', '18IT3', 'Khoa CNTT va TT', '2000-04-10', '0369301451', 16, '26H1-2456', 'TP Quảng Bình', NULL, NULL),
(68, '18it102', NULL, '1234545', 'Hellloo', '18it1', 'Khoa CNTT va TT', '2019-12-01', '734578324', 22, '2754347', 'i;o0o0drgdfgs', NULL, NULL),
(69, '18IT121', NULL, '1234545', 'Nguyen Van Hoang', '18IT3', 'Khoa CNTT va TT', '2019-12-01', '1687417346', 22, '2698-2456', 'ĐN', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Chỉ mục cho bảng `baocao`
--
ALTER TABLE `baocao`
  ADD PRIMARY KEY (`id_baocao`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `bill_room_id_foreign` (`room_id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `bill_detail_bill_id_foreign` (`bill_id`);

--
-- Chỉ mục cho bảng `flood`
--
ALTER TABLE `flood`
  ADD PRIMARY KEY (`flood_id`),
  ADD KEY `flood_area_id_foreign` (`area_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `noti`
--
ALTER TABLE `noti`
  ADD PRIMARY KEY (`noti_id`);

--
-- Chỉ mục cho bảng `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_flood_id_foreign` (`flood_id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `student_room_id_foreign` (`room_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `baocao`
--
ALTER TABLE `baocao`
  MODIFY `id_baocao` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `flood`
--
ALTER TABLE `flood`
  MODIFY `flood_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `noti`
--
ALTER TABLE `noti`
  MODIFY `noti_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `price`
--
ALTER TABLE `price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `st_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `flood`
--
ALTER TABLE `flood`
  ADD CONSTRAINT `flood_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_flood_id_foreign` FOREIGN KEY (`flood_id`) REFERENCES `flood` (`flood_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
