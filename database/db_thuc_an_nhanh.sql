-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th3 17, 2019 lúc 11:57 PM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_thuc_an_nhanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_hoa_don`
--

DROP TABLE IF EXISTS `ct_hoa_don`;
CREATE TABLE IF NOT EXISTS `ct_hoa_don` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_sohd` int(11) NOT NULL,
  `ma_san_pham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ct_hoa_don_ma_san_pham_foreign` (`ma_san_pham`),
  KEY `ct_hoa_don_id_sohd_foreign` (`id_sohd`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_hoa_don`
--

INSERT INTO `ct_hoa_don` (`id`, `id_sohd`, `ma_san_pham`, `so_luong`, `don_gia`, `created_at`, `updated_at`) VALUES
(1, 1, 23, 1, 35000, '2019-01-04 19:01:52', '2019-01-04 19:01:52'),
(2, 1, 24, 1, 37000, '2019-01-04 19:01:52', '2019-01-04 19:01:52'),
(3, 1, 26, 1, 37000, '2019-01-04 19:01:52', '2019-01-04 19:01:52'),
(4, 2, 23, 1, 35000, '2019-01-04 19:01:14', '2019-01-04 19:01:14'),
(5, 2, 22, 1, 37000, '2019-01-04 19:01:14', '2019-01-04 19:01:14'),
(6, 2, 25, 1, 35000, '2019-01-04 19:01:14', '2019-01-04 19:01:14'),
(7, 3, 23, 1, 35000, '2019-01-21 03:01:35', '2019-01-21 03:01:35'),
(8, 3, 22, 2, 37000, '2019-01-21 03:01:35', '2019-01-21 03:01:35'),
(9, 3, 24, 3, 37000, '2019-01-21 03:01:35', '2019-01-21 03:01:35'),
(10, 4, 8, 1, 22000, '2019-01-21 03:01:21', '2019-01-21 03:01:21'),
(11, 4, 3, 2, 12000, '2019-01-21 03:01:21', '2019-01-21 03:01:21'),
(12, 4, 6, 2, 14000, '2019-01-21 03:01:21', '2019-01-21 03:01:21'),
(13, 5, 26, 1, 37000, '2019-01-21 03:01:44', '2019-01-21 03:01:44'),
(14, 5, 25, 1, 35000, '2019-01-21 03:01:44', '2019-01-21 03:01:44'),
(15, 6, 38, 1, 27000, '2019-01-21 03:01:51', '2019-01-21 03:01:51'),
(16, 7, 25, 2, 35000, '2019-01-21 04:01:24', '2019-01-21 04:01:24'),
(17, 7, 33, 1, 37000, '2019-01-21 04:01:24', '2019-01-21 04:01:24'),
(18, 7, 32, 1, 30000, '2019-01-21 04:01:24', '2019-01-21 04:01:24'),
(19, 8, 47, 3, 25000, '2019-01-21 04:01:09', '2019-01-21 04:01:09'),
(20, 8, 43, 1, 29000, '2019-01-21 04:01:09', '2019-01-21 04:01:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cua_hang`
--

DROP TABLE IF EXISTS `cua_hang`;
CREATE TABLE IF NOT EXISTS `cua_hang` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_cua_hang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_nhung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cua_hang`
--

INSERT INTO `cua_hang` (`id`, `ten_cua_hang`, `dia_chi`, `dien_thoai`, `email`, `ma_nhung`, `created_at`, `updated_at`) VALUES
(1, 'Cửa hàng Nguyễn Chí Thanh', '137E Nguyễn Chí Thanh, P 9, Q 5, HCM', '(028)38.351.056', 'tuvan@csc.hcmus.edu.vn', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6808276546576!2d106.66449981480062!3d10.759063192333318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ee53a91b957%3A0x394068fd61e4fbeb!2zMTM3RSBOZ3V54buFbiBDaMOtIFRoYW5oLCBQaMaw4budbmcgOSwgUXXhuq1uIDUsIEjhu5MgQ2jDrSBNaW5o!5e0!3m2!1sen!2s!4v1546777475776\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-01-06 05:25:27', '2019-01-06 05:25:27'),
(2, 'Cửa hàng Nguyễn Văn Cừ', '227 Nguyễn Văn Cừ, Quận 5, Thành phố Hồ Chí Minh', '(028)38.351.056', 'duonghoang18091977@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15678.523092775275!2d106.6821717!3d10.762913!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x43900f1d4539a3d!2sHo+Chi+Minh+City+University+of+Science!5e0!3m2!1sen!2s!4v1546778985153\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-01-06 05:49:55', '2019-01-06 05:49:55'),
(3, 'Cửa hàng Hà Nội', 'Tầng 5, Nhà A, Trường Cán Bộ Quản Lý Văn Hóa Thể Thao Và Du Lịch, Hồ Tùng Mậu, Mai Dịch, Cầu Giấy, Hà Nội.', '(028)38.351.056', 'duonghoang18091977@gmail.com', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14895.452143019185!2d105.7740434!3d21.0381656!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa8834169e964c217!2zVFLGr-G7nE5HIEPDgU4gQuG7mCBRVeG6ok4gTMOdIFbEgk4gSE_DgSwgVEjDiiBUSEFPIFbDgCBEVSBM4buKQ0g!5e0!3m2!1sen!2s!4v1546779096172\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-01-06 05:51:45', '2019-01-06 05:51:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_nhan_tin_nhan`
--

DROP TABLE IF EXISTS `dang_ky_nhan_tin_nhan`;
CREATE TABLE IF NOT EXISTS `dang_ky_nhan_tin_nhan` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL,
  `xoa` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_nhan_tin_nhan`
--

INSERT INTO `dang_ky_nhan_tin_nhan` (`id`, `email`, `trang_thai`, `xoa`, `created_at`, `updated_at`) VALUES
(1, 'hoang@gmail.com', 0, 0, '2019-01-21 11:01:04', '2019-01-21 11:01:04'),
(2, 'duonghoang18091977@gmail.com', 0, 0, '2019-03-16 00:03:45', '2019-03-16 00:03:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dich_vu_tai_cua_hang`
--

DROP TABLE IF EXISTS `dich_vu_tai_cua_hang`;
CREATE TABLE IF NOT EXISTS `dich_vu_tai_cua_hang` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_dich_vu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

DROP TABLE IF EXISTS `hoa_don`;
CREATE TABLE IF NOT EXISTS `hoa_don` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ngay_hoa_don` date NOT NULL,
  `id_ma_kh` int(11) NOT NULL,
  `tong_tien` double NOT NULL,
  `dat_coc` double NOT NULL,
  `con_lai` double NOT NULL,
  `tinh_trang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hoa_don_id_ma_kh_foreign` (`id_ma_kh`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ngay_hoa_don`, `id_ma_kh`, `tong_tien`, `dat_coc`, `con_lai`, `tinh_trang`, `created_at`, `updated_at`) VALUES
