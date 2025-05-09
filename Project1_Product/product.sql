-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 09, 2025 lúc 10:47 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `wed_megatech`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dienthoai` varchar(15) DEFAULT NULL,
  `quyen` enum('admin','nhanvien','viewer') DEFAULT 'nhanvien',
  `ngaytao` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `hoten`, `email`, `dienthoai`, `quyen`, `ngaytao`) VALUES
(8, 'admin1', '$2y$10$gD.Ib2/v2rTstdpP5MYs0.5TX97.agm/HIgiv8uMZiAbLKUlS0ApG', 'Phạm Minh Chiến', 'chien.pm12052006@gmail.com', '0339799810', '', '2025-04-22'),
(9, 'admin2', '$2y$10$z31poykVDSKBKlmmQVGwuOeThHKTPB7DLDkFIOnKDi5gINtG.XvAm', 'Phạm Minh Chiến', 'chien.pm12052006@gmail.com', '0339799810', '', '2025-04-25'),
(10, 'admin 3', '$2y$10$.oPxZxjOVR2Jzlub4qvaYOh1PH8vNkZm7mzJjf95n1AjbaUwZ.AHK', 'Phạm Minh Chiến', 'ykai1205006@gmail.com', '0339799810', '', '2025-04-25'),
(11, 'admin4', '$2y$10$ywlqahvhDB1yg3kKx3mreu3kxfDjpimnSjUsMmID3eA8/NKNTCfF6', 'Nguyễn ANh Nhi', 'chien.pm12052006@gmail.com', '012931232123', 'admin', '2025-04-25'),
(12, 'admin5', '$2y$10$xJqTWJFUDk2J.lf2hV0PoOcFtvuHbi9VBECnJe/fDDXweFsuqzBcW', 'Phạm Minh Chiến', 'ykai1205006@gmail.com', '0339799810', 'admin', '2025-04-29'),
(13, 'admin6', '$2y$10$mwB35Qdg1IdhDAQZglLcHeTVEExeQqDPoi8lPGgAlWvVmNCAitgey', 'Dĩ Khải', 'chien.pm12052006@gmail.com', '0984894360', 'viewer', '2025-04-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_log`
--

