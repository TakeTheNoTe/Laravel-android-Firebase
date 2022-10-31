-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2019 at 09:23 AM
-- Server version: 10.2.25-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1760910_db_marketresto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Aufa', 'am.rifqi@ymail.com', NULL, '$2y$10$R8OApF9Plk1/IeA0X0fSV.7ZimUzDUHfpmyxxy82DSCUjZigf/qDm', '2b40HeJC02r07sQqWJYmRpSgYCm4XN2X5s57x4neXLvy7hrlhJrSnVPS3zap', '2018-12-27 17:36:38', '2018-12-27 17:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_menu` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_order`
--

INSERT INTO `detail_order` (`id`, `id_order`, `id_menu`, `qty`, `harga`, `discount`, `catatan`, `created_at`, `updated_at`) VALUES
(16, 14, 150, 1, '12000.00', 0, NULL, '2019-01-21 04:28:08', '2019-01-21 04:28:08'),
(17, 15, 58, 2, '9000.00', 0, NULL, '2019-01-21 15:51:02', '2019-01-21 15:51:02'),
(19, 17, 60, 2, '9000.00', 0, 'Bagian Dada', '2019-01-27 22:54:21', '2019-01-27 22:54:21'),
(20, 18, 60, 2, '9000.00', 0, NULL, '2019-01-27 23:39:12', '2019-01-27 23:39:12'),
(21, 19, 60, 2, '9000.00', 0, 'dada', '2019-01-30 11:06:59', '2019-01-30 11:06:59'),
(22, 20, 151, 1, '12000.00', 0, NULL, '2019-01-30 14:16:53', '2019-01-30 14:16:53'),
(23, 21, 59, 2, '9000.00', 0, NULL, '2019-01-30 14:18:14', '2019-01-30 14:18:14'),
(24, 22, 111, 1, '15000.00', 0, NULL, '2019-01-30 14:19:28', '2019-01-30 14:19:28'),
(25, 22, 116, 1, '25000.00', 0, NULL, '2019-01-30 14:19:28', '2019-01-30 14:19:28'),
(26, 22, 113, 1, '25000.00', 0, NULL, '2019-01-30 14:19:28', '2019-01-30 14:19:28'),
(27, 22, 114, 1, '30000.00', 0, NULL, '2019-01-30 14:19:28', '2019-01-30 14:19:28'),
(28, 23, 15, 2, '18000.00', 0, NULL, '2019-01-30 14:29:06', '2019-01-30 14:29:06'),
(29, 24, 46, 2, '30000.00', 0, NULL, '2019-01-30 14:31:39', '2019-01-30 14:31:39'),
(30, 25, 20, 1, '12000.00', 0, NULL, '2019-01-30 14:32:01', '2019-01-30 14:32:01'),
(31, 26, 141, 1, '25000.00', 5, NULL, '2019-01-30 14:32:42', '2019-01-30 14:32:42'),
(32, 26, 143, 1, '15000.00', 0, NULL, '2019-01-30 14:32:42', '2019-01-30 14:32:42'),
(33, 27, 150, 1, '12000.00', 0, NULL, '2019-01-30 14:54:53', '2019-01-30 14:54:53'),
(34, 28, 65, 1, '48000.00', 0, NULL, '2019-01-30 14:56:04', '2019-01-30 14:56:04'),
(35, 28, 64, 1, '45000.00', 5, NULL, '2019-01-30 14:56:04', '2019-01-30 14:56:04'),
(36, 29, 141, 1, '25000.00', 5, NULL, '2019-01-30 14:56:34', '2019-01-30 14:56:34'),
(37, 30, 78, 1, '110000.00', 0, NULL, '2019-01-30 14:57:11', '2019-01-30 14:57:11'),
(38, 31, 15, 1, '18000.00', 0, NULL, '2019-01-30 14:57:36', '2019-01-30 14:57:36'),
(39, 32, 150, 1, '12000.00', 0, NULL, '2019-01-30 15:02:41', '2019-01-30 15:02:41'),
(40, 33, 150, 1, '12000.00', 0, NULL, '2019-01-30 15:02:55', '2019-01-30 15:02:55'),
(41, 34, 152, 1, '12000.00', 0, NULL, '2019-01-30 15:03:09', '2019-01-30 15:03:09'),
(42, 35, 113, 1, '25000.00', 0, NULL, '2019-01-30 15:04:51', '2019-01-30 15:04:51'),
(43, 36, 66, 1, '30000.00', 0, NULL, '2019-01-30 15:05:16', '2019-01-30 15:05:16'),
(44, 37, 10, 1, '15000.00', 0, NULL, '2019-01-30 15:05:37', '2019-01-30 15:05:37'),
(45, 38, 78, 1, '110000.00', 0, NULL, '2019-01-30 15:05:53', '2019-01-30 15:05:53'),
(46, 39, 13, 1, '15000.00', 0, NULL, '2019-01-30 15:06:17', '2019-01-30 15:06:17'),
(47, 39, 11, 1, '20000.00', 0, NULL, '2019-01-30 15:06:17', '2019-01-30 15:06:17'),
(48, 40, 47, 1, '25000.00', 0, NULL, '2019-01-30 15:06:32', '2019-01-30 15:06:32'),
(49, 41, 58, 2, '9000.00', 0, NULL, '2019-01-30 15:12:57', '2019-01-30 15:12:57'),
(50, 42, 32, 1, '55000.00', 0, NULL, '2019-01-31 01:32:09', '2019-01-31 01:32:09'),
(51, 43, 104, 2, '15000.00', 0, NULL, '2019-01-31 02:04:48', '2019-01-31 02:04:48'),
(52, 44, 104, 1, '15000.00', 0, NULL, '2019-01-31 02:05:09', '2019-01-31 02:05:09'),
(53, 45, 105, 1, '20000.00', 0, NULL, '2019-01-31 02:05:31', '2019-01-31 02:05:31'),
(54, 45, 108, 1, '25000.00', 0, NULL, '2019-01-31 02:05:31', '2019-01-31 02:05:31'),
(55, 46, 71, 1, '10000.00', 0, NULL, '2019-01-31 02:05:44', '2019-01-31 02:05:44'),
(56, 47, 127, 1, '15000.00', 0, NULL, '2019-02-01 00:50:40', '2019-02-01 00:50:40'),
(57, 48, 71, 1, '10000.00', 0, NULL, '2019-02-01 00:50:54', '2019-02-01 00:50:54'),
(58, 49, 25, 1, '10000.00', 0, NULL, '2019-02-01 00:51:14', '2019-02-01 00:51:14'),
(59, 50, 59, 2, '9000.00', 0, NULL, '2019-02-01 00:51:48', '2019-02-01 00:51:48'),
(60, 51, 60, 2, '9000.00', 0, NULL, '2019-02-01 00:53:14', '2019-02-01 00:53:14'),
(61, 52, 163, 2, '12000.00', 0, 'Dikasih cabe', '2019-02-01 07:51:14', '2019-02-01 07:51:14'),
(62, 53, 59, 2, '9000.00', 0, NULL, '2019-02-04 01:17:46', '2019-02-04 01:17:46'),
(63, 54, 59, 2, '9000.00', 0, NULL, '2019-02-09 04:59:40', '2019-02-09 04:59:40'),
(64, 55, 16, 1, '12000.00', 0, NULL, '2019-02-09 05:10:02', '2019-02-09 05:10:02'),
(65, 55, 18, 1, '15000.00', 0, NULL, '2019-02-09 05:10:02', '2019-02-09 05:10:02'),
(66, 56, 134, 1, '10000.00', 0, NULL, '2019-02-09 05:10:27', '2019-02-09 05:10:27'),
(67, 57, 165, 1, '13000.00', 0, NULL, '2019-02-09 07:25:48', '2019-02-09 07:25:48'),
(68, 57, 166, 1, '13000.00', 0, NULL, '2019-02-09 07:25:48', '2019-02-09 07:25:48'),
(69, 58, 112, 1, '3900.00', 0, NULL, '2019-02-09 07:31:18', '2019-02-09 07:31:18'),
(70, 58, 111, 1, '15000.00', 0, NULL, '2019-02-09 07:31:18', '2019-02-09 07:31:18'),
(71, 59, 166, 1, '13000.00', 0, NULL, '2019-02-09 07:31:32', '2019-02-09 07:31:32'),
(72, 60, 64, 1, '45000.00', 5, NULL, '2019-02-09 07:32:05', '2019-02-09 07:32:05'),
(73, 61, 78, 1, '110000.00', 0, NULL, '2019-02-09 07:32:32', '2019-02-09 07:32:32'),
(74, 62, 76, 1, '10000.00', 0, NULL, '2019-02-09 07:32:48', '2019-02-09 07:32:48'),
(75, 63, 130, 1, '12000.00', 0, NULL, '2019-02-09 07:33:05', '2019-02-09 07:33:05'),
(76, 64, 151, 1, '12000.00', 0, NULL, '2019-02-10 00:50:55', '2019-02-10 00:50:55'),
(77, 65, 71, 1, '10000.00', 0, NULL, '2019-02-10 00:51:21', '2019-02-10 00:51:21'),
(78, 66, 46, 1, '30000.00', 0, NULL, '2019-02-10 00:52:00', '2019-02-10 00:52:00'),
(79, 67, 39, 2, '8000.00', 0, NULL, '2019-02-10 01:02:21', '2019-02-10 01:02:21'),
(80, 68, 59, 2, '9000.00', 0, NULL, '2019-02-10 01:07:35', '2019-02-10 01:07:35'),
(81, 69, 59, 2, '9000.00', 0, 'pedas ya', '2019-02-10 07:15:37', '2019-02-10 07:15:37'),
(82, 70, 59, 2, '9000.00', 0, NULL, '2019-02-10 07:20:00', '2019-02-10 07:20:00'),
(83, 71, 59, 2, '9000.00', 0, 'Bagian Dada ya...', '2019-02-11 02:15:47', '2019-02-11 02:15:47'),
(84, 72, 60, 2, '9000.00', 0, NULL, '2019-03-23 06:23:19', '2019-03-23 06:23:19'),
(85, 73, 58, 2, '9000.00', 0, NULL, '2019-03-23 06:25:17', '2019-03-23 06:25:17'),
(86, 74, 161, 1, '10000.00', 10, NULL, '2019-03-24 14:48:34', '2019-03-24 14:48:34'),
(87, 74, 58, 1, '9000.00', 0, NULL, '2019-03-24 14:48:34', '2019-03-24 14:48:34'),
(88, 75, 59, 1, '9000.00', 0, NULL, '2019-03-26 03:24:59', '2019-03-26 03:24:59'),
(89, 75, 58, 1, '9000.00', 0, NULL, '2019-03-26 03:24:59', '2019-03-26 03:24:59'),
(90, 76, 59, 1, '9000.00', 0, NULL, '2019-03-26 05:31:34', '2019-03-26 05:31:34'),
(91, 76, 162, 2, '10000.00', 0, NULL, '2019-03-26 05:31:34', '2019-03-26 05:31:34'),
(92, 77, 161, 1, '10000.00', 10, NULL, '2019-03-26 06:18:24', '2019-03-26 06:18:24'),
(93, 77, 60, 1, '9000.00', 0, NULL, '2019-03-26 06:18:24', '2019-03-26 06:18:24'),
(94, 77, 169, 1, '5000.00', 0, NULL, '2019-03-26 06:18:24', '2019-03-26 06:18:24'),
(95, 78, 160, 1, '10000.00', 0, NULL, '2019-03-27 08:01:07', '2019-03-27 08:01:07'),
(96, 78, 62, 1, '13000.00', 0, NULL, '2019-03-27 08:01:07', '2019-03-27 08:01:07'),
(97, 78, 169, 1, '5000.00', 0, NULL, '2019-03-27 08:01:07', '2019-03-27 08:01:07'),
(98, 79, 134, 1, '10000.00', 0, NULL, '2019-03-27 12:13:31', '2019-03-27 12:13:31'),
(99, 79, 135, 1, '18000.00', 0, NULL, '2019-03-27 12:13:31', '2019-03-27 12:13:31'),
(100, 79, 136, 1, '12000.00', 0, NULL, '2019-03-27 12:13:31', '2019-03-27 12:13:31'),
(101, 80, 79, 1, '58000.00', 5, NULL, '2019-03-27 12:13:49', '2019-03-27 12:13:49'),
(102, 81, 28, 1, '50000.00', 5, NULL, '2019-03-27 12:14:12', '2019-03-27 12:14:12'),
(103, 81, 30, 1, '51000.00', 5, NULL, '2019-03-27 12:14:12', '2019-03-27 12:14:12'),
(104, 82, 104, 1, '15000.00', 0, NULL, '2019-03-27 12:14:47', '2019-03-27 12:14:47'),
(105, 82, 107, 1, '15000.00', 0, NULL, '2019-03-27 12:14:47', '2019-03-27 12:14:47'),
(106, 83, 39, 1, '8000.00', 0, NULL, '2019-03-27 12:15:48', '2019-03-27 12:15:48'),
(107, 83, 40, 1, '10000.00', 0, NULL, '2019-03-27 12:15:48', '2019-03-27 12:15:48'),
(108, 84, 59, 1, '9000.00', 0, NULL, '2019-03-27 12:16:08', '2019-03-27 12:16:08'),
(109, 84, 60, 1, '9000.00', 0, NULL, '2019-03-27 12:16:08', '2019-03-27 12:16:08'),
(110, 85, 161, 1, '10000.00', 10, NULL, '2019-03-27 12:24:19', '2019-03-27 12:24:19'),
(111, 85, 158, 1, '10000.00', 0, NULL, '2019-03-27 12:24:19', '2019-03-27 12:24:19'),
(112, 86, 58, 1, '9000.00', 0, NULL, '2019-03-28 00:21:25', '2019-03-28 00:21:25'),
(113, 86, 59, 1, '9000.00', 0, NULL, '2019-03-28 00:21:25', '2019-03-28 00:21:25'),
(114, 87, 58, 1, '9000.00', 0, NULL, '2019-03-28 00:24:36', '2019-03-28 00:24:36'),
(115, 87, 59, 2, '9000.00', 0, NULL, '2019-03-28 00:24:36', '2019-03-28 00:24:36'),
(116, 87, 61, 1, '10000.00', 0, NULL, '2019-03-28 00:24:36', '2019-03-28 00:24:36'),
(117, 87, 63, 1, '7000.00', 0, NULL, '2019-03-28 00:24:36', '2019-03-28 00:24:36'),
(119, 89, 32, 1, '55000.00', 0, NULL, '2019-03-28 00:35:27', '2019-03-28 00:35:27'),
(120, 89, 39, 1, '8000.00', 0, NULL, '2019-03-28 00:35:27', '2019-03-28 00:35:27'),
(121, 90, 105, 1, '20000.00', 0, NULL, '2019-03-28 00:35:42', '2019-03-28 00:35:42'),
(122, 91, 28, 1, '50000.00', 5, NULL, '2019-03-28 00:36:02', '2019-03-28 00:36:02'),
(123, 91, 30, 1, '51000.00', 5, NULL, '2019-03-28 00:36:02', '2019-03-28 00:36:02'),
(124, 92, 11, 1, '20000.00', 0, NULL, '2019-03-28 00:36:23', '2019-03-28 00:36:23'),
(125, 92, 12, 1, '22000.00', 0, NULL, '2019-03-28 00:36:23', '2019-03-28 00:36:23'),
(126, 93, 23, 1, '10000.00', 0, NULL, '2019-03-28 00:46:27', '2019-03-28 00:46:27'),
(127, 93, 24, 1, '12000.00', 0, NULL, '2019-03-28 00:46:27', '2019-03-28 00:46:27'),
(128, 93, 26, 1, '8000.00', 0, NULL, '2019-03-28 00:46:27', '2019-03-28 00:46:27'),
(129, 93, 27, 1, '8000.00', 0, NULL, '2019-03-28 00:46:27', '2019-03-28 00:46:27'),
(130, 94, 58, 1, '9000.00', 0, NULL, '2019-03-28 00:48:21', '2019-03-28 00:48:21'),
(131, 94, 160, 1, '10000.00', 0, NULL, '2019-03-28 00:48:21', '2019-03-28 00:48:21'),
(132, 95, 161, 1, '10000.00', 10, NULL, '2019-03-28 01:11:20', '2019-03-28 01:11:20'),
(133, 95, 62, 1, '13000.00', 0, NULL, '2019-03-28 01:11:20', '2019-03-28 01:11:20'),
(134, 96, 58, 1, '9000.00', 0, NULL, '2019-03-28 07:37:42', '2019-03-28 07:37:42'),
(135, 96, 161, 1, '10000.00', 10, NULL, '2019-03-28 07:37:42', '2019-03-28 07:37:42'),
(136, 97, 58, 1, '9000.00', 0, NULL, '2019-03-28 07:48:50', '2019-03-28 07:48:50'),
(137, 97, 59, 1, '9000.00', 0, NULL, '2019-03-28 07:48:50', '2019-03-28 07:48:50'),
(138, 98, 58, 1, '9000.00', 0, NULL, '2019-03-28 07:53:24', '2019-03-28 07:53:24'),
(139, 98, 160, 1, '10000.00', 0, NULL, '2019-03-28 07:53:24', '2019-03-28 07:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `favorit`
--

CREATE TABLE `favorit` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_menu` int(10) UNSIGNED NOT NULL,
  `id_konsumen` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorit`
--

INSERT INTO `favorit` (`id`, `id_menu`, `id_konsumen`, `created_at`, `updated_at`) VALUES
(12, 150, 4, '2019-01-30 14:15:54', '2019-01-30 14:15:54'),
(13, 152, 4, '2019-01-30 14:15:57', '2019-01-30 14:15:57'),
(14, 148, 4, '2019-01-30 14:16:04', '2019-01-30 14:16:04'),
(15, 153, 4, '2019-01-30 14:16:11', '2019-01-30 14:16:11'),
(16, 58, 4, '2019-01-30 14:17:44', '2019-01-30 14:17:44'),
(17, 60, 4, '2019-01-30 14:17:52', '2019-01-30 14:17:52'),
(18, 111, 4, '2019-01-30 14:18:50', '2019-01-30 14:18:50'),
(19, 116, 4, '2019-01-30 14:18:56', '2019-01-30 14:18:56'),
(20, 113, 4, '2019-01-30 14:18:58', '2019-01-30 14:18:58'),
(21, 15, 4, '2019-01-30 14:28:44', '2019-01-30 14:28:44'),
(22, 17, 4, '2019-01-30 14:28:46', '2019-01-30 14:28:46'),
(23, 46, 4, '2019-01-30 14:31:23', '2019-01-30 14:31:23'),
(24, 48, 4, '2019-01-30 14:31:26', '2019-01-30 14:31:26'),
(25, 19, 4, '2019-01-30 14:31:51', '2019-01-30 14:31:51'),
(26, 141, 4, '2019-01-30 14:32:22', '2019-01-30 14:32:22'),
(27, 143, 4, '2019-01-30 14:32:24', '2019-01-30 14:32:24'),
(28, 65, 4, '2019-01-30 14:34:10', '2019-01-30 14:34:10'),
(29, 117, 4, '2019-01-30 14:34:13', '2019-01-30 14:34:13'),
(30, 150, 2, '2019-01-30 14:54:37', '2019-01-30 14:54:37'),
(31, 151, 2, '2019-01-30 14:54:43', '2019-01-30 14:54:43'),
(32, 117, 2, '2019-01-30 14:55:42', '2019-01-30 14:55:42'),
(33, 142, 2, '2019-01-30 14:56:20', '2019-01-30 14:56:20'),
(34, 141, 2, '2019-01-30 14:56:25', '2019-01-30 14:56:25'),
(35, 78, 2, '2019-01-30 14:56:51', '2019-01-30 14:56:51'),
(36, 80, 2, '2019-01-30 14:56:56', '2019-01-30 14:56:56'),
(37, 82, 2, '2019-01-30 14:57:00', '2019-01-30 14:57:00'),
(38, 15, 2, '2019-01-30 14:57:24', '2019-01-30 14:57:24'),
(39, 17, 2, '2019-01-30 14:57:26', '2019-01-30 14:57:26'),
(40, 9, 2, '2019-01-30 15:05:31', '2019-01-30 15:05:31'),
(41, 12, 2, '2019-01-30 15:06:08', '2019-01-30 15:06:08'),
(42, 14, 2, '2019-01-30 15:06:10', '2019-01-30 15:06:10'),
(43, 105, 2, '2019-01-30 15:06:45', '2019-01-30 15:06:45'),
(44, 71, 2, '2019-01-30 15:12:37', '2019-01-30 15:12:37'),
(45, 77, 2, '2019-01-30 15:12:39', '2019-01-30 15:12:39'),
(50, 150, 5, '2019-02-09 07:25:15', '2019-02-09 07:25:15'),
(51, 148, 5, '2019-02-09 07:25:21', '2019-02-09 07:25:21'),
(52, 151, 5, '2019-02-09 07:25:33', '2019-02-09 07:25:33'),
(53, 71, 5, '2019-02-10 00:51:12', '2019-02-10 00:51:12'),
(54, 46, 5, '2019-02-10 00:51:32', '2019-02-10 00:51:32'),
(55, 52, 5, '2019-02-10 00:51:37', '2019-02-10 00:51:37'),
(56, 48, 5, '2019-02-10 00:51:39', '2019-02-10 00:51:39'),
(57, 32, 5, '2019-02-10 00:55:41', '2019-02-10 00:55:41'),
(58, 40, 5, '2019-02-10 00:55:44', '2019-02-10 00:55:44'),
(59, 58, 1, '2019-02-11 02:10:03', '2019-02-11 02:10:03'),
(60, 78, 1, '2019-03-06 06:26:21', '2019-03-06 06:26:21'),
(61, 32, 1, '2019-03-12 10:45:12', '2019-03-12 10:45:12'),
(62, 147, 1, '2019-04-11 02:31:39', '2019-04-11 02:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjek` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `nama`, `email`, `subjek`, `phone`, `kota`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Aufa', 'm.rifqi.aufa.abdika@gmail.com', 'Applikasi Error', '6281268475430', 'Pekanbaru', 'Terjadi error saat melakukan pemesanan, aplikasi tiba tiba tertutup', '2019-01-04 10:59:35', '2019-01-04 10:59:35'),
(2, 'Muhammad Gufindo', 'mgufindo@gmail.com', 'Pertanyaan', '6281268475430', 'Jakarta', 'Tes', '2019-01-25 10:50:42', '2019-01-25 10:50:42'),
(3, 'Aufa abdika', 'm.rifqi.aufa.abdika@gmail.com', 'Error', '6281268475430', 'Jakarta', 'Terjadi error saat mencari lokasi', '2019-01-25 10:55:05', '2019-01-25 10:55:05'),
(4, 'Muhammad Gufindo', 'am.rifqi@ymail.com', 'Error', '6281268475430', 'Jakarta', 'Terjadi Error', '2019-01-27 08:32:02', '2019-01-27 08:32:02'),
(5, 'Muhammad Gufindo', 'ghjk', 'Error', '6281268475430', 'Jakarta', 'test', '2019-01-27 08:33:31', '2019-01-27 08:33:31'),
(6, 'Andi ahmad saputra', 'andi.fivesco@gmail.com', 'Tes', '085419152713', 'Pekanbaru', 'Tes', '2019-02-11 04:01:39', '2019-02-11 04:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori_nama`, `kategori_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Agar-Agar', 'Olahan berbahan agar-agar', '2018-12-27 17:41:21', '2018-12-27 17:41:21'),
(2, 'Asinan', 'Buah yang dijadikan asinan', '2018-12-27 17:41:21', '2018-12-27 17:41:21'),
(3, 'Manisan', 'Buah yang dijadikan manisan', '2018-12-27 17:41:21', '2018-12-27 17:41:21'),
(4, 'Ayam', 'Olahan berbahan dasar ayam', '2018-12-27 17:41:21', '2018-12-27 17:41:21'),
(5, 'Bakmi', 'Makanan dengan bahan dasar mie', '2018-12-27 17:41:21', '2018-12-27 17:41:21'),
(6, 'Asinan', 'Buah yang dijadikan asinan', '2018-12-27 17:41:21', '2018-12-27 17:41:21'),
(7, 'Bakso', 'Olahan daging atau ayam ', '2018-12-27 17:41:21', '2018-12-27 17:41:21'),
(8, 'Bakwan', 'Gorengan dari kol', '2018-12-27 17:41:22', '2018-12-27 17:41:22'),
(9, 'Biskuit', 'Kue kering', '2018-12-27 17:41:23', '2018-12-27 17:41:23'),
(10, 'Bistik', 'Makanan olahan daging panggan', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(11, 'Breakfast', 'Makan Pagi', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(12, 'Buah-Buahan', 'Macam macam buah', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(13, 'Bubur', 'Olahan Bubur', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(14, 'Camilan', 'Makanan ringan', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(15, 'Capcai', 'Makanan China', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(16, 'Cokelat', 'Makanan berbahan coklat', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(17, 'Daging', 'Olahan Daging', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(18, 'Dessert', 'Makanan penutup', '2018-12-27 17:41:25', '2018-12-27 17:41:25'),
(19, 'Dinner', 'Makan malam', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(20, 'Dodol', 'Olahan dodol', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(21, 'Donat', 'Olahan donat', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(22, 'Gado-Gado', 'Campuran sayuran dengan kuah kacang', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(23, 'Gandum', 'Olahan gandum', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(24, 'Hidangan Laut', 'Olahan makanan laut', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(25, 'Ikan', 'Olahan ikan', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(26, 'Cumi-Cumi', 'Olahan cumi', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(27, 'Ketam', 'Olahan ketam', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(28, 'Kerang', 'Olahan kerang', '2018-12-27 17:41:26', '2018-12-27 17:41:26'),
(29, 'Lauk', 'Lauk pauk', '2018-12-27 17:41:27', '2018-12-27 17:41:27'),
(30, 'Jagung', 'Olahan jagung', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(31, 'Jenang', 'Olahan jenang', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(32, 'Kacang', 'Olahan kacang', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(33, 'Kecap', 'Olahan kecap', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(34, 'Keju', 'Olahan keju', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(35, 'Kentang', 'Olahan kentang', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(36, 'Keripik', 'Olahan keripik', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(37, 'Kismis', 'Olahan kismis', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(38, 'Kornet', 'Olahan kornet', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(39, 'Kue', 'Hidangan kue', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(40, 'Kue Bolu', 'Hidangan kue bolu', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(41, 'Kue Kering', 'Hidangan kue kering', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(42, 'Kue Sepit', 'Hidangan kue sepit', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(43, 'Kue Serambi', 'Hidangan kue serambi', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(44, 'Lalapan', 'Olahan lalapan ', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(45, 'Lolipop', 'Permen ', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(46, 'Lontong', 'Olahan lontong', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(47, 'Lumpia', 'Olahan lumpia', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(48, 'Martabak', 'Olahan Martabak', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(49, 'Mie', 'Olahan mie', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(50, 'Mie Ayam', 'Olahan mie ayam', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(51, 'Nasi', 'Berbagai macam nasi', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(52, 'Nasi Goreng', 'Nasi digoreng', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(53, 'Oat', 'Olahan gandum', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(54, 'Oncom', 'Olahan tempe', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(55, 'Onde-Onde', 'Olahan kelapa', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(56, 'Opor', 'Hidangan opor santan', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(57, 'Penekuk', 'Hidangan kue kering', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(58, 'Pao', 'Makanan khas cina', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(59, 'Pasta', 'Makanan itali', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(60, 'Pempek', 'Makanan palembang', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(61, 'Tekwan', 'Makanan palembang', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(62, 'Perkedel', 'Makanan olahan sayuran', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(63, 'Permen', 'Manisan gula kembang', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(64, 'Pie', 'Kue kering', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(65, 'Puding', 'Kue basah', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(66, 'Rawon', 'Makanan khas Jawa', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(67, 'Rendang', 'Makanan khas Sumatra Barat', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(68, 'Roti', 'Hidangan roti', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(69, 'Salad', 'Hidangan sayuran', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(70, 'Sambal', 'Hidangan sambal', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(71, 'Sate', 'Hidangan sate', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(72, 'Selai', 'Hidangan selai', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(73, 'Sereal', 'Hidangan sereal', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(74, 'Sosis', 'Olahan daging', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(75, 'Soto', 'Makanan khas Jawa', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(76, 'Siomai', 'Makaan khas Jawa', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(77, 'Spageti', 'Makanan khas Itali', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(78, 'Sup', 'Olahan sup', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(79, 'Tahu', 'Olahan kedele', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(80, 'Tempe', 'Olahan kedele', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(81, 'Telur', 'Olahan telur', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(82, 'Tiram', 'Olahan tiram', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(83, 'Udang', 'Olahan udang', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(84, 'Air', 'Minuman', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(85, 'Es', 'Minuman segar', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(86, 'Jus Buah', 'Minuman Sari Buah', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(87, 'Kopi', 'Minuman kopi', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(88, 'Limun', 'Minuman limun', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(89, 'Soda', 'Minuman soda', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(90, 'Susu', 'Minuman susu', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(91, 'Teh', 'Minuman Teh', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(92, 'Yogurt', 'Minuman fermentasi susu', '2018-12-27 17:41:28', '2018-12-27 17:41:28'),
(93, 'Menu Utama', 'Sajian menu utama', '2018-12-27 18:01:58', '2018-12-27 18:01:58'),
(94, 'Best Seller', 'hidangan terbaikl', '2018-12-27 18:03:22', '2018-12-27 18:03:22'),
(95, 'Menu Khas', 'sajian lokal', '2018-12-27 18:03:41', '2018-12-27 18:03:41'),
(96, 'Nusantara', 'Sajian khas Nusantara', '2018-12-27 18:03:59', '2018-12-27 18:03:59'),
(97, 'Burger', 'burger', '2018-12-27 18:15:12', '2018-12-27 18:15:12'),
(98, 'Steak', 'Steak', '2018-12-27 18:15:48', '2018-12-27 18:15:48'),
(99, 'Minuman', 'minuman segar', '2018-12-27 18:42:33', '2018-12-27 18:42:33'),
(100, 'Pizza', 'makanan khas italy', '2018-12-27 19:12:59', '2018-12-27 19:12:59'),
(101, 'Kue Talam', 'Makanan Khas Melayu Riau', '2019-01-27 23:22:11', '2019-01-27 23:22:11'),
(102, 'Makanan Militer', 'AW', '2019-02-07 08:49:44', '2019-02-07 08:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id` int(10) UNSIGNED NOT NULL,
  `konsumen_nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konsumen_phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konsumen_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konsumen_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `konsumen_blacklist` tinyint(1) NOT NULL DEFAULT 0,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `konsumen_nama`, `konsumen_phone`, `konsumen_email`, `konsumen_balance`, `konsumen_blacklist`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Aufa', '6281268475430', 'm.rifqi.aufa.abdika@gmail.com', '24000.00', 0, 'emhOREDfnms:APA91bFpel42PG60LZWPS7_YAKe7LMJSqbDMm1tVjmybgKjQ0cURtqPlo8MbRe29y3SH1AcCJjNLc_sdWpPTOJQddF375Xnf72gBsxMWd77e4PHwS7T05RGAm_4JcWWHEbsmdTWcYfz3', '2018-12-28 07:30:21', '2019-08-02 02:06:32'),
(2, 'Muhammad Raihan', '6281268475403', 'm.raihan@ymail.com', '0.00', 0, 'f5hdKDGFYfY:APA91bFtzfrhJbjhNStxwkrd-kDlU5F8wlHvqVlNe8iUjwKuJCjZZYhd6T1YxfDG9KQjw8WfpHHdmERYrnxiP4Fc-yUZytnENRXiLHuxl4JDyD2xd_ZUx_OUeAgfuGwCjaotwPjpyjQG', '2019-01-06 03:48:21', '2019-01-30 14:54:07'),
(4, 'Abdullah', '628127580419', 'abdialam@yahoo.com', '0.00', 0, 'f5hdKDGFYfY:APA91bFtzfrhJbjhNStxwkrd-kDlU5F8wlHvqVlNe8iUjwKuJCjZZYhd6T1YxfDG9KQjw8WfpHHdmERYrnxiP4Fc-yUZytnENRXiLHuxl4JDyD2xd_ZUx_OUeAgfuGwCjaotwPjpyjQG', '2019-01-24 01:10:52', '2019-01-24 01:10:52'),
(5, 'Rizal Mualif', '6282283684146', 'rizal@ymail.com', '0.00', 0, 'f5hdKDGFYfY:APA91bFtzfrhJbjhNStxwkrd-kDlU5F8wlHvqVlNe8iUjwKuJCjZZYhd6T1YxfDG9KQjw8WfpHHdmERYrnxiP4Fc-yUZytnENRXiLHuxl4JDyD2xd_ZUx_OUeAgfuGwCjaotwPjpyjQG', '2019-01-28 00:52:44', '2019-01-28 00:52:44'),
(7, 'Muhamad Toha', '6282284240629', 'mtoha34@gmail.com', '0.00', 0, 'd7C4S9wNOs4:APA91bGirZuoPHb5_Jp2zdaUN9dnM6N_ffl7mJX9qGlz7ZjQ2U1tKJ5hl_L_W_kdVAVLh_Olnbac76FXfWF378Ptbx2tzYEDJ_f9ri5UQjUh672vbKadIDrOLeXZwWc55_Jdy3diVxMS', '2019-04-14 03:26:38', '2019-04-14 03:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `kurir`
--

CREATE TABLE `kurir` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_restoran` int(10) UNSIGNED NOT NULL,
  `kurir_nama` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurir_phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurir_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kurir_delete` tinyint(1) NOT NULL DEFAULT 0,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kurir`
--

INSERT INTO `kurir` (`id`, `id_restoran`, `kurir_nama`, `kurir_phone`, `kurir_email`, `kurir_delete`, `token`, `created_at`, `updated_at`) VALUES
(21, 9, 'Aufa', '6281268475443', 'am.rifqi@ymail.com', 0, 'cF-UgsVfJow:APA91bEWbd1vCTFYnksh38uLprxzDUBuO1_jFFypX9J7J644KFn29TizGY6AExqE83gYWV0-wZKiRjLNa3bX8y1wwOv0xu_OojAE0UmebYrCDUClbfGQwWHBOikZhfegR9DSJDuZ4yeT', '2019-01-17 00:05:51', '2019-03-28 01:10:48'),
(22, 9, 'Raihan Abdika', '628127580419', 'raihan.abdika@gmail.com', 1, NULL, '2019-01-27 11:19:33', '2019-01-27 11:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_restoran` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `id_satuan` int(10) UNSIGNED NOT NULL,
  `menu_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_harga` decimal(10,2) NOT NULL,
  `menu_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_ketersediaan` tinyint(1) NOT NULL DEFAULT 0,
  `menu_discount` double DEFAULT NULL,
  `menu_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `id_restoran`, `id_kategori`, `id_satuan`, `menu_nama`, `menu_foto`, `menu_harga`, `menu_deskripsi`, `menu_ketersediaan`, `menu_discount`, `menu_delete`, `created_at`, `updated_at`) VALUES
(2, 3, 97, 3, 'Burger Telur', '20181228144300.jpg', '12000.00', 'Burger dengan telur dan saus special garasi cafe', 1, 0, 0, '2018-12-28 07:43:00', '2018-12-28 07:43:00'),
(3, 3, 97, 3, 'Burger Daging Keju', '20181228144400.jpg', '20000.00', 'Ekstra keju dan daging olahan', 1, 0, 0, '2018-12-28 07:44:00', '2018-12-28 07:44:00'),
(4, 3, 97, 3, 'Burger Mozarella', '20181228144515.jpg', '21000.00', 'Keju mozarella dengan daging ayam', 1, 5, 0, '2018-12-28 07:45:15', '2018-12-28 07:45:15'),
(5, 3, 97, 3, 'Burger Souce', '20181228144620.jpg', '15000.00', 'Sause cabai esktra pedas', 1, 0, 0, '2018-12-28 07:46:20', '2018-12-28 07:46:20'),
(6, 3, 97, 3, 'Burger Chicken Nuget', '20181228144918.jpg', '20000.00', 'Burger dengan isi ring chicken steak', 1, 0, 0, '2018-12-28 07:49:18', '2018-12-28 07:49:18'),
(7, 3, 98, 3, 'Steak Chicken', '20181228145109.jpg', '15000.00', 'Ayam dengan bumbu nusantara', 1, 0, 0, '2018-12-28 07:51:09', '2018-12-28 07:51:09'),
(8, 3, 98, 3, 'Chicken Mozarella', '20181228145307.jpg', '19000.00', 'Ayam dengan isi keju mozarella', 1, 0, 0, '2018-12-28 07:53:07', '2018-12-28 07:53:07'),
(9, 3, 4, 15, 'Ayam Rica Rica + Nasi', '20181228145409.jpg', '25000.00', 'Ayam bumbu pedaa rica rica', 1, 0, 0, '2018-12-28 07:54:09', '2018-12-28 07:54:09'),
(10, 3, 4, 3, 'Feried Fries Chicken Mozarella', '20181228145627.jpg', '15000.00', 'Kentang goreng dengan lumeran keju mozarella', 1, 0, 0, '2018-12-28 07:56:27', '2018-12-28 07:56:27'),
(11, 4, 98, 15, 'Steak Ayam + Nasi', '20181228152018.jpg', '20000.00', 'Ayam steak dengan nasi', 1, 0, 0, '2018-12-28 08:20:18', '2018-12-28 08:20:18'),
(12, 4, 4, 3, 'Ayam Katsu + Fries', '20181228152148.jpg', '22000.00', 'Ayam dengan bumbu katsu dengam tambah keju', 1, 0, 0, '2018-12-28 08:21:48', '2018-12-28 08:21:48'),
(13, 4, 4, 3, 'Menu Hemat', '20181228152402.jpg', '15000.00', 'Ayam goreng + nasi + soto + teh es', 1, 0, 0, '2018-12-28 08:24:02', '2018-12-28 08:24:02'),
(14, 4, 4, 2, 'Ayam Teriaki Pedas', '20181228152531.jpg', '22000.00', 'Ayam teriaki dengan nasi dan telur', 1, 0, 0, '2018-12-28 08:25:31', '2018-12-28 08:25:31'),
(15, 1, 93, 3, 'Combo Box', '20181228185845.jpg', '18000.00', 'Toping strawbery mix mango mix chocolate mix green mix cappucino mix blueberry', 1, 0, 0, '2018-12-28 11:58:45', '2018-12-28 11:58:45'),
(16, 1, 93, 11, 'Muncrat Chocolate', '20181228185956.jpg', '12000.00', 'Toping black chocolate', 1, 0, 0, '2018-12-28 11:59:56', '2018-12-28 11:59:56'),
(17, 1, 93, 11, 'Muncrat Chocolate Keju', '20181228190110.jpg', '18000.00', 'Topping chocolate mix keju mix milo', 1, 0, 0, '2018-12-28 12:01:10', '2018-12-28 12:01:10'),
(18, 1, 93, 11, 'Muncrat Strawberry Milo', '20181228190218.jpg', '15000.00', 'Topping strawbery mix milo', 1, 0, 0, '2018-12-28 12:02:18', '2018-12-28 12:02:18'),
(19, 2, 8, 3, 'Bakwan mini', '20181228190848.jpg', '5000.00', 'Satu mangkok 5bola  akwan', 1, 0, 0, '2018-12-28 12:08:48', '2018-12-28 12:08:48'),
(20, 2, 8, 3, 'Bakwan sedang', '20181228191032.jpg', '12000.00', '12 bola bakwan', 1, 0, 0, '2018-12-28 12:10:32', '2018-12-28 12:10:32'),
(21, 2, 8, 3, 'Jumbo bakwan', '20181228191251.png', '16000.00', '1mangkok bakwan 20 bolam', 1, 0, 0, '2018-12-28 12:12:51', '2018-12-28 12:12:51'),
(22, 2, 8, 3, 'Babol praktis', '20181228191453.jpg', '15000.00', 'Isi praktis 10 bakwan bola', 1, 0, 0, '2018-12-28 12:14:53', '2018-12-28 12:14:53'),
(23, 5, 49, 15, 'Mie Goreng', '20181228192249.jpg', '10000.00', 'Mie telur goreng', 1, 0, 0, '2018-12-28 12:22:49', '2018-12-28 12:22:49'),
(24, 5, 49, 3, 'Mie Sagu Selat Panjang', '20181228192427.jpg', '12000.00', 'Makanan melayu asli selat panjang dengan rempah pedas', 1, 0, 0, '2018-12-28 12:24:27', '2018-12-28 12:24:27'),
(25, 5, 49, 3, 'Mie Aceh', '20181228192517.jpg', '10000.00', 'Mie aceh dengan bumbu khas aceh', 1, 0, 0, '2018-12-28 12:25:17', '2018-12-28 12:25:17'),
(26, 5, 99, 20, 'Milk Shake', '20181228192619.jpg', '8000.00', 'Milk shake dengan keju dan vanila', 1, 0, 0, '2018-12-28 12:26:19', '2018-12-28 12:26:19'),
(27, 5, 99, 20, 'Milk Shake Chocolate', '20181228192742.jpg', '8000.00', 'Milk shake chocolate dengan topping chocolate', 1, 0, 0, '2018-12-28 12:27:42', '2018-12-28 12:27:42'),
(28, 6, 4, 2, 'Ayam Besar Bakar Moody', '20181228193302.jpg', '50000.00', 'Ayam besar dengan panggan BBQ', 1, 5, 0, '2018-12-28 12:33:02', '2018-12-28 12:33:02'),
(29, 6, 49, 15, 'Mie Melayu', '20181228193350.jpg', '15000.00', 'Mie sagu khas selat panjang', 1, 0, 0, '2018-12-28 12:33:50', '2018-12-28 12:33:50'),
(30, 6, 51, 15, 'Nasi Kapsyah', '20181228193454.jpg', '51000.00', 'Nasi rempah dengan ayam saus moody', 1, 5, 0, '2018-12-28 12:34:54', '2018-12-28 12:34:54'),
(31, 6, 51, 15, 'Nasi Kapsyah', '20181228193456.jpg', '51000.00', 'Nasi rempah dengan ayam saus moody', 1, 5, 1, '2018-12-28 12:34:56', '2018-12-28 13:02:55'),
(32, 7, 39, 22, 'Syfon', '20181228201204.jpg', '55000.00', 'Bolu lembut dengan citarada susu dan telur', 1, 0, 0, '2018-12-28 13:12:04', '2018-12-28 13:12:04'),
(33, 7, 68, 22, 'Tawar Kupas Reguler', '20181228201357.jpg', '15000.00', 'Roti dengan tiga gelas susu', 1, 0, 0, '2018-12-28 13:13:57', '2018-12-28 13:13:57'),
(34, 7, 68, 22, 'tawar kupas premium', '20181228201512.jpg', '18000.00', 'Dengan empat gelas susu', 1, 0, 0, '2018-12-28 13:15:12', '2018-12-28 13:15:12'),
(35, 7, 68, 22, 'Tawar Pandan premium', '20181228201614.jpg', '18500.00', 'Tawar dengan rasa pandang dan 3 gelas susu', 1, 0, 0, '2018-12-28 13:16:14', '2018-12-28 13:16:14'),
(36, 7, 68, 22, 'Roti tawar reguler', '20181228201717.jpg', '13500.00', 'Roti tawar dengan telur dan susu', 1, 0, 0, '2018-12-28 13:17:17', '2018-12-28 13:17:17'),
(37, 7, 68, 22, 'Rotai premium', '20181228201815.jpg', '10200.00', 'Tawar dengan bentuk bundar untuk cornet yang lebih nikmat', 1, 0, 0, '2018-12-28 13:18:15', '2018-12-28 13:18:15'),
(38, 7, 68, 21, 'Roti Siak', '20181228202002.jpg', '45000.00', 'Roti kering dengan mentega di atasnya', 1, 0, 0, '2018-12-28 13:20:02', '2018-12-28 13:20:02'),
(39, 7, 39, 22, 'Triangle Chicken', '20181228202207.jpg', '8000.00', 'Roti lapis segi tiga isi ayam', 1, 0, 0, '2018-12-28 13:22:07', '2018-12-28 13:22:07'),
(40, 7, 39, 23, 'Donat Sapi', '20181228202244.jpg', '10000.00', 'Isi daging sapi', 1, 0, 0, '2018-12-28 13:22:44', '2018-12-28 13:22:44'),
(41, 7, 39, 23, 'Donat Long Keju', '20181228202352.jpg', '10000.00', 'Roti keju luar dan dalam', 1, 0, 0, '2018-12-28 13:23:52', '2018-12-28 13:23:52'),
(42, 7, 39, 23, 'Abon Sapi', '20181228202442.jpg', '11000.00', 'Roti rasa abon sapi', 1, 0, 0, '2018-12-28 13:24:42', '2018-12-28 13:24:42'),
(43, 7, 39, 23, 'Donat Ayam', '20181228202529.jpg', '10000.00', 'Donat isi ayam', 1, 0, 0, '2018-12-28 13:25:29', '2018-12-28 13:25:29'),
(44, 7, 39, 24, 'Danish Kelapa', '20181228202622.jpg', '8000.00', 'Roti lapis isi kelapa', 1, 0, 0, '2018-12-28 13:26:22', '2018-12-28 13:26:22'),
(45, 7, 39, 24, 'Abon Ayam', '20181228202701.jpg', '8000.00', 'Roti dengan taburan dan isi abon ayam', 1, 0, 0, '2018-12-28 13:27:01', '2018-12-28 13:27:01'),
(46, 8, 4, 3, 'Super Besar 2', '20181228203504.jpg', '30000.00', 'Dua ayam + Nasi + Pepsi', 1, 0, 0, '2018-12-28 13:35:04', '2018-12-28 13:35:04'),
(47, 8, 4, 3, 'Super Besar 1', '20181228203603.jpg', '25000.00', 'Dada + Nasi +Pepsi', 1, 0, 0, '2018-12-28 13:36:03', '2018-12-28 13:36:03'),
(48, 8, 4, 3, 'Super Mantap', '20181228203702.png', '20000.00', 'Paha + Nasi + Pepsi', 1, 0, 0, '2018-12-28 13:37:02', '2018-12-28 13:37:02'),
(52, 8, 4, 3, 'Kombo Super Star', '20181228203856.png', '55000.00', '2 Ayam besar + 2 Nasi + 2 Pepsi + 2 Es Krim', 1, 0, 0, '2018-12-28 13:38:56', '2018-12-28 13:38:56'),
(56, 8, 4, 3, 'Super Family', '20181228204020.png', '80000.00', '6 Ayam + 3 Nasi + 3 Pepsi', 1, 0, 0, '2018-12-28 13:40:20', '2018-12-28 13:40:20'),
(57, 8, 89, 0, 'Pepsi 350ml', '20181228204221.png', '9000.00', 'Pepsi soda', 1, 0, 0, '2018-12-28 13:42:21', '2018-12-28 13:42:21'),
(58, 9, 4, 2, 'Ayam Bakar', '20190127181119.jpg', '9000.00', 'Ayam bakar padan', 1, 0, 0, '2018-12-28 13:59:27', '2019-02-22 10:49:36'),
(59, 9, 4, 2, 'Ayam Pop', '20181228210010.jpg', '9000.00', 'Ayam pop', 1, 0, 0, '2018-12-28 14:00:10', '2018-12-28 14:00:10'),
(60, 9, 4, 2, 'Ayam Goreng Bumbu', '20181228210131.jpg', '9000.00', 'Ayam goreng bumbu kelapa', 1, 0, 0, '2018-12-28 14:01:31', '2018-12-28 14:01:31'),
(61, 9, 25, 2, 'Asam Pedas', '20181228210407.jpg', '15000.00', 'Ikan patin dengan bumbu asam pedas', 0, 0, 0, '2018-12-28 14:04:07', '2019-03-28 07:52:09'),
(62, 9, 67, 2, 'Rendang Daging', '20181228210945.jpg', '13000.00', 'Redang dengan bumbu sumatra barat', 1, 0, 0, '2018-12-28 14:09:45', '2018-12-28 14:09:45'),
(63, 9, 81, 3, 'Telur Dadar Padang', '20181228211222.jpg', '7000.00', 'Telur dadar padang', 1, 0, 0, '2018-12-28 14:12:22', '2018-12-28 14:12:22'),
(64, 12, 51, 15, 'Nasi Jagung', '20181228211620.png', '45000.00', 'Nasi jagung', 1, 5, 0, '2018-12-28 14:16:20', '2018-12-28 14:16:20'),
(65, 12, 11, 15, 'Roti Mozarella', '20181228211714.png', '48000.00', 'Nasi mozarela', 1, 0, 0, '2018-12-28 14:17:14', '2018-12-28 14:17:14'),
(66, 12, 59, 3, 'La pasta', '20181228211807.png', '30000.00', 'Pasta dengan sous spesial', 1, 0, 0, '2018-12-28 14:18:07', '2018-12-28 14:18:07'),
(67, 12, 100, 19, 'Sea lover', '20181228211844.png', '81000.00', 'd', 0, 0, 0, '2018-12-28 14:18:44', '2018-12-28 14:18:44'),
(68, 12, 100, 19, 'Sosis', '20181228211940.png', '71000.00', 'taburan sosis', 1, 0, 0, '2018-12-28 14:19:40', '2018-12-28 14:19:40'),
(69, 12, 100, 19, 'Sosis Jamur', '20181228212021.png', '80000.00', 'Taburan sosis dan jagung', 1, 5, 0, '2018-12-28 14:20:21', '2018-12-28 14:20:21'),
(70, 12, 100, 19, 'Mozarella special', '20181228212115.png', '90000.00', 'Keju mozarella di setiap gigitan', 1, 0, 0, '2018-12-28 14:21:15', '2018-12-28 14:21:15'),
(71, 13, 4, 2, 'Ayam Bakar', '20181228212704.jpg', '10000.00', 'Ayam bakar padang', 1, 0, 0, '2018-12-28 14:27:04', '2018-12-28 14:27:04'),
(72, 13, 25, 2, 'Asam pade', '20181228212804.jpg', '10000.00', 'Ikan patin asam pedas', 1, 0, 0, '2018-12-28 14:28:04', '2018-12-28 14:28:04'),
(73, 13, 67, 2, 'Rendang daging', '20181228212840.jpg', '12000.00', 'rendang padang', 1, 0, 0, '2018-12-28 14:28:40', '2018-12-28 14:28:40'),
(74, 13, 81, 3, 'Dadar Padang', '20181228212920.jpg', '8000.00', 'dadar pandang', 1, 0, 0, '2018-12-28 14:29:20', '2018-12-28 14:29:20'),
(75, 13, 25, 3, 'Balado', '20181228213019.jpg', '9000.00', 'Ikan laut', 1, 0, 0, '2018-12-28 14:30:19', '2018-12-28 14:30:19'),
(76, 13, 4, 2, 'Ayam Balado', '20181229061037.jpg', '10000.00', 'Sambal cabe hijau', 1, 0, 0, '2018-12-28 23:10:37', '2018-12-28 23:10:37'),
(77, 13, 4, 2, 'Ayam Goreng', '20181229061129.jpg', '8000.00', 'Ayam goreng bumbu', 1, 0, 0, '2018-12-28 23:11:29', '2018-12-28 23:11:29'),
(78, 15, 4, 3, 'Combo', '20181229064044.png', '110000.00', '5 Dada dan 5 Paha', 1, 0, 0, '2018-12-28 23:40:44', '2018-12-28 23:40:44'),
(79, 15, 4, 3, 'Reguler', '20181229064149.png', '58000.00', '3 Dada dan 3 Paha', 1, 5, 0, '2018-12-28 23:41:49', '2018-12-28 23:41:49'),
(80, 15, 4, 3, 'Super Besar 2', '20181229064333.jpg', '52000.00', '2 Ayam besar + Nasi + Pepsi 350 ml', 1, 0, 0, '2018-12-28 23:43:33', '2018-12-28 23:43:33'),
(81, 15, 4, 3, 'Super Besar 1', '20181229064452.jpg', '49000.00', '1 Ayam Besar + Nasi + Pepsi 350 ml', 0, 0, 0, '2018-12-28 23:44:52', '2018-12-28 23:45:21'),
(82, 15, 4, 3, 'Kombo Super Star', '20181229064717.png', '91000.00', '2 Ayam besar + 2 Nasi + 2 Pepsi 600 ml + Chocolate ice', 1, 5, 0, '2018-12-28 23:47:17', '2018-12-28 23:47:17'),
(83, 15, 4, 3, 'Super Family', '20181229064851.png', '150000.00', '6 Ayam Besar + 3 Nasi + 3 Pepsi 600 ml', 1, 6, 0, '2018-12-28 23:48:51', '2018-12-28 23:48:51'),
(84, 15, 89, 0, 'Pepsi 350 ml', '20181229065031.png', '6000.00', 'Minuman bersoda rasa cola', 1, 0, 0, '2018-12-28 23:50:31', '2018-12-28 23:50:31'),
(85, 15, 97, 3, 'Twisty', '20181229065154.jpg', '20000.00', 'Dengan taburan stik ayam', 1, 0, 0, '2018-12-28 23:51:54', '2018-12-28 23:51:54'),
(86, 15, 97, 3, 'O.R Burer', '20181229065252.jpg', '15000.00', 'Isi ayam dan bumbu O R', 0, 0, 0, '2018-12-28 23:52:52', '2018-12-28 23:52:52'),
(87, 15, 97, 3, 'Fish Fillet', '20181229065506.jpg', '21000.00', 'Isi kornet ikan', 0, 6, 0, '2018-12-28 23:55:06', '2018-12-28 23:55:06'),
(88, 15, 97, 3, 'Chick\'N Fillet', '20181229065611.jpg', '25000.00', 'Dengan ayam ukurab besar', 1, 0, 0, '2018-12-28 23:56:11', '2018-12-28 23:56:11'),
(89, 15, 51, 22, 'Nasi', '20181229065925.jpeg', '5000.00', 'Nasi pulen spesial KFC', 1, 0, 0, '2018-12-28 23:59:25', '2018-12-28 23:59:25'),
(90, 16, 4, 2, 'D\'besto big', '20181229072053.jpg', '11000.00', 'Ayam besae dengan sous khas d besto', 1, 0, 0, '2018-12-29 00:20:53', '2018-12-29 00:20:53'),
(91, 16, 4, 3, 'D\'Besto Reguler', '20181229072208.jpg', '20000.00', 'Ayam + Nasi', 1, 0, 0, '2018-12-29 00:22:08', '2018-12-29 00:22:08'),
(92, 16, 35, 3, 'Kentang Bolognese', '20181229072426.jpg', '10000.00', 'Kentang goreng dengan saus khas D\'Besto', 1, 0, 0, '2018-12-29 00:24:26', '2018-12-29 00:24:26'),
(93, 16, 51, 22, 'Nasi', '20181229072504.jpeg', '3000.00', 'Nasi putih', 1, 0, 0, '2018-12-29 00:25:04', '2018-12-29 00:25:04'),
(94, 16, 89, 0, 'Pepsi 350 ml', '20181229072550.png', '6000.00', 'Minuman soda rasa cola', 1, 0, 0, '2018-12-29 00:25:50', '2018-12-29 00:25:50'),
(95, 16, 89, 9, 'Bujibery', '20181229072639.png', '15000.00', 'Minuman soda rasa bujubery', 1, 0, 0, '2018-12-29 00:26:39', '2018-12-29 00:26:39'),
(96, 16, 97, 3, 'Cheese Burger', '20181229072820.jpg', '16000.00', 'lapisan keju dan daging ayam', 1, 0, 0, '2018-12-29 00:28:20', '2018-12-29 00:28:20'),
(97, 17, 48, 3, 'Martabak Mesir', '20181229092608.jpg', '15000.00', 'Dengan telur ayam dan daging rendang', 1, 0, 0, '2018-12-29 02:26:08', '2018-12-29 02:26:08'),
(98, 17, 93, 3, 'Boom', '20181229092720.jpg', '8000.00', 'Roti canai dengan susu kental manis', 1, 0, 0, '2018-12-29 02:27:20', '2018-12-29 02:27:20'),
(99, 17, 93, 3, 'Roti Tissu', '20181229092811.jpg', '15000.00', 'Roti canai lembut sekali cubit', 1, 0, 0, '2018-12-29 02:28:11', '2018-12-29 02:28:11'),
(100, 17, 93, 3, 'Roti Canai', '20181229092949.jpg', '12000.00', 'Roti canai original', 1, 0, 0, '2018-12-29 02:29:49', '2018-12-29 02:29:49'),
(101, 17, 48, 3, 'Martabak Mesir Spesial', '20181229093401.jpg', '20000.00', 'Estra  besar dengan daging rendang dan telur bebek', 1, 0, 0, '2018-12-29 02:34:01', '2018-12-29 02:34:01'),
(102, 17, 84, 20, 'Teh Telur', '20181229093453.jpg', '8000.00', 'Teh dengan telur ayam khas sumatra barat', 1, 0, 0, '2018-12-29 02:34:53', '2018-12-29 02:34:53'),
(103, 17, 84, 9, 'Air Mineral', '20181229093549.png', '3000.00', 'Air aqua 350 ml', 1, 0, 0, '2018-12-29 02:35:49', '2018-12-29 02:35:49'),
(104, 10, 4, 2, 'Ayam Bakar', '20181229093932.jpg', '15000.00', 'Ayam bakar padang', 1, 0, 0, '2018-12-29 02:39:32', '2018-12-29 02:39:32'),
(105, 10, 67, 2, 'Rendang Daging', '20181229094128.jpg', '20000.00', 'Rendang daging bumbu khas sumatra barat', 1, 0, 0, '2018-12-29 02:41:28', '2018-12-29 02:41:28'),
(106, 10, 25, 2, 'Asam Pedas', '20181229094222.jpg', '15000.00', 'Ikan masak asam pedas', 1, 0, 0, '2018-12-29 02:42:22', '2018-12-29 02:42:22'),
(107, 10, 4, 2, 'Ikan Balado', '20181229094315.jpg', '15000.00', 'Ikan cabe merah', 1, 0, 0, '2018-12-29 02:43:15', '2018-12-29 02:43:15'),
(108, 10, 67, 2, 'Rendang super', '20181229094416.jpeg', '25000.00', 'Rendah khas raso situjuah', 1, 0, 0, '2018-12-29 02:44:16', '2018-12-29 02:44:16'),
(109, 10, 84, 20, 'Teh Talua', '20181229094504.jpg', '12000.00', 'Teh dengan campuran telur ayam', 1, 0, 0, '2018-12-29 02:45:04', '2018-12-29 02:45:04'),
(110, 10, 84, 9, 'Air Mineral', '20181229094555.png', '5000.00', 'Air mineral 350 ml', 1, 0, 0, '2018-12-29 02:45:55', '2018-12-29 02:45:55'),
(111, 14, 97, 3, 'Burger Mozarella', '20181229095551.jpg', '15000.00', 'Keju mozarella', 1, 0, 0, '2018-12-29 02:55:51', '2018-12-29 02:55:51'),
(112, 14, 84, 9, 'Air Mineral', '20181229095635.png', '3900.00', 'Air putih mineral', 1, 0, 0, '2018-12-29 02:56:35', '2018-12-29 02:56:35'),
(113, 14, 98, 2, 'Cajuan Butter Steak', '20181229095907.jpeg', '25000.00', 'Butter steak', 1, 0, 0, '2018-12-29 02:59:07', '2018-12-29 02:59:07'),
(114, 14, 98, 2, 'Grilled Flank Steak', '20181229100102.jpeg', '30000.00', 'Steak bawang dengan ekstra jeruk nipis', 1, 0, 0, '2018-12-29 03:01:02', '2018-12-29 03:01:02'),
(115, 14, 98, 2, 'Steak Fries', '20181229100227.jpeg', '15000.00', 'Steak dengan fries', 1, 0, 0, '2018-12-29 03:02:27', '2018-12-29 03:02:27'),
(116, 14, 97, 3, 'Burger Premiun', '20181229100342.jpg', '25000.00', 'Dengan daging dan balutan keju', 1, 0, 0, '2018-12-29 03:03:42', '2018-12-29 03:03:42'),
(117, 12, 51, 15, 'Nasi Nuget', '20181229100532.png', '45000.00', 'Nasi dengan ayam nuget', 1, 0, 0, '2018-12-29 03:05:32', '2018-12-29 03:05:32'),
(118, 12, 84, 9, 'Lemon Tea', '20181229100615.png', '15000.00', 'Teh dengan ekstra lemon', 1, 0, 0, '2018-12-29 03:06:15', '2018-12-29 03:06:15'),
(119, 12, 84, 9, 'Bujeberry', '20181229100705.png', '17000.00', 'Air dengan buah bujeberry', 1, 2, 0, '2018-12-29 03:07:05', '2018-12-29 03:07:05'),
(120, 12, 84, 9, 'Pepsi 600 ml', '20181229100749.png', '15000.00', 'Minuman soda dengan rasa cola', 1, 0, 0, '2018-12-29 03:07:49', '2018-12-29 03:07:49'),
(121, 12, 84, 9, 'Air Mineral 350 ml', '20181229100833.png', '5000.00', 'Air mineral 350 ml', 1, 0, 0, '2018-12-29 03:08:33', '2018-12-29 03:08:33'),
(122, 11, 29, 2, 'Rendang', '20181229101154.jpg', '12000.00', 'Rendang Khas Sumatra Barat', 1, 0, 0, '2018-12-29 03:11:54', '2018-12-29 03:11:54'),
(123, 11, 29, 2, 'Ikan balado', '20181229101233.jpg', '10000.00', 'Ikan balado khas sumatra barat', 1, 0, 0, '2018-12-29 03:12:33', '2018-12-29 03:12:33'),
(124, 11, 81, 3, 'Telur dadar padang', '20181229101349.jpg', '8000.00', 'telur dadar khas sumatra barat', 1, 0, 0, '2018-12-29 03:13:49', '2018-12-29 03:13:49'),
(125, 11, 81, 3, 'Telur Balado', '20181229101436.jpg', '15000.00', 'Telur puyuh dengan sambal khas minang', 1, 0, 0, '2018-12-29 03:14:36', '2018-12-29 03:14:36'),
(126, 11, 4, 2, 'Ayam Cabe', '20181229101531.jpg', '15000.00', 'Ayam cabe hijau', 1, 0, 0, '2018-12-29 03:15:31', '2018-12-29 03:15:31'),
(127, 11, 4, 2, 'Ayam  Bakar', '20181229101615.jpg', '15000.00', 'Ayam bakar Padang', 1, 0, 0, '2018-12-29 03:16:15', '2018-12-29 03:16:15'),
(128, 11, 25, 2, 'Ikan Bakar Padang', '20181229101712.jpg', '20000.00', 'Ikan bakar padang', 1, 0, 0, '2018-12-29 03:17:12', '2018-12-29 03:17:12'),
(129, 11, 84, 9, 'Air Mineral', '20181229101751.png', '6000.00', 'Air putih mineral', 1, 0, 0, '2018-12-29 03:17:51', '2018-12-29 03:17:51'),
(130, 11, 4, 2, 'Ayam Goreng', '20181229102026.jpg', '12000.00', 'Ayam goreng bumbu', 1, 0, 0, '2018-12-29 03:20:26', '2018-12-29 03:20:26'),
(131, 11, 29, 2, 'Dendeng Balado', '20181229102130.jpg', '15500.00', 'Dendeng khas sumatra barat', 1, 0, 0, '2018-12-29 03:21:30', '2018-12-29 03:21:30'),
(132, 11, 25, 2, 'Asam Padeh', '20181229102207.jpg', '12000.00', 'Asam padeh', 1, 0, 0, '2018-12-29 03:22:07', '2018-12-29 03:22:07'),
(133, 11, 25, 2, 'Ikan Balado', '20181229102239.jpg', '12000.00', 'Ikan patib balado', 1, 0, 0, '2018-12-29 03:22:39', '2018-12-29 03:22:39'),
(134, 18, 29, 2, 'Perkedel', '20181229102835.jpg', '10000.00', 'Perkedel kentang', 1, 0, 0, '2018-12-29 03:28:35', '2018-12-29 03:28:35'),
(135, 18, 29, 3, 'Jengkol', '20181229102910.jpg', '18000.00', 'Gulai jengkol', 1, 0, 0, '2018-12-29 03:29:10', '2018-12-29 03:29:10'),
(136, 18, 29, 3, 'Soto Padang', '20181229102941.JPG', '12000.00', 'Soto khas padang', 1, 0, 0, '2018-12-29 03:29:41', '2018-12-29 03:29:41'),
(137, 18, 29, 2, 'Gulai Kambing', '20181229103041.jpg', '22000.00', 'Gulai kambing madu', 1, 0, 0, '2018-12-29 03:30:41', '2018-12-29 03:30:41'),
(138, 18, 29, 3, 'Sayur', '20181229103111.jpg', '12000.00', 'Sayur', 1, 0, 0, '2018-12-29 03:31:11', '2018-12-29 03:31:11'),
(139, 18, 81, 3, 'Telur dadar', '20181229103154.jpg', '10000.00', 'Telur dadar', 1, 0, 0, '2018-12-29 03:31:54', '2018-12-29 03:31:54'),
(140, 18, 81, 3, 'Telur puyuh sambal', '20181229103243.jpg', '12000.00', 'Telur puyuh sambal', 1, 0, 0, '2018-12-29 03:32:43', '2018-12-29 03:32:43'),
(141, 19, 4, 3, 'Ayam Remuk', '20181229103548.jpg', '25000.00', 'Ayam + Nasi + lalap', 1, 5, 0, '2018-12-29 03:35:48', '2018-12-29 03:35:48'),
(142, 19, 4, 3, 'Ayam pop', '20181229103641.jpg', '20000.00', 'Ayam pop + Soto + Teh Es', 0, 0, 0, '2018-12-29 03:36:41', '2018-12-29 03:36:41'),
(143, 19, 4, 2, 'Ayam Bakar', '20181229103734.jpg', '15000.00', 'ayam bakar', 1, 0, 0, '2018-12-29 03:37:34', '2018-12-29 03:37:34'),
(144, 19, 25, 2, 'Asam Pedas', '20181229103820.jpg', '15800.00', 'ikan patin asam pedas', 1, 0, 0, '2018-12-29 03:38:20', '2018-12-29 03:38:20'),
(145, 19, 25, 2, 'Spageti ikan', '20181229104026.png', '21000.00', 'Spageri ikan', 1, 5, 0, '2018-12-29 03:40:26', '2018-12-29 03:40:26'),
(146, 19, 25, 2, 'Ikan Asam', '20181229104109.jpg', '12000.00', 'Ikan laut asam', 1, 0, 0, '2018-12-29 03:41:09', '2018-12-29 03:41:09'),
(147, 20, 29, 3, 'Sayur Nangka', '20181229104425.jpg', '6000.00', 'Sayur Nangka', 1, 0, 0, '2018-12-29 03:44:25', '2018-12-29 03:44:25'),
(148, 20, 29, 2, 'Pekedel', '20181229104506.jpg', '12000.00', 'Perkedel Kentang', 1, 0, 0, '2018-12-29 03:45:06', '2018-12-29 03:45:06'),
(149, 20, 29, 3, 'Gulai', '20181229104547.jpg', '8000.00', 'Gulai', 1, 0, 0, '2018-12-29 03:45:47', '2018-12-29 03:45:47'),
(150, 20, 4, 2, 'Ayam Pop', '20181229104641.jpg', '12000.00', 'Ayam pop', 1, 0, 0, '2018-12-29 03:46:41', '2018-12-29 03:46:41'),
(151, 20, 4, 2, 'Ayam Goreng', '20181229104710.jpg', '12000.00', 'Ayam goreng bumbu', 1, 0, 0, '2018-12-29 03:47:10', '2018-12-29 03:47:10'),
(152, 20, 4, 2, 'Ayan cabe hijau', '20181229104749.jpg', '12000.00', 'ayam cabe hijau', 1, 0, 0, '2018-12-29 03:47:49', '2018-12-29 03:47:49'),
(153, 20, 81, 3, 'Telur dadar bebek', '20181229104833.jpg', '12000.00', 'telur dadar telur bebek', 0, 0, 0, '2018-12-29 03:48:33', '2018-12-29 03:48:33'),
(154, 20, 81, 3, 'Puyuh Lado', '20181229104915.jpg', '12000.00', 'telur puyuh lado', 1, 0, 0, '2018-12-29 03:49:15', '2018-12-29 03:49:15'),
(155, 20, 81, 3, 'Telur dadar ayam', '20181229105000.jpg', '10000.00', 'Telur dadar ayam', 1, 0, 0, '2018-12-29 03:50:00', '2018-12-29 03:50:00'),
(156, 20, 84, 3, 'Teh telur', '20181229105033.jpg', '12000.00', 'teh telur ayam', 1, 0, 0, '2018-12-29 03:50:33', '2018-12-29 03:50:33'),
(157, 20, 84, 9, 'Air Aqua 350 ml', '20181229105116.png', '6000.00', 'Air mineral', 1, 0, 0, '2018-12-29 03:51:16', '2018-12-29 03:51:16'),
(158, 9, 4, 2, 'Ayam jengkol', '20190106173906.jpg', '10000.00', 'Gulai jengkol nikmat', 1, 0, 0, '2019-01-06 10:39:06', '2019-01-20 00:23:18'),
(159, 9, 4, 2, 'Ayam Bakar', '20190118100449.jpg', '8000.00', 'Ayam bakar padang', 1, 5, 1, '2019-01-18 03:04:49', '2019-01-27 11:14:19'),
(160, 9, 25, 2, 'Ikan Senangin Asam Pedas', '20190126055846.jpg', '10000.00', 'Ikan senangin masak asam pedas melayu', 1, 0, 0, '2019-01-25 22:58:46', '2019-01-25 22:58:46'),
(161, 9, 4, 2, 'Ayam Cabe Ijo', '20190128062823.jpg', '10000.00', 'Ayam goreng dengan bumbu cabe hijau', 1, 10, 0, '2019-01-27 23:28:23', '2019-03-24 14:48:03'),
(162, 9, 4, 2, 'Ayam Rendang', '20190201074626.jpeg', '10000.00', 'Ayam dengan bumbu rendang padang', 1, 0, 0, '2019-02-01 00:46:26', '2019-02-01 00:46:26'),
(163, 9, 25, 2, 'Ikan Nila Goreng', '20190201074720.jpeg', '12000.00', 'Ikan nilai goreng kering', 1, 0, 0, '2019-02-01 00:47:20', '2019-02-01 00:47:20'),
(164, 9, 81, 3, 'Telur Gulai', '20190201074835.jpeg', '5000.00', '1 telur 5000', 1, 0, 0, '2019-02-01 00:48:35', '2019-02-01 00:48:35'),
(165, 22, 4, 2, 'Ayam Rendang', '20190205062043.jpeg', '13000.00', 'Ayam bumbu rendang', 1, 0, 0, '2019-02-04 23:20:43', '2019-02-04 23:20:43'),
(166, 22, 4, 2, 'Ayam Bumbu', '20190205062332.jpeg', '13000.00', 'Ayam bumbu kelapa', 1, 0, 0, '2019-02-04 23:23:32', '2019-02-04 23:23:32'),
(167, 22, 4, 2, 'Ayam Cabe Hijau', '20190205062526.jpg', '13000.00', 'Ayam bumbu goreng cabe hijau', 1, 0, 0, '2019-02-04 23:25:26', '2019-02-04 23:25:26'),
(168, 22, 4, 2, 'Ayam Pop', '20190205062623.jpg', '12000.00', 'Ayam goreng tepung', 1, 0, 0, '2019-02-04 23:26:23', '2019-02-04 23:26:23'),
(169, 9, 84, 9, 'Aqua 350', '20190211090855.png', '5000.00', 'Air Mineral', 1, 0, 0, '2019-02-11 02:08:55', '2019-02-22 10:51:13'),
(170, 9, 67, 3, 'Rendang Ayam', '20190213135109.jpeg', '12000.00', 'Ayam rendang padang', 0, 0, 0, '2019-02-13 06:51:09', '2019-02-13 07:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2018_10_22_003721_create_table_restoran', 1),
(18, '2018_10_23_135353_create_table_kategori', 1),
(19, '2018_10_23_135735_create_table_restoran_kategori', 1),
(20, '2018_10_25_211829_create_table_konsumen', 1),
(21, '2018_10_27_061811_create_tabele_menu', 1),
(22, '2018_11_02_060040_create_table_order', 1),
(23, '2018_11_02_063105_create_table_detail_order', 1),
(24, '2018_11_02_063717_create_table_kurir', 1),
(25, '2018_11_08_072847_create_table_favorit', 1),
(26, '2018_12_02_073024_create_table_rekomendasi', 1),
(27, '2018_12_02_095415_create_table_saldo', 1),
(28, '2018_12_10_200153_create_tabele_hubungan', 1),
(29, '2018_12_30_151451_create_uat_table', 2),
(30, '2019_01_17_110603_create_riwayat_restopay_table', 3),
(31, '2019_01_21_110630_create_tabele_profit', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_konsumen` int(10) UNSIGNED NOT NULL,
  `id_restoran` int(10) UNSIGNED NOT NULL,
  `order_lat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_long` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_catatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_metode_bayar` enum('epay','cash') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_jarak_antar` double NOT NULL,
  `order_biaya_anatar` decimal(10,2) NOT NULL,
  `order_pajak_pb_satu` int(11) NOT NULL,
  `order_status` enum('proses','batal','selesai','pengantaran') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'proses',
  `order_delivery_id` int(11) DEFAULT NULL,
  `order_delivery_type` enum('kurir','restoran') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_konsumen`, `id_restoran`, `order_lat`, `order_long`, `order_alamat`, `order_catatan`, `order_metode_bayar`, `order_jarak_antar`, `order_biaya_anatar`, `order_pajak_pb_satu`, `order_status`, `order_delivery_id`, `order_delivery_type`, `created_at`, `updated_at`) VALUES
(14, 1, 9, '0.4903128874864645', '101.40197530388832', 'Jl. Sekuntum Raya No.24, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 5.78, '0.00', 0, 'batal', 9, 'restoran', '2019-01-21 04:28:08', '2019-01-21 06:36:48'),
(15, 1, 9, '0.4903128874864645', '101.40197530388832', 'Jl. Sekuntum Raya No.24, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 3.2, '0.00', 0, 'selesai', 21, 'kurir', '2019-01-21 15:51:02', '2019-01-25 00:15:17'),
(17, 1, 9, '0.4804987016470343', '101.40711508691311', 'Jl. Srikandi No.8b, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 1.98, '0.00', 0, 'batal', NULL, NULL, '2019-01-27 22:54:21', '2019-01-27 22:57:49'),
(18, 1, 9, '0.4862639047435765', '101.40624672174455', 'Jl. Srikandi No.92, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 2.61, '0.00', 0, 'selesai', 9, 'restoran', '2019-01-27 23:39:12', '2019-01-28 00:13:47'),
(19, 1, 9, '0.4672403254300283', '101.35583594441414', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 6.52, '0.00', 0, 'selesai', 9, 'restoran', '2019-01-30 11:06:59', '2019-01-30 11:09:42'),
(20, 4, 20, '0.48499928861969305', '101.40688978135584', 'Jl. Srikandi No.4, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 5.94, '0.00', 0, 'selesai', 20, 'restoran', '2019-01-30 14:16:53', '2019-01-30 14:16:53'),
(21, 4, 9, '0.48499928861969305', '101.40688978135584', 'Jl. Srikandi No.4, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 2.45, '0.00', 0, 'selesai', 9, 'restoran', '2019-01-30 14:18:14', '2019-01-30 14:18:14'),
(22, 4, 14, '0.48499928861969305', '101.40688978135584', 'Jl. Srikandi No.4, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 4.53, '0.00', 0, 'selesai', 14, 'restoran', '2019-01-30 14:19:28', '2019-01-30 14:19:28'),
(23, 4, 1, '0.48499928861969305', '101.40688978135584', 'Jl. Srikandi No.4, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 0.03, '3000.00', 0, 'selesai', 1, 'restoran', '2019-01-30 14:29:06', '2019-01-30 14:29:06'),
(24, 4, 8, '0.48499928861969305', '101.40688978135584', 'Jl. Srikandi No.4, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 3.29, '12000.00', 10, 'selesai', 8, 'restoran', '2019-01-30 14:31:38', '2019-01-30 14:31:38'),
(25, 4, 2, '0.48499928861969305', '101.40688978135584', 'Jl. Srikandi No.4, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 1.36, '0.00', 0, 'selesai', 2, 'restoran', '2019-01-30 14:32:01', '2019-01-30 14:32:01'),
(26, 4, 19, '0.48499928861969305', '101.40688978135584', 'Jl. Srikandi No.4, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 2.42, '0.00', 0, 'selesai', 19, 'restoran', '2019-01-30 14:32:42', '2019-01-30 14:32:42'),
(27, 2, 20, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 0.89, '0.00', 0, 'selesai', 20, 'restoran', '2019-01-30 14:54:53', '2019-01-30 14:54:53'),
(28, 2, 12, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 3.36, '12000.00', 10, 'selesai', 12, 'restoran', '2019-01-30 14:56:04', '2019-01-30 14:56:04'),
(29, 2, 19, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 4.34, '0.00', 0, 'selesai', 19, 'restoran', '2019-01-30 14:56:34', '2019-01-30 14:56:34'),
(30, 2, 15, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 9.36, '12000.00', 10, 'selesai', 15, 'restoran', '2019-01-30 14:57:11', '2019-01-30 14:57:11'),
(31, 2, 1, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 6.01, '3000.00', 0, 'selesai', 1, 'restoran', '2019-01-30 14:57:36', '2019-01-30 14:57:36'),
(32, 2, 20, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 0.89, '0.00', 0, 'selesai', 20, 'restoran', '2019-01-30 15:02:41', '2019-01-30 15:02:41'),
(33, 2, 20, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 0.89, '0.00', 0, 'selesai', 20, 'restoran', '2019-01-30 15:02:55', '2019-01-30 15:02:55'),
(34, 2, 20, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 0.89, '0.00', 0, 'selesai', 20, 'restoran', '2019-01-30 15:03:09', '2019-01-30 15:03:09'),
(35, 2, 14, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 1.78, '0.00', 0, 'selesai', 14, 'restoran', '2019-01-30 15:04:51', '2019-01-30 15:04:51'),
(36, 2, 12, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 3.36, '12000.00', 10, 'selesai', 12, 'restoran', '2019-01-30 15:05:16', '2019-01-30 15:05:16'),
(37, 2, 3, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 6.03, '0.00', 0, 'selesai', 3, 'restoran', '2019-01-30 15:05:37', '2019-01-30 15:05:37'),
(38, 2, 15, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 9.36, '12000.00', 10, 'selesai', 15, 'restoran', '2019-01-30 15:05:53', '2019-01-30 15:05:53'),
(39, 2, 4, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 14.34, '0.00', 0, 'selesai', 4, 'restoran', '2019-01-30 15:06:17', '2019-01-30 15:06:17'),
(40, 2, 8, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 3.43, '12000.00', 10, 'selesai', 8, 'restoran', '2019-01-30 15:06:32', '2019-01-30 15:06:32'),
(41, 2, 9, '0.4674267327556743', '101.35552681982517', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 6.56, '0.00', 0, 'selesai', 9, 'restoran', '2019-01-30 15:12:57', '2019-01-30 15:12:57'),
(42, 1, 7, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 5.87, '0.00', 10, 'selesai', 7, 'restoran', '2019-01-31 01:32:09', '2019-01-31 01:32:09'),
(43, 1, 10, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 5.71, '5000.00', 0, 'selesai', 10, 'restoran', '2019-01-31 02:04:48', '2019-01-31 02:04:48'),
(44, 1, 10, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 5.71, '5000.00', 0, 'selesai', 10, 'restoran', '2019-01-31 02:05:09', '2019-01-31 02:05:09'),
(45, 1, 10, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 5.71, '5000.00', 0, 'selesai', 10, 'restoran', '2019-01-31 02:05:31', '2019-01-31 02:05:31'),
(46, 1, 13, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 2.28, '0.00', 0, 'selesai', 13, 'restoran', '2019-01-31 02:05:44', '2019-01-31 02:05:44'),
(47, 1, 11, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 3.69, '0.00', 0, 'selesai', 11, 'restoran', '2019-02-01 00:50:40', '2019-02-01 00:50:40'),
(48, 1, 13, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 2.28, '0.00', 0, 'selesai', 13, 'restoran', '2019-02-01 00:50:54', '2019-02-01 00:50:54'),
(49, 1, 5, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 9.3, '0.00', 0, 'selesai', 5, 'restoran', '2019-02-01 00:51:14', '2019-02-01 00:51:14'),
(50, 1, 9, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 6.52, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-01 00:51:48', '2019-02-01 00:51:48'),
(51, 1, 9, '0.4675517865882779', '101.35588858276606', 'Jalan Rektor, Rimba Panjang, Tambang, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 6.52, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-01 00:53:14', '2019-02-01 00:53:14'),
(52, 1, 9, '0.4640133992712751', '101.35656584054232', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', 'pas belakang mesjid', 'cash', 6.43, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-01 07:51:14', '2019-02-02 06:02:40'),
(53, 1, 9, '0.4640133992712751', '101.35656584054232', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.43, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-04 01:17:46', '2019-02-04 01:17:46'),
(54, 1, 9, '0.4852738', '101.4030247', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 2.66, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-09 04:59:40', '2019-02-09 05:01:49'),
(55, 1, 1, '0.4852738', '101.4030247', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 0.41, '3000.00', 0, 'selesai', 21, 'kurir', '2019-02-09 05:10:02', '2019-02-09 05:10:02'),
(56, 1, 18, '0.4852738', '101.4030247', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 5.81, '0.00', 0, 'selesai', 21, 'kurir', '2019-02-09 05:10:27', '2019-02-09 05:10:27'),
(57, 5, 22, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 2.72, '0.00', 0, 'batal', NULL, NULL, '2019-02-09 07:25:48', '2019-02-09 07:25:48'),
(58, 5, 14, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 1.64, '0.00', 0, 'selesai', 14, 'restoran', '2019-02-09 07:31:18', '2019-02-09 07:31:18'),
(59, 5, 22, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 2.72, '0.00', 0, 'selesai', 22, 'restoran', '2019-02-09 07:31:32', '2019-02-09 07:31:32'),
(60, 5, 12, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 3.22, '12000.00', 10, 'selesai', 12, 'restoran', '2019-02-09 07:32:05', '2019-02-09 07:32:05'),
(61, 5, 15, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 9.31, '12000.00', 10, 'selesai', 15, 'restoran', '2019-02-09 07:32:32', '2019-02-09 07:32:32'),
(62, 5, 13, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 2.16, '0.00', 0, 'selesai', 13, 'restoran', '2019-02-09 07:32:48', '2019-02-09 07:32:48'),
(63, 5, 11, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 3.58, '0.00', 0, 'selesai', 11, 'restoran', '2019-02-09 07:33:05', '2019-02-09 07:33:05'),
(64, 5, 20, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 0.49, '0.00', 0, 'selesai', 20, 'restoran', '2019-02-10 00:50:55', '2019-02-10 00:50:55'),
(65, 5, 13, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 2.16, '0.00', 0, 'selesai', 13, 'restoran', '2019-02-10 00:51:21', '2019-02-10 00:51:21'),
(66, 5, 8, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 3.28, '12000.00', 10, 'selesai', 8, 'restoran', '2019-02-10 00:52:00', '2019-02-10 00:52:00'),
(67, 5, 7, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 5.9, '0.00', 10, 'selesai', 7, 'restoran', '2019-02-10 01:02:21', '2019-02-10 01:02:21'),
(68, 5, 9, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.42, '0.00', 0, 'batal', NULL, NULL, '2019-02-10 01:07:35', '2019-02-10 01:07:55'),
(69, 5, 9, '0.46389806806489087', '101.3566556945443', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.42, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-10 07:15:37', '2019-02-10 07:18:22'),
(70, 1, 9, '0.48523564981670547', '101.40297308564186', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 2.66, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-10 07:20:00', '2019-02-10 07:20:58'),
(71, 1, 9, '0.4639178487079658', '101.35661713778973', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', 'lantai 3 ruang rektor', 'epay', 6.42, '0.00', 0, 'selesai', 9, 'restoran', '2019-02-11 02:15:47', '2019-02-11 02:25:52'),
(72, 1, 9, '0.4994240116485212', '101.43280394375324', 'Jl. Duyung No.50, Tengkerang Bar., Marpoyan Damai, Kota Pekanbaru, Riau 28122, Indonesia', NULL, 'cash', 4.41, '0.00', 0, 'batal', NULL, NULL, '2019-03-23 06:23:19', '2019-03-23 06:24:07'),
(73, 1, 9, '0.4994240116485212', '101.43280394375324', 'Jl. Duyung No.50, Tengkerang Bar., Marpoyan Damai, Kota Pekanbaru, Riau 28122, Indonesia', NULL, 'cash', 4.41, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-23 06:25:17', '2019-03-27 08:02:47'),
(74, 1, 9, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 6.41, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-24 14:48:34', '2019-03-27 08:02:27'),
(75, 1, 9, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 6.41, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-26 03:24:59', '2019-03-26 03:43:48'),
(76, 1, 9, '0.49934824212195045', '101.41763102263212', 'Jl. Tuanku Tambusai No.6, Delima, Tampan, Kota Pekanbaru, Riau 28294, Indonesia', NULL, 'cash', 3.92, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-26 05:31:34', '2019-03-27 08:03:07'),
(77, 1, 9, '0.46848382312567155', '101.35573033243418', 'Jl. Senat, Simpang Baru, Tampan, Kota Pekanbaru, Riau 28293, Indonesia', NULL, 'cash', 6.54, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-26 06:18:24', '2019-03-26 06:21:01'),
(78, 1, 9, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 6.41, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-27 08:01:07', '2019-03-27 08:02:11'),
(79, 1, 18, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 0.79, '0.00', 0, 'selesai', 18, 'restoran', '2019-03-27 12:13:31', '2019-03-27 12:13:31'),
(80, 1, 15, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 3.71, '12000.00', 0, 'selesai', 15, 'restoran', '2019-03-27 12:13:49', '2019-03-27 12:13:49'),
(81, 1, 6, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 1.18, '5000.00', 0, 'selesai', 6, 'restoran', '2019-03-27 12:14:12', '2019-03-27 12:14:12'),
(82, 1, 10, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 5.36, '5000.00', 0, 'selesai', 10, 'restoran', '2019-03-27 12:14:47', '2019-03-27 12:14:47'),
(83, 1, 7, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 5.49, '0.00', 10, 'selesai', 7, 'restoran', '2019-03-27 12:15:48', '2019-03-27 12:15:48'),
(84, 1, 9, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 6.41, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-27 12:16:08', '2019-03-27 12:25:02'),
(85, 1, 9, '0.5137900320589533', '101.44392304122448', 'Jl. Nenas No.22c, Jadirejo, Sukajadi, Kota Pekanbaru, Riau 28121, Indonesia', NULL, 'cash', 6.41, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-27 12:24:19', '2019-03-27 12:25:21'),
(86, 4, 9, '0.4852591183039008', '101.4030260592699', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 2.65, '0.00', 0, 'selesai', 21, 'kurir', '2019-03-28 00:21:25', '2019-03-28 00:29:50'),
(87, 1, 9, '0.46400233552189835', '101.35653331875801', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.43, '0.00', 0, 'selesai', 21, 'kurir', '2019-03-28 00:24:36', '2019-03-28 00:27:47'),
(89, 4, 7, '0.4852591183039008', '101.4030260592699', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 0.62, '0.00', 10, 'selesai', 7, 'restoran', '2019-03-28 00:35:27', '2019-03-28 00:35:27'),
(90, 4, 10, '0.4852591183039008', '101.4030260592699', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 0.56, '5000.00', 0, 'selesai', 10, 'restoran', '2019-03-28 00:35:42', '2019-03-28 00:35:42'),
(91, 4, 6, '0.4852591183039008', '101.4030260592699', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 6.53, '5000.00', 0, 'selesai', 6, 'restoran', '2019-03-28 00:36:02', '2019-03-28 00:36:02'),
(92, 4, 4, '0.4852591183039008', '101.4030260592699', 'Jl. Nakula No.62, Delima, Tampan, Kota Pekanbaru, Riau 28292, Indonesia', NULL, 'cash', 8.86, '0.00', 0, 'selesai', 4, 'restoran', '2019-03-28 00:36:23', '2019-03-28 00:36:23'),
(93, 1, 5, '0.46400233552189835', '101.35653331875801', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 9.48, '0.00', 0, 'selesai', 5, 'restoran', '2019-03-28 00:46:27', '2019-03-28 00:46:27'),
(94, 1, 9, '0.46400233552189835', '101.35653331875801', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.43, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-28 00:48:21', '2019-03-28 00:48:56'),
(95, 1, 9, '0.4640241277554822', '101.35651756078005', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.44, '0.00', 0, 'selesai', 21, 'kurir', '2019-03-28 01:11:20', '2019-03-28 01:11:59'),
(96, 1, 9, '0.46376094462228934', '101.35631069540977', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.46, '0.00', 0, 'selesai', 9, 'restoran', '2019-03-28 07:37:42', '2019-03-28 07:39:40'),
(97, 1, 9, '0.46376094462228934', '101.35631069540977', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.46, '0.00', 0, 'batal', NULL, NULL, '2019-03-28 07:48:50', '2019-03-28 07:49:38'),
(98, 1, 9, '0.46376094462228934', '101.35631069540977', 'Jl. Prof. Ilyas Moh. Ali, Rimba Panjang, Tambang, Kabupaten Kampar, Riau 28293, Indonesia', NULL, 'cash', 6.46, '0.00', 0, 'proses', NULL, NULL, '2019-03-28 07:53:24', '2019-03-28 07:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profit`
--

CREATE TABLE `profit` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `biaya` decimal(10,2) NOT NULL,
  `status` enum('sukses','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sukses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profit`
--

INSERT INTO `profit` (`id`, `id_order`, `biaya`, `status`, `created_at`, `updated_at`) VALUES
(1, 14, '50.00', 'sukses', '2019-01-21 04:28:08', '2019-01-21 06:13:36'),
(2, 15, '50.00', 'sukses', '2019-01-21 15:51:02', '2019-01-21 15:51:02'),
(4, 17, '50.00', 'batal', '2019-01-27 22:54:21', '2019-01-27 22:57:50'),
(5, 18, '50.00', 'sukses', '2019-01-27 23:39:12', '2019-01-27 23:39:12'),
(6, 19, '50.00', 'sukses', '2019-01-30 11:07:00', '2019-01-30 11:07:00'),
(7, 20, '50.00', 'sukses', '2019-01-30 14:16:54', '2019-01-30 14:16:54'),
(8, 21, '50.00', 'sukses', '2019-01-30 14:18:14', '2019-01-30 14:18:14'),
(9, 22, '50.00', 'sukses', '2019-01-30 14:19:28', '2019-01-30 14:19:28'),
(10, 23, '50.00', 'sukses', '2019-01-30 14:29:06', '2019-01-30 14:29:06'),
(11, 24, '50.00', 'sukses', '2019-01-30 14:31:39', '2019-01-30 14:31:39'),
(12, 25, '50.00', 'sukses', '2019-01-30 14:32:01', '2019-01-30 14:32:01'),
(13, 26, '50.00', 'sukses', '2019-01-30 14:32:42', '2019-01-30 14:32:42'),
(14, 27, '50.00', 'sukses', '2019-01-30 14:54:53', '2019-01-30 14:54:53'),
(15, 28, '50.00', 'sukses', '2019-01-30 14:56:04', '2019-01-30 14:56:04'),
(16, 29, '50.00', 'sukses', '2019-01-30 14:56:34', '2019-01-30 14:56:34'),
(17, 30, '50.00', 'sukses', '2019-01-30 14:57:11', '2019-01-30 14:57:11'),
(18, 31, '50.00', 'sukses', '2019-01-30 14:57:36', '2019-01-30 14:57:36'),
(19, 32, '50.00', 'sukses', '2019-01-30 15:02:41', '2019-01-30 15:02:41'),
(20, 33, '50.00', 'sukses', '2019-01-30 15:02:55', '2019-01-30 15:02:55'),
(21, 34, '50.00', 'sukses', '2019-01-30 15:03:09', '2019-01-30 15:03:09'),
(22, 35, '50.00', 'sukses', '2019-01-30 15:04:51', '2019-01-30 15:04:51'),
(23, 36, '50.00', 'sukses', '2019-01-30 15:05:17', '2019-01-30 15:05:17'),
(24, 37, '50.00', 'sukses', '2019-01-30 15:05:37', '2019-01-30 15:05:37'),
(25, 38, '50.00', 'sukses', '2019-01-30 15:05:53', '2019-01-30 15:05:53'),
(26, 39, '50.00', 'sukses', '2019-01-30 15:06:18', '2019-01-30 15:06:18'),
(27, 40, '50.00', 'sukses', '2019-01-30 15:06:32', '2019-01-30 15:06:32'),
(28, 41, '50.00', 'sukses', '2019-01-30 15:12:57', '2019-01-30 15:12:57'),
(29, 42, '50.00', 'sukses', '2019-01-31 01:32:09', '2019-01-31 01:32:09'),
(30, 43, '50.00', 'sukses', '2019-01-31 02:04:49', '2019-01-31 02:04:49'),
(31, 44, '50.00', 'sukses', '2019-01-31 02:05:10', '2019-01-31 02:05:10'),
(32, 45, '50.00', 'sukses', '2019-01-31 02:05:31', '2019-01-31 02:05:31'),
(33, 46, '50.00', 'sukses', '2019-01-31 02:05:44', '2019-01-31 02:05:44'),
(34, 47, '50.00', 'sukses', '2019-02-01 00:50:40', '2019-02-01 00:50:40'),
(35, 48, '50.00', 'sukses', '2019-02-01 00:50:54', '2019-02-01 00:50:54'),
(36, 49, '50.00', 'sukses', '2019-02-01 00:51:14', '2019-02-01 00:51:14'),
(37, 50, '50.00', 'sukses', '2019-02-01 00:51:48', '2019-02-01 00:51:48'),
(38, 51, '50.00', 'sukses', '2019-02-01 00:53:14', '2019-02-01 00:53:14'),
(39, 52, '50.00', 'sukses', '2019-02-01 07:51:14', '2019-02-01 07:51:14'),
(40, 53, '50.00', 'sukses', '2019-02-04 01:17:47', '2019-02-04 01:17:47'),
(41, 54, '50.00', 'sukses', '2019-02-09 04:59:42', '2019-02-09 04:59:42'),
(42, 55, '50.00', 'sukses', '2019-02-09 05:10:02', '2019-02-09 05:10:02'),
(43, 56, '50.00', 'sukses', '2019-02-09 05:10:27', '2019-02-09 05:10:27'),
(44, 57, '50.00', 'batal', '2019-02-09 07:25:49', '2019-02-09 07:25:49'),
(45, 58, '50.00', 'sukses', '2019-02-09 07:31:18', '2019-02-09 07:31:18'),
(46, 59, '50.00', 'sukses', '2019-02-09 07:31:32', '2019-02-09 07:31:32'),
(47, 60, '50.00', 'sukses', '2019-02-09 07:32:05', '2019-02-09 07:32:05'),
(48, 61, '50.00', 'sukses', '2019-02-09 07:32:32', '2019-02-09 07:32:32'),
(49, 62, '50.00', 'sukses', '2019-02-09 07:32:48', '2019-02-09 07:32:48'),
(50, 63, '50.00', 'sukses', '2019-02-09 07:33:05', '2019-02-09 07:33:05'),
(51, 64, '50.00', 'sukses', '2019-02-10 00:50:56', '2019-02-10 00:50:56'),
(52, 65, '50.00', 'sukses', '2019-02-10 00:51:21', '2019-02-10 00:51:21'),
(53, 66, '50.00', 'sukses', '2019-02-10 00:52:01', '2019-02-10 00:52:01'),
(54, 67, '50.00', 'sukses', '2019-02-10 01:02:21', '2019-02-10 01:02:21'),
(55, 68, '50.00', 'batal', '2019-02-10 01:07:36', '2019-02-10 01:07:56'),
(56, 69, '50.00', 'sukses', '2019-02-10 07:15:38', '2019-02-10 07:15:38'),
(57, 70, '50.00', 'sukses', '2019-02-10 07:20:01', '2019-02-10 07:20:01'),
(58, 71, '50.00', 'sukses', '2019-02-11 02:15:48', '2019-02-11 02:15:48'),
(59, 72, '50.00', 'batal', '2019-03-23 06:23:19', '2019-03-23 06:24:07'),
(60, 73, '50.00', 'sukses', '2019-03-23 06:25:17', '2019-03-23 06:25:17'),
(61, 74, '50.00', 'sukses', '2019-03-24 14:48:35', '2019-03-24 14:48:35'),
(62, 75, '50.00', 'sukses', '2019-03-26 03:24:59', '2019-03-26 03:24:59'),
(63, 76, '50.00', 'sukses', '2019-03-26 05:31:34', '2019-03-26 05:31:34'),
(64, 77, '50.00', 'sukses', '2019-03-26 06:18:24', '2019-03-26 06:18:24'),
(65, 78, '50.00', 'sukses', '2019-03-27 08:01:07', '2019-03-27 08:01:07'),
(66, 79, '50.00', 'sukses', '2019-03-27 12:13:31', '2019-03-27 12:13:31'),
(67, 80, '50.00', 'sukses', '2019-03-27 12:13:50', '2019-03-27 12:13:50'),
(68, 81, '50.00', 'sukses', '2019-03-27 12:14:12', '2019-03-27 12:14:12'),
(69, 82, '50.00', 'sukses', '2019-03-27 12:14:48', '2019-03-27 12:14:48'),
(70, 83, '50.00', 'sukses', '2019-03-27 12:15:48', '2019-03-27 12:15:48'),
(71, 84, '50.00', 'sukses', '2019-03-27 12:16:08', '2019-03-27 12:16:08'),
(72, 85, '50.00', 'sukses', '2019-03-27 12:24:20', '2019-03-27 12:24:20'),
(73, 86, '50.00', 'sukses', '2019-03-28 00:21:25', '2019-03-28 00:21:25'),
(74, 87, '50.00', 'sukses', '2019-03-28 00:24:36', '2019-03-28 00:24:36'),
(76, 89, '50.00', 'sukses', '2019-03-28 00:35:27', '2019-03-28 00:35:27'),
(77, 90, '50.00', 'sukses', '2019-03-28 00:35:42', '2019-03-28 00:35:42'),
(78, 91, '50.00', 'sukses', '2019-03-28 00:36:02', '2019-03-28 00:36:02'),
(79, 92, '50.00', 'sukses', '2019-03-28 00:36:23', '2019-03-28 00:36:23'),
(80, 93, '50.00', 'sukses', '2019-03-28 00:46:27', '2019-03-28 00:46:27'),
(81, 94, '50.00', 'sukses', '2019-03-28 00:48:21', '2019-03-28 00:48:21'),
(82, 95, '50.00', 'sukses', '2019-03-28 01:11:20', '2019-03-28 01:11:20'),
(83, 96, '50.00', 'sukses', '2019-03-28 07:37:42', '2019-03-28 07:37:42'),
(84, 97, '50.00', 'batal', '2019-03-28 07:48:50', '2019-03-28 07:49:38'),
(85, 98, '50.00', 'sukses', '2019-03-28 07:53:24', '2019-03-28 07:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_restoran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_phone` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekomendasi`
--

INSERT INTO `rekomendasi` (`id`, `nama_restoran`, `number_phone`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Titian Pauh', '6281268475444', 'Jl.HR.Soebrantas KM 2', '2019-01-04 10:57:03', '2019-01-04 10:57:03'),
(2, 'upnormal', '6281268475430', 'jl.soebrantas', '2019-01-07 03:25:05', '2019-01-07 03:25:05'),
(3, NULL, NULL, NULL, '2019-04-14 03:29:40', '2019-04-14 03:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `restoran`
--

CREATE TABLE `restoran` (
  `id` int(10) UNSIGNED NOT NULL,
  `restoran_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_latitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restoran_longitude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restoran_deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_oprasional` tinyint(1) NOT NULL DEFAULT 0,
  `restoran_foto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_pemilik_nama` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_pemilik_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_pemilik_phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `restoran_delivery` enum('gratis','flat') COLLATE utf8mb4_unicode_ci NOT NULL,
  `restoran_delivery_tarif` decimal(10,2) NOT NULL DEFAULT 0.00,
  `restoran_delivery_jarak` int(11) NOT NULL,
  `restoran_delivery_minimum` decimal(10,2) NOT NULL DEFAULT 0.00,
  `restoran_pajak_pb_satu` int(11) NOT NULL,
  `restoran_status` enum('aktif','non_aktif','review','blacklist','tolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'review',
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restoran`
--

INSERT INTO `restoran` (`id`, `restoran_nama`, `restoran_phone`, `restoran_email`, `restoran_alamat`, `restoran_latitude`, `restoran_longitude`, `restoran_deskripsi`, `restoran_oprasional`, `restoran_foto`, `restoran_pemilik_nama`, `restoran_pemilik_email`, `restoran_pemilik_phone`, `restoran_balance`, `restoran_delivery`, `restoran_delivery_tarif`, `restoran_delivery_jarak`, `restoran_delivery_minimum`, `restoran_pajak_pb_satu`, `restoran_status`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Pisang Muncrat', '6281370903177', 'nafailsyadheaaa@gmail.com', 'Jalan Srikandi, Delima (Sebelah Family Ponsel)', '0.4847729853382164', '101.40668392181396', 'Pisang spesial dengan lumuran coklat dan keju', 1, '20181228010648.png', 'nafailsyadhea', 'nadia@gmail.com', '6281370903177', '95750.00', 'flat', '3000.00', 8, '0.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 18:06:48', '2019-02-09 05:10:02'),
(2, 'Warung Bakwan', '6282387772588', 'warubak@gmail.com', 'Jl. Soekarno Hatta (Simp. Jl. Buncis, Seberang RS. Eka Hospital)', '0.4820355531947297', '101.41873877495527', 'Special Bakwan', 1, '20181228011122.png', 'Sutrisno', 'warubak@gmail.com', '082387772588', '99950.00', 'gratis', '0.00', 15, '5000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 18:11:22', '2019-01-30 14:32:01'),
(3, 'Garasi Kafe', '628124188884', 'cutriafika@gmail.com', 'Jl. Marsan sejahtera no.3 Panam Pekanbaru (setelah ramayana panam)', '0.46183886929083456', '101.40945900231598', 'Burger, steak, spaghetti, nasi goreng, mie goreng, dan beragam menu paket nasi dengan ayam rica rica, ayam asam manis, cumi goreng tepung, bistik ayam', 1, '20181228011641.jpg', 'Cutriafika', 'cutriafika@gmail.com', '628124188884', '99950.00', 'gratis', '0.00', 10, '10000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 18:16:41', '2019-01-30 15:05:37'),
(4, 'Waroeng 7', '6282284076665', 'warungseven@yahoo.com', 'Jl. Lokomotif No. 106', '0.5342567776345659', '101.46586954593658', 'Warung masakan fusion Western dan Nusantara', 1, '20181228012128.jpg', 'Wahid', 'warungseven@yahoo.com', '6282284076665', '99900.00', 'gratis', '0.00', 27, '10000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 18:21:28', '2019-03-28 00:36:23'),
(5, 'Seventeen Cafe', '6282247366589', 'seventeencafe.pku@gmail.com', 'Jl. Durian No.69F (sebrang kedai kopi \"Saroha Nauli\")', '0.5173337572493276', '101.42308294773102', 'Kami menyediakan makanan dan minuman dengan rasa yang enak dan kualitas nya terjamin dengan harga yang terjangkau', 1, '20181228014307.png', 'Doni Saputra', 'seventeencafe.pku@gmail.com', '6282247366589', '99900.00', 'gratis', '0.00', 10, '5000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 18:43:07', '2019-03-28 00:46:27'),
(6, 'Roaster Moody', '6282283252601', 'maysarahabdullah@gmail.com', 'Jalan ronggowarsito no 88', '0.5134671741220491', '101.4544999971986', 'Special  Chicken', 1, '20181228014706.jpg', 'May Sarah Abdullah', 'maysarahabdullah@gmail.com', '6282283252601', '99900.00', 'flat', '5000.00', 10, '5000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 18:47:06', '2019-03-28 00:36:02'),
(7, 'Vanhollano Srikandi', '628117541984', 'marketing@jnp-g.com', 'Jl. Srikandi SPBU Srikandi', '0.4811618544733872', '101.40686966478825', 'Nobody Says No', 1, '20181228015314.png', 'jnp group', 'marketing@jnp-g.com', '628117541984', '99750.00', 'gratis', '0.00', 17, '10000.00', 10, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 18:53:14', '2019-03-28 00:35:27'),
(8, 'KFC Soebrantas', '6281268475431', 'marketing@kfc.com', 'Jl H.R Sobrantas No. 70', '0.4638900217015829', '101.38614557683466', 'Jagonya Ayam', 1, '20181228015740.jpg', 'PT. Fast Food Indonesia', 'marketing@kfc.com', '6281268475431', '99850.00', 'flat', '12000.00', 15, '10000.00', 10, 'aktif', 'ckTOZbmhKcU:APA91bHjS1diq0-T4k2FJcq_TByg3sCMauRol-XivmC0JvXWVfB4N--7EXCWAkzIFBaSvJlh0QAYY7zO_DTwvhbBDTpohoNqamhkvSLE9tUfEKFZA7CjvQX2RMY91iODLL40YcQG68S2', '2018-12-27 18:57:40', '2019-02-10 00:52:01'),
(9, 'Pak Nurdin Soebrantas', '6281268475430', 'paknurdin@gmail.com', 'JL H.R Soebrantas No 40', '0.46426652444146554', '101.41439560800792', 'Masakah Khas Sumatra Barat', 1, '20181228020117.jpg', 'Nurdin', 'nurddin@ymail.com', '6281268475430', '199696.00', 'gratis', '0.00', 10, '10000.00', 0, 'aktif', 'dU3bVez68HU:APA91bEd8HDT1Iq-mUygTnnpRbth1lBWCva9r224Zk69LEJlY38n38tqJpk6j0NS7sDXZmOSDTCt-AKGauNnW-7RUFuLaFOFUV531pJgUJcmXQKJ3KfMxWR2bRE5dCMRMO1uVMkT4x9o', '2018-12-27 19:01:17', '2019-03-28 07:53:24'),
(10, 'Raso Situjuah', '6281378688500', 'marketing@raso-situjuah.com', 'Jl. Sekuntum Raya No 45', '0.4902099614835829', '101.40192434191704', 'Masakan Tradisional Minang', 1, '20181228020615.jpg', 'Deni', 'deni@gmail.com', '6281378688500', '99750.00', 'flat', '5000.00', 15, '10000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:06:15', '2019-03-28 00:35:42'),
(11, 'Bare Solok', '6281268475412', 'baresolok@gmail.com', 'Jl. Soebrantas (depan Aulia Hospital)', '0.4640864870696816', '101.3888867944479', 'Masakan Sumatra Barat', 1, '20181228020908.jpg', 'Indra', 'indra@ymail.com', '6281268475432', '99900.00', 'gratis', '0.00', 15, '5000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:09:08', '2019-02-09 07:33:05'),
(12, 'Pizza Hut Panam', '6281268475433', 'marketing@pizzahut.com', 'Jl. H.R Soebrantas (Giant Panam)', '0.4646825884432622', '101.38563461601734', 'Tersedia menu pizza, pasta, nasi, minuman, hidangan sampingan', 1, '20181228021335.jpg', 'pizzahut', 'marketing@pizzahut.com', '6281268475433', '99850.00', 'flat', '12000.00', 15, '10000.00', 10, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:13:35', '2019-02-09 07:32:05'),
(13, 'Puetra Buana', '6281268475434', 'puetarabuana@gmail.com', 'Jl H.R Soebrantas No 201', '0.46405798953368455', '101.37607757002115', 'Tersedia Masakan Minang dan Melayu', 1, '20181228021555.jpg', 'Puetra Buana', 'puetarabuana@gmail.com', '6281268475434', '99800.00', 'gratis', '0.00', 10, '0.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:15:55', '2019-02-10 00:51:21'),
(14, 'Steak House', '6281268475435', 'marketing@steakhouse.com', 'Jl. Soebrantas No 321', '0.46494342468651556', '101.37137800455093', 'Special Steak and Burger', 1, '20181228021900.jpg', 'Steak House Indonesia', 'marketing@steakhouse.com', '6281268475435', '99850.00', 'gratis', '0.00', 8, '5000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:19:00', '2019-02-09 07:31:18'),
(15, 'KFC Arifin Ahmad', '6281268475436', 'marketing@kfc.com', 'Jl. Arifin Ahmad', '0.48082156119592', '101.43865350633861', 'Jagonya Ayam', 1, '20181228022141.jpg', 'PT. Fast Food Indonesia', 'marketing@kfc.com', '6281268475436', '99650.00', 'flat', '12000.00', 15, '10000.00', 0, 'aktif', 'dTwSsoGs23E:APA91bH0YlZU69CPsvsHGHJapMZzAtrl5xR4wgpdNjnBlsJbt3Z3pL0d6hcgKBE8_rLD_QnxJyOnN8EcxqJECnyRaZvaRNuJEbE9vbba_2CDoQDeH5ZY3xvszpfl6pNNEGu3bhndQCAs', '2018-12-27 19:21:41', '2019-03-27 12:13:50'),
(16, 'D Besto', '6281268475437', 'marketing@debesto.com', 'Jl. Srikandi (Simpang Ardhat)', NULL, NULL, 'Ayam Goreng, Kentang Goreng', 0, '20181228022429.jpg', 'd besto', 'marketing@dbesto.com', '6281268475436', '100000.00', 'gratis', '0.00', 15, '0.00', 0, 'review', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:24:29', '2019-01-29 07:11:22'),
(17, 'Kubang Resto', '6281268475438', 'kubangresto@gmail.com', 'Jl. Delima No 20', NULL, NULL, 'Special Martabak Mesir dan Canai', 0, '20181228022941.jpg', 'Deni', 'deni@gmail.com', '6281268475438', '100000.00', 'gratis', '0.00', 10, '0.00', 0, 'review', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:29:41', '2019-01-29 07:12:14'),
(18, 'Pagi Sore', '6281268475439', 'pagisore@gmai.com', 'Jl. Jendral Sudirman No 213', '0.5092686784107743', '101.44940312951803', 'Masakan Minang dan Melayu', 1, '20181228023201.jpeg', 'boby', 'boby@gmail.com', '6281268475439', '99900.00', 'gratis', '0.00', 10, '0.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:32:01', '2019-03-27 12:13:31'),
(19, 'Ayam Remuk Pak Tisto', '6281268475440', 'ayamremukpaktisto@gmail.com', 'Jl Soekarna Hatta No 80', '0.467104878377344', '101.39457676559687', 'Makanan Khas Sumatra Barat', 1, '20181228023429.jpg', 'Tisto', 'tisto@gmai.com', '6281268475439', '99900.00', 'gratis', '0.00', 10, '0.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:34:29', '2019-01-30 14:56:34'),
(20, 'RM Sedarhana UIN Suska Panam', '6281268475441', 'marketing@sederhana.com', 'Jl. Soebrantas No 2', '0.46043846626683393', '101.35944016277791', 'Menjual Masakan Minang', 1, '20181228023704.jpg', 'sederhana', 'marketing@sederhana.com', '6281268475441', '99600.00', 'gratis', '0.00', 8, '5000.00', 0, 'aktif', 'eGA0_aWkFYw:APA91bGQ3yyZoVwYLhWYJedX33SLs6cdj0cto8UScBBPvT63MR7u3s75EDWW0WzPT2l6bPBW57WXZmqgC0kP_1HU8TmLhNRpK-4sbpqYQuBwiHNc0XdKx3-Jyd0hmqsWjrcre02FQv_X', '2018-12-27 19:37:04', '2019-02-10 00:50:56'),
(22, 'Beringin Eddy', '6281268475450', 'marketing@beringineddy.com', 'Jl. Soebrantas Km 8 Tampan Pekabaru Riau', '0.46414951691358414', '101.38113856315613', 'Masakan padang', 1, '20190205061144.jpg', 'Muhammad Yusuf', 'marketing@beringineddy.com', '6281268475430', '99900.00', 'gratis', '0.00', 20, '10000.00', 0, 'aktif', 'dU3bVez68HU:APA91bEd8HDT1Iq-mUygTnnpRbth1lBWCva9r224Zk69LEJlY38n38tqJpk6j0NS7sDXZmOSDTCt-AKGauNnW-7RUFuLaFOFUV531pJgUJcmXQKJ3KfMxWR2bRE5dCMRMO1uVMkT4x9o', '2019-02-04 23:11:44', '2019-02-09 07:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `restoran_kategori`
--

CREATE TABLE `restoran_kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_restoran` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restoran_kategori`
--

INSERT INTO `restoran_kategori` (`id`, `id_restoran`, `id_kategori`, `created_at`, `updated_at`) VALUES
(1, 1, 93, '2018-12-27 18:06:49', '2018-12-27 18:06:49'),
(2, 2, 8, '2018-12-27 18:11:22', '2018-12-27 18:11:22'),
(3, 3, 4, '2018-12-27 18:16:41', '2018-12-27 18:16:41'),
(4, 3, 97, '2018-12-27 18:16:41', '2018-12-27 18:16:41'),
(5, 3, 98, '2018-12-27 18:16:41', '2018-12-27 18:16:41'),
(6, 4, 4, '2018-12-27 18:21:28', '2018-12-27 18:21:28'),
(7, 4, 98, '2018-12-27 18:21:28', '2018-12-27 18:21:28'),
(8, 5, 49, '2018-12-27 18:43:07', '2018-12-27 18:43:07'),
(9, 5, 81, '2018-12-27 18:43:07', '2018-12-27 18:43:07'),
(10, 5, 99, '2018-12-27 18:43:07', '2018-12-27 18:43:07'),
(11, 6, 4, '2018-12-27 18:47:06', '2018-12-27 18:47:06'),
(12, 6, 49, '2018-12-27 18:47:06', '2018-12-27 18:47:06'),
(13, 6, 51, '2018-12-27 18:47:06', '2018-12-27 18:47:06'),
(14, 7, 9, '2018-12-27 18:53:14', '2018-12-27 18:53:14'),
(15, 7, 39, '2018-12-27 18:53:14', '2018-12-27 18:53:14'),
(16, 7, 40, '2018-12-27 18:53:14', '2018-12-27 18:53:14'),
(17, 7, 41, '2018-12-27 18:53:14', '2018-12-27 18:53:14'),
(18, 7, 68, '2018-12-27 18:53:14', '2018-12-27 18:53:14'),
(19, 7, 97, '2018-12-27 18:53:14', '2018-12-27 18:53:14'),
(20, 8, 4, '2018-12-27 18:57:40', '2018-12-27 18:57:40'),
(21, 8, 97, '2018-12-27 18:57:40', '2018-12-27 18:57:40'),
(22, 8, 89, '2018-12-27 18:57:40', '2018-12-27 18:57:40'),
(23, 9, 4, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(24, 9, 25, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(25, 9, 51, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(26, 9, 52, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(27, 9, 67, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(28, 9, 71, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(29, 9, 81, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(30, 9, 84, '2018-12-27 19:01:17', '2018-12-27 19:01:17'),
(31, 10, 4, '2018-12-27 19:06:15', '2018-12-27 19:06:15'),
(32, 10, 25, '2018-12-27 19:06:15', '2018-12-27 19:06:15'),
(33, 10, 67, '2018-12-27 19:06:15', '2018-12-27 19:06:15'),
(34, 10, 84, '2018-12-27 19:06:15', '2018-12-27 19:06:15'),
(35, 11, 4, '2018-12-27 19:09:08', '2018-12-27 19:09:08'),
(36, 11, 25, '2018-12-27 19:09:08', '2018-12-27 19:09:08'),
(37, 11, 29, '2018-12-27 19:09:08', '2018-12-27 19:09:08'),
(38, 11, 81, '2018-12-27 19:09:08', '2018-12-27 19:09:08'),
(39, 11, 84, '2018-12-27 19:09:08', '2018-12-27 19:09:08'),
(40, 12, 11, '2018-12-27 19:13:36', '2018-12-27 19:13:36'),
(41, 12, 51, '2018-12-27 19:13:36', '2018-12-27 19:13:36'),
(42, 12, 59, '2018-12-27 19:13:36', '2018-12-27 19:13:36'),
(43, 12, 100, '2018-12-27 19:13:36', '2018-12-27 19:13:36'),
(44, 13, 4, '2018-12-27 19:15:55', '2018-12-27 19:15:55'),
(45, 13, 25, '2018-12-27 19:15:55', '2018-12-27 19:15:55'),
(46, 13, 51, '2018-12-27 19:15:55', '2018-12-27 19:15:55'),
(47, 13, 67, '2018-12-27 19:15:55', '2018-12-27 19:15:55'),
(48, 13, 81, '2018-12-27 19:15:55', '2018-12-27 19:15:55'),
(49, 13, 84, '2018-12-27 19:15:55', '2018-12-27 19:15:55'),
(50, 14, 97, '2018-12-27 19:19:00', '2018-12-27 19:19:00'),
(51, 14, 84, '2018-12-27 19:19:00', '2018-12-27 19:19:00'),
(52, 14, 98, '2018-12-27 19:19:00', '2018-12-27 19:19:00'),
(53, 15, 4, '2018-12-27 19:21:41', '2018-12-27 19:21:41'),
(54, 15, 51, '2018-12-27 19:21:41', '2018-12-27 19:21:41'),
(55, 15, 89, '2018-12-27 19:21:41', '2018-12-27 19:21:41'),
(56, 15, 97, '2018-12-27 19:21:41', '2018-12-27 19:21:41'),
(57, 16, 4, '2018-12-27 19:24:29', '2018-12-27 19:24:29'),
(58, 16, 35, '2018-12-27 19:24:29', '2018-12-27 19:24:29'),
(59, 16, 51, '2018-12-27 19:24:29', '2018-12-27 19:24:29'),
(60, 16, 89, '2018-12-27 19:24:29', '2018-12-27 19:24:29'),
(61, 16, 97, '2018-12-27 19:24:29', '2018-12-27 19:24:29'),
(62, 17, 48, '2018-12-27 19:29:41', '2018-12-27 19:29:41'),
(63, 17, 84, '2018-12-27 19:29:41', '2018-12-27 19:29:41'),
(64, 17, 86, '2018-12-27 19:29:41', '2018-12-27 19:29:41'),
(65, 17, 93, '2018-12-27 19:29:41', '2018-12-27 19:29:41'),
(66, 18, 4, '2018-12-27 19:32:01', '2018-12-27 19:32:01'),
(67, 18, 25, '2018-12-27 19:32:01', '2018-12-27 19:32:01'),
(68, 18, 29, '2018-12-27 19:32:01', '2018-12-27 19:32:01'),
(69, 18, 51, '2018-12-27 19:32:01', '2018-12-27 19:32:01'),
(70, 18, 81, '2018-12-27 19:32:01', '2018-12-27 19:32:01'),
(71, 18, 84, '2018-12-27 19:32:01', '2018-12-27 19:32:01'),
(72, 19, 4, '2018-12-27 19:34:29', '2018-12-27 19:34:29'),
(73, 19, 25, '2018-12-27 19:34:29', '2018-12-27 19:34:29'),
(74, 19, 51, '2018-12-27 19:34:29', '2018-12-27 19:34:29'),
(75, 19, 84, '2018-12-27 19:34:29', '2018-12-27 19:34:29'),
(76, 20, 4, '2018-12-27 19:37:05', '2018-12-27 19:37:05'),
(77, 20, 25, '2018-12-27 19:37:05', '2018-12-27 19:37:05'),
(78, 20, 29, '2018-12-27 19:37:05', '2018-12-27 19:37:05'),
(79, 20, 51, '2018-12-27 19:37:05', '2018-12-27 19:37:05'),
(80, 20, 52, '2018-12-27 19:37:05', '2018-12-27 19:37:05'),
(81, 20, 81, '2018-12-27 19:37:05', '2018-12-27 19:37:05'),
(82, 20, 84, '2018-12-27 19:37:05', '2018-12-27 19:37:05'),
(83, 12, 84, NULL, NULL),
(84, 9, 84, NULL, NULL),
(85, 8, 84, NULL, NULL),
(86, 15, 84, NULL, NULL),
(91, 22, 4, '2019-02-04 23:11:44', '2019-02-04 23:11:44'),
(92, 22, 25, '2019-02-04 23:11:44', '2019-02-04 23:11:44'),
(93, 22, 67, '2019-02-04 23:11:44', '2019-02-04 23:11:44'),
(94, 22, 81, '2019-02-04 23:11:44', '2019-02-04 23:11:44'),
(95, 22, 84, '2019-02-04 23:11:44', '2019-02-04 23:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_restopay`
--

CREATE TABLE `riwayat_restopay` (
  `id` int(10) UNSIGNED NOT NULL,
  `penerima_id` int(11) NOT NULL,
  `penerima_phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `jenis_transaksi` enum('topup','refound') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'topup',
  `penerima_tipe` enum('restoran','konsumen') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengirim_id` int(11) NOT NULL,
  `pengirim_tipe` enum('restoran','admin','kurir') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_restopay`
--

INSERT INTO `riwayat_restopay` (`id`, `penerima_id`, `penerima_phone`, `nominal`, `jenis_transaksi`, `penerima_tipe`, `pengirim_id`, `pengirim_tipe`, `created_at`, `updated_at`) VALUES
(3, 9, '6281268475430', '1000.00', 'topup', 'restoran', 0, 'admin', '2019-01-17 23:27:15', '2019-01-17 23:27:15'),
(4, 9, '6281268475430', '1000.00', 'topup', 'restoran', 1, 'admin', '2019-01-17 23:48:35', '2019-01-17 23:48:35'),
(5, 9, '6281268475430', '5000.00', 'refound', 'restoran', 1, 'admin', '2019-01-18 00:08:28', '2019-01-18 00:08:28'),
(6, 1, '6281268475430', '2000.00', 'topup', 'konsumen', 1, 'restoran', '2019-01-21 02:41:10', '2019-01-21 02:41:10'),
(7, 1, '6281268475430', '2000.00', 'topup', 'konsumen', 21, 'kurir', '2019-01-21 02:46:48', '2019-01-21 02:46:48'),
(8, 1, '6281268475430', '5000.00', 'topup', 'konsumen', 1, 'admin', '2019-01-27 23:06:55', '2019-01-27 23:06:55'),
(9, 9, '6281268475430', '5000.00', 'topup', 'restoran', 1, 'admin', '2019-01-27 23:09:05', '2019-01-27 23:09:05'),
(10, 9, '6281268475430', '10800.00', 'refound', 'restoran', 1, 'admin', '2019-01-27 23:10:15', '2019-01-27 23:10:15'),
(11, 1, '6281268475430', '5000.00', 'refound', 'konsumen', 1, 'admin', '2019-01-27 23:13:18', '2019-01-27 23:13:18'),
(12, 1, '6281268475430', '5000.00', 'topup', 'konsumen', 1, 'restoran', '2019-01-27 23:43:30', '2019-01-27 23:43:30'),
(13, 22, '6281268475450', '100000.00', 'topup', 'restoran', 1, 'admin', '2019-02-04 23:21:59', '2019-02-04 23:21:59'),
(14, 1, '6281268475430', '4000.00', 'topup', 'konsumen', 1, 'restoran', '2019-02-11 02:19:43', '2019-02-11 02:19:43'),
(16, 1, '6281268475430', '4000.00', 'topup', 'konsumen', 1, 'restoran', '2019-02-13 06:55:48', '2019-02-13 06:55:48'),
(17, 1, '6281268475430', '4000.00', 'topup', 'konsumen', 1, 'restoran', '2019-02-13 06:57:13', '2019-02-13 06:57:13'),
(18, 1, '6281268475430', '5000.00', 'topup', 'konsumen', 1, 'admin', '2019-03-23 06:40:45', '2019-03-23 06:40:45'),
(19, 1, '6281268475430', '5000.00', 'topup', 'konsumen', 1, 'admin', '2019-03-23 06:53:12', '2019-03-23 06:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `id` int(10) UNSIGNED NOT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`id`, `balance`, `created_at`, `updated_at`) VALUES
(2, '4050.00', '2018-12-27 17:00:00', '2019-03-28 07:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id` int(10) UNSIGNED NOT NULL,
  `satuan_nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `satuan_nama`, `created_at`, `updated_at`) VALUES
(0, 'Kaleng', '2019-02-19 02:44:22', '2019-02-19 02:44:22'),
(2, 'Potong', '2019-02-19 02:48:16', '2019-02-19 02:48:16'),
(3, 'Porsi', '2019-03-08 02:37:34', '2019-03-08 02:37:34'),
(4, 'pcs', '2019-03-08 02:37:44', '2019-03-08 02:37:44'),
(5, 'Dus', '2019-03-08 02:37:57', '2019-03-08 02:37:57'),
(6, 'Lusin', '2019-03-08 02:38:08', '2019-03-08 02:38:08'),
(7, 'Kaleng Biskuit', '2019-03-08 02:38:51', '2019-03-08 02:38:51'),
(8, 'Kaleng Susu', '2019-03-08 02:38:58', '2019-03-08 02:38:58'),
(9, 'Botol Minuman', '2019-03-08 02:39:08', '2019-03-08 02:39:08'),
(10, 'Botol Kecap', '2019-03-08 02:39:16', '2019-03-08 02:39:16'),
(11, 'Kotak', '2019-03-08 02:39:22', '2019-03-08 02:39:22'),
(12, 'Bungkus Daun', '2019-03-08 02:39:32', '2019-03-08 02:39:32'),
(13, 'Bungkus Permen', '2019-03-08 02:39:44', '2019-03-08 02:39:44'),
(14, 'Bungkus Plastik', '2019-03-08 02:39:52', '2019-03-08 02:39:52'),
(15, 'Bungkus Styrofoam', '2019-03-08 02:40:20', '2019-03-08 02:40:20'),
(16, 'Karton', '2019-03-08 02:40:54', '2019-03-08 02:40:54'),
(17, 'Makanan Kaleng', '2019-03-08 02:41:07', '2019-03-08 02:41:07'),
(18, 'Plastik', '2019-03-08 02:41:17', '2019-03-08 02:41:17'),
(19, 'Kotak Pizza', '2019-03-08 02:41:26', '2019-03-08 02:41:26'),
(20, 'Gelas 500 ml', '2019-03-08 02:46:44', '2019-03-08 02:46:44'),
(21, 'toples', '2019-03-08 02:49:01', '2019-03-08 02:49:01'),
(22, 'Bungkus', '2019-03-08 02:49:23', '2019-03-08 02:49:23'),
(23, 'Donat', '2019-03-08 02:51:07', '2019-03-08 02:51:07'),
(24, 'Roti', '2019-03-08 02:51:51', '2019-03-08 02:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `uat`
--

CREATE TABLE `uat` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soal_1` int(11) NOT NULL,
  `soal_2` int(11) NOT NULL,
  `soal_3` int(11) NOT NULL,
  `soal_4` int(11) NOT NULL,
  `soal_5` int(11) NOT NULL,
  `soal_6` int(11) NOT NULL,
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_order_id_order_index` (`id_order`),
  ADD KEY `detail_order_id_menu_index` (`id_menu`);

--
-- Indexes for table `favorit`
--
ALTER TABLE `favorit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorit_id_menu_foreign` (`id_menu`),
  ADD KEY `favorit_id_konsumen_foreign` (`id_konsumen`);

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `konsumen_konsumen_phone_unique` (`konsumen_phone`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kurir_kurir_phone_unique` (`kurir_phone`),
  ADD KEY `kurir_id_restoran_foreign` (`id_restoran`),
  ADD KEY `kurir_kurir_delete_index` (`kurir_delete`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id_restoran_foreign` (`id_restoran`),
  ADD KEY `menu_id_kategori_foreign` (`id_kategori`),
  ADD KEY `menu_menu_nama_index` (`menu_nama`),
  ADD KEY `menu_menu_ketersediaan_index` (`menu_ketersediaan`),
  ADD KEY `menu_id_satuan_foreigen` (`id_satuan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_konsumen_index` (`id_konsumen`),
  ADD KEY `order_id_restoran_index` (`id_restoran`),
  ADD KEY `order_order_metode_bayar_index` (`order_metode_bayar`),
  ADD KEY `order_order_status_index` (`order_status`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profit`
--
ALTER TABLE `profit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profit_id_order_index` (`id_order`),
  ADD KEY `profit_status_index` (`status`);

--
-- Indexes for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restoran`
--
ALTER TABLE `restoran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restoran_restoran_phone_unique` (`restoran_phone`),
  ADD KEY `restoran_restoran_nama_index` (`restoran_nama`),
  ADD KEY `restoran_restoran_oprasional_index` (`restoran_oprasional`),
  ADD KEY `restoran_restoran_pemilik_phone_index` (`restoran_pemilik_phone`),
  ADD KEY `restoran_restoran_delivery_index` (`restoran_delivery`),
  ADD KEY `restoran_restoran_status_index` (`restoran_status`);

--
-- Indexes for table `restoran_kategori`
--
ALTER TABLE `restoran_kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restoran_kategori_id_restoran_index` (`id_restoran`),
  ADD KEY `restoran_kategori_id_kategori_index` (`id_kategori`);

--
-- Indexes for table `riwayat_restopay`
--
ALTER TABLE `riwayat_restopay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_restopay_penerima_id_index` (`penerima_id`),
  ADD KEY `riwayat_restopay_penerima_phone_index` (`penerima_phone`),
  ADD KEY `riwayat_restopay_jenis_transaksi_index` (`jenis_transaksi`),
  ADD KEY `riwayat_restopay_penerima_tipe_index` (`penerima_tipe`),
  ADD KEY `riwayat_restopay_pengirim_id_index` (`pengirim_id`),
  ADD KEY `riwayat_restopay_pengirim_tipe_index` (`pengirim_tipe`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uat`
--
ALTER TABLE `uat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `favorit`
--
ALTER TABLE `favorit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `profit`
--
ALTER TABLE `profit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `restoran`
--
ALTER TABLE `restoran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `restoran_kategori`
--
ALTER TABLE `restoran_kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `riwayat_restopay`
--
ALTER TABLE `riwayat_restopay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `uat`
--
ALTER TABLE `uat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD CONSTRAINT `detail_order_id_menu_foreign` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_order_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorit`
--
ALTER TABLE `favorit`
  ADD CONSTRAINT `favorit_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorit_id_menu_foreign` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kurir`
--
ALTER TABLE `kurir`
  ADD CONSTRAINT `kurir_id_restoran_foreign` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_id_restoran_foreign` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_id_satuan_foreigen` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_id_konsumen_foreign` FOREIGN KEY (`id_konsumen`) REFERENCES `konsumen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_id_restoran_foreign` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profit`
--
ALTER TABLE `profit`
  ADD CONSTRAINT `profit_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restoran_kategori`
--
ALTER TABLE `restoran_kategori`
  ADD CONSTRAINT `restoran_kategori_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `restoran_kategori_id_restoran_foreign` FOREIGN KEY (`id_restoran`) REFERENCES `restoran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