(1, '2018-01-05', 1, 131890, 0, 131890, 1, '2019-01-04 19:01:52', '2019-01-13 03:54:02'),
(2, '2018-02-05', 1, 129470, 0, 129470, 0, '2019-01-04 19:01:14', '2019-01-04 19:01:14'),
(3, '2018-03-21', 3, 266200, 0, 266200, 0, '2019-01-21 03:01:35', '2019-01-21 03:01:35'),
(4, '2018-04-21', 5, 89540, 0, 89540, 0, '2019-01-21 03:01:21', '2019-01-21 03:01:21'),
(7, '2018-06-21', 7, 165770, 0, 165770, 0, '2019-01-21 04:01:24', '2019-01-21 04:01:24'),
(6, '2018-05-21', 7, 32670, 0, 32670, 0, '2019-01-21 03:01:51', '2019-01-21 03:01:51'),
(8, '2018-07-21', 8, 125840, 0, 125840, 0, '2019-01-21 04:01:09', '2019-01-21 04:01:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE IF NOT EXISTS `khach_hang` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ho_kh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_kh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thanh_vien` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ho_kh`, `ten_kh`, `dia_chi`, `dien_thoai`, `email`, `thanh_vien`, `created_at`, `updated_at`) VALUES
(1, 'Duong Ngoc', 'Hoang', '6 duong 27, P. Son Ky, Q. Tan Phu, HCM', '091233333', 'duonghoang18091977@gmail.com', 0, '2019-01-04 19:01:51', '2019-01-04 19:01:51'),
(3, 'Dương Minh', 'Huy', '357E Nguyễn Chí Thanh, P. 9, Q.5 HCM', '0123457896', 'dnhoang77@gmail.com', 0, '2019-01-21 03:01:35', '2019-01-21 03:01:35'),
(5, 'Dương Thùy', 'Hân', '6, duong 27, P. Son Ky, Q. Tan Phu, HCM', '0123456789', 'dnhoang77@gmail.com', 0, '2019-01-21 03:01:44', '2019-01-21 03:01:44'),
(7, 'Đỗ Thị Thu', 'Hương', '6, duong 27, P. Son Ky, Q. Tan Phu, HC', '0123456789', 'dnhoang77@gmail.com', 0, '2019-01-21 04:01:24', '2019-01-21 04:01:24'),
(8, 'Khuất Thùy', 'Phương', '137E Nguyễn Chí Thanh, P.9, Q.5 HCM', '0123456789', 'duonghoang18091977@gmail.com', 0, '2019-01-21 04:01:09', '2019-01-21 04:01:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

DROP TABLE IF EXISTS `lien_he`;
CREATE TABLE IF NOT EXISTS `lien_he` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieu_de` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_pham`
--

DROP TABLE IF EXISTS `loai_san_pham`;
CREATE TABLE IF NOT EXISTS `loai_san_pham` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`id`, `ten_loai`, `hinh`, `ghi_chu`, `trang_thai`, `created_at`, `updated_at`) VALUES
(6, 'Trà sữa', 'tra_sua.jpg', 'Trà sữa', 1, '2018-12-25 01:12:53', '2018-12-25 01:12:53'),
(7, 'Trà truyền thống', 'tra_tuyen_thong.jpg', 'Trà truyền thống', 1, '2018-12-25 01:13:53', '2018-12-25 01:13:53'),
(8, 'Trà nguyên vị', 'tra_nguyen_vi.jpg', 'Trà nguyên vị', 1, '2018-12-25 01:14:07', '2018-12-25 01:14:07'),
(9, 'Trà trái cây', 'tra_trai_cay.jpg', 'Trà trái cây', 1, '2018-12-25 01:14:19', '2018-12-25 01:14:19'),
(10, 'Trà đặc biệt', 'tra_dac_biet.png', 'Trà đặc biệt', 1, '2018-12-25 01:14:32', '2018-12-25 01:14:32'),
(11, 'Nước ép', 'nuoc_ep.jpg', 'Nước ép', 1, '2018-12-25 01:14:43', '2018-12-25 01:14:43'),
(12, 'Cà phê', 'ca_phe.jpg', 'Cà phê', 1, '2018-12-25 01:14:52', '2018-12-25 01:14:52'),
(13, 'TOPPING', 'TOPPING.jpg', 'TOPPING', 1, '2018-12-25 01:15:17', '2018-12-25 01:15:17'),
(14, 'Đồ chiên', '10-340x340.jpg', 'Đồ chiên', 1, '2018-12-26 04:22:41', '2018-12-26 04:22:41'),
(15, 'Ngon Ngon Lẩu', '10-340x340.jpg', 'Ngon Ngon Lẩu', 1, '2018-12-26 04:22:54', '2018-12-26 04:22:54'),
(16, 'Gà', '10-340x340.jpg', 'Gà', 1, '2018-12-26 04:25:57', '2018-12-26 04:25:57'),
(17, 'Sushi', '10-340x340.jpg', 'Sushi', 1, '2018-12-26 04:26:30', '2018-12-26 04:26:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `css` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`, `parent`, `css`) VALUES
(1, 'Sản phẩm', '#', 0, 'fa fa-th'),
(2, 'DS sản phẩm', 'admin/san-pham/danh-sach', 1, 'fa fa-circle-o'),
(3, 'Thêm sản phẩm', 'admin/san-pham/them', 1, 'fa fa-circle-o'),
(4, 'Sản phẩm giảm giá', '#', 0, 'fa fa-th'),
(5, 'DS sản phẩm giảm giá', 'admin/san-pham-giam-gia/danh-sach', 4, 'fa fa-circle-o'),
(6, 'Thêm sản phẩm', 'admin/san-pham-giam-gia/them', 4, 'fa fa-circle-o'),
(7, 'Tin tức', '#', 0, 'fa fa-th'),
(8, 'DS tin tức', 'admin/tin-tuc/danh-sach', 7, 'fa fa-circle-o'),
(9, 'Thêm Tin tức        ', 'admin/tin-tuc/them', 7, 'fa fa-circle-o'),
(10, 'Ý kiến khách hàng', '#', 0, 'fa fa-circle-o text-aqua'),
(11, 'Cập nhật sản phẩm', 'admin/san-pham/edit', 1, 'fa fa-edit'),
(12, 'Cập nhật sản phẩm giảm giá', 'admin/san-pham-giam-gia/edit', 4, 'fa fa-circle-o'),
(13, 'Cập nhật tin tức', 'admin/tin-tuc/edit', 7, 'fa fa-circle-o'),
(14, 'Cập nhật ý kiến khách hàng', 'admin/y-kien-khach-hang/edit', 10, 'fa fa-circle-o'),
(15, 'Đơn đặt hàng', '#', 0, 'fa fa-circle-o'),
(16, 'Cập nhật đơn đặt hàng', 'admin/don-dat-hang/edit', 15, 'fa fa-circle-o'),
(17, 'Thống kê', '#', 0, 'fa fa-th'),
(18, 'Thống kê chung', 'admin/thong-ke/thong-ke-chung', 17, 'fa fa-circle-o'),
(19, 'Doanh thu loại sản phẩm', 'admin/don-hang/doanh-thu-loai-san-pham', 17, 'fa fa-circle-o'),
(20, 'Users', '#', 0, 'fa fa-laptop'),
(21, 'Danh sách users', 'admin/users/list', 20, 'fa fa-circle-o'),
(22, 'Thêm user', 'admin/users/add-user', 20, 'fa fa-circle-o'),
(24, 'Danh sách đơn hàng', 'admin/don-dat-hang/danh-sach', 15, 'fa fa-circle-o'),
(25, 'Xóa sản phẩm', 'admin/san-pham/delete', 1, 'fa fa-remove'),
(23, 'Danh sách ý kiến', 'admin/y-kien-khach-hang/danh-sach', 10, 'fa fa-circle-o'),
(26, 'Xóa đơn hàng', 'admin/don-dat-hang/delete', 15, 'fa fa-remove'),
(27, 'Cập nhật user', 'admin/users/edit', 20, 'fa fa-edit'),
(28, 'Xóa user', 'admin/users/delete', 20, 'fa fa-remove'),
(29, 'Xóa Tin tức', 'admin/tin-tuc/delete', 7, 'fa fa-remove');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2018_12_11_063933_create_loai_san_pham_table', 1),
(13, '2018_12_11_064455_create_san_pham_table', 1),
(14, '2018_12_11_070044_create_san_pham_giam_gia_table', 1),
(15, '2018_12_11_071618_create_thong_tin_cong_ty_table', 1),
(16, '2018_12_11_071645_create_lien_he_table', 1),
(17, '2018_12_11_071706_create_su_kien_table', 1),
(18, '2018_12_11_071743_create_dich_vu_tai_cua_hang_table', 1),
(19, '2018_12_27_130647_create_slider_table', 2),
(20, '2018_12_29_112732_create_tin_tuc_table', 3),
(24, '2019_01_03_004430_create_khach_hang_table', 4),
(25, '2019_01_03_004508_create_hoa_don_table', 4),
(26, '2019_01_03_004524_create_ct_hoa_don_table', 4),
(27, '2019_01_06_112527_create_cua_hang_table', 5),
(29, '2019_01_11_115720_create_y_kien_khach_hang_table', 6),
(30, '2019_01_21_182124_create_dang_ky_nhan_tin_nhan_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE IF NOT EXISTS `san_pham` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_san_pham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_san_pham` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_size_s` double NOT NULL,
  `gia_size_m` double NOT NULL,
  `giam_gia` double NOT NULL,
  `mo_ta_tom_tat` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chi_tiet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `san_pham_an_cung` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` tinyint(11) NOT NULL,
  `like` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `xoa` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `san_pham_ma_loai_foreign` (`ma_loai`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten_san_pham`, `ten_url`, `hinh_san_pham`, `gia_size_s`, `gia_size_m`, `giam_gia`, `mo_ta_tom_tat`, `chi_tiet`, `trang_thai`, `ma_loai`, `san_pham_an_cung`, `hot`, `like`, `created_at`, `updated_at`, `xoa`) VALUES
(2, 'Bắp Hấp FM', 'bap-hap-fm', 'Family-Mart-Mar-05-06-2.jpg', 6000, 0, 0, 'Bắp được cải thiện bằng cách làm chín bằng hấp rồi mới cấp đông. Vì vậy vẫn được giữ nguyên vị ngọt và độ căng mọng của từng hạt bắp.', '<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_chi_tiet_san_pham/images/Family-Mart-Mar-05-06-2.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>Bắp được cải thiện bằng c&aacute;ch l&agrave;m ch&iacute;n bằng hấp rồi mới cấp đ&ocirc;ng. V&igrave; vậy vẫn được giữ nguy&ecirc;n vị ngọt v&agrave; độ căng mọng của từng hạt bắp.</p>', 1, 13, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(3, 'Cá Viên Cốm Xanh Mayo', 'ca-vien-com-xanh-mayo', 'familymart-Oct-W2-2.jpg', 12000, 0, 9000, 'Cốm xanh được chiên giòn bên ngoài, tạo màu xanh bắt mắt, mới lạ hơn. Bên trong là surimi dai dai bọc xốt mayonnaise đậm vị, beo béo, chua nhẹ sẽ tạo nên sự hấp dẫn khi ăn', '<p>Cốm xanh được chi&ecirc;n gi&ograve;n b&ecirc;n ngo&agrave;i, tạo m&agrave;u xanh bắt mắt, mới lạ hơn. B&ecirc;n trong l&agrave; surimi dai dai bọc xốt mayonnaise đậm vị, beo b&eacute;o, chua nhẹ sẽ tạo n&ecirc;n sự hấp dẫn khi ăn</p>', 0, 14, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(4, 'Cá Viên Tôm', 'ca-vien-tom', 'FamilyMart-Sep-W2-4-768x768.gif', 12000, 0, 0, 'Cá Viên Tôm', '<h1>C&aacute; Vi&ecirc;n T&ocirc;m</h1>', 0, 14, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(5, 'Cánh Gà Chiên', 'canh-ga-chien', '1CanhGaChien.jpg', 25000, 0, 20000, 'Cánh gà được ướp gia vị, tẩm bột, chiên vàng giòn, khi ăn sẽ cảm nhận được vị mềm ngọt của thịt gà và giòn rụm của lớp bột.', '<p>C&aacute;nh g&agrave; được ướp gia vị, tẩm bột, chi&ecirc;n v&agrave;ng gi&ograve;n, khi ăn sẽ cảm nhận được vị mềm ngọt của thịt g&agrave; v&agrave; gi&ograve;n rụm của lớp bột.</p>', 1, 14, '0', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(6, 'Pizza Phô Mai Chiên', 'pizza-pho-mai-chien', '1Piza.jpg', 14000, 0, 10000, 'Vỏ bánh được chiên xốp giòn bên ngoài và xốt cà chua cùng phô mai Mozzarella, lá Oregano bên trong sẽ tạo nên vị chua nhẹ, một chút béo cùng hương vị đặc trưng của chiếc pizza truyền thống.', '<p>Vỏ b&aacute;nh được chi&ecirc;n xốp gi&ograve;n b&ecirc;n ngo&agrave;i v&agrave; xốt c&agrave; chua c&ugrave;ng ph&ocirc; mai Mozzarella, l&aacute; Oregano b&ecirc;n trong sẽ tạo n&ecirc;n vị chua nhẹ, một ch&uacute;t b&eacute;o c&ugrave;ng hương vị đặc trưng của chiếc pizza truyền thống.</p>', 0, 14, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(7, 'Set Khoai Tây Nghiền', 'set-khoai-tay-nghien', 'familymart-Sep-W3-2.png', 8000, 0, 0, 'Khoai tây được nghiền nhỏ giữ trọn vị ngọt của khoai tây, khi chiên lên sẽ tạo độ giòn giòn bên ngoài, kết hợp cùng các gia vị tạo nên vị ngon đặc trưng của sản phẩm.', '<p>Khoai t&acirc;y được nghiền nhỏ giữ trọn vị ngọt của khoai t&acirc;y, khi chi&ecirc;n l&ecirc;n sẽ tạo độ gi&ograve;n gi&ograve;n b&ecirc;n ngo&agrave;i, kết hợp c&ugrave;ng c&aacute;c gia vị tạo n&ecirc;n vị ngon đặc trưng của sản phẩm.</p>', 1, 14, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(8, 'Takoyaki Set', 'takoyaki-set', 'Family-Mart-Oct-02-03-2.jpg', 22000, 0, 20000, 'Takoyaki là món ăn quen thuộc với giới trẻ. Những viên bạch tuộc với lớp bột vàng bên ngoài, bên trong là bạch tuộc giòn dai, được toping bên trên là lớp sốt tonkatsu với vị mằn mặn cùng vị mayo với béo nhẹ và cá bào mang đến một hương vị hấp dẫn khó quên.', '<p>Takoyaki l&agrave; m&oacute;n ăn quen thuộc với giới trẻ. Những vi&ecirc;n bạch tuộc với lớp bột v&agrave;ng b&ecirc;n ngo&agrave;i, b&ecirc;n trong l&agrave; bạch tuộc gi&ograve;n dai, được toping b&ecirc;n tr&ecirc;n l&agrave; lớp sốt tonkatsu với vị mằn mặn c&ugrave;ng vị mayo với b&eacute;o nhẹ v&agrave; c&aacute; b&agrave;o mang đến một hương vị hấp dẫn kh&oacute; qu&ecirc;n.</p>', 0, 14, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(9, 'Bò Viên', 'bo-vien', 'Bò-Viên-TVS.jpg', 6000, 0, 0, 'Với thành phần thịt bò nhiều hơn, sẽ mang đến vị thơm ngon, đậm đà dai dai giòn giòn.', '<p>Với th&agrave;nh phần thịt b&ograve; nhiều hơn, sẽ mang đến vị thơm ngon, đậm đ&agrave; dai dai gi&ograve;n gi&ograve;n.</p>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(10, 'Chả Cá Bọc Bắp Non', 'cha-ca-boc-bap-non', 'FM-180413-chacabapnon.jpg', 5000, 0, 0, 'Chả Cá Bọc Bắp Non', '<h1>Chả C&aacute; Bọc Bắp Non</h1>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(11, 'Chả Cá Bọc Trứng Cút', 'cha-ca-boc-trung-cut', 'FM-180508-chacaboctrungcut-s.jpg', 6000, 0, 0, 'Chả Cá Bọc Trứng Cút', '<h1>Chả C&aacute; Bọc Trứng C&uacute;t</h1>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(12, 'Chả Tôm', 'cha-tom', 'FamilyMart-July-W3-2.png', 6000, 0, 0, 'Chả Tôm', '<h1>Chả T&ocirc;m</h1>', 0, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(13, 'Đậu Hũ Bọc Hải Sản', 'dau-hu-boc-hai-san', 'pimgpsh_fullsize_distr1.png', 5000, 0, 0, 'Surimi được phối trộn với rau củ (đậu cô ve, bắp cải, cà rốt) cùng với hải sản là tôm và mực sẽ tạo nên màu sắc và vị ngọt bên trong của sản phẩm. Bên ngoài là vỏ đậu hũ chiên tạo cảm giác dai khi ăn.', '<p>Surimi được phối trộn với rau củ (đậu c&ocirc; ve, bắp cải, c&agrave; rốt) c&ugrave;ng với hải sản l&agrave; t&ocirc;m v&agrave; mực sẽ tạo n&ecirc;n m&agrave;u sắc v&agrave; vị ngọt b&ecirc;n trong của sản phẩm. B&ecirc;n ngo&agrave;i l&agrave; vỏ đậu hũ chi&ecirc;n tạo cảm gi&aacute;c dai khi ăn.</p>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(14, 'Khoai Tây Surimi', 'khoai-tay-surimi', 'Khoai-Tay-Surimi.jpg', 6000, 0, 0, 'Khoai tây mềm ngọt được bọc bên trong, bên ngoài là lớp surimi dai giòn. Khi ăn sẽ ngấm gia vị của nước lẩu, tạo hương vị đậm đà cho sản phẩm.', '<p>Khoai t&acirc;y mềm ngọt được bọc b&ecirc;n trong, b&ecirc;n ngo&agrave;i l&agrave; lớp surimi dai gi&ograve;n. Khi ăn sẽ ngấm gia vị của nước lẩu, tạo hương vị đậm đ&agrave; cho sản phẩm.</p>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(15, 'Mực Viên', 'muc-vien', 'Family-Mart-Nov-03-01.jpg', 8000, 0, 7000, 'Là sự kết hợp của thịt cá đổng, đầu mực (30%), bột lòng trắng trứng,đậu hũ tươi và rau (hành tây) tạo cảm giác dai giòn khi ăn.', '<p>L&agrave; sự kết hợp của thịt c&aacute; đổng, đầu mực (30%), bột l&ograve;ng trắng trứng,đậu hũ tươi v&agrave; rau (h&agrave;nh t&acirc;y) tạo cảm gi&aacute;c dai gi&ograve;n khi ăn.</p>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(16, 'Thanh Chả Heo', 'thanh-cha-heo', '6.jpg', 9000, 0, 0, 'Thành phần thịt heo được xay thô, cùng nấm mèo và các gia vị giúp cho sản phẩm khi ăn cảm nhận được vị mềm ngọt của thịt, dai giòn nhẹ của surimi và nấm mèo. Kết hợp chung với súp lẩu chua cay sẽ tạo nên hương vị đậm đà, hấp dẫn hơn.', '<p>Th&agrave;nh phần thịt heo được xay th&ocirc;, c&ugrave;ng nấm m&egrave;o v&agrave; c&aacute;c gia vị gi&uacute;p cho sản phẩm khi ăn cảm nhận được vị mềm ngọt của thịt, dai gi&ograve;n nhẹ của surimi v&agrave; nấm m&egrave;o. Kết hợp chung với s&uacute;p lẩu chua cay sẽ tạo n&ecirc;n hương vị đậm đ&agrave;, hấp dẫn hơn.</p>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(17, 'Viên Măng Rau Củ', 'vien-mang-rau-cu', 'FamilyMart-May-W3-4-2.jpg', 5000, 0, 0, 'Là sự kết hợp của măng – thực phẩm quen thuộc và ưa thích của người Việt Nam, cùng với surimi, ớt sừng đỏ và các gia vị sẽ tạo cảm giác vừa mới lạ, lại quen thuộc cho khách hàng.', '<p>L&agrave; sự kết hợp của măng &ndash; thực phẩm quen thuộc v&agrave; ưa th&iacute;ch của người Việt Nam, c&ugrave;ng với surimi, ớt sừng đỏ v&agrave; c&aacute;c gia vị sẽ tạo cảm gi&aacute;c vừa mới lạ, lại quen thuộc cho kh&aacute;ch h&agrave;ng.</p>', 0, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(18, 'Viên Mực Rau Củ', 'vien-muc-rau-cu', 'Family-Mart-Mar-04-02.jpg', 6000, 0, 0, 'Là sự kết hợp của râu mực/bạch tuộc (8%),surimi, và rau (cà rốt, hành boa rô, đâu que) tạo nên cảm giác dai giòn khi ăn.', '<p>L&agrave; sự kết hợp của r&acirc;u mực/bạch tuộc (8%),surimi, v&agrave; rau (c&agrave; rốt, h&agrave;nh boa r&ocirc;, đ&acirc;u que) tạo n&ecirc;n cảm gi&aacute;c dai gi&ograve;n khi ăn.</p>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(19, 'Xúc Xích HotPot', 'xuc-xich-hotpot', '22.jpg', 10000, 0, 0, 'Xúc xích thơm mùi xông khói, với thành phần là thịt heo và thịt gà nên khi ăn sẽ cảm nhận được hương vị thịt đậm đà và không kém phần độc đáo. Sử dụng kết hợp với nước súp lẩu chua chua cay cay sẽ kích thích vị giác và làm cho sản phẩm càng thêm hấp dẫn hơn.', '<p>X&uacute;c x&iacute;ch thơm m&ugrave;i x&ocirc;ng kh&oacute;i, với th&agrave;nh phần l&agrave; thịt heo v&agrave; thịt g&agrave; n&ecirc;n khi ăn sẽ cảm nhận được hương vị thịt đậm đ&agrave; v&agrave; kh&ocirc;ng k&eacute;m phần độc đ&aacute;o. Sử dụng kết hợp với nước s&uacute;p lẩu chua chua cay cay sẽ k&iacute;ch th&iacute;ch vị gi&aacute;c v&agrave; l&agrave;m cho sản phẩm c&agrave;ng th&ecirc;m hấp dẫn hơn.</p>', 1, 17, NULL, 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(23, 'Trà Sữa Táo Xanh', 'tra_sua_tao_xanh', 'tra_sua_tao_xanh.jpg', 35000, 40000, 38000, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;ch l&agrave;m tr&agrave; sữa t&aacute;o xanh</strong>&nbsp;ngon m&aacute;t giải nhiệt ng&agrave;y h&egrave; dưới đ&acirc;y của giadinh.blog với hương t&aacute;o thơm m&aacute;t, sắc xanh nhạt dịu d&agrave;ng hẳn sẽ khiến mọi người cảm thấy m&aacute;t lạnh ngay từ c&aacute;i nh&igrave;n đầu ti&ecirc;n.</p>\r\n\r\n<p>Hương vị của m&oacute;n tr&agrave; sữa t&aacute;o xanh cũng rất tuyệt vời với vị beo b&eacute;o của tr&agrave; sữa, vị ngọt ng&agrave;o của t&aacute;o xanh, ch&uacute;t the the của l&aacute; bạc h&agrave;. C&ugrave;ng tham khảo c&aacute;ch l&agrave;m tr&agrave; sữa t&aacute;o xanh dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<h2>Chuẩn bị nguy&ecirc;n liệu</h2>\r\n\r\n<ul>\r\n	<li>100ml sữa tươi</li>\r\n	<li>1 g&oacute;i tr&agrave; t&uacute;i lọc</li>\r\n	<li>1 quả t&aacute;o xanh</li>\r\n	<li>5 th&igrave;a c&agrave; ph&ecirc; đường</li>\r\n	<li>Đ&aacute; vi&ecirc;n</li>\r\n	<li>3 l&aacute;t chanh tươi</li>\r\n	<li>3 L&aacute; bạc h&agrave;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_chi_tiet_san_pham/images/cach-lam-tra-sua-tao-xanh-ngon-mat-giai-nhiet-ngay-he-154048.jpg\" style=\"height:423px; width:450px\" /></p>\r\n\r\n<h2>Hướng dẫn l&agrave;m tr&agrave; sữa t&aacute;o xanh</h2>\r\n\r\n<ol>\r\n	<li>Sữa tươi đem đun s&ocirc;i, cho t&uacute;i tr&agrave; v&agrave;o ng&acirc;m trong sữa khoảng 4 ph&uacute;t rồi lấy ra.</li>\r\n	<li>&Eacute;p t&aacute;o xanh lấy nước, nhỏ v&agrave;i giọt chanh để nước t&aacute;o kh&ocirc;ng bị biến m&agrave;u.</li>\r\n	<li>Cho hỗn hợp tr&agrave; sữa, đường v&agrave; đ&aacute; vi&ecirc;n v&agrave;o b&igrave;nh lắc, lắc đến khi nổi bọt mịn, rồi cho v&agrave;o chiếc ly cao.</li>\r\n	<li>R&oacute;t nước t&aacute;o v&agrave;o ly tr&agrave;, khuấy đều.</li>\r\n	<li>Trang tr&iacute; l&aacute; bạc h&agrave; v&agrave; l&aacute;t chanh l&ecirc;n cho đẹp mắt.</li>\r\n</ol>', 1, 6, '2,65,66,67', 0, 1, '2018-12-26 01:33:47', '2019-01-10 00:43:16', 0),
(22, 'Trà Sữa Trân Châu Đường Đen', 'tra-sua-tran-chau-duong-den', 'tra_sua_duong_den_1.jpg', 37000, 42000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Tr&acirc;n Ch&acirc;u Đường Đen</p>', 0, 6, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(24, 'Trà Sữa Dâu', 'tra-sua-dau', 'traa_sua_sau.jpg', 37000, 42000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa D&acirc;u</p>', 1, 6, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(25, 'Trà Sữa Đào', 'tra-sua-dao', 'tra_sua_dao.jpg', 35000, 40000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Đ&agrave;o</p>', 1, 6, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(26, 'Trà Sữa Mật Ong', 'tra-sua-mat-ong', 'tra_sua_mat_ong.jpg', 37000, 42000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Mật Ong</p>', 1, 6, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(27, 'Trà Sữa Dưa Lưới', 'tra-sua-dua-luoi', 'tra_sua_dua_luoi.jpg', 35000, 40000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Dưa Lưới</p>', 0, 6, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(28, 'Trà Sữa Kiwi', 'tra-sua-kiwi', 'tra_sua_kiwi.jpg', 35000, 40000, 38000, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Kiwi</p>', 1, 6, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(29, 'Trà Sữa Khoai Môn', 'tra-sua-khoai-mon', 'tra_sua_khoa_mon.jpg', 37000, 42000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Khoai M&ocirc;n</p>', 0, 6, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(30, 'Trà Sữa Truyền Thống', 'tra-sua-truyen-thong', 'tra_sua_tuyen_thong.jpg', 30000, 35000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Truyền Thống</p>', 0, 7, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(31, 'Trà Sữa Hoa Hướng Dương', 'tra-sua-hoa-huong-duong', 'tra_sua_hoa_huong_duong.jpg', 42000, 44000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Hoa Hướng Dương</p>', 0, 7, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(32, 'Hồng Trà Sữa', 'hong-tra-sua', 'hong_tra_sua.jpg', 30000, 35000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Hồng Tr&agrave; Sữa</p>', 0, 7, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(33, 'Trà Sữa Gạo', 'tra-sua-gao', 'tra_sua_gao_gDfHuVp.jpg', 37000, 42000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Sữa Gạo</p>', 1, 7, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(34, 'Trà Xanh 888', 'tra-xanh-888', 'tra_sua_888.jpg', 27000, 29000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Xanh 888</p>', 1, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(35, 'Bá Tước Sủi Bọt', 'ba-tuoc-sui-bot', 'ba_tuoc_sui_bot.jpg', 27000, 29000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>B&aacute; Tước Sủi Bọt</p>', 1, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(36, 'Ôlong Sủi Bọt', 'olong-sui-bot', 'oLong_sui_bot.jpg', 27000, 29000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>&Ocirc;long Sủi Bọt</p>', 0, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(37, 'Lục Trà Sủi Bọt', 'luc-tra-sui-bot', 'luc_tra_sui_bot.jpg', 27000, 29000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; Sủi Bọt</p>', 0, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(38, 'Hồng Trà Sủi Bọt', 'hong-tra-sui-bot', 'hong_tra_sua_zgUaRwf.jpg', 27000, 29000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Hồng Tr&agrave; Sủi Bọt</p>', 1, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(39, 'Bá Tước Sữa', 'ba-tuoc-sua', 'ba_tuoc_sua.jpg', 37000, 39000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>B&aacute; Tước Sữa</p>', 0, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(40, 'Ôlong Sữa', 'olong-sua', 'olong_sua.jpg', 37000, 39000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>&Ocirc;long Sữa</p>', 1, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(41, 'Trà Xanh Sữa', 'tra-xanh-sua', 'tra_xanh_sua.jpg', 37000, 39000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Tr&agrave; Xanh Sữa</p>', 0, 8, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(42, 'Lục Trà Tắc Tươi', 'luc-tra-tac-tuoi', 'luc_tra_tac_tuoi.jpg', 29000, 32000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; Tắc Tươi</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(43, 'Ôlong Tắc Tươi', 'olong-tac-tuoi', 'oLong_tac_tuoi.jpg', 29000, 32000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>&Ocirc;long Tắc Tươi</p>', 0, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(44, 'Ôlong Dâu', 'olong-dau', 'olong_dau.jpg', 29000, 32000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>&Ocirc;long D&acirc;u</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(45, 'Ôlong Chanh Tươi', 'olong-chanh-tuoi', 'olong_chanh_tuoi.jpg', 29000, 32000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>&Ocirc;long Chanh Tươi</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(46, 'Lục trà đào', 'luc-tra-dao', 'luc_tra_dao.jpg', 37000, 39000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục tr&agrave; đ&agrave;o</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(47, 'Lục Trà Dưa Lưới', 'luc-tra-dua-luoi', 'tra_sua_dua_luoi_dAvTyXv.jpg', 25000, 30000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; Dưa Lưới</p>', 0, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(48, 'Lục Trà Táo Xanh', 'luc-tra-tao-xanh', 'luc_tra_tao_xanh.jpg', 25000, 30000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; T&aacute;o Xanh</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(49, 'Lục Trà Kiwi', 'luc-tra-kiwi', 'luc_tra_kiwi.jpg', 25000, 30000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; Kiwi</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(50, 'Lục trà mật ong', 'luc-tra-mat-ong', 'luc_tra_mat_ong.jpg', 30000, 35000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục tr&agrave; mật ong</p>', 0, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(51, 'Lục Trà Tắc Chanh Dây', 'luc-tra-tac-chanh-day', 'luc_tra_tac_chanh_day.jpg', 35000, 40000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; Tắc Chanh D&acirc;y</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(52, 'Lục Trà Dâu', 'luc-tra-dau', 'luc_tra_dau.jpg', 29000, 32000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; D&acirc;u</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(53, 'Lục Trà Chanh Tươi', 'luc-tra-chanh-tuoi', 'luc_tra_chanh_tuoi.jpg', 29000, 32000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; Chanh Tươi</p>', 1, 9, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(54, 'Matcha Macchiato', 'matcha-macchiato', 'Matcha_Macchiato.jpg', 55000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Matcha Macchiato</p>', 1, 10, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(55, 'Matcha Đậu Đỏ', 'matcha-dau-do', 'Matcha_dau_do.jpg', 49000, 55000, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Matcha Đậu Đỏ</p>', 1, 10, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(56, 'Lục Trà Bọt Sữa', 'luc-tra-bot-sua', 'luc_tra_bot_sua.jpg', 45000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Lục Tr&agrave; Bọt Sữa</p>', 1, 10, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(57, 'Hồng Trà Bọt Sữa', 'hong-tra-bot-sua', 'hong_tra_bot_sua.jpg', 35000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p><img alt=\"\" src=\"/media/uploads/2018/11/02/tra_sua_dao.jpg\" style=\"height:460px; width:300px\" />Hồng Tr&agrave; Bọt Sữa</p>', 1, 10, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(58, 'Nước Ép Chanh Dây', 'nuoc-ep-chanh-day', 'nuoc_ep_chai_day.jpg', 3700, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 11, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(59, 'Nước ép cam', 'nuoc-ep-cam', 'nuoc_ep_cam.jpg', 37000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 11, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(60, 'Nước ép táo', 'nuoc-ep-tao', 'nuoc_ep_tao.jpg', 42000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 11, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(61, 'Nước ép bưởi', 'nuoc-ep-buoi', 'nuoc_ep_buoi.jpg', 37000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 11, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(62, 'Nước lô hội mật ong chanh', 'nuoc-lo-hoi-mat-ong-chanh', 'nuoc_ep_lohoi_mat_ong_chanh.jpg', 37000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 11, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(63, 'Cà phê sữa', 'ca-phe-sua', 'ca_phe_sua.jpg', 37000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 12, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(64, 'Cà phê đen', 'ca-phe-den', 'ca_phe_den.jpg', 37000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 12, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(65, 'Hạt 3Q Ngọc Trai', 'hat-3q-ngoc-trai', 'hat_3q_ngoc_trai.jpg', 10000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(66, 'Đào Miếng', 'dao-mieng', 'dao_mieng.jpg', 10000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(67, 'Kem Sữa', 'kem-sua', 'kem_sua.jpg', 10000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(68, 'Hạt thuỷ tinh Yogurt', 'hat-thuy-tinh-yogurt', 'hat_3q_ngoc_trai_D8H3aeu.jpg', 10000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(69, 'Bánh plan trứng', 'banh-plan-trung', 'banh_plan_trung.jpg', 7000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(70, 'Đậu đỏ', 'dau-do', 'dau_do.jpg', 10000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(71, 'Hạt lô hội', 'hat-lo-hoi', 'hat_lo_hoi.jpg', 7000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(72, 'Hạt trái cây', 'hat-trai-cay', 'hat_trai_cay.jpg', 7000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(73, 'Hạt Cà Phê', 'hat-ca-phe', 'hat_ca_phe.jpg', 7000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(74, 'Sương Sáo', 'suong-sao', 'suong_sao.jpg', 7000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0),
(75, 'Hạt Trân Châu', 'hat-tran-chau', 'hat_tran_chau.jpg', 7000, 0, 0, 'Những bậc thầy về cà phê của chúng tôi đã đúc kết nhiều năm kinh nghiệm nếm thử cà phê của họ trong ba câu hỏi đơn giản để giúp bạn tìm loại cà phê mà bạn chắc hẳn sẽ thích.', '<p>Những bậc thầy về c&agrave; ph&ecirc; của ch&uacute;ng t&ocirc;i đ&atilde; đ&uacute;c kết nhiều năm kinh nghiệm nếm thử c&agrave; ph&ecirc; của họ trong ba c&acirc;u hỏi đơn giản để gi&uacute;p bạn t&igrave;m loại c&agrave; ph&ecirc; m&agrave; bạn chắc hẳn sẽ th&iacute;ch.</p>', 1, 13, '', 0, 1, '2018-12-26 01:33:47', '2018-12-26 01:33:47', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham_giam_gia`
--

DROP TABLE IF EXISTS `san_pham_giam_gia`;
CREATE TABLE IF NOT EXISTS `san_pham_giam_gia` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ma_san_pham` int(11) NOT NULL,
  `san_pham_di_cung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giam_gia` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `san_pham_giam_gia_ma_san_pham_foreign` (`ma_san_pham`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham_giam_gia`
--

INSERT INTO `san_pham_giam_gia` (`id`, `ma_san_pham`, `san_pham_di_cung`, `giam_gia`, `created_at`, `updated_at`) VALUES
(1, 2, '5,6,8', 10, '2019-01-10 06:08:57', '2019-01-10 06:08:57'),
(2, 3, '7,8,9', 10, '2019-01-10 06:16:29', '2019-01-10 06:16:29'),
(3, 5, '14,15,16', 10, '2019-01-10 06:16:46', '2019-01-10 06:16:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_slider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieu_de` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_slider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `ten_slider`, `tieu_de`, `hinh_slider`, `noi_dung`, `url`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 'Trà sữa', 'Dòng thức uống đặc biệt', 'home_slider.jpg', 'Hãy thư giãn với bạn bè, bên những bản nhạc thính phòng bất hủ, chia sẽ cho nhau kiến thức, những lời hay ý đẹp, hãy cùng nhau trải nghiệm bên ly trà sữa hữu tình do các chuyên gia hàng đầu ẩm thực chế biến', 'http://thucannhanh.vn/san-pham/tra-sua', 1, '2018-12-27 17:59:25', '2018-12-27 17:59:25'),
(2, 'Cà phê', 'Thức uống được ủ từ hạt cà phê', 'home_slider3.jpg', 'Pha bằng bình ép cà phê giữ lại các loại dầu tự nhiên quý giá mà giấy lọc hấp thu và chiết xuất toàn bộ hương vị của cà phê, trong khi vẫn giữ nguyên độ đậm và sánh của cà phê', 'http://thucannhanh.vn/san-pham/ca-phe', 1, '2018-12-27 18:00:52', '2018-12-27 18:00:52'),
(3, 'Nước ép trái cây', 'Sinh tố và nước ép hoa quả', 'home_slider1.jpg', 'Nước ép cà chua là nguồn cung cấp vitamin A và C rất tốt, giúp vô hiệu hóa các gốc tự do gây nên bệnh ung thư, tim mạch và lão hóa da', 'http://thucannhanh.vn/san-pham/nuoc-ep-trai-cay', 1, '2018-12-27 18:01:33', '2018-12-27 18:01:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `su_kien`
--

DROP TABLE IF EXISTS `su_kien`;
CREATE TABLE IF NOT EXISTS `su_kien` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_su_kien` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tu_ngay` date NOT NULL,
  `den_ngay` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_cong_ty`
--

DROP TABLE IF EXISTS `thong_tin_cong_ty`;
CREATE TABLE IF NOT EXISTS `thong_tin_cong_ty` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_cong_ty` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nguoi_dai_dien` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ghi_chu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_thanh_lap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `danh_sach_cua_hang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

DROP TABLE IF EXISTS `tin_tuc`;
CREATE TABLE IF NOT EXISTS `tin_tuc` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tieu_de` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tom_tat` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chi_tiet` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tac_gia` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhan_vien` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`id`, `tieu_de`, `tom_tat`, `chi_tiet`, `tac_gia`, `nhan_vien`, `hinh`, `trang_thai`, `created_at`, `updated_at`) VALUES
(1, 'Đường nâu Okinawa', 'Không chỉ có bờ biển đẹp, Okianawa, một tỉnh nằm ở cực Nam Nhật Bản, còn là biểu tượng gợi nhớ đến sức khỏe và dinh dưỡng nhờ món đường nâu.', '<p>Đường n&acirc;u chia th&agrave;nh hai loại ch&iacute;nh l&agrave; đường n&acirc;u tự nhi&ecirc;n v&agrave; thương mại. Đường n&acirc;u tự nhi&ecirc;n khi sản xuất sẽ giữ lại một phần mật rỉ đường ở giai đoạn cuối trong qu&aacute; tr&igrave;nh luyện. Đường n&acirc;u thương mại được sản xuất bằng c&aacute;ch sử dụng đường trắng v&agrave; th&ecirc;m một lượng mật đường v&agrave;o để nhuộm m&agrave;u. Tỷ lệ mật đường được sử dụng chứa khoảng 10% tổng trọng lượng đường n&acirc;u.</p>\r\n\r\n<p>Y học cổ truyền cho rằng đường n&acirc;u c&oacute; t&iacute;nh &ocirc;n vị ngọt, gi&uacute;p bổ m&aacute;u, chống lạnh, nu&ocirc;i dưỡng cơ thể, c&oacute; t&aacute;c dụng tốt đối với gan, l&aacute; l&aacute;ch, dạ d&agrave;y. Đường n&acirc;u cũng chứa lượng lớn sắt, hỗ trợ việc đưa kh&iacute; oxy đến c&aacute;c cơ quan.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/duong_nau.jpg\" style=\"height:440px; width:660px\" /></p>\r\n\r\n<p><span style=\"font-size:12px\">Sữa tươi kết hợp đường n&acirc;u nhiều dinh dưỡng</span></p>\r\n\r\n<p>Trong đường n&acirc;u c&oacute; th&agrave;nh phần tương tự như đường trắng, tuy nhi&ecirc;n c&oacute; gi&aacute; trị calo thấp hơn: 100 gram đường chỉ c&oacute; khoảng 373 calo. Ngo&agrave;i ra, c&aacute;c kho&aacute;ng chất được lấy từ mật đường như canxi, magie, kali v&agrave; sắt. Một muỗng canh mật đường c&oacute; thể cung cấp 20% gi&aacute; trị dinh dưỡng h&agrave;ng ng&agrave;y của mỗi người.</p>\r\n\r\n<p>Đường n&acirc;u kh&ocirc;ng phải l&agrave; đường v&agrave;ng, m&agrave;u sắc của ch&uacute;ng được quyết định bởi lượng mật rỉ. Từng loại đường sẽ c&oacute; lượng kho&aacute;ng chất kh&aacute;c nhau, t&ugrave;y theo nhu cầu của người d&ugrave;ng m&agrave; lựa chọn loại đường th&iacute;ch hợp.</p>\r\n\r\n<p>Nắm bắt những lợi &iacute;ch từ đường n&acirc;u v&agrave; nhu cầu sử dụng c&aacute;c sản phẩm c&oacute; lợi cho sức khoẻ của thực kh&aacute;ch, Gong Cha mang đến d&ograve;ng sản phẩm kết hợp c&ugrave;ng tr&agrave; đen truyền thống, sữa tươi v&agrave; tr&acirc;n ch&acirc;u mang t&ecirc;n gọi: Sữa tươi Okinawa; Okinawa Latte; tr&agrave; sữa Okinawa với 2 mức đường để thực kh&aacute;ch tự do lựa chọn l&agrave; c&oacute; đường hoặc &iacute;t đường.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/duong_nau2.jpg\" style=\"height:660px; width:660px\" /></p>\r\n\r\n<p>Sữa tươi Okinawa l&agrave; sự kết hợp đan xen giữa lớp đường n&acirc;u được nấu th&agrave;nh dạng syrup ướp c&ugrave;ng tr&acirc;n ch&acirc;u đen nằm ở dưới đ&aacute;y ly, sau đ&oacute; đổ sữa tươi tr&ecirc;n mặt. C&aacute;ch thưởng thức cũng tuỳ v&agrave;o sở th&iacute;ch của kh&aacute;ch h&agrave;ng. Nếu l&agrave; fan hảo ngọt, bạn sẽ kh&ocirc;ng bỏ qua lớp đường ph&iacute;a dưới c&ugrave;ng tr&acirc;n ch&acirc;u để cảm nhận được hết mật đường tự nhi&ecirc;n với lớp tr&acirc;n ch&acirc;u dẻo dai. Nếu l&agrave; fan th&iacute;ch vị ngọt nhẹ, thanh m&aacute;t th&igrave; chỉ cần khuấy đều để cảm nhận lớp sữa tươi c&ugrave;ng hương thơm mật đường thoang thoảng đan xen trong vị sữa.</p>\r\n\r\n<p>Okinawa Latte d&agrave;nh cho những thực kh&aacute;ch vừa muốn thưởng thức tr&agrave; sữa, vừa muốn giữ d&aacute;ng, đẹp da. Sữa tươi v&agrave; tr&agrave; đen được kết hợp với vị thơm của đường mật mang lại vị gi&aacute;c mới lạ, l&agrave; lựa chọn cho kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch sự tươi m&aacute;t, nhẹ nh&agrave;ng lại kh&ocirc;ng qu&aacute; đậm đ&agrave; của tr&agrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/duong_nau3.jpg\" style=\"height:660px; width:660px\" /></p>\r\n\r\n<p><span style=\"font-size:12px\">Tr&agrave; sữa Okinawa l&agrave; sự kết hợp của tr&agrave; sữa v&agrave; đường đen</span></p>\r\n\r\n<p>Tr&agrave; sữa Okinawa lại d&agrave;nh cho fan tr&agrave; sữa truyền thống của Gong Cha. Thức uống b&eacute;o ngậy c&ugrave;ng lớp tr&acirc;n ch&acirc;u dẻo dai, cộng hưởng c&ugrave;ng vị đường n&acirc;u thay v&igrave; đường th&ocirc;ng thường. Tr&agrave; sữa sẽ thơm v&agrave; ngậy hơn nhiều nhưng vẫn c&oacute; vị ngọt dịu, thanh m&aacute;t.</p>\r\n\r\n<p>Yếu tố sức khoẻ trong những năm gần đ&acirc;y được quan t&acirc;m l&agrave;m tiền đề để Gong Cha chọn lựa sản phẩm c&oacute; nhiều gi&aacute; trị dinh dưỡng v&agrave; an to&agrave;n đến người ti&ecirc;u d&ugrave;ng. Lựa chọn mức đường cho thức uống cũng kh&ocirc;ng c&ograve;n l&agrave; nỗi bận t&acirc;m của bạn khi thưởng thức một ly tr&agrave; sữa nữa. Thay v&agrave;o đ&oacute;, Gong Cha đ&atilde; c&oacute; sẵn trọn bộ m&oacute;n thức uống mang đến đa dạng lựa chọn.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/duong_nau4.jpg\" style=\"height:660px; width:660px\" /></p>', 'https://news.zing.vn/duong-nau-okinawa-nguyen-lieu-dinh-duong-noi-tieng-nhat-ban-post887148.html', 'Duong Minh Hoang', 'duong_nau.jpg', 1, '2018-12-29 06:23:03', '2018-12-29 06:23:03'),
(2, 'Gió se lạnh hơn', 'Ngày lạnh se se, chẳng có gì tuyệt vời hơn là một ly cacao, sữa đậu hay trà sữa ấm vào tận cõi lòng.', '<p>B&ecirc;n cạnh những m&oacute;n ăn n&oacute;ng sốt cay t&ecirc;, c&aacute;c thức uống n&oacute;ng hổi, tr&agrave;n kh&oacute;i nghi ng&uacute;t cũng l&agrave; đối tượng được săn l&ugrave;ng mỗi khi gi&oacute; thu H&agrave; Nội bắt đầu tr&agrave;n về. Giữa những đợt hơi lạnh se se, được lười biếng n&eacute;p m&igrave;nh sau khung cửa sổ hay nơi g&oacute;c phố, n&oacute;i v&agrave;i chuyện vụn vặt c&ugrave;ng bạn b&egrave;, tr&ecirc;n tay l&agrave; cốc nước ấm &aacute;p tỏa hơi nghi ng&uacute;t th&igrave; thật hạnh ph&uacute;c biết mấy.</p>\r\n\r\n<h3><strong>Nước m&iacute;a n&oacute;ng</strong></h3>\r\n\r\n<p>Thời tiết dần lạnh đi, những t&iacute;n đồ của m&oacute;n nước m&iacute;a lại được thể buồn so v&igrave; kh&ocirc;ng được thỏa m&atilde;n sở th&iacute;ch của m&igrave;nh. Nhưng đ&oacute; chỉ l&agrave; chuyện của thời gian trước, với sự ra đời của những cốc nước m&iacute;a ấm n&oacute;ng ngon tuyệt, nỗi buồn ấy chẳng c&ograve;n nữa.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/photo-1-15397821668191512799988.jpg\" style=\"height:425px; width:640px\" /></p>\r\n\r\n<p>Nước m&iacute;a n&oacute;ng được &eacute;p từ những c&acirc;y m&iacute;a đ&atilde; nướng l&ecirc;n, hay đơn giản hơn l&agrave; &eacute;p nước như th&ocirc;ng thường rồi đun tr&ecirc;n bếp đến khi sủi bọt lăn tăn. Nhờ c&aacute;ch n&agrave;y, cốc nước m&iacute;a c&agrave;ng quyện th&ecirc;m hương vị thơm thơm hệt như m&ugrave;i mật, uống k&egrave;m với dừa nạo, dừa kh&ocirc; b&ugrave;i b&ugrave;i ngọt ngọt v&agrave; tr&acirc;n ch&acirc;u dai dai th&igrave; chẳng thua k&eacute;m bất kỳ thứ đồ uống &quot;sang xịn&quot; đắt đỏ n&agrave;o.</p>\r\n\r\n<p>Cứ đến độ n&agrave;y, gh&eacute; qua d&atilde;y c&aacute;c qu&aacute;n nước m&iacute;a ph&iacute;a cuối H&agrave;ng Vải, bạn sẽ được &quot;mục sở thị&quot; m&oacute;n nước m&iacute;a n&oacute;ng phố cổ ngon tuyệt.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/photo-1-1539782171336671850635.jpg\" style=\"height:427px; width:640px\" /></p>\r\n\r\n<h3><strong>Nước gạo rang</strong></h3>\r\n\r\n<p>Nước gạo rang l&agrave; thức uống m&ugrave;a đ&ocirc;ng gần gũi với lớp thanh ni&ecirc;n H&agrave; Nội từ khoảng hơn chục năm trước. V&agrave;o m&ugrave;a h&egrave;, bạn c&oacute; thể chọn nước gạo đ&aacute;, ngọt thanh v&agrave; m&aacute;t l&agrave;nh. Nhưng v&agrave;o những đ&ecirc;m thu se lạnh, nước gạo n&oacute;ng hổi thơm phức lại &quot;hợp cảnh&quot; hơn. Gạo rang kh&eacute;o b&ugrave;i b&ugrave;i, uống v&agrave;o ấm nồng cả t&acirc;m hồn.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/photo-2-15397821713401476782428.jpg\" style=\"height:640px; width:640px\" /></p>\r\n\r\n<p>Nước gạo rang giờ đ&acirc;y kh&ocirc;ng c&ograve;n phổ biến nhiều, nhưng cảm gi&aacute;c ngồi b&ecirc;n g&oacute;c qu&aacute;n giữa thủ đ&ocirc; ồn &agrave;o n&aacute;o nhiệt, &ocirc;n lại kỉ niệm giữa tiết trời se se kể ra cũng th&uacute; vị. Tầm từ tối đến đ&ecirc;m, thử rủ bạn b&egrave; ra g&oacute;c ng&atilde; 3 Trần Ph&uacute; &ndash; Ph&ugrave;ng Hưng để thử một lần xem sao nh&eacute;!</p>', 'http://cafef.vn/gio-se-lanh-hon-nguoi-ha-noi-lai-them-lam-huong-thom-vi-ngot-tu-nhung-thuc-uong-nong-hoi-20181017201721862.chn', 'Duong Minh Hoang', 'gio_se_lanh_hon.jpg', 1, '2018-12-29 06:28:55', '2018-12-29 06:28:55'),
(3, 'Thêm đồ uống mới \"đốn tim\"', 'Trà sữa trân châu đường thốt nốt - Thêm đồ uống mới \"đốn tim\" giới trẻ dịp cuối năm', '<p>Nằm tr&ecirc;n đường Đinh Ti&ecirc;n Ho&agrave;ng, đoạn 2 chiều thuộc quận B&igrave;nh Thạnh, Main Tea lại bổ sung v&agrave;o bộ sưu tập cho c&aacute;c t&iacute;n đồ ăn uống th&ecirc;m 1 địa chỉ hấp dẫn đ&aacute;ng để thử khu vực xung quanh cầu B&ocirc;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/huong_vi_truyen_thong2.jpg\" style=\"height:1200px; width:899px\" /></p>\r\n\r\n<p>Những vi&ecirc;n tr&acirc;n ch&acirc;u v&agrave;ng &oacute;ng được vỗ về v&agrave; ủ c&ugrave;ng với đường thốt nốt vốn l&agrave; một loại đặc sản của v&ugrave;ng Bảy N&uacute;i-An Giang cho vị tr&acirc;n ch&acirc;u ngọt thanh, thơm b&ugrave;i, dẻo dai v&agrave; rất &quot;bắt&quot; vị khi thưởng thức c&ugrave;ng với m&oacute;n tr&agrave; sữa &quot;đinh&quot; của qu&aacute;n.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/huong_vi_truyen_thong3.jpg\" style=\"height:620px; width:1125px\" /></p>\r\n\r\n<p>Với những ai l&agrave; fan của d&ograve;ng tr&agrave; tr&aacute;i c&acirc;y th&igrave; cũng kh&oacute; l&ograve;ng m&agrave; bỏ ngỏ qua một loạt d&ograve;ng tr&agrave; hoa quả thơm ngon m&agrave; nguy&ecirc;n liệu tr&aacute;i c&acirc;y kể ra rất ư l&agrave; thuần Việt: Tr&agrave; sấu t&aacute;o đỏ, tr&agrave; mận H&agrave; Nội, tr&agrave; m&atilde;ng cầu, tr&agrave; long nh&atilde;n, sữa tươi sen tr&acirc;n ch&acirc;u đường đen...</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/huong_vi_truyen_thong4.jpg\" style=\"height:1200px; width:1200px\" /></p>', 'http://kenh14.vn/tra-sua-tran-chau-duong-thot-not-them-do-uong-moi-don-tim-gioi-tre-dip-cuoi-nam-20181225000928168.chn', 'Duong Minh Hoang', 'huong_vi_truyen_thong.jpg', 1, '2018-12-29 20:09:35', '2018-12-29 20:09:35'),
(4, 'Những món ăn khiến bạn', 'Tình trạng ăn nhiều chất béo, chất đạm trong ngày Tết là điều khá phổ biến. Do đó, việc duy trì một vóc dáng lý tưởng sau Tết và hạn chế cân nặng là điều ám ảnh với nhiều chị em. Cùng điểm mặt một số thực phẩm khiến bạn tăng cân nhanh chóng sauBánh chưng – bánh tét\r\n\r\nBánh chưng – bánh tét là món ăn truyền thống không thể thiếu được trong ngày Tết của các gia đình Việt Nam. Mỗi chiếc bánh chưng có thể cung cấp cho cơ thể khoảng 1.900 calories. Bánh tét cũng có mức calo tương tự. Lượng calo và tinh bột quá lớn trong bánh chưng sẽ được chuyển hóa thành glucogen và glucozo. Lượng đường này sẽ tích tụ dần thành các mô mỡ trong cơ thể. Ngày Tết nghỉ ngơi và ăn uống thoải mái các món bánh truyền thông sẽ khiến cân nặng của bạn tăng lên nhanh chóng.', '<p><strong>B&aacute;nh chưng &ndash; b&aacute;nh t&eacute;t</strong></p>\r\n\r\n<p>B&aacute;nh chưng &ndash; b&aacute;nh t&eacute;t l&agrave; m&oacute;n ăn truyền thống kh&ocirc;ng thể thiếu được trong ng&agrave;y Tết của c&aacute;c gia đ&igrave;nh Việt Nam. Mỗi chiếc b&aacute;nh chưng c&oacute; thể cung cấp cho cơ thể khoảng 1.900 calories. B&aacute;nh t&eacute;t cũng c&oacute; mức calo tương tự. Lượng calo v&agrave; tinh bột qu&aacute; lớn trong b&aacute;nh chưng sẽ được chuyển h&oacute;a th&agrave;nh glucogen v&agrave; glucozo. Lượng đường n&agrave;y sẽ t&iacute;ch tụ dần th&agrave;nh c&aacute;c m&ocirc; mỡ trong cơ thể. Ng&agrave;y Tết nghỉ ngơi v&agrave; ăn uống thoải m&aacute;i c&aacute;c m&oacute;n b&aacute;nh truyền th&ocirc;ng sẽ khiến c&acirc;n nặng của bạn tăng l&ecirc;n nhanh ch&oacute;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/tang_can.jpg\" style=\"height:660px; width:660px\" /></p>\r\n\r\n<p><strong>Gi&ograve; chả</strong></p>\r\n\r\n<p>Gi&ograve; chả, gi&ograve; thủ, chả quế,.... c&aacute;c m&oacute;n ăn được chế biến từ thịt heo cũng khiến cho bạn kh&oacute; kiểm so&aacute;t được c&acirc;n nặng. Gi&ograve; lụa, gi&ograve; thủ c&oacute; chứa một lượng calo rất lớn, mỗi 100g gi&ograve; ứng với 600 calo. Ăn li&ecirc;n tục những m&oacute;n gi&ograve; n&agrave;y trong 1 tuần c&oacute; thể khiến tăng đến 1-1,5kg, chưa kể năng lượng từ những m&oacute;n ăn kh&aacute;c trong ng&agrave;y Tết.</p>\r\n\r\n<p><strong>Thịt kho</strong></p>\r\n\r\n<p>M&oacute;n thịt kho c&oacute; lẽ kh&ocirc;ng thể thiếu trong m&acirc;m cơm ng&agrave;y Tết của người miền Nam. Hiện nay, m&oacute;n ăn n&agrave;y cũng kh&aacute; phổ biến trong m&acirc;m cơm Tết của người miền Bắc. Với vị b&eacute;o ngậy của nước dừa quyện với vị b&eacute;o của thịt mỡ khiến cho chị em kh&oacute; c&oacute; thể cưỡng lại sức quyến rũ của ch&uacute;ng.</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia dinh dưỡng, mỗi phần thịt kho 150g sẽ tương ứng khoảng 250 calo. V&agrave; th&ocirc;ng thường m&oacute;n ăn n&agrave;y sẽ ăn k&egrave;m với cơm trắng n&ecirc;n lượng calo thu nạp v&agrave;o cơ thể l&agrave; rất lớn. V&igrave; thế c&aacute;c chị em n&ecirc;n c&acirc;n nhắc kỹ trước khi ăn m&oacute;n thịt kho thơm ngon, b&eacute;o ngậy n&agrave;y.</p>\r\n\r\n<p><strong>C&aacute;c loại mứt, hoa quả sấy</strong></p>\r\n\r\n<p>Hiện nay c&aacute;c loại mứt tết như: mứt quất, mứt c&agrave;-rốt, mứt me, mứt c&agrave; chua,... tuy kh&ocirc;ng c&ograve;n phổ biến như trước đ&acirc;y, nhưng thay v&agrave;o đ&oacute; l&agrave; c&aacute;c loại hoa quả sấy: chuối sấy, m&iacute;t sấy, khoai sấy,... ng&agrave;y c&agrave;ng phổ biến</p>\r\n\r\n<p>Nhiều người ưa th&iacute;ch hoa quả sấy v&igrave; tin rằng m&oacute;n ăn vặt n&agrave;y &iacute;t đường v&agrave; calo. Thực tế, hoa quả sấy chỉ loại bỏ phần lớn lượng nước nhưng lượng đường vẫn tồn đọng rất nhiều. Đặc biệt, m&oacute;n ăn n&agrave;y kh&ocirc;ng mang lại cảm gi&aacute;c ng&aacute;n n&ecirc;n khiến ch&uacute;ng ta rất kh&oacute; c&oacute; thể kiểm so&aacute;t được số lượng đưa v&agrave;o cơ thể.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/tang_can2.jpg\" style=\"height:332px; width:500px\" /></p>\r\n\r\n<p><strong>C&aacute;c loại hạt kh&ocirc;</strong></p>\r\n\r\n<p>C&aacute;c loại hạt kh&ocirc; hiện nay kh&aacute; phổ biến tr&ecirc;n đĩa b&aacute;nh kẹo ng&agrave;y Tết ở c&aacute;c gia đ&igrave;nh như: hạt điều, hạt b&iacute;, hạnh nh&acirc;n, hạt th&ocirc;ng,... Tuy những hạt n&agrave;y c&oacute; chứa rất nhiều loại vitamin tốt cho cơ thể: vitamin A, vitamin B1, B12, vitamin E,... nhưng b&ecirc;n cạnh đ&oacute; ch&uacute;ng lại chứa rất nhiều dầu hay chất b&eacute;o b&atilde;o h&ograve;a. Những chất b&eacute;o n&agrave;y đi v&agrave;o cơ thể sẽ h&ograve;a c&ugrave;ng với m&aacute;u trong cơ thể, t&iacute;ch tụ th&agrave;nh c&aacute;c m&ocirc; mỡ trăng kh&ocirc;ng tốt cho sức khỏe.</p>\r\n\r\n<p>Để kh&ocirc;ng bị tăng c&acirc;n nhanh ch&oacute;ng h&atilde;y hạn chế ăn c&aacute;c loại thực phẩm tr&ecirc;n thay v&agrave;o đ&oacute; h&atilde;y ăn tr&aacute;i c&acirc;y tươi v&agrave; bổ sung rau xanh cho c&aacute;c bữa ăn ng&agrave;y Tết th&ecirc;m l&agrave;nh mạnh. Đặc biệt, chị em phụ nữ kh&ocirc;ng n&ecirc;n bỏ qu&ecirc;n c&aacute;c b&agrave;i tập thể dục h&agrave;ng ng&agrave;y. Luyện tập đều đặn sẽ gi&uacute;p duy tr&igrave; c&acirc;n nặng v&agrave; v&oacute;c d&aacute;ng như &yacute; d&ugrave; c&oacute; nghỉ Tết d&agrave;i ng&agrave;y.</p>\r\n\r\n<p><strong>Thịt đ&ocirc;ng</strong></p>\r\n\r\n<p>Thịt đ&ocirc;ng l&agrave; m&oacute;n ăn kh&ocirc;ng thể thiếu của người miền Bắc. Trong thịt đ&ocirc;ng c&oacute; chứa nhiều chất đạm, chất b&eacute;o khiến bạn dễ d&agrave;ng tăng c&acirc;n. Bạn c&oacute; thể chế biến m&oacute;n thịt đ&ocirc;ng từ thịt lợn, thịt g&agrave;. M&oacute;n ăn n&agrave;y c&oacute; vị ngọt m&aacute;t từ thịt đ&ocirc;ng đ&atilde; được hầm nhừ, gi&ograve;n từ mọc nhĩ n&ecirc;n rất hợp để ăn ng&agrave;y Tết.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, trong thịt lợn chứa nhiều chất b&eacute;o kh&ocirc;ng no c&oacute; thể l&agrave;m tăng cholesterol xấu g&acirc;y t&iacute;ch mỡ dư thừa v&agrave; b&eacute;o bụng. Nếu kh&ocirc;ng muốn c&acirc;n nặng tăng kh&ocirc;ng kiểm so&aacute;t, bạn n&ecirc;n ăn thịt đ&ocirc;ng k&egrave;m với dưa h&agrave;nh để gi&uacute;p ti&ecirc;u h&oacute;a tốt hơn đồng thời hạn chế t&iacute;ch tụ mỡ thừa trong cơ thể.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8081/ThucAnNhanh/public/hinh_CT_tin_tuc_san_pham/images/tang_can3.jpg\" style=\"height:334px; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>', 'https://www.24h.com.vn/am-thuc/nhung-mon-an-khien-ban-tang-can-nhanh-chong-sau-dip-tet-c460a940749.html', 'Duong Minh Hoang', 'tang_can.jpg', 1, '2018-12-29 20:41:02', '2018-12-29 20:41:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phong_ban` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`, `phong_ban`) VALUES
(6, 'Dương Ngọc Hoàng', 'dnhoang77@gmail.com', '2019-01-07 17:00:00', '$2y$10$4YqRoYMzeZav758vI1f9IuCifndfJFBNGVmB.ySSyKh7niFeP5xWm', 'tFxZyDu9gF3tuk8NP8OdRBUUXISsItj44BTJluxw1xdVpovuTkLklhfzBoyg', '2019-01-07 18:51:33', '2019-01-07 18:51:33', 'hinh_the.jpg', 'Tổ Công nghệ thông tin'),
(3, 'Dương Thùy Hân', 'han@gmail.com', NULL, '$2y$10$4YqRoYMzeZav758vI1f9IuCifndfJFBNGVmB.ySSyKh7niFeP5xWm', 'MXOblpN50UwxbSrarXiMhXSTOEKawDZ2DJNtXuysFt5gaZXSRg8OrCC3yskc', '2018-12-24 19:37:33', '2018-12-24 19:37:33', 'user3-128x128.jpg', 'Phòng kế toán'),
(4, 'Dương Minh Huy', 'huy@gmail.com', NULL, '$2y$10$4YqRoYMzeZav758vI1f9IuCifndfJFBNGVmB.ySSyKh7niFeP5xWm', 'e58TPC2LyrIDVWnfUnvQoeZ7bg79slXOMq3QVVpxlXQARuFIcPKiKMoDNr8t', '2018-12-24 19:41:44', '2018-12-24 19:41:44', 'user1-128x128.jpg', 'Phòng kỹ thuật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_menus`
--

DROP TABLE IF EXISTS `users_menus`;
CREATE TABLE IF NOT EXISTS `users_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `menu_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users_menus`
--

INSERT INTO `users_menus` (`id`, `user_id`, `menu_id`, `created_at`, `updated_at`, `user`) VALUES
(184, 6, '26', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(185, 6, '27', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(165, 4, '29', '2019-01-17 14:22:16', '2019-01-17 14:22:16', 6),
(186, 6, '28', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(183, 6, '23', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(182, 6, '25', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(181, 6, '24', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(180, 6, '22', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(179, 6, '21', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(178, 6, '19', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(177, 6, '18', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(176, 6, '16', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(175, 6, '14', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(174, 6, '13', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(173, 6, '12', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(172, 6, '11', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(171, 6, '9', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(170, 6, '8', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(169, 6, '6', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(168, 6, '5', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(167, 6, '3', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(166, 6, '2', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6),
(150, 3, '2', '2019-01-17 14:06:46', '2019-01-17 14:06:46', 6),
(151, 3, '3', '2019-01-17 14:06:46', '2019-01-17 14:06:46', 6),
(152, 3, '5', '2019-01-17 14:06:46', '2019-01-17 14:06:46', 6),
(153, 3, '6', '2019-01-17 14:06:46', '2019-01-17 14:06:46', 6),
(154, 3, '11', '2019-01-17 14:06:46', '2019-01-17 14:06:46', 6),
(155, 3, '12', '2019-01-17 14:06:46', '2019-01-17 14:06:46', 6),
(156, 3, '25', '2019-01-17 14:06:46', '2019-01-17 14:06:46', 6),
(164, 4, '13', '2019-01-17 14:22:16', '2019-01-17 14:22:16', 6),
(163, 4, '9', '2019-01-17 14:22:16', '2019-01-17 14:22:16', 6),
(162, 4, '8', '2019-01-17 14:22:16', '2019-01-17 14:22:16', 6),
(187, 6, '29', '2019-01-18 09:37:58', '2019-01-18 09:37:58', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `y_kien_khach_hang`
--

DROP TABLE IF EXISTS `y_kien_khach_hang`;
CREATE TABLE IF NOT EXISTS `y_kien_khach_hang` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ho_ten_khach_hang` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dien_thoai` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung_tra_loi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` tinyint(4) NOT NULL,
  `xoa` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `y_kien_khach_hang`
--

INSERT INTO `y_kien_khach_hang` (`id`, `ho_ten_khach_hang`, `dia_chi`, `dien_thoai`, `email`, `noi_dung`, `hinh`, `noi_dung_tra_loi`, `trang_thai`, `xoa`, `created_at`, `updated_at`) VALUES
(1, 'Dương Ngọc Hoàng', '6 đường 27, P. Sơn Kỳ, Q. Tân Phú, HCM', '0123456789', 'hoang@gmail.com', 'sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd sd', 'thuc_don_6.jpg', 'sdsdsd', 1, 0, '2019-01-11 19:28:52', '2019-01-11 20:58:48'),
(2, 'Đặng Hồng Hà', '6 đường 27, P. Sơn Kỳ, Q. Tân Phú, HCM', '0123456789', 'ha@gmail.com', 'Tôi rất hài hài lòng về quy trình làm việc của  công ty BITS. Hệ thống quản trị của website thì rất hữu dụng và nhiều tính năng, Tôi hoàn toàn có thể thay đổi tất cả các phần nội dung của website. Thái độ phục vụ của nhân viên BITS rất nhiệt tình và tận tâm, mọi vướng mắc của Tôi đều được BITS giải thích và phân tích rõ ràng. Tôi đánh giá cao về BITS.', 'thuc_don_6.jpg', '', 0, 0, '2019-01-11 19:40:49', '2019-01-11 19:40:49'),
(3, 'Mr. July Dellupac', '6 đường 27, P. Sơn Kỳ, Q. Tân Phú, HCM', '0123456789', 'Dellupac@gmail.com', '- Tôi rất hài lòng về website của tôi. Tất cả những gì tôi mong muốn ở website này đã được BITS thực hiện rất tốt. Ý tưởng của tôi đã được thực hiện hoá 100%.\r\nLayout hoàn toàn đẹp trên mọi trình duyệt.\r\n- Trang quản trị rất tiện dụng, nhiều chức năng và dễ dàng quản lý.', '', '', 0, 0, '2019-01-11 19:41:41', '2019-01-11 19:41:41'),
(4, 'DU LỊCH NHẬT BẢN', 'DU LỊCH NHẬT BẢN, HCM', '0123456789', 'nt@gmail.com', 'Cám ơn HDV đã rất tận tụy với mọi người. Chị chăm sóc mọi người trong đoàn như người thân của mình. Làm cho cá nhân tôi và mọi người trong đoàn đều có cảm giác ấm áp và an tâm, dù đang ở một đất nước xa lạ. Khi đăng ký tour tôi chỉ nghĩ đơn giản là du lịch và nghĩ ngơi. Nhưng thực sự tôi lại nhận được rất nhiều thứ kiến thức quý giá về văn hóa, lịch sử và cuộc sống của người dân bản xứ. Tất cả đều nhờ vào kiến thức vô cùng phong phú HDV. Tôi xin chân thành chúc mừng công ty đã có những nhân viên giỏi như HDV.', '', '', 0, 0, '2019-01-11 19:44:20', '2019-01-11 19:44:20');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