CREATE TABLE `admin_log` (
  `log_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `hanhdong` text NOT NULL,
  `thoigian` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_log`
--

INSERT INTO `admin_log` (`log_id`, `admin_id`, `hanhdong`, `thoigian`) VALUES
(1, 11, 'Đăng nhập hệ thống', '2025-04-29 08:38:54'),
(2, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:00'),
(3, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:18'),
(4, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:26'),
(5, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:30'),
(6, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:31'),
(7, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:32'),
(8, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:33'),
(9, 11, 'Đăng nhập hệ thống', '2025-04-29 08:40:34'),
(10, 11, 'Đăng nhập hệ thống', '2025-04-29 08:58:00'),
(11, 11, 'Đăng nhập hệ thống', '2025-04-29 08:58:14'),
(12, 12, 'Đăng nhập hệ thống', '2025-04-29 09:00:05'),
(13, 12, 'Xóa Khách Hàng ', '2025-04-29 09:01:56'),
(14, 12, 'Xóa Khách Hàng ', '2025-04-29 09:02:00'),
(15, 12, 'Đăng nhập hệ thống', '2025-04-29 09:02:13'),
(16, 12, 'Đăng nhập hệ thống', '2025-04-29 09:03:05'),
(17, 12, 'Cập nhật dữ liệu của khách hàng', '2025-04-29 09:03:17'),
(18, 12, 'Cập nhật dữ liệu của khách hàng', '2025-04-29 09:03:19'),
(19, 12, 'Đăng nhập hệ thống', '2025-04-29 09:03:23'),
(20, 12, 'Đăng nhập hệ thống', '2025-04-29 09:03:41'),
(21, 12, 'Cập nhật dữ liệu của khách hàng', '2025-04-29 09:03:55'),
(22, 12, 'Cập nhật dữ liệu của khách hàng', '2025-04-29 09:03:57'),
(23, 12, 'Đăng nhập hệ thống', '2025-04-29 09:03:59'),
(24, 12, 'Đăng nhập hệ thống', '2025-04-29 09:04:07'),
(25, 13, 'Đăng nhập hệ thống', '2025-04-29 09:08:08'),
(26, 13, 'Đăng nhập hệ thống', '2025-04-29 09:09:57'),
(27, 13, 'Đăng nhập hệ thống', '2025-04-29 09:10:25'),
(28, 13, 'Đăng nhập hệ thống', '2025-04-29 09:10:37'),
(29, 13, 'Đăng nhập hệ thống', '2025-04-29 09:32:02'),
(30, 13, 'Cập nhật dữ liệu của khách hàng', '2025-04-29 10:14:19'),
(31, 13, 'Đăng nhập hệ thống', '2025-04-29 10:15:51'),
(32, 13, 'Xóa khách hàng có mã 0', '2025-04-29 10:20:34'),
(33, 13, 'Xóa khách hàng có mã 0', '2025-04-29 10:20:40'),
(34, 13, 'Xóa khách hàng có mã 0', '2025-04-29 10:20:46'),
(35, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:21:21'),
(36, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:21:48'),
(37, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(38, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(39, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(40, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(41, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(42, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(43, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(44, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(45, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(46, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(47, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(48, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(49, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(50, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(51, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(52, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(53, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(54, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(55, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(56, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:09'),
(57, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(58, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(59, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(60, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(61, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(62, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(63, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(64, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(65, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(66, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(67, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(68, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(69, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(70, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(71, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(72, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:11'),
(73, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(74, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(75, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(76, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(77, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(78, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(79, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(80, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(81, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(82, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(83, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(84, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(85, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(86, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(87, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(88, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(89, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(90, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(91, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(92, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(93, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(94, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(95, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(96, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:12'),
(97, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(98, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(99, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(100, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(101, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(102, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(103, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(104, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(105, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(106, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(107, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(108, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(109, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(110, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(111, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(112, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(113, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(114, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(115, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(116, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:18'),
(117, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(118, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(119, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(120, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(121, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(122, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(123, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(124, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(125, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(126, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(127, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(128, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(129, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(130, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(131, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(132, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(133, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(134, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(135, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(136, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:20'),
(137, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:25'),
(138, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:25'),
(139, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:25'),
(140, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:25'),
(141, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:25'),
(142, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:25'),
(143, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(144, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(145, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(146, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(147, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(148, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(149, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(150, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(151, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(152, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(153, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(154, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(155, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(156, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:26'),
(157, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:35'),
(158, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:35'),
(159, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:35'),
(160, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:35'),
(161, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(162, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(163, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(164, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(165, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(166, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(167, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(168, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(169, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(170, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(171, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(172, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(173, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(174, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(175, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(176, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:36'),
(177, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(178, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(179, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(180, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(181, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(182, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(183, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(184, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(185, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(186, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(187, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(188, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(189, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(190, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(191, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(192, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(193, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(194, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(195, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(196, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:44'),
(197, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(198, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(199, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(200, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(201, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(202, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(203, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(204, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(205, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(206, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(207, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(208, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(209, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(210, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(211, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(212, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(213, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(214, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(215, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(216, 13, 'Xóa danh mục có mã 0', '2025-04-29 10:22:45'),
(217, 13, 'Xóa danh mục ', '2025-04-29 10:23:12'),
(218, 13, 'Xóa danh mục ', '2025-04-29 10:23:18'),
(219, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(220, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(221, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(222, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(223, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(224, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(225, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(226, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(227, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(228, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(229, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(230, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(231, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(232, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(233, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(234, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(235, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(236, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(237, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(238, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:20'),
(239, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(240, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(241, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(242, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(243, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(244, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(245, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(246, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(247, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(248, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(249, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(250, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(251, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(252, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(253, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(254, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(255, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(256, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(257, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(258, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:22'),
(259, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(260, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(261, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(262, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(263, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(264, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(265, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(266, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(267, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(268, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(269, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(270, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(271, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(272, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(273, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(274, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(275, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(276, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(277, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(278, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:23'),
(279, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(280, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(281, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(282, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(283, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(284, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(285, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(286, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:28'),
(287, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(288, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(289, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(290, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(291, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(292, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(293, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(294, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(295, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(296, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(297, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(298, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:29'),
(299, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:30'),
(300, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:30'),
(301, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:30'),
(302, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:30'),
(303, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:30'),
(304, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:30'),
(305, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:31'),
(306, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(307, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(308, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(309, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(310, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(311, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(312, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(313, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(314, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(315, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(316, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(317, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(318, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(319, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(320, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(321, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(322, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(323, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(324, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(325, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:38'),
(326, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(327, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(328, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(329, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(330, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(331, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(332, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(333, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(334, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(335, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(336, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(337, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(338, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(339, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(340, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(341, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(342, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(343, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(344, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(345, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:40'),
(346, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(347, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(348, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(349, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(350, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(351, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(352, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(353, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(354, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(355, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(356, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(357, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(358, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(359, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(360, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(361, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(362, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(363, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(364, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(365, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:24:46'),
(366, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:25:22'),
(367, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:25:26'),
(368, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:25:29'),
(369, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:25:34'),
(370, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:25:59'),
(371, 13, 'Đăng nhập hệ thống', '2025-04-29 10:26:07'),
(372, 13, 'Đăng nhập hệ thống', '2025-04-29 10:26:36'),
(373, 13, 'Xóa danh mục', '2025-04-29 10:26:47'),
(374, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:27:38'),
(375, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:27:43'),
(376, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:29:05'),
(377, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:29:36'),
(378, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:29:40'),
(379, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:29:44'),
(380, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:29:52'),
(381, 13, 'Xóa danh mục có mã: 0', '2025-04-29 10:29:56'),
(382, 13, 'Thêm dữ liệu vào danh mục', '2025-04-29 10:33:01'),
(383, 13, 'Đăng nhập hệ thống', '2025-05-03 15:05:41'),
(384, 13, 'Đăng nhập hệ thống', '2025-05-03 15:05:45'),
(385, 13, 'Cập nhật dữ liệu của khách hàng', '2025-05-03 15:06:10'),
(386, 13, 'Cập nhật dữ liệu của khách hàng', '2025-05-03 15:06:19'),
(387, 13, 'Đăng nhập hệ thống', '2025-05-03 15:06:22'),
(388, 13, 'Đăng nhập hệ thống', '2025-05-03 15:08:48'),
(389, 13, 'Đăng nhập hệ thống', '2025-05-03 15:08:52'),
(390, 13, 'Đăng nhập hệ thống', '2025-05-03 15:23:53'),
(391, 13, 'Cập nhật dữ liệu của khách hàng', '2025-05-03 15:24:30'),
(392, 13, 'Cập nhật dữ liệu của khách hàng', '2025-05-03 15:24:34'),
(393, 13, 'Đăng nhập hệ thống', '2025-05-03 15:27:28'),
(394, 13, 'Đăng nhập hệ thống', '2025-05-03 15:27:31'),
(395, 13, 'Đăng nhập hệ thống', '2025-05-03 15:31:46'),
(396, 12, 'Đăng nhập hệ thống', '2025-05-03 15:32:00'),
(397, 12, 'Đăng nhập hệ thống', '2025-05-03 15:52:05'),
(398, 12, 'Đăng nhập hệ thống', '2025-05-03 15:52:15'),
(399, 12, 'Đăng nhập hệ thống', '2025-05-03 15:52:17'),
(400, 12, 'Đăng nhập hệ thống', '2025-05-03 15:52:18'),
(401, 12, 'Cập nhật danh mục ', '2025-05-03 16:11:30'),
(402, 12, 'Cập nhật danh mục ', '2025-05-03 16:11:56'),
(403, 12, 'Cập nhật danh mục ', '2025-05-03 16:14:07'),
(404, 12, 'Cập nhật danh mục ', '2025-05-03 16:14:46'),
(405, 12, 'Cập nhật danh mục ', '2025-05-03 16:17:27'),
(406, 12, 'Cập nhật danh mục ', '2025-05-03 16:18:38'),
(407, 12, 'Cập nhật danh mục ', '2025-05-03 16:19:27'),
(408, 12, 'Cập nhật danh mục ', '2025-05-03 16:20:45'),
(409, 12, 'Cập nhật danh mục ', '2025-05-03 16:20:47'),
(410, 12, 'Cập nhật danh mục ', '2025-05-03 16:20:52'),
(411, 12, 'Cập nhật danh mục ', '2025-05-03 16:36:12'),
(412, 12, 'Cập nhật danh mục ', '2025-05-03 16:36:14'),
(413, 12, 'Cập nhật danh mục ', '2025-05-03 16:36:17'),
(414, 12, 'Cập nhật danh mục ', '2025-05-03 16:36:21'),
(415, 12, 'Cập nhật danh mục ', '2025-05-03 16:36:44'),
(416, 12, 'Xóa danh mục có mã: 4', '2025-05-06 13:12:10'),
(417, 12, 'Xóa danh mục có mã: 5', '2025-05-06 13:12:15'),
(418, 12, 'Xóa danh mục có mã: 6', '2025-05-06 13:12:19'),
(419, 12, 'Xóa danh mục có mã: 9', '2025-05-06 13:12:23'),
(420, 12, 'Xóa danh mục có mã: 10', '2025-05-06 13:12:29'),
(421, 12, 'Cập nhật danh mục ', '2025-05-06 08:20:17'),
(422, 12, 'Cập nhật danh mục ', '2025-05-06 08:20:22'),
(424, 12, 'Thêm danh mục có mã: 21123', '2025-05-06 13:29:47'),
(425, 12, 'Cập nhật danh mục có mã: 1', '2025-05-06 08:33:39'),
(426, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 09:21:21'),
(427, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 09:21:32'),
(428, 12, 'Cập nhật sản phẩm mã: 22', '2025-05-06 09:22:06'),
(429, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 09:23:56'),
(430, 12, 'Cập nhật sản phẩm mã: 23', '2025-05-06 09:24:42'),
(431, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 09:26:41'),
(432, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 09:27:15'),
(433, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 09:49:07'),
(434, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 09:57:23'),
(435, 12, 'Cập nhật sản phẩm mã: 2', '2025-05-06 10:03:05'),
(436, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 10:06:08'),
(437, 12, 'Cập nhật sản phẩm mã: 22', '2025-05-06 10:08:44'),
(438, 12, 'Cập nhật sản phẩm mã: 23', '2025-05-06 10:11:27'),
(439, 12, 'Cập nhật sản phẩm mã: 23', '2025-05-06 10:14:51'),
(440, 12, 'Cập nhật sản phẩm mã: 23', '2025-05-06 10:20:32'),
(441, 12, 'Cập nhật danh mục có mã: 1', '2025-05-06 10:22:46'),
(442, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 10:24:53'),
(443, 12, 'Cập nhật sản phẩm mã: 1', '2025-05-06 10:25:15'),
(445, 12, 'Cập nhật sản phẩm có mã: 1', '2025-05-06 10:52:20'),
(446, 12, 'Cập nhật sản phẩm có mã: 1', '2025-05-06 10:53:02'),
(447, 12, 'Cập nhật sản phẩm có mã: 7', '2025-05-06 10:53:50'),
(448, 13, 'Đăng nhập hệ thống', '2025-05-06 10:58:02'),
(449, 13, 'Đăng nhập hệ thống', '2025-05-06 10:58:43'),
(450, 13, 'Xóa danh mục có mã: 8', '2025-05-06 16:11:25'),
(451, 13, 'Cập nhật sản phẩm có mã: 1', '2025-05-06 11:30:46'),
(452, 13, 'Thêm danh mục có mã: 1', '2025-05-06 16:38:43'),
(453, 13, 'Xóa danh mục có mã: 212', '2025-05-06 16:40:10'),
(454, 13, 'Cập nhật danh mục có mã: 2', '2025-05-06 11:42:43'),
(455, 13, 'Cập nhật danh mục có mã: 3', '2025-05-06 11:43:00'),
(456, 13, 'Đăng nhập hệ thống', '2025-05-06 11:43:09'),
(457, 13, 'Xóa danh mục có mã: 100', '2025-05-06 16:43:25'),
(458, 13, 'Đăng nhập hệ thống', '2025-05-09 10:16:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `madh` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `magh` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madh` int(11) NOT NULL,
  `makh` int(11) DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `tinhtrang` varchar(50) DEFAULT NULL,
  `ngaydat` date DEFAULT NULL,
  `tongtien` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `magh` int(11) NOT NULL,
  `makh` int(11) DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  `hieuluc` tinyint(1) DEFAULT NULL,
  `tongsl` int(11) DEFAULT NULL,
  `tongtien` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dienthoai` varchar(15) DEFAULT NULL,
  `matkhau` varchar(100) DEFAULT NULL,
  `ngaydangky` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `hoten`, `diachi`, `email`, `dienthoai`, `matkhau`, `ngaydangky`) VALUES
(1, 'Phạm Minh Chiến', 'Lạng Sơn', 'phamc13579@gmail.com', '0339799810', '$2y$10$4Qnw4Kq.xnc06mTPpn6A2uFRimt7i1CkD156vDVutGt8SA9yaeOPi', '2025-04-22'),
(4, 'Hoàng', 'hà nội', 'hoang.le080506@gmail.com', '0339799810', '$2y$10$6gMjjvXHm5H7qhY.SL64d.l2NhBXxeYlFzydAUMsYK8r6abaB6nEa', '2025-05-06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(100) NOT NULL,
  `mota` text DEFAULT NULL,
  `giaban` decimal(10,2) DEFAULT NULL,
  `soluongton` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`, `mota`, `giaban`, `soluongton`, `hinhanh`) VALUES
(1, 'Laptop Văn Phòng', 'Laptop hiệu năng vừa phải, thiết kế mỏng nhẹ', 15000000.00, 20, 'laptop_vanphong.jpg'),
(2, 'PC Gaming', 'Máy tính để bàn chuyên chơi game với VGA mạnh', 30000000.00, 5, 'pc_gaming.jpg'),
(3, 'PC Văn Phòng', 'Máy tính bàn tiết kiệm điện, hiệu quả công việc', 9000000.00, 15, 'pc_vanphong.jpg'),
(4, 'Laptop Đồ Họa', 'Máy tính xách tay dùng cho dân thiết kế, Adobe, 3D', 28000000.00, 7, 'laptop_dohhoa.jpg'),
(5, 'Mini PC', 'Máy tính nhỏ gọn dùng cho công việc văn phòng nhẹ', 7000000.00, 12, 'mini_pc.jpg'),
(6, 'Laptop Sinh Viên', 'Laptop giá rẻ phù hợp cho sinh viên', 10000000.00, 30, 'laptop_sv.jpg'),
(7, 'Workstation', 'Máy trạm chuyên cho kỹ sư, render, CAD, AI', 45000000.00, 4, 'workstation.jpg'),
(8, 'Laptop Mỏng Nhẹ', 'Thiết kế siêu mỏng, thời lượng pin dài', 20000000.00, 8, 'laptop_ultrabook.jpg'),
(9, 'MacBook', 'Máy tính Apple với macOS', 28000000.00, 6, 'macbook.jpg'),
(10, 'Laptop 2-trong-1', 'Laptop có thể gập làm máy tính bảng', 22000000.00, 5, 'laptop_2in1.jpg'),
(11, 'Laptop Chơi Game Cao Cấp', 'Laptop gaming cao cấp với RTX 4070', 42000000.00, 3, 'laptop_highend.jpg'),
(12, 'PC Stream Game', 'PC mạnh tối ưu cho livestream và gaming', 33000000.00, 2, 'pc_streaming.jpg'),
(13, 'All-in-One PC', 'Máy tính tất cả trong một, thiết kế gọn gàng', 16000000.00, 6, 'aio_pc.jpg'),
(14, 'Laptop Doanh Nhân', 'Thiết kế sang trọng, bảo mật tốt', 27000000.00, 9, 'laptop_business.jpg'),
(15, 'PC Biên Tập Video', 'Máy bàn tối ưu Adobe Premiere, After Effect', 35000000.00, 4, 'pc_editing.jpg'),
(16, 'Laptop Surface', 'Dòng laptop Microsoft Surface', 26000000.00, 5, 'surface.jpg'),
(17, 'Chromebook', 'Laptop chạy ChromeOS, nhẹ và rẻ', 6000000.00, 10, 'chromebook.jpg'),
(18, 'Laptop Gaming Cơ Bản', 'Laptop chơi game giá rẻ', 18000000.00, 12, 'gaming_basic.jpg'),
(19, 'Laptop Cảm Ứng', 'Máy tính xách tay hỗ trợ cảm ứng đa điểm', 21000000.00, 7, 'touch_laptop.jpg'),
(21204, 'Laptop Gaming', 'Máy tính xách tay cấu hình cao chuyên chơi game', 25000000.00, 10, 'laptop_gaming.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(100) DEFAULT NULL,
  `giaban` decimal(10,2) DEFAULT NULL,
  `soluongton` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `maloai` int(11) DEFAULT NULL,
  `giagoc` decimal(10,2) DEFAULT NULL,
  `diem_danhgia` float DEFAULT NULL,
  `giamgia` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`madh`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`magh`,`masp`),
  ADD KEY `masp` (`masp`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madh`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`magh`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sanpham_loaisanpham` (`maloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `magh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21224;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admin_log`
--
ALTER TABLE `admin_log`
  ADD CONSTRAINT `admin_log_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_log_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_madh` FOREIGN KEY (`madh`) REFERENCES `donhang` (`madh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdonhang_masp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `chitietgiohang_magh` FOREIGN KEY (`magh`) REFERENCES `giohang` (`magh`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietgiohang_masp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_makh` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_makh` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_maloai` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
