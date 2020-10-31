-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2020 at 08:24 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ego_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `geoLocation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstLine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondLine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `geoLocation`, `firstLine`, `secondLine`, `floor`, `apartment`, `zone`, `district`, `city`, `created_at`, `updated_at`) VALUES
(1, NULL, 'gsfdljgk', NULL, NULL, NULL, NULL, NULL, 'fsdhgdr', '2020-10-21 11:09:18', '2020-10-21 11:09:18'),
(2, NULL, 'gsfdljgk', NULL, NULL, NULL, NULL, NULL, 'fsdhgdr', '2020-10-21 11:09:49', '2020-10-21 11:09:49'),
(3, NULL, 'gsfdljgkdsfggfd', NULL, NULL, NULL, NULL, NULL, 'fsdhgdr', '2020-10-21 11:15:24', '2020-10-21 11:15:24'),
(4, NULL, 'dfsgasdfgg', NULL, NULL, NULL, NULL, NULL, 'dsg fgdfs', '2020-10-22 11:15:35', '2020-10-22 11:15:35'),
(5, NULL, 'yyyyyyyyyy', NULL, NULL, NULL, NULL, NULL, 'dsg fgdfs', '2020-10-22 11:24:29', '2020-10-22 11:24:29'),
(6, NULL, 'uuuuuuuuuuuuuuuuyyyy', NULL, NULL, NULL, NULL, NULL, 'dsg fgdfs', '2020-10-22 11:25:36', '2020-10-22 11:25:36'),
(7, NULL, 'dlkjlsfew', NULL, NULL, NULL, NULL, NULL, 'Cairo', '2020-10-22 11:43:21', '2020-10-22 11:43:21'),
(8, NULL, 'dhfsjdfvdvgs', NULL, NULL, NULL, NULL, NULL, 'fsdhgdr', '2020-10-22 12:21:02', '2020-10-22 12:21:02'),
(9, NULL, 'dsg asg', NULL, NULL, NULL, NULL, NULL, 'Cairo', '2020-10-22 12:21:02', '2020-10-22 12:21:02'),
(10, NULL, 'kjs75454', NULL, NULL, NULL, NULL, NULL, 'fsdhgdr', '2020-10-22 12:21:32', '2020-10-22 12:21:32'),
(11, NULL, '436534', NULL, NULL, NULL, NULL, NULL, 'Cairo', '2020-10-22 12:21:32', '2020-10-22 12:21:32'),
(12, NULL, '8879', NULL, NULL, NULL, NULL, NULL, 'dsg fgdfs', '2020-10-22 12:21:32', '2020-10-22 12:21:32'),
(13, NULL, 'dlkjlsfew', NULL, NULL, NULL, NULL, NULL, 'CairoCCCC', '2020-10-22 12:29:47', '2020-10-22 12:29:47'),
(14, NULL, 'DD3987495485', NULL, NULL, NULL, NULL, NULL, 'dsg fgdfs', '2020-10-22 12:29:47', '2020-10-22 12:29:47'),
(15, NULL, 'sssxxx', NULL, NULL, NULL, NULL, NULL, 'CairoCCCC', '2020-10-22 12:30:47', '2020-10-22 12:30:47');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `key`, `value`) VALUES
(1, 'home_section_1', 'search'),
(2, 'home_section_2', 'slider'),
(3, 'home_section_3', 'top_markets_heading'),
(4, 'home_section_4', 'top_markets'),
(5, 'home_section_5', 'trending_week_heading'),
(6, 'home_section_6', 'trending_week'),
(7, 'home_section_7', 'categories_heading'),
(8, 'home_section_8', 'categories'),
(9, 'home_section_9', 'popular_heading'),
(10, 'home_section_10', 'popular'),
(11, 'home_section_11', 'recent_reviews_heading'),
(12, 'home_section_12', 'recent_reviews'),
(13, 'home_section_1', 'search'),
(14, 'home_section_2', 'slider'),
(15, 'home_section_3', 'top_markets_heading'),
(16, 'home_section_4', 'top_markets'),
(17, 'home_section_5', 'trending_week_heading'),
(18, 'home_section_6', 'trending_week'),
(19, 'home_section_7', 'categories_heading'),
(20, 'home_section_8', 'categories'),
(21, 'home_section_9', 'popular_heading'),
(22, 'home_section_10', 'popular'),
(23, 'home_section_11', 'recent_reviews_heading'),
(24, 'home_section_12', 'recent_reviews'),
(25, 'home_section_1', 'search'),
(26, 'home_section_2', 'slider'),
(27, 'home_section_3', 'top_markets_heading'),
(28, 'home_section_4', 'top_markets'),
(29, 'home_section_5', 'trending_week_heading'),
(30, 'home_section_6', 'trending_week'),
(31, 'home_section_7', 'categories_heading'),
(32, 'home_section_8', 'categories'),
(33, 'home_section_9', 'popular_heading'),
(34, 'home_section_10', 'popular'),
(35, 'home_section_11', 'recent_reviews_heading'),
(36, 'home_section_12', 'recent_reviews'),
(37, 'home_section_1', 'search'),
(38, 'home_section_2', 'slider'),
(39, 'home_section_3', 'top_markets_heading'),
(40, 'home_section_4', 'top_markets'),
(41, 'home_section_5', 'trending_week_heading'),
(42, 'home_section_6', 'trending_week'),
(43, 'home_section_7', 'categories_heading'),
(44, 'home_section_8', 'categories'),
(45, 'home_section_9', 'popular_heading'),
(46, 'home_section_10', 'popular'),
(47, 'home_section_11', 'recent_reviews_heading'),
(48, 'home_section_12', 'recent_reviews'),
(49, 'home_section_1', 'search'),
(50, 'home_section_2', 'slider'),
(51, 'home_section_3', 'top_markets_heading'),
(52, 'home_section_4', 'top_markets'),
(53, 'home_section_5', 'trending_week_heading'),
(54, 'home_section_6', 'trending_week'),
(55, 'home_section_7', 'categories_heading'),
(56, 'home_section_8', 'categories'),
(57, 'home_section_9', 'popular_heading'),
(58, 'home_section_10', 'popular'),
(59, 'home_section_11', 'recent_reviews_heading'),
(60, 'home_section_12', 'recent_reviews'),
(61, 'home_section_1', 'search'),
(62, 'home_section_2', 'slider'),
(63, 'home_section_3', 'top_markets_heading'),
(64, 'home_section_4', 'top_markets'),
(65, 'home_section_5', 'trending_week_heading'),
(66, 'home_section_6', 'trending_week'),
(67, 'home_section_7', 'categories_heading'),
(68, 'home_section_8', 'categories'),
(69, 'home_section_9', 'popular_heading'),
(70, 'home_section_10', 'popular'),
(71, 'home_section_11', 'recent_reviews_heading'),
(72, 'home_section_12', 'recent_reviews'),
(73, 'home_section_1', 'search'),
(74, 'home_section_2', 'slider'),
(75, 'home_section_3', 'top_markets_heading'),
(76, 'home_section_4', 'top_markets'),
(77, 'home_section_5', 'trending_week_heading'),
(78, 'home_section_6', 'trending_week'),
(79, 'home_section_7', 'categories_heading'),
(80, 'home_section_8', 'categories'),
(81, 'home_section_9', 'popular_heading'),
(82, 'home_section_10', 'popular'),
(83, 'home_section_11', 'recent_reviews_heading'),
(84, 'home_section_12', 'recent_reviews'),
(85, 'home_section_1', 'search'),
(86, 'home_section_2', 'slider'),
(87, 'home_section_3', 'top_markets_heading'),
(88, 'home_section_4', 'top_markets'),
(89, 'home_section_5', 'trending_week_heading'),
(90, 'home_section_6', 'trending_week'),
(91, 'home_section_7', 'categories_heading'),
(92, 'home_section_8', 'categories'),
(93, 'home_section_9', 'popular_heading'),
(94, 'home_section_10', 'popular'),
(95, 'home_section_11', 'recent_reviews_heading'),
(96, 'home_section_12', 'recent_reviews'),
(97, 'home_section_1', 'search'),
(98, 'home_section_2', 'slider'),
(99, 'home_section_3', 'top_markets_heading'),
(100, 'home_section_4', 'top_markets'),
(101, 'home_section_5', 'trending_week_heading'),
(102, 'home_section_6', 'trending_week'),
(103, 'home_section_7', 'categories_heading'),
(104, 'home_section_8', 'categories'),
(105, 'home_section_9', 'popular_heading'),
(106, 'home_section_10', 'popular'),
(107, 'home_section_11', 'recent_reviews_heading'),
(108, 'home_section_12', 'recent_reviews'),
(109, 'home_section_1', 'search'),
(110, 'home_section_2', 'slider'),
(111, 'home_section_3', 'top_markets_heading'),
(112, 'home_section_4', 'top_markets'),
(113, 'home_section_5', 'trending_week_heading'),
(114, 'home_section_6', 'trending_week'),
(115, 'home_section_7', 'categories_heading'),
(116, 'home_section_8', 'categories'),
(117, 'home_section_9', 'popular_heading'),
(118, 'home_section_10', 'popular'),
(119, 'home_section_11', 'recent_reviews_heading'),
(120, 'home_section_12', 'recent_reviews'),
(121, 'home_section_1', 'search'),
(122, 'home_section_2', 'slider'),
(123, 'home_section_3', 'top_markets_heading'),
(124, 'home_section_4', 'top_markets'),
(125, 'home_section_5', 'trending_week_heading'),
(126, 'home_section_6', 'trending_week'),
(127, 'home_section_7', 'categories_heading'),
(128, 'home_section_8', 'categories'),
(129, 'home_section_9', 'popular_heading'),
(130, 'home_section_10', 'popular'),
(131, 'home_section_11', 'recent_reviews_heading'),
(132, 'home_section_12', 'recent_reviews'),
(133, 'home_section_1', 'search'),
(134, 'home_section_2', 'slider'),
(135, 'home_section_3', 'top_markets_heading'),
(136, 'home_section_4', 'top_markets'),
(137, 'home_section_5', 'trending_week_heading'),
(138, 'home_section_6', 'trending_week'),
(139, 'home_section_7', 'categories_heading'),
(140, 'home_section_8', 'categories'),
(141, 'home_section_9', 'popular_heading'),
(142, 'home_section_10', 'popular'),
(143, 'home_section_11', 'recent_reviews_heading'),
(144, 'home_section_12', 'recent_reviews'),
(145, 'home_section_1', 'search'),
(146, 'home_section_2', 'slider'),
(147, 'home_section_3', 'top_markets_heading'),
(148, 'home_section_4', 'top_markets'),
(149, 'home_section_5', 'trending_week_heading'),
(150, 'home_section_6', 'trending_week'),
(151, 'home_section_7', 'categories_heading'),
(152, 'home_section_8', 'categories'),
(153, 'home_section_9', 'popular_heading'),
(154, 'home_section_10', 'popular'),
(155, 'home_section_11', 'recent_reviews_heading'),
(156, 'home_section_12', 'recent_reviews'),
(157, 'home_section_1', 'search'),
(158, 'home_section_2', 'slider'),
(159, 'home_section_3', 'top_markets_heading'),
(160, 'home_section_4', 'top_markets'),
(161, 'home_section_5', 'trending_week_heading'),
(162, 'home_section_6', 'trending_week'),
(163, 'home_section_7', 'categories_heading'),
(164, 'home_section_8', 'categories'),
(165, 'home_section_9', 'popular_heading'),
(166, 'home_section_10', 'popular'),
(167, 'home_section_11', 'recent_reviews_heading'),
(168, 'home_section_12', 'recent_reviews'),
(169, 'home_section_1', 'search'),
(170, 'home_section_2', 'slider'),
(171, 'home_section_3', 'top_markets_heading'),
(172, 'home_section_4', 'top_markets'),
(173, 'home_section_5', 'trending_week_heading'),
(174, 'home_section_6', 'trending_week'),
(175, 'home_section_7', 'categories_heading'),
(176, 'home_section_8', 'categories'),
(177, 'home_section_9', 'popular_heading'),
(178, 'home_section_10', 'popular'),
(179, 'home_section_11', 'recent_reviews_heading'),
(180, 'home_section_12', 'recent_reviews'),
(181, 'home_section_1', 'search'),
(182, 'home_section_2', 'slider'),
(183, 'home_section_3', 'top_markets_heading'),
(184, 'home_section_4', 'top_markets'),
(185, 'home_section_5', 'trending_week_heading'),
(186, 'home_section_6', 'trending_week'),
(187, 'home_section_7', 'categories_heading'),
(188, 'home_section_8', 'categories'),
(189, 'home_section_9', 'popular_heading'),
(190, 'home_section_10', 'popular'),
(191, 'home_section_11', 'recent_reviews_heading'),
(192, 'home_section_12', 'recent_reviews'),
(193, 'home_section_1', 'search'),
(194, 'home_section_2', 'slider'),
(195, 'home_section_3', 'top_markets_heading'),
(196, 'home_section_4', 'top_markets'),
(197, 'home_section_5', 'trending_week_heading'),
(198, 'home_section_6', 'trending_week'),
(199, 'home_section_7', 'categories_heading'),
(200, 'home_section_8', 'categories'),
(201, 'home_section_9', 'popular_heading'),
(202, 'home_section_10', 'popular'),
(203, 'home_section_11', 'recent_reviews_heading'),
(204, 'home_section_12', 'recent_reviews'),
(205, 'home_section_1', 'search'),
(206, 'home_section_2', 'slider'),
(207, 'home_section_3', 'top_markets_heading'),
(208, 'home_section_4', 'top_markets'),
(209, 'home_section_5', 'trending_week_heading'),
(210, 'home_section_6', 'trending_week'),
(211, 'home_section_7', 'categories_heading'),
(212, 'home_section_8', 'categories'),
(213, 'home_section_9', 'popular_heading'),
(214, 'home_section_10', 'popular'),
(215, 'home_section_11', 'recent_reviews_heading'),
(216, 'home_section_12', 'recent_reviews'),
(217, 'home_section_1', 'search'),
(218, 'home_section_2', 'slider'),
(219, 'home_section_3', 'top_markets_heading'),
(220, 'home_section_4', 'top_markets'),
(221, 'home_section_5', 'trending_week_heading'),
(222, 'home_section_6', 'trending_week'),
(223, 'home_section_7', 'categories_heading'),
(224, 'home_section_8', 'categories'),
(225, 'home_section_9', 'popular_heading'),
(226, 'home_section_10', 'popular'),
(227, 'home_section_11', 'recent_reviews_heading'),
(228, 'home_section_12', 'recent_reviews'),
(229, 'home_section_1', 'search'),
(230, 'home_section_2', 'slider'),
(231, 'home_section_3', 'top_markets_heading'),
(232, 'home_section_4', 'top_markets'),
(233, 'home_section_5', 'trending_week_heading'),
(234, 'home_section_6', 'trending_week'),
(235, 'home_section_7', 'categories_heading'),
(236, 'home_section_8', 'categories'),
(237, 'home_section_9', 'popular_heading'),
(238, 'home_section_10', 'popular'),
(239, 'home_section_11', 'recent_reviews_heading'),
(240, 'home_section_12', 'recent_reviews'),
(241, 'home_section_1', 'search'),
(242, 'home_section_2', 'slider'),
(243, 'home_section_3', 'top_markets_heading'),
(244, 'home_section_4', 'top_markets'),
(245, 'home_section_5', 'trending_week_heading'),
(246, 'home_section_6', 'trending_week'),
(247, 'home_section_7', 'categories_heading'),
(248, 'home_section_8', 'categories'),
(249, 'home_section_9', 'popular_heading'),
(250, 'home_section_10', 'popular'),
(251, 'home_section_11', 'recent_reviews_heading'),
(252, 'home_section_12', 'recent_reviews'),
(253, 'home_section_1', 'search'),
(254, 'home_section_2', 'slider'),
(255, 'home_section_3', 'top_markets_heading'),
(256, 'home_section_4', 'top_markets'),
(257, 'home_section_5', 'trending_week_heading'),
(258, 'home_section_6', 'trending_week'),
(259, 'home_section_7', 'categories_heading'),
(260, 'home_section_8', 'categories'),
(261, 'home_section_9', 'popular_heading'),
(262, 'home_section_10', 'popular'),
(263, 'home_section_11', 'recent_reviews_heading'),
(264, 'home_section_12', 'recent_reviews'),
(265, 'home_section_1', 'search'),
(266, 'home_section_2', 'slider'),
(267, 'home_section_3', 'top_markets_heading'),
(268, 'home_section_4', 'top_markets'),
(269, 'home_section_5', 'trending_week_heading'),
(270, 'home_section_6', 'trending_week'),
(271, 'home_section_7', 'categories_heading'),
(272, 'home_section_8', 'categories'),
(273, 'home_section_9', 'popular_heading'),
(274, 'home_section_10', 'popular'),
(275, 'home_section_11', 'recent_reviews_heading'),
(276, 'home_section_12', 'recent_reviews'),
(277, 'home_section_1', 'search'),
(278, 'home_section_2', 'slider'),
(279, 'home_section_3', 'top_markets_heading'),
(280, 'home_section_4', 'top_markets'),
(281, 'home_section_5', 'trending_week_heading'),
(282, 'home_section_6', 'trending_week'),
(283, 'home_section_7', 'categories_heading'),
(284, 'home_section_8', 'categories'),
(285, 'home_section_9', 'popular_heading'),
(286, 'home_section_10', 'popular'),
(287, 'home_section_11', 'recent_reviews_heading'),
(288, 'home_section_12', 'recent_reviews');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `enabled`, `created_at`, `updated_at`) VALUES
(4, '41421', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:02:04', '2020-10-15 06:02:04'),
(22, 'Red Valentino', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:00:37', '2020-10-15 06:00:37'),
(23, 'Pinko', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:01:05', '2020-10-15 06:01:05'),
(24, '414555', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:02:04', '2020-10-15 06:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_options`
--

CREATE TABLE `cart_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent`, `description`, `created_at`, `updated_at`) VALUES
(20, 'Clothing', 0, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"79\" style=\"width: 59pt;\"><tbody><tr height=\"42\" style=\"height:31.5pt\">\r\n  <td height=\"42\" class=\"xl66\" width=\"79\" style=\"height:31.5pt;width:59pt\">Clothing</td></tr></tbody></table>', '2020-10-26 07:47:35', '2020-10-26 07:47:35'),
(21, 'Jeans', 20, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"110\" style=\"width: 83pt;\"><tbody><tr height=\"42\" style=\"height:31.5pt\">\r\n  <td height=\"42\" class=\"xl66\" width=\"110\" style=\"height:31.5pt;width:83pt\">Jeans</td></tr></tbody></table>', '2020-10-26 07:48:11', '2020-10-26 07:48:11'),
(122, 'Shoes', 0, 'Shoes', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(123, 'Accessories', 0, 'Accessories\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(124, 'Bags', 123, 'Bags\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(125, 'Dresses', 124, 'Dresses\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(126, 'Trousers', 20, 'Trousers\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(127, 'Boots', 122, 'Boots\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(128, 'Sneakers', 122, 'Sneakers\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(129, 'Sweaters', 20, 'Sweaters\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(130, 'Jackets ', 20, 'Jackets \r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31'),
(131, 'Jumpsuits', 20, 'Jumpsuits\r\n', '2020-10-26 09:01:31', '2020-10-26 09:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `city_codes`
--

CREATE TABLE `city_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_codes`
--

INSERT INTO `city_codes` (`id`, `city`, `code`, `created_at`, `updated_at`) VALUES
(19, 'Cairo ', 'EG-01', NULL, NULL),
(20, 'Cash Collection', 'EG-02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`) VALUES
(1, 'Green', '#X35 '),
(2, ' White', '#360 '),
(3, 'Red', '#H85 '),
(4, 'Denim', '#104 '),
(5, ' Green ', '#YG4 '),
(6, '', '#YG2'),
(7, ' Green ', '#124 '),
(8, ' Black ', '#110 '),
(9, ' White', '#360 '),
(10, ' Green ', '#124 '),
(11, ' Green ', '#124 '),
(12, 'Red', '#H85 '),
(13, 'Blue', '#J99 '),
(14, 'Rose', '#153 '),
(15, 'Black', '#110 '),
(16, ' White ', '#193   '),
(17, ' Black', '#110 '),
(18, ' Beige', '#193 '),
(19, 'Black', '#F147M '),
(20, 'Black', '#F13WB '),
(21, 'Cuoio', '#F1891 '),
(22, 'Cuoio', '#F1891 '),
(23, 'Tobco', '#F0VAu'),
(24, 'Black', '#F0MQ0 '),
(25, 'Black', '#F0VAV '),
(26, ' Black', '#F18S5 '),
(27, 'Rose', '#F19MN '),
(28, 'Black', '#1001BlkW '),
(29, 'Blue', '#3100L '),
(30, 'Red', '#2501 '),
(31, 'Black', '#1001 '),
(32, 'Gold', '#7600 '),
(33, 'Fuch', '#3200 '),
(34, 'Black', '#1000 '),
(35, 'Pink', '#2727  '),
(36, 'Yellow', '#6010 '),
(37, '', '#0110WhB'),
(38, 'Bleach', '#7171'),
(39, 'Petrol', '#3900'),
(40, '', '#1000Blk'),
(41, '', '#3100L.Blue'),
(42, '', '#0110WhB'),
(43, '', '#2800Fuch.'),
(44, '', '#1000Blk'),
(45, '', '#2810Fuch.'),
(46, '', '#1000Blk'),
(47, '', '#ZZ1'),
(48, '', '#109'),
(49, '', '#A76'),
(50, '', '#L11'),
(51, '', '#D90'),
(52, '', '#Z99'),
(53, '', '#Z99'),
(54, '', '#I09 '),
(55, '', '#R24'),
(56, '', '#ZZF'),
(57, '', '#AY1'),
(58, '', '#I17'),
(59, '', '#R51'),
(60, '', '#ZZ2'),
(61, '', '#ZZ2'),
(62, '', '#NLC'),
(63, '', '#NLC'),
(64, '', '#ZBZ'),
(65, '', '#C32'),
(66, '', '#ZI4'),
(67, '', '#NH6'),
(68, '', '#Z99'),
(69, '', '#Z05'),
(70, '', '#Z99'),
(71, '', '#NLC'),
(72, '', '#NL4'),
(73, '', '#F94'),
(74, '', '#F94'),
(75, '', '#ZZF'),
(76, '', '#Z04'),
(77, '', '#Z04'),
(78, '', '#Z04'),
(79, '', '#IN6'),
(80, '', '#ZL0'),
(81, '', '#Ni1'),
(82, '', '#C22'),
(83, '', '#C22'),
(84, '', '#Z99'),
(85, '', '#ZN8'),
(86, '', '#Z05'),
(87, '', '#N17'),
(88, '', '#0NO'),
(89, '', '#C07'),
(90, '', '#15J'),
(91, '', '#15F'),
(92, '', '#0NO'),
(93, '', '#A47'),
(94, '', '#48X'),
(95, '', '#0NO'),
(96, '', '#0NO'),
(97, '', '#A03'),
(98, '', '#825'),
(99, '', '#LDM');

-- --------------------------------------------------------

--
-- Table structure for table `color_products`
--

CREATE TABLE `color_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_products`
--

INSERT INTO `color_products` (`id`, `color_id`, `product_id`) VALUES
(44, 3, 537),
(45, 4, 537),
(48, 4, 543),
(49, 2, 544),
(50, 7, 544),
(172, 1, 406),
(173, 2, 407),
(174, 9, 407),
(175, 3, 408),
(176, 12, 408),
(177, 4, 409),
(178, 5, 410),
(179, 6, 411),
(180, 7, 412),
(181, 10, 412),
(182, 11, 412),
(183, 8, 413),
(184, 15, 413),
(185, 17, 413),
(186, 2, 414),
(187, 9, 414),
(188, 7, 415),
(189, 10, 415),
(190, 11, 415),
(191, 7, 416),
(192, 10, 416),
(193, 11, 416),
(194, 3, 417),
(195, 12, 417),
(196, 13, 418),
(197, 14, 419),
(198, 8, 420),
(199, 15, 420),
(200, 17, 420),
(201, 16, 421),
(202, 18, 421),
(203, 8, 422),
(204, 15, 422),
(205, 17, 422),
(206, 16, 422),
(207, 18, 422),
(208, 19, 424),
(209, 20, 425),
(210, 21, 426),
(211, 22, 426),
(212, 21, 427),
(213, 22, 427),
(214, 23, 428),
(215, 24, 429),
(216, 25, 430),
(217, 26, 431),
(218, 27, 432),
(219, 28, 433),
(220, 31, 433),
(221, 29, 434),
(222, 30, 435),
(223, 31, 436),
(224, 32, 437),
(225, 33, 438),
(226, 34, 439),
(227, 35, 440),
(228, 36, 441),
(229, 8, 442),
(230, 15, 442),
(231, 17, 442),
(232, 37, 442),
(233, 42, 442),
(234, 38, 443),
(235, 39, 444),
(236, 34, 445),
(237, 40, 445),
(238, 44, 445),
(239, 46, 445),
(240, 29, 446),
(241, 41, 446),
(242, 8, 447),
(243, 15, 447),
(244, 17, 447),
(245, 37, 447),
(246, 42, 447),
(247, 43, 448),
(248, 34, 449),
(249, 40, 449),
(250, 44, 449),
(251, 46, 449),
(252, 45, 450),
(253, 34, 451),
(254, 40, 451),
(255, 44, 451),
(256, 46, 451),
(257, 47, 452),
(258, 48, 453),
(259, 49, 454),
(260, 50, 455),
(261, 51, 456),
(262, 52, 457),
(263, 53, 457),
(264, 68, 457),
(265, 70, 457),
(266, 84, 457),
(267, 52, 458),
(268, 53, 458),
(269, 68, 458),
(270, 70, 458),
(271, 84, 458),
(272, 54, 458),
(273, 55, 460),
(274, 56, 461),
(275, 75, 461),
(276, 57, 462),
(277, 58, 463),
(278, 59, 464),
(279, 60, 465),
(280, 61, 465),
(281, 60, 466),
(282, 61, 466),
(283, 62, 467),
(284, 63, 467),
(285, 71, 467),
(286, 62, 468),
(287, 63, 468),
(288, 71, 468),
(289, 64, 469),
(290, 65, 470),
(291, 66, 471),
(292, 67, 472),
(293, 69, 473),
(294, 86, 473),
(295, 52, 475),
(296, 53, 475),
(297, 68, 475),
(298, 70, 475),
(299, 84, 475),
(300, 62, 476),
(301, 63, 476),
(302, 71, 476),
(303, 72, 477),
(304, 73, 478),
(305, 74, 478),
(306, 73, 479),
(307, 74, 479),
(308, 56, 480),
(309, 75, 480),
(310, 76, 481),
(311, 77, 481),
(312, 78, 481),
(313, 76, 482),
(314, 77, 482),
(315, 78, 482),
(316, 76, 483),
(317, 77, 483),
(318, 78, 483),
(319, 79, 484),
(320, 80, 485),
(321, 81, 486),
(322, 82, 487),
(323, 83, 487),
(324, 82, 488),
(325, 83, 488),
(326, 52, 489),
(327, 53, 489),
(328, 68, 489),
(329, 70, 489),
(330, 84, 489),
(331, 85, 490),
(332, 69, 491),
(333, 86, 491),
(334, 87, 492),
(335, 88, 492),
(336, 92, 492),
(337, 95, 492),
(338, 96, 492),
(339, 89, 494),
(340, 91, 495),
(341, 88, 497),
(342, 92, 497),
(343, 95, 497),
(344, 96, 497),
(345, 93, 498),
(346, 94, 499),
(347, 88, 500),
(348, 92, 500),
(349, 95, 500),
(350, 96, 500),
(351, 88, 501),
(352, 92, 501),
(353, 95, 501),
(354, 96, 501),
(355, 97, 502),
(356, 98, 503),
(357, 99, 504);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `description` text COLLATE utf8mb4_unicode_ci,
  `expires_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(63) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_digits` tinyint(3) UNSIGNED DEFAULT NULL,
  `rounding` tinyint(3) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `decimal_digits`, `rounding`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 2, 0, '2019-10-22 13:50:48', '2019-10-22 13:50:48'),
(2, 'Euro', '€', 'EUR', 2, 0, '2019-10-22 13:51:39', '2019-10-22 13:51:39'),
(3, 'Indian Rupee', 'টকা', 'INR', 2, 0, '2019-10-22 13:52:50', '2019-10-22 13:52:50'),
(4, 'Indonesian Rupiah', 'Rp', 'IDR', 0, 0, '2019-10-22 13:53:22', '2019-10-22 13:53:22'),
(5, 'Brazilian Real', 'R$', 'BRL', 2, 0, '2019-10-22 13:54:00', '2019-10-22 13:54:00'),
(6, 'Cambodian Riel', '៛', 'KHR', 2, 0, '2019-10-22 13:55:51', '2019-10-22 13:55:51'),
(7, 'Vietnamese Dong', '₫', 'VND', 0, 0, '2019-10-22 13:56:26', '2019-10-22 13:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(56) COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `in_table` tinyint(1) DEFAULT NULL,
  `bootstrap_column` tinyint(4) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `custom_field_model` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `name`, `type`, `values`, `disabled`, `required`, `in_table`, `bootstrap_column`, `order`, `custom_field_model`, `created_at`, `updated_at`) VALUES
(4, 'phone', 'text', NULL, 0, 0, 0, 6, 2, 'App\\Models\\User', '2019-09-06 19:30:00', '2019-09-06 19:31:47'),
(5, 'bio', 'textarea', NULL, 0, 0, 0, 6, 1, 'App\\Models\\User', '2019-09-06 19:43:58', '2019-09-06 19:43:58'),
(6, 'address', 'text', NULL, 0, 0, 0, 6, 3, 'App\\Models\\User', '2019-09-06 19:49:22', '2019-09-06 19:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `view` longtext COLLATE utf8mb4_unicode_ci,
  `custom_field_id` int(10) UNSIGNED NOT NULL,
  `customizable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customizable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pickupAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dropOffAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `returnAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `trackingNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cod` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `businessReference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_state_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_type_id` int(10) UNSIGNED DEFAULT NULL,
  `isSameDay` tinyint(1) DEFAULT NULL,
  `subAccountId` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webhookUrl` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `description`, `address`, `latitude`, `longitude`, `is_default`, `user_id`, `created_at`, `updated_at`, `pickupAddress`, `dropOffAddress`, `returnAddress`, `receiver_id`, `state`, `trackingNumber`, `notes`, `cod`, `businessReference`, `delivery_state_id`, `delivery_type_id`, `isSameDay`, `subAccountId`, `webhookUrl`, `type`) VALUES
(1, NULL, 'addressfdh', NULL, NULL, NULL, 1, '2020-10-19 12:12:54', '2020-10-19 12:12:54', NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'address', NULL, NULL, NULL, 0, '2020-10-19 12:13:24', '2020-10-19 12:13:24', NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'saaaaaaaaaa', NULL, NULL, NULL, 0, '2020-10-19 12:13:47', '2020-10-19 12:13:47', NULL, NULL, NULL, NULL, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-21 11:28:46', '2020-10-21 11:28:46', '3', NULL, '3', 4, 'pending', '176300', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Cash Collec'),
(47, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-21 11:31:08', '2020-10-21 11:31:08', '3', NULL, '3', 5, 'pending', '151836', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Cash Collec'),
(48, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-21 11:32:27', '2020-10-21 11:32:27', '3', NULL, '3', 8, 'pending', '361371', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Cash Collec'),
(49, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-21 11:45:24', '2020-10-22 12:55:32', '3', '15', '14', 14, '', '71847', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Cash Collec'),
(50, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-22 09:54:28', '2020-10-22 09:54:28', '3', NULL, '3', 8, 'pending', '394706', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Cash Collec'),
(58, NULL, NULL, NULL, NULL, NULL, 1, '2020-10-22 12:24:03', '2020-10-22 12:24:03', '10', '11', '12', 8, 'pending', '472559', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Cash Collec');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_states`
--

CREATE TABLE `delivery_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_states`
--

INSERT INTO `delivery_states` (`id`, `state`, `code`, `description`, `created_at`, `updated_at`) VALUES
(154, 'Pending', 10, 'Delivery created and we will start working on it asap.', NULL, NULL),
(155, 'In progress', 15, 'Our operation team started working on your delivery.', NULL, NULL),
(156, 'Delivery on route', 16, 'You delivery has been assigned for star.', NULL, NULL),
(157, 'Picking up', 20, 'Bosta Star is on his way to pick the delivery.', NULL, NULL),
(158, 'Picking up from warehouse', 21, 'Bosta star is on his way to pick the scheduled delivery from warehouse.', NULL, NULL),
(159, 'Arrived at warehouse', 22, 'Bosta star has arrived to warehouse with your scheduled delivery.', NULL, NULL),
(160, 'Received at warehouse', 23, 'Your package is received at warehouse.', NULL, NULL),
(161, 'Arrived at business', 25, 'Bosta star arrived at pickup location.', NULL, NULL),
(162, 'Receiving', 26, 'Bosta star started picking up the deliveries from your pickup location.', NULL, NULL),
(163, 'Picked up', 30, 'Bosta star is already picked up your delivery.', NULL, NULL),
(164, 'Delivering', 35, 'Bosta star is on his way to deliver your package to its destination.', NULL, NULL),
(165, 'En route to warehouse', 36, 'Bosta star is on his way to warehouse after picking up the scheduled delivery from you.', NULL, NULL),
(166, 'Arrived at customer', 40, 'Bosta star arrived to the receiver.', NULL, NULL),
(167, 'Delivered', 45, 'Delivery has been delivered.', NULL, NULL),
(168, 'Canceled', 50, 'Delivery has been cancelled.', NULL, NULL),
(169, 'Failed', 55, 'An exception happened to the delivery (e.g. Customer not answering his phone).', NULL, NULL),
(170, 'Pickup Failed', 80, 'Your package hasn’t been picked up by our star once he received the packages from your pickup location.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_types`
--

CREATE TABLE `delivery_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_types`
--

INSERT INTO `delivery_types` (`id`, `type`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(2, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(3, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(4, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(5, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(6, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(7, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(8, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(9, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(10, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(11, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(12, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(13, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(14, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(15, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(16, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(17, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(18, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL),
(19, 'Package Delivery', 10, 'Delivery that has two endpoints (pickup and drop off)', NULL, NULL),
(20, 'Cash Collection', 15, 'Delivery that has one endpoint (cash pickup point).', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discountables`
--

CREATE TABLE `discountables` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `discountable_type` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discountable_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `delivery_fee` double(5,2) NOT NULL DEFAULT '0.00',
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `earning` double(9,2) NOT NULL DEFAULT '0.00',
  `available` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `user_id`, `delivery_fee`, `total_orders`, `earning`, `available`, `created_at`, `updated_at`) VALUES
(1, 5, 0.00, 0, 0.00, 0, '2020-10-27 00:53:40', '2020-10-27 00:53:40'),
(2, 6, 0.00, 0, 0.00, 0, '2020-10-27 00:53:40', '2020-10-27 00:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_payouts`
--

CREATE TABLE `drivers_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_markets`
--

CREATE TABLE `driver_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `total_orders` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `admin_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `market_earning` double(9,2) NOT NULL DEFAULT '0.00',
  `delivery_fee` double(9,2) NOT NULL DEFAULT '0.00',
  `tax` double(9,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `faq_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(61, 7, 1, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(62, 27, 2, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(63, 25, 2, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(64, 2, 5, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(65, 30, 3, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(66, 3, 6, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(67, 11, 5, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(68, 12, 1, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(69, 16, 2, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(70, 20, 2, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(71, 16, 3, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(72, 14, 1, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(73, 25, 5, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(74, 17, 3, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(75, 28, 3, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(76, 1, 6, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(77, 26, 4, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(78, 3, 1, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(79, 26, 6, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(80, 12, 1, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(81, 9, 1, '2020-10-14 12:29:22', '2020-10-14 12:29:22'),
(82, 14, 2, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(83, 28, 6, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(84, 17, 5, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(85, 2, 5, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(86, 15, 4, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(87, 12, 2, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(88, 17, 3, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(89, 20, 5, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(90, 10, 6, '2020-10-14 12:29:23', '2020-10-14 12:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `favorite_options`
--

CREATE TABLE `favorite_options` (
  `option_id` int(10) UNSIGNED NOT NULL,
  `favorite_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorite_options`
--

INSERT INTO `favorite_options` (`option_id`, `favorite_id`) VALUES
(1, 1),
(1, 5),
(2, 6),
(3, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'Eum similique maiores atque quia explicabo. Dolores quia placeat consequatur id quis perspiciatis. Ducimus sit ducimus officia labore maiores et porro. Est iusto natus nesciunt debitis consequuntur totam. Et illo et autem inventore earum corrupti.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(2, 'Pharmacy', 'Eaque et aut natus. Minima blanditiis ut sunt distinctio ad. Quasi doloremque rerum ex rerum. Molestias similique similique aut rerum delectus blanditiis et. Dolorem et quas nostrum est nobis.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(3, 'Restaurant', 'Est nihil omnis natus ducimus ducimus excepturi quos. Et praesentium in quia veniam. Tempore aut nesciunt consequatur pariatur recusandae. Voluptatem commodi eius quaerat est deleniti impedit. Qui quo harum est sequi incidunt labore eligendi cum.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(4, 'Store', 'Ex nostrum suscipit aut et labore. Ut dolor ut eum eum voluptatem ex. Sapiente in tempora soluta voluptatem. Officia accusantium quae sit. Rerum esse ipsa molestias dolorem et est autem consequatur.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(5, 'Electronics', 'Dolorum earum ut blanditiis blanditiis. Facere quis voluptates assumenda saepe. Ab aspernatur voluptatibus rem doloremque cum impedit. Itaque blanditiis commodi repudiandae asperiores. Modi atque placeat consectetur et aut blanditiis.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(6, 'Furniture', 'Est et iste enim. Quam repudiandae commodi rerum non esse. Et in aut sequi est aspernatur. Facere non modi expedita asperiores. Ipsa laborum saepe deserunt qui consequatur voluptas inventore dolorum.', '2020-04-11 13:03:21', '2020-04-11 13:03:21'),
(7, 'dsgfsgfrg', NULL, '2020-10-15 05:24:31', '2020-10-15 05:24:31'),
(8, 'fdsgafsg', NULL, '2020-10-15 06:07:44', '2020-10-15 06:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `admin_commission` double(8,2) DEFAULT '0.00',
  `delivery_fee` double(8,2) DEFAULT '0.00',
  `delivery_range` double(8,2) DEFAULT '0.00',
  `default_tax` double(8,2) DEFAULT '0.00',
  `closed` tinyint(1) DEFAULT '0',
  `active` tinyint(1) DEFAULT '0',
  `available_for_delivery` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `name`, `description`, `address`, `latitude`, `longitude`, `phone`, `mobile`, `information`, `admin_commission`, `delivery_fee`, `delivery_range`, `default_tax`, `closed`, `active`, `available_for_delivery`, `created_at`, `updated_at`) VALUES
(21, 'Furniture Pfannerstill-Gaylord', 'Repudiandae voluptate eos quis laboriosam harum voluptas temporibus sunt. Iste et sapiente sit iusto est quia. Et atque soluta est error eaque. Voluptas vel sapiente dolor.', '3456 Joana Mews Suite 264\nNyahchester, CA 69993', '43.744745', '10.937973', '+1.909.561.7012', '760-439-7261 x7399', 'Asperiores eos molestiae eligendi tempora ex. Qui qui nostrum vero cumque omnis alias. Numquam aliquam voluptates voluptas.', 42.84, 8.82, 46.52, 14.92, 0, 1, 0, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(22, 'Shop Hodkiewicz PLC', 'Doloremque nam iusto tempora adipisci qui dolores. Aspernatur consequatur eos possimus et.', '1801 Kyle Coves Apt. 755\nLake Coltonshire, CT 42957', '54.647401', '9.767279', '446-240-8700', '963.575.2012 x215', 'Est mollitia delectus veritatis quisquam. Cumque similique perspiciatis non alias. Sed accusantium porro ea et tenetur eos.', 12.20, 2.89, 91.26, 11.97, 1, 1, 0, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(23, 'Grocery Yundt LLC', 'In sit id aut quis. Ipsum labore quo sequi quis id aspernatur nam. Ipsum eius qui unde quia doloremque. Vel ut quaerat sed blanditiis recusandae minus.', '95283 Watsica Village Apt. 517\nCitlalliberg, AR 91779-6173', '46.354182', '11.718538', '+1.642.866.3931', '1-838-548-1218 x776', 'Molestiae blanditiis mollitia eos ut alias possimus. Rem voluptas id aut voluptatibus sunt excepturi. Rerum voluptatum rerum inventore.', 33.99, 9.36, 15.06, 23.57, 0, 1, 0, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(24, 'Mall Hudson-Nader', 'Qui ea odio numquam et veritatis dolores. Ut sit a ullam veniam aut eveniet voluptatem qui. Eaque amet iste accusantium.', '7661 Summer Village Suite 281\nWiegandbury, UT 59263', '44.166938', '7.103673', '(552) 563-2645', '+1 (460) 992-6377', 'Et consequatur corrupti a harum enim nulla inventore. Nesciunt assumenda sit perferendis ut perspiciatis velit. Voluptatem molestiae sequi unde eos aliquam debitis.', 25.31, 3.93, 19.85, 29.71, 1, 1, 0, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(25, 'Pharmacy Stamm, Ryan and Macejkovic', 'Et doloribus qui repellendus delectus. Maiores a ducimus vel maiores corporis ratione laboriosam. Vitae natus quam dolorem modi quam voluptatibus.', '711 Karli Ville\nPort Ila, FL 73967', '43.950118', '9.458296', '416-771-2620 x9380', '(671) 746-0637 x46981', 'Iure fugiat saepe excepturi nostrum. Ut aperiam sit nam. Laborum occaecati totam accusamus cumque.', 36.80, 2.00, 57.55, 26.24, 1, 1, 1, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(26, 'Shop Auer, Ryan and Marvin', 'Inventore est fuga voluptatem rem itaque. Molestias vero occaecati consequatur ut vel eum quasi. Aut consequuntur voluptas ut ullam ratione reiciendis mollitia et.', '2002 Laury Prairie Apt. 954\nDietrichstad, OR 08428', '43.50582', '9.257666', '+1-971-309-0385', '950-469-0740', 'Suscipit occaecati saepe sunt in quo adipisci numquam. Autem aut unde consequatur ratione. Consectetur sed temporibus omnis.', 19.48, 5.62, 39.98, 11.53, 0, 1, 0, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(27, 'Market Becker, Hickle and Harber', 'Esse rerum qui quia alias itaque. Impedit ut ut molestiae. Maxime eveniet est possimus.', '98015 Nitzsche Roads\nO\'Harastad, AZ 27606', '54.719214', '8.672564', '(453) 321-0909 x44278', '(392) 737-8815', 'Corrupti facere accusantium et. Maxime delectus aspernatur sunt incidunt aut corporis aut voluptates. Iste quas sit ipsa est in accusantium et.', 20.19, 2.35, 52.42, 23.49, 1, 1, 0, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(28, 'Market Weber LLC', 'Quia accusamus blanditiis et. Expedita impedit commodi aspernatur. Aut ullam voluptas saepe in voluptas.', '5118 Violet Grove Apt. 021\nKaceyport, AZ 10447', '42.086181', '7.428098', '578.492.4930 x782', '1-498-728-0463 x58604', 'Aspernatur natus quisquam optio aliquid sit omnis. Alias qui sit similique. Magnam similique assumenda non.', 42.05, 5.46, 28.29, 25.48, 1, 1, 0, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(29, 'Furniture Bechtelar, Leffler and Raynor', 'Rem perspiciatis fuga ut excepturi. Repellendus nihil error nostrum qui est aliquid. Soluta dolor porro ullam voluptatum soluta. Sit fugiat delectus quos aut voluptatem nisi.', '8834 Elias Passage Apt. 816\nSalvadortown, VT 06237', '53.998898', '11.469105', '(950) 358-8512', '(381) 686-9368 x28753', 'Eveniet aut et non quisquam expedita ad non totam. Sit adipisci quia ea est recusandae est voluptatum. Commodi fugiat et consectetur eius velit optio provident.', 20.28, 7.01, 63.64, 18.98, 0, 1, 1, '2020-10-14 12:29:23', '2020-10-14 12:29:23'),
(30, 'Pharmacy Larson, Christiansen and Sanford', 'Ex est a vitae vitae veniam consequuntur nemo. Accusamus provident sunt enim. Delectus non consequatur voluptas veritatis unde.', '9271 Kuhlman Greens Suite 828\nPort Reanna, ID 37921', '38.554335', '11.418295', '475-517-2741 x376', '787.379.3480 x502', 'Alias et magni unde iusto animi veritatis. Molestiae temporibus neque doloribus aut assumenda ducimus. Commodi omnis aut et sed id.', 40.17, 6.24, 47.44, 15.59, 1, 1, 1, '2020-10-14 12:29:23', '2020-10-14 12:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `markets_payouts`
--

CREATE TABLE `markets_payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `method` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(9,2) NOT NULL DEFAULT '0.00',
  `paid_date` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_fields`
--

CREATE TABLE `market_fields` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `market_fields`
--

INSERT INTO `market_fields` (`field_id`, `market_id`) VALUES
(1, 3),
(8, 22);

-- --------------------------------------------------------

--
-- Table structure for table `market_reviews`
--

CREATE TABLE `market_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsive_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\Upload', 2, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"193d05a0-c848-4d26-8436-bc997dbeaaad\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 1, '2020-10-14 12:32:02', '2020-10-14 12:32:03'),
(4, 'App\\Models\\Upload', 3, 'undefined', 'Annotation 2020-03-16 153111', 'Annotation-2020-03-16-153111.png', 'image/png', 'public', 287038, '[]', '{\"uuid\":\"4bd7038c-2205-45bd-b694-35cfee5c0087\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 2, '2020-10-15 05:14:08', '2020-10-15 05:14:10'),
(5, 'App\\Models\\Upload', 4, 'image', '2020-03-05 at 16-50-53', '2020-03-05-at-16-50-53.png', 'image/png', 'public', 35241, '[]', '{\"uuid\":\"a0524e9a-655e-4297-9658-dabacc4649a3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 3, '2020-10-15 05:24:24', '2020-10-15 05:24:25'),
(6, 'App\\Models\\Field', 7, 'image', '2020-03-05 at 16-50-53', '2020-03-05-at-16-50-53.png', 'image/png', 'public', 35241, '[]', '{\"uuid\":\"a0524e9a-655e-4297-9658-dabacc4649a3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 4, '2020-10-15 05:24:31', '2020-10-15 05:24:31'),
(7, 'App\\Models\\Upload', 5, 'image', '2020-03-08 at 11-18-18', '2020-03-08-at-11-18-18.png', 'image/png', 'public', 12309, '[]', '{\"uuid\":\"8938e78a-b857-47a0-9da7-52733da704fb\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 5, '2020-10-15 05:24:44', '2020-10-15 05:24:44'),
(8, 'App\\Models\\Upload', 6, 'undefined', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"1a143a6a-0e33-48eb-9ddf-00ac88712cdc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 6, '2020-10-15 05:35:20', '2020-10-15 05:35:21'),
(9, 'App\\Models\\Upload', 7, 'undefined', 'Annotation 2020-03-16 153111', 'Annotation-2020-03-16-153111.png', 'image/png', 'public', 287038, '[]', '{\"uuid\":\"0650fb8f-f3ab-4099-b396-859950ff1f2c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 7, '2020-10-15 05:57:54', '2020-10-15 05:57:55'),
(10, 'App\\Models\\Upload', 8, 'image', 'Annotation 2020-03-16 153111', 'Annotation-2020-03-16-153111.png', 'image/png', 'public', 287038, '[]', '{\"uuid\":\"ee1fddc3-2598-4dc9-acaf-067c236bda9c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 8, '2020-10-15 06:07:31', '2020-10-15 06:07:32'),
(12, 'App\\Models\\Upload', 9, 'undefined', 'Annotation 2020-03-16 152249', 'Annotation-2020-03-16-152249.png', 'image/png', 'public', 10607, '[]', '{\"uuid\":\"19406cd9-be40-4ac7-a32f-6ca4b2f05c27\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 10, '2020-10-15 07:08:18', '2020-10-15 07:08:19'),
(13, 'App\\Models\\Upload', 10, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"0ed0d886-7e0d-4a7d-9d95-4551906ca8f0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 11, '2020-10-15 07:25:31', '2020-10-15 07:25:32'),
(14, 'App\\Models\\Upload', 11, 'undefined', 'Annotation 2020-03-16 151350', 'Annotation-2020-03-16-151350.png', 'image/png', 'public', 212838, '[]', '{\"uuid\":\"0a43f3a7-a256-4ff4-959d-933357ef60ca\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 12, '2020-10-15 07:41:01', '2020-10-15 07:41:03'),
(15, 'App\\Models\\Upload', 12, 'undefined', 'Annotation 2020-03-16 151350', 'Annotation-2020-03-16-151350.png', 'image/png', 'public', 212838, '[]', '{\"uuid\":\"cd70528f-442e-4930-8da1-96431b677895\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 13, '2020-10-15 07:49:43', '2020-10-15 07:49:46'),
(16, 'App\\Models\\Upload', 13, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"6fd15d11-dd98-43a1-a6f6-44b39ddc370e\",\"user_id\":1}', '[]', 14, '2020-10-15 12:06:53', '2020-10-15 12:06:53'),
(17, 'App\\Models\\Upload', 14, 'image', 'Annotation 2020-03-16 152411', 'Annotation-2020-03-16-152411.png', 'image/png', 'public', 5618, '[]', '{\"uuid\":\"e5964b27-6d6e-4477-8dd7-5f916a45a700\",\"user_id\":1}', '[]', 15, '2020-10-15 12:07:04', '2020-10-15 12:07:04'),
(18, 'App\\Models\\Upload', 15, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"a2539b5b-2066-4b56-8fb6-2f673bcbcf8c\",\"user_id\":1}', '[]', 16, '2020-10-15 12:15:08', '2020-10-15 12:15:08'),
(19, 'App\\Models\\Upload', 16, 'image', '2020-03-08 at 11-35-42', '2020-03-08-at-11-35-42.png', 'image/png', 'public', 51070, '[]', '{\"uuid\":\"56e9fd96-fc6e-4e83-bc37-c4a4542340a9\",\"user_id\":1}', '[]', 17, '2020-10-15 12:52:47', '2020-10-15 12:52:47'),
(20, 'App\\Models\\Upload', 17, 'image', 'Annotation 2020-03-16 153111', 'Annotation-2020-03-16-153111.png', 'image/png', 'public', 287038, '[]', '{\"uuid\":\"fd4df2a8-0f2c-4b04-be2b-1f5d5bbf6abd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 18, '2020-10-18 07:33:48', '2020-10-18 07:33:53'),
(21, 'App\\Models\\Product', 188, 'image', 'Annotation 2020-03-16 153111', 'Annotation-2020-03-16-153111.png', 'image/png', 'public', 287038, '[]', '{\"uuid\":\"fd4df2a8-0f2c-4b04-be2b-1f5d5bbf6abd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2020-10-18 07:33:56', '2020-10-18 07:33:56'),
(22, 'App\\Models\\Upload', 18, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"e1acd1f6-6f53-46a7-9455-5ffb347c08f5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 20, '2020-10-25 09:29:28', '2020-10-25 09:29:32'),
(23, 'App\\Models\\Product', 203, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 21, '2020-10-25 09:29:43', '2020-10-25 09:29:43'),
(24, 'App\\Models\\Upload', 19, 'undefined', '2020-03-08 at 11-18-18', '2020-03-08-at-11-18-18.png', 'image/png', 'public', 12309, '[]', '{\"uuid\":\"1c55c2fc-e8f0-440f-8baa-a5f57a809e41\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 22, '2020-10-25 09:36:17', '2020-10-25 09:36:20'),
(25, 'App\\Models\\Upload', 20, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"7d572ea1-8431-40c7-b138-e6f81c78875b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 23, '2020-10-25 09:37:38', '2020-10-25 09:37:39'),
(26, 'App\\Models\\Product', 204, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"7d572ea1-8431-40c7-b138-e6f81c78875b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 24, '2020-10-25 09:37:47', '2020-10-25 09:37:47'),
(27, 'App\\Models\\Upload', 21, 'undefined', '2020-03-08 at 11-18-18', '2020-03-08-at-11-18-18.png', 'image/png', 'public', 12309, '[]', '{\"uuid\":\"bbcd8917-7d5c-4545-bd3b-5e9a09001b33\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 25, '2020-10-25 10:19:05', '2020-10-25 10:19:08'),
(28, 'App\\Models\\Upload', 22, 'undefined', '2020-03-08 at 11-27-31', '2020-03-08-at-11-27-31.png', 'image/png', 'public', 28054, '[]', '{\"uuid\":\"61500e0c-c03d-45d7-87f0-c55eb4723fa4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 26, '2020-10-25 10:21:11', '2020-10-25 10:21:12'),
(29, 'App\\Models\\Upload', 23, 'undefined', 'Annotation 2020-03-16 152737', 'Annotation-2020-03-16-152737.png', 'image/png', 'public', 57203, '[]', '{\"uuid\":\"6422c45b-3aea-48b0-931c-d3a46dba2cb2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 27, '2020-10-25 10:42:52', '2020-10-25 10:42:58'),
(30, 'App\\Models\\Brand', 21, 'image', 'Annotation 2020-03-16 152737', 'Annotation-2020-03-16-152737.png', 'image/png', 'public', 57203, '[]', '{\"uuid\":\"6422c45b-3aea-48b0-931c-d3a46dba2cb2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 28, '2020-10-25 10:46:29', '2020-10-25 10:46:29'),
(31, 'App\\Models\\Upload', 24, 'undefined', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"d21eb260-bc17-4d72-88d7-3784163e34b1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 29, '2020-10-25 10:56:38', '2020-10-25 10:56:41'),
(32, 'App\\Models\\Brand', 4, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"d21eb260-bc17-4d72-88d7-3784163e34b1\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 30, '2020-10-25 10:57:47', '2020-10-25 10:57:47'),
(33, 'App\\Models\\Upload', 26, 'image', '2020-03-08 at 11-35-42', '2020-03-08-at-11-35-42.png', 'image/png', 'public', 51070, '[]', '{\"uuid\":\"4f113963-3ccf-442a-b559-1596bb5f1de7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2020-10-26 10:53:30', '2020-10-26 10:53:36'),
(34, 'App\\Models\\Upload', 25, 'image', '2020-03-08 at 11-28-58', '2020-03-08-at-11-28-58.png', 'image/png', 'public', 68033, '[]', '{\"uuid\":\"713e19a5-adf6-4a61-b5cd-03a3c61d0afd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 31, '2020-10-26 10:53:30', '2020-10-26 10:53:36'),
(35, 'App\\Models\\Upload', 27, 'image', 'Annotation 2020-03-16 151350', 'Annotation-2020-03-16-151350.png', 'image/png', 'public', 212838, '[]', '{\"uuid\":\"ddc5e6db-1299-41d9-b1c2-0c14a798ea09\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 32, '2020-10-26 10:53:37', '2020-10-26 10:53:38'),
(36, 'App\\Models\\Product', 6, 'image', 'Annotation 2020-03-16 151350', 'Annotation-2020-03-16-151350.png', 'image/png', 'public', 212838, '[]', '{\"uuid\":\"ddc5e6db-1299-41d9-b1c2-0c14a798ea09\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 33, '2020-10-26 10:53:42', '2020-10-26 10:53:42'),
(845, 'App\\Models\\Product', 406, 'image', 'BS26A01E2_X35_1_D', 'BS26A01E2_X35_1_D.jpg', 'image/jpeg', 'public', 348770, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 34, '2020-10-28 11:17:58', '2020-10-28 11:18:01'),
(846, 'App\\Models\\Product', 406, 'image', 'BS26A01E2_X35_2_D', 'BS26A01E2_X35_2_D.jpg', 'image/jpeg', 'public', 573374, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 35, '2020-10-28 11:18:01', '2020-10-28 11:18:03'),
(847, 'App\\Models\\Product', 406, 'image', 'BS26A01E2_X35_3_D', 'BS26A01E2_X35_3_D.jpg', 'image/jpeg', 'public', 319456, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 36, '2020-10-28 11:18:03', '2020-10-28 11:18:06'),
(848, 'App\\Models\\Product', 406, 'image', 'BS26A01E2_X35_4_D', 'BS26A01E2_X35_4_D.jpg', 'image/jpeg', 'public', 408081, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 37, '2020-10-28 11:18:06', '2020-10-28 11:18:09'),
(849, 'App\\Models\\Product', 406, 'image', 'BS26A01E2_X35_5_D', 'BS26A01E2_X35_5_D.jpg', 'image/jpeg', 'public', 428996, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 38, '2020-10-28 11:18:09', '2020-10-28 11:18:12'),
(850, 'App\\Models\\Product', 406, 'image', 'BS26A01E2_X35_6_D', 'BS26A01E2_X35_6_D.jpg', 'image/jpeg', 'public', 400844, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 39, '2020-10-28 11:18:12', '2020-10-28 11:18:14'),
(851, 'App\\Models\\Product', 407, 'image', 'BS42A01E2_360_1_D', 'BS42A01E2_360_1_D.jpg', 'image/jpeg', 'public', 281976, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 40, '2020-10-28 11:18:14', '2020-10-28 11:18:17'),
(852, 'App\\Models\\Product', 407, 'image', 'BS42A01E2_360_5_D', 'BS42A01E2_360_5_D.jpg', 'image/jpeg', 'public', 275359, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 41, '2020-10-28 11:18:17', '2020-10-28 11:18:20'),
(853, 'App\\Models\\Product', 407, 'image', 'BS42A01E2_360_6_D', 'BS42A01E2_360_6_D.jpg', 'image/jpeg', 'public', 423201, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 42, '2020-10-28 11:18:20', '2020-10-28 11:18:22'),
(854, 'App\\Models\\Product', 407, 'image', 'BS42A01E2_360_4_D', 'BS42A01E2_360_4_D.jpg', 'image/jpeg', 'public', 288846, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 43, '2020-10-28 11:18:22', '2020-10-28 11:18:25'),
(855, 'App\\Models\\Product', 407, 'image', 'BS42A01E2_360_3_D', 'BS42A01E2_360_3_D.jpg', 'image/jpeg', 'public', 279205, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 44, '2020-10-28 11:18:25', '2020-10-28 11:18:28'),
(856, 'App\\Models\\Product', 407, 'image', 'BS42A01E2_360_1_D', 'BS42A01E2_360_1_D.jpg', 'image/jpeg', 'public', 281976, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 45, '2020-10-28 11:18:28', '2020-10-28 11:18:30'),
(857, 'App\\Models\\Product', 408, 'image', 'BM02A01E2_H85_1_D', 'BM02A01E2_H85_1_D.jpg', 'image/jpeg', 'public', 317920, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 46, '2020-10-28 11:18:30', '2020-10-28 11:18:33'),
(858, 'App\\Models\\Product', 408, 'image', 'BM02A01E2_H85_5_D', 'BM02A01E2_H85_5_D.jpg', 'image/jpeg', 'public', 583965, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 47, '2020-10-28 11:18:33', '2020-10-28 11:18:36'),
(859, 'App\\Models\\Product', 408, 'image', 'BM02A01E2_H85_6_D', 'BM02A01E2_H85_6_D.jpg', 'image/jpeg', 'public', 493493, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 48, '2020-10-28 11:18:36', '2020-10-28 11:18:38'),
(860, 'App\\Models\\Product', 408, 'image', 'BM02A01E2_H85_4_D', 'BM02A01E2_H85_4_D.jpg', 'image/jpeg', 'public', 364142, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 49, '2020-10-28 11:18:39', '2020-10-28 11:18:42'),
(861, 'App\\Models\\Product', 408, 'image', 'BM02A01E2_H85_3_D', 'BM02A01E2_H85_3_D.jpg', 'image/jpeg', 'public', 280861, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 50, '2020-10-28 11:18:42', '2020-10-28 11:18:44'),
(862, 'App\\Models\\Product', 408, 'image', 'BM02A01E2_H85_1_D', 'BM02A01E2_H85_1_D.jpg', 'image/jpeg', 'public', 317920, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 51, '2020-10-28 11:18:44', '2020-10-28 11:18:47'),
(863, 'App\\Models\\Product', 409, 'image', 'CJ07S01E2_104_1_DB', 'CJ07S01E2_104_1_DB.jpg', 'image/jpeg', 'public', 258433, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 52, '2020-10-28 11:18:47', '2020-10-28 11:18:49'),
(864, 'App\\Models\\Product', 409, 'image', 'CJ07S01E2_104_2_D', 'CJ07S01E2_104_2_D.jpg', 'image/jpeg', 'public', 1283847, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 53, '2020-10-28 11:18:49', '2020-10-28 11:18:52'),
(865, 'App\\Models\\Product', 409, 'image', 'CJ07S01E2_104_3_DF', 'CJ07S01E2_104_3_DF.jpg', 'image/jpeg', 'public', 882202, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 54, '2020-10-28 11:18:52', '2020-10-28 11:18:54'),
(866, 'App\\Models\\Product', 409, 'image', 'CJ07S01E2_104_4_D', 'CJ07S01E2_104_4_D.jpg', 'image/jpeg', 'public', 269037, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 55, '2020-10-28 11:18:55', '2020-10-28 11:18:57'),
(867, 'App\\Models\\Product', 409, 'image', 'CJ07S01E2_104_emotional_D', 'CJ07S01E2_104_emotional_D.jpg', 'image/jpeg', 'public', 281929, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 56, '2020-10-28 11:18:57', '2020-10-28 11:18:59'),
(868, 'App\\Models\\Product', 410, 'image', 'AB18601E2_Y64_emotional_D', 'AB18601E2_Y64_emotional_D.jpg', 'image/jpeg', 'public', 474529, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 57, '2020-10-28 11:18:59', '2020-10-28 11:19:02'),
(869, 'App\\Models\\Product', 410, 'image', 'AB18601E2_Y64_4_D', 'AB18601E2_Y64_4_D.jpg', 'image/jpeg', 'public', 406547, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 58, '2020-10-28 11:19:02', '2020-10-28 11:19:04'),
(870, 'App\\Models\\Product', 410, 'image', 'AB18601E2_Y64_1_DB', 'AB18601E2_Y64_1_DB.jpg', 'image/jpeg', 'public', 412587, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 59, '2020-10-28 11:19:04', '2020-10-28 11:19:07'),
(871, 'App\\Models\\Product', 410, 'image', 'AB18601E2_Y64_3_DF', 'AB18601E2_Y64_3_DF.jpg', 'image/jpeg', 'public', 750175, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 60, '2020-10-28 11:19:07', '2020-10-28 11:19:09'),
(872, 'App\\Models\\Product', 410, 'image', 'AB18601E2_Y64_2_D', 'AB18601E2_Y64_2_D.jpg', 'image/jpeg', 'public', 1012565, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 61, '2020-10-28 11:19:09', '2020-10-28 11:19:12'),
(873, 'App\\Models\\Product', 411, 'image', 'AB19801E2_Y62_emotional_D', 'AB19801E2_Y62_emotional_D.jpg', 'image/jpeg', 'public', 331986, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 62, '2020-10-28 11:19:12', '2020-10-28 11:19:15'),
(874, 'App\\Models\\Product', 411, 'image', 'AB19801E2_Y62_4_D', 'AB19801E2_Y62_4_D.jpg', 'image/jpeg', 'public', 304347, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 63, '2020-10-28 11:19:15', '2020-10-28 11:19:17'),
(875, 'App\\Models\\Product', 411, 'image', 'AB19801E2_Y62_1_DB', 'AB19801E2_Y62_1_DB.jpg', 'image/jpeg', 'public', 346712, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 64, '2020-10-28 11:19:17', '2020-10-28 11:19:20'),
(876, 'App\\Models\\Product', 411, 'image', 'AB19801E2_Y62_3_DF', 'AB19801E2_Y62_3_DF.jpg', 'image/jpeg', 'public', 582117, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 65, '2020-10-28 11:19:20', '2020-10-28 11:19:22'),
(877, 'App\\Models\\Product', 411, 'image', 'AB19801E2_Y62_2_D', 'AB19801E2_Y62_2_D.jpg', 'image/jpeg', 'public', 869602, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 66, '2020-10-28 11:19:22', '2020-10-28 11:19:25'),
(878, 'App\\Models\\Product', 412, 'image', 'AB23601E2_124_emotional_D', 'AB23601E2_124_emotional_D.jpg', 'image/jpeg', 'public', 323077, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 67, '2020-10-28 11:19:25', '2020-10-28 11:19:27'),
(879, 'App\\Models\\Product', 412, 'image', 'AB23601E2_124_4_D', 'AB23601E2_124_4_D.jpg', 'image/jpeg', 'public', 268021, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 68, '2020-10-28 11:19:28', '2020-10-28 11:19:30'),
(880, 'App\\Models\\Product', 412, 'image', 'AB23601E2_124_1_DB', 'AB23601E2_124_1_DB.jpg', 'image/jpeg', 'public', 295892, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 69, '2020-10-28 11:19:30', '2020-10-28 11:19:32'),
(881, 'App\\Models\\Product', 412, 'image', 'AB23601E2_124_3_DF', 'AB23601E2_124_3_DF.jpg', 'image/jpeg', 'public', 577559, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 70, '2020-10-28 11:19:32', '2020-10-28 11:19:35'),
(882, 'App\\Models\\Product', 412, 'image', 'AB23601E2_124_2_D', 'AB23601E2_124_2_D.jpg', 'image/jpeg', 'public', 714921, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 71, '2020-10-28 11:19:35', '2020-10-28 11:19:37'),
(883, 'App\\Models\\Product', 413, 'image', 'AB92501E2_110_emotional_D', 'AB92501E2_110_emotional_D.jpg', 'image/jpeg', 'public', 376773, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 72, '2020-10-28 11:19:37', '2020-10-28 11:19:40'),
(884, 'App\\Models\\Product', 413, 'image', 'AB92501E2_110_4_D', 'AB92501E2_110_4_D.jpg', 'image/jpeg', 'public', 386186, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 73, '2020-10-28 11:19:40', '2020-10-28 11:19:42'),
(885, 'App\\Models\\Product', 413, 'image', 'AB92501E2_110_1_DB', 'AB92501E2_110_1_DB.jpg', 'image/jpeg', 'public', 369423, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 74, '2020-10-28 11:19:42', '2020-10-28 11:19:45'),
(886, 'App\\Models\\Product', 413, 'image', 'AB92501E2_110_3_DF', 'AB92501E2_110_3_DF.jpg', 'image/jpeg', 'public', 482890, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 75, '2020-10-28 11:19:45', '2020-10-28 11:19:47'),
(887, 'App\\Models\\Product', 413, 'image', 'AB92501E2_110_2_D', 'AB92501E2_110_2_D.jpg', 'image/jpeg', 'public', 595733, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 76, '2020-10-28 11:19:47', '2020-10-28 11:19:50'),
(888, 'App\\Models\\Product', 414, 'image', 'AB22301E2_360_emotional_D', 'AB22301E2_360_emotional_D.jpg', 'image/jpeg', 'public', 190455, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 77, '2020-10-28 11:19:50', '2020-10-28 11:19:52'),
(889, 'App\\Models\\Product', 414, 'image', 'AB22301E2_360_4_D', 'AB22301E2_360_4_D.jpg', 'image/jpeg', 'public', 189742, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 78, '2020-10-28 11:19:53', '2020-10-28 11:19:55'),
(890, 'App\\Models\\Product', 414, 'image', 'AB22301E2_360_2_D', 'AB22301E2_360_2_D.jpg', 'image/jpeg', 'public', 406101, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 79, '2020-10-28 11:19:55', '2020-10-28 11:19:57'),
(891, 'App\\Models\\Product', 414, 'image', 'AB22301E2_360_1_DB', 'AB22301E2_360_1_DB.jpg', 'image/jpeg', 'public', 216089, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 80, '2020-10-28 11:19:57', '2020-10-28 11:20:00'),
(892, 'App\\Models\\Product', 414, 'image', 'AB22301E2_360_3_DF', 'AB22301E2_360_3_DF.jpg', 'image/jpeg', 'public', 229070, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 81, '2020-10-28 11:20:00', '2020-10-28 11:20:02'),
(893, 'App\\Models\\Product', 415, 'image', 'AB17301E2_124_3_DF', 'AB17301E2_124_3_DF.jpg', 'image/jpeg', 'public', 295236, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 82, '2020-10-28 11:20:02', '2020-10-28 11:20:05'),
(894, 'App\\Models\\Product', 415, 'image', 'AB17301E2_124_emotional_D', 'AB17301E2_124_emotional_D.jpg', 'image/jpeg', 'public', 333785, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 83, '2020-10-28 11:20:05', '2020-10-28 11:20:08'),
(895, 'App\\Models\\Product', 415, 'image', 'AB17301E2_124_4_D', 'AB17301E2_124_4_D.jpg', 'image/jpeg', 'public', 278122, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 84, '2020-10-28 11:20:08', '2020-10-28 11:20:10'),
(896, 'App\\Models\\Product', 415, 'image', 'AB17301E2_124_2_D', 'AB17301E2_124_2_D.jpg', 'image/jpeg', 'public', 653000, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 85, '2020-10-28 11:20:10', '2020-10-28 11:20:13'),
(897, 'App\\Models\\Product', 415, 'image', 'AB17301E2_124_1_DB', 'AB17301E2_124_1_DB.jpg', 'image/jpeg', 'public', 297281, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 86, '2020-10-28 11:20:13', '2020-10-28 11:20:15'),
(898, 'App\\Models\\Product', 416, 'image', 'AB24301E2_124_emotional_D', 'AB24301E2_124_emotional_D.jpg', 'image/jpeg', 'public', 300989, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 87, '2020-10-28 11:20:15', '2020-10-28 11:20:17'),
(899, 'App\\Models\\Product', 416, 'image', 'AB24301E2_124_4_D', 'AB24301E2_124_4_D.jpg', 'image/jpeg', 'public', 198911, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 88, '2020-10-28 11:20:17', '2020-10-28 11:20:20'),
(900, 'App\\Models\\Product', 416, 'image', 'AB24301E2_124_1_DB', 'AB24301E2_124_1_DB.jpg', 'image/jpeg', 'public', 229183, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 89, '2020-10-28 11:20:20', '2020-10-28 11:20:22'),
(901, 'App\\Models\\Product', 416, 'image', 'AB24301E2_124_3_DF', 'AB24301E2_124_3_DF.jpg', 'image/jpeg', 'public', 346398, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 90, '2020-10-28 11:20:22', '2020-10-28 11:20:25'),
(902, 'App\\Models\\Product', 416, 'image', 'AB24301E2_124_2_D', 'AB24301E2_124_2_D.jpg', 'image/jpeg', 'public', 826274, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 91, '2020-10-28 11:20:25', '2020-10-28 11:20:28'),
(903, 'App\\Models\\Product', 417, 'image', 'AB18101E2_H85_emotional_D', 'AB18101E2_H85_emotional_D.jpg', 'image/jpeg', 'public', 235068, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 92, '2020-10-28 11:20:28', '2020-10-28 11:20:30'),
(904, 'App\\Models\\Product', 417, 'image', 'AB18101E2_H85_4_D', 'AB18101E2_H85_4_D.jpg', 'image/jpeg', 'public', 219676, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 93, '2020-10-28 11:20:30', '2020-10-28 11:20:32'),
(905, 'App\\Models\\Product', 417, 'image', 'AB18101E2_H85_1_DB', 'AB18101E2_H85_1_DB.jpg', 'image/jpeg', 'public', 242129, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 94, '2020-10-28 11:20:33', '2020-10-28 11:20:35'),
(906, 'App\\Models\\Product', 417, 'image', 'AB18101E2_H85_3_DF', 'AB18101E2_H85_3_DF.jpg', 'image/jpeg', 'public', 290695, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 95, '2020-10-28 11:20:35', '2020-10-28 11:20:38'),
(907, 'App\\Models\\Product', 417, 'image', 'AB18101E2_H85_2_D', 'AB18101E2_H85_2_D.jpg', 'image/jpeg', 'public', 447545, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 96, '2020-10-28 11:20:38', '2020-10-28 11:20:40'),
(908, 'App\\Models\\Product', 418, 'image', 'SR06J03E2_J99_1_DB', 'SR06J03E2_J99_1_DB.jpg', 'image/jpeg', 'public', 73372, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 97, '2020-10-28 11:20:40', '2020-10-28 11:20:42'),
(909, 'App\\Models\\Product', 418, 'image', 'SR06J03E2_J99_2_D', 'SR06J03E2_J99_2_D.jpg', 'image/jpeg', 'public', 233097, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 98, '2020-10-28 11:20:42', '2020-10-28 11:20:43'),
(910, 'App\\Models\\Product', 418, 'image', 'SR06J03E2_J99_3_DF', 'SR06J03E2_J99_3_DF.jpg', 'image/jpeg', 'public', 179526, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 99, '2020-10-28 11:20:43', '2020-10-28 11:20:45'),
(911, 'App\\Models\\Product', 418, 'image', 'SR06J03E2_J99_4_D', 'SR06J03E2_J99_4_D.jpg', 'image/jpeg', 'public', 78467, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 100, '2020-10-28 11:20:45', '2020-10-28 11:20:46'),
(912, 'App\\Models\\Product', 418, 'image', 'SR06J03E2_J99_emotional_D', 'SR06J03E2_J99_emotional_D.jpg', 'image/jpeg', 'public', 72505, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 101, '2020-10-28 11:20:46', '2020-10-28 11:20:48'),
(913, 'App\\Models\\Product', 419, 'image', 'TU23802E2_153_1', 'TU23802E2_153_1.jpg', 'image/jpeg', 'public', 818238, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 102, '2020-10-28 11:20:48', '2020-10-28 11:20:51'),
(914, 'App\\Models\\Product', 419, 'image', 'TU23802E2_153_2', 'TU23802E2_153_2.jpg', 'image/jpeg', 'public', 1737568, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 103, '2020-10-28 11:20:51', '2020-10-28 11:20:53'),
(915, 'App\\Models\\Product', 419, 'image', 'TU23802E2_153_3', 'TU23802E2_153_3.jpg', 'image/jpeg', 'public', 1898591, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 104, '2020-10-28 11:20:53', '2020-10-28 11:20:56'),
(916, 'App\\Models\\Product', 420, 'image', 'CB11403E2_110_1', 'CB11403E2_110_1.jpg', 'image/jpeg', 'public', 325271, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 105, '2020-10-28 11:20:56', '2020-10-28 11:20:59'),
(917, 'App\\Models\\Product', 420, 'image', 'CB11403E2_110_2', 'CB11403E2_110_2.jpg', 'image/jpeg', 'public', 352456, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 106, '2020-10-28 11:20:59', '2020-10-28 11:21:02'),
(918, 'App\\Models\\Product', 420, 'image', 'CB11403E2_110_3', 'CB11403E2_110_3.jpg', 'image/jpeg', 'public', 302887, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 107, '2020-10-28 11:21:02', '2020-10-28 11:21:05'),
(919, 'App\\Models\\Product', 421, 'image', 'SH04201E2_193_1_DB', 'SH04201E2_193_1_DB.jpg', 'image/jpeg', 'public', 303444, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 108, '2020-10-28 11:21:05', '2020-10-28 11:21:07'),
(920, 'App\\Models\\Product', 421, 'image', 'SH04201E2_193_4_D', 'SH04201E2_193_4_D.jpg', 'image/jpeg', 'public', 247588, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 109, '2020-10-28 11:21:07', '2020-10-28 11:21:09'),
(921, 'App\\Models\\Product', 421, 'image', 'SH04201E2_193_emotional_D', 'SH04201E2_193_emotional_D.jpg', 'image/jpeg', 'public', 326212, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 110, '2020-10-28 11:21:09', '2020-10-28 11:21:12'),
(922, 'App\\Models\\Product', 421, 'image', 'SH04201E2_193_2_D', 'SH04201E2_193_2_D.jpg', 'image/jpeg', 'public', 620919, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 111, '2020-10-28 11:21:12', '2020-10-28 11:21:15'),
(923, 'App\\Models\\Product', 421, 'image', 'SH04201E2_193_3_DF', 'SH04201E2_193_3_DF.jpg', 'image/jpeg', 'public', 552904, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 112, '2020-10-28 11:21:15', '2020-10-28 11:21:17'),
(924, 'App\\Models\\Product', 422, 'image', 'SH04703E2_110_1', 'SH04703E2_110_1.jpg', 'image/jpeg', 'public', 663528, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 113, '2020-10-28 11:21:17', '2020-10-28 11:21:20'),
(925, 'App\\Models\\Product', 422, 'image', 'SH04703E2_110_2', 'SH04703E2_110_2.jpg', 'image/jpeg', 'public', 1389183, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 114, '2020-10-28 11:21:20', '2020-10-28 11:21:23'),
(926, 'App\\Models\\Product', 422, 'image', 'SH04703E2_110_3', 'SH04703E2_110_3.jpg', 'image/jpeg', 'public', 1367640, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 115, '2020-10-28 11:21:23', '2020-10-28 11:21:26'),
(927, 'App\\Models\\Product', 422, 'image', 'SH04703E2_193_1_DB', 'SH04703E2_193_1_DB.jpg', 'image/jpeg', 'public', 331156, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 116, '2020-10-28 11:21:26', '2020-10-28 11:21:29'),
(928, 'App\\Models\\Product', 422, 'image', 'SH04703E2_193_2_D', 'SH04703E2_193_2_D.jpg', 'image/jpeg', 'public', 994553, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 117, '2020-10-28 11:21:29', '2020-10-28 11:21:32'),
(929, 'App\\Models\\Product', 422, 'image', 'SH04703E2_193_3_DF', 'SH04703E2_193_3_DF.jpg', 'image/jpeg', 'public', 712941, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 118, '2020-10-28 11:21:32', '2020-10-28 11:21:34'),
(930, 'App\\Models\\Product', 422, 'image', 'SH04703E2_193_4_D', 'SH04703E2_193_4_D.jpg', 'image/jpeg', 'public', 320247, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 119, '2020-10-28 11:21:34', '2020-10-28 11:21:37'),
(931, 'App\\Models\\Product', 422, 'image', 'SH04703E2_193_emotional_D', 'SH04703E2_193_emotional_D.jpg', 'image/jpeg', 'public', 358801, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 120, '2020-10-28 11:21:37', '2020-10-28 11:21:39'),
(932, 'App\\Models\\Product', 424, 'image', '8BL145A6COF147M_01', '8BL145A6COF147M_01.jpg', 'image/jpeg', 'public', 52180, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 121, '2020-10-28 11:21:40', '2020-10-28 11:21:41'),
(933, 'App\\Models\\Product', 424, 'image', '8BL145A6COF147M_02', '8BL145A6COF147M_02.jpg', 'image/jpeg', 'public', 27597, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 122, '2020-10-28 11:21:41', '2020-10-28 11:21:43'),
(934, 'App\\Models\\Product', 424, 'image', '8BL145A6COF147M_03', '8BL145A6COF147M_03.jpg', 'image/jpeg', 'public', 24172, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 123, '2020-10-28 11:21:43', '2020-10-28 11:21:44'),
(935, 'App\\Models\\Product', 424, 'image', '8BL145A6COF147M_04', '8BL145A6COF147M_04.jpg', 'image/jpeg', 'public', 34059, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 124, '2020-10-28 11:21:44', '2020-10-28 11:21:46'),
(936, 'App\\Models\\Product', 424, 'image', '8BL145A6COF147M_05', '8BL145A6COF147M_05.jpg', 'image/jpeg', 'public', 138886, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 125, '2020-10-28 11:21:46', '2020-10-28 11:21:47'),
(937, 'App\\Models\\Product', 424, 'image', '8BL145A6COF147M_06', '8BL145A6COF147M_06.jpg', 'image/jpeg', 'public', 92083, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 126, '2020-10-28 11:21:47', '2020-10-28 11:21:49'),
(938, 'App\\Models\\Product', 425, 'image', '8BT315A5TYF13WB_01', '8BT315A5TYF13WB_01.jpg', 'image/jpeg', 'public', 38229, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 127, '2020-10-28 11:21:49', '2020-10-28 11:21:51'),
(939, 'App\\Models\\Product', 425, 'image', '8BT315A5TYF13WB_02', '8BT315A5TYF13WB_02.jpg', 'image/jpeg', 'public', 113239, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 128, '2020-10-28 11:21:51', '2020-10-28 11:21:52'),
(940, 'App\\Models\\Product', 425, 'image', '8BT315A5TYF13WB_03', '8BT315A5TYF13WB_03.jpg', 'image/jpeg', 'public', 45008, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 129, '2020-10-28 11:21:52', '2020-10-28 11:21:54'),
(941, 'App\\Models\\Product', 425, 'image', '8BT315A5TYF13WB_04', '8BT315A5TYF13WB_04.jpg', 'image/jpeg', 'public', 33525, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 130, '2020-10-28 11:21:54', '2020-10-28 11:21:55'),
(942, 'App\\Models\\Product', 425, 'image', '8BT315A5TYF13WB_05', '8BT315A5TYF13WB_05.jpg', 'image/jpeg', 'public', 45105, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 131, '2020-10-28 11:21:55', '2020-10-28 11:21:57'),
(943, 'App\\Models\\Product', 425, 'image', '8BT315A5TYF13WB_06', '8BT315A5TYF13WB_06.jpg', 'image/jpeg', 'public', 79196, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 132, '2020-10-28 11:21:57', '2020-10-28 11:21:58'),
(944, 'App\\Models\\Product', 426, 'image', '8BR600A9P6F1891_01', '8BR600A9P6F1891_01.jpg', 'image/jpeg', 'public', 56325, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 133, '2020-10-28 11:21:59', '2020-10-28 11:22:00'),
(945, 'App\\Models\\Product', 426, 'image', '8BR600A9P6F1891_02', '8BR600A9P6F1891_02.jpg', 'image/jpeg', 'public', 54051, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 134, '2020-10-28 11:22:00', '2020-10-28 11:22:02'),
(946, 'App\\Models\\Product', 426, 'image', '8BR600A9P6F1891_03', '8BR600A9P6F1891_03.jpg', 'image/jpeg', 'public', 80536, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 135, '2020-10-28 11:22:02', '2020-10-28 11:22:03'),
(947, 'App\\Models\\Product', 426, 'image', '8BR600A9P6F1891_04_', '8BR600A9P6F1891_04_.jpg', 'image/jpeg', 'public', 63861, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 136, '2020-10-28 11:22:03', '2020-10-28 11:22:05'),
(948, 'App\\Models\\Product', 426, 'image', '8BR600A9P6F1891_05', '8BR600A9P6F1891_05.jpg', 'image/jpeg', 'public', 196182, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 137, '2020-10-28 11:22:05', '2020-10-28 11:22:06'),
(949, 'App\\Models\\Product', 426, 'image', '8BR600A9P6F1891_06', '8BR600A9P6F1891_06.jpg', 'image/jpeg', 'public', 123729, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 138, '2020-10-28 11:22:06', '2020-10-28 11:22:08'),
(950, 'App\\Models\\Product', 427, 'image', '8BH374A9P6F1891_01', '8BH374A9P6F1891_01.jpg', 'image/jpeg', 'public', 95059, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 139, '2020-10-28 11:22:08', '2020-10-28 11:22:10'),
(951, 'App\\Models\\Product', 427, 'image', '8BH374A9P6F1891_02', '8BH374A9P6F1891_02.jpg', 'image/jpeg', 'public', 82500, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 140, '2020-10-28 11:22:10', '2020-10-28 11:22:11'),
(952, 'App\\Models\\Product', 427, 'image', '8BH374A9P6F1891_03', '8BH374A9P6F1891_03.jpg', 'image/jpeg', 'public', 69883, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 141, '2020-10-28 11:22:11', '2020-10-28 11:22:13'),
(953, 'App\\Models\\Product', 427, 'image', '8BH374A9P6F1891_04', '8BH374A9P6F1891_04.jpg', 'image/jpeg', 'public', 60850, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 142, '2020-10-28 11:22:13', '2020-10-28 11:22:14'),
(954, 'App\\Models\\Product', 427, 'image', '8BH374A9P6F1891_05', '8BH374A9P6F1891_05.jpg', 'image/jpeg', 'public', 190307, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 143, '2020-10-28 11:22:14', '2020-10-28 11:22:16'),
(955, 'App\\Models\\Product', 427, 'image', '8BH374A9P6F1891_06', '8BH374A9P6F1891_06.jpg', 'image/jpeg', 'public', 73735, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 144, '2020-10-28 11:22:16', '2020-10-28 11:22:17'),
(956, 'App\\Models\\Product', 428, 'image', '8X7067AAXHF0VAU_01', '8X7067AAXHF0VAU_01.jpg', 'image/jpeg', 'public', 28561, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 145, '2020-10-28 11:22:17', '2020-10-28 11:22:19'),
(957, 'App\\Models\\Product', 428, 'image', '8X7067AAXHF0VAU_02', '8X7067AAXHF0VAU_02.jpg', 'image/jpeg', 'public', 28564, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 146, '2020-10-28 11:22:19', '2020-10-28 11:22:21'),
(958, 'App\\Models\\Product', 428, 'image', '8X7067AAXHF0VAU_03', '8X7067AAXHF0VAU_03.jpg', 'image/jpeg', 'public', 18111, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 147, '2020-10-28 11:22:21', '2020-10-28 11:22:22'),
(959, 'App\\Models\\Product', 428, 'image', '8X7067AAXHF0VAU_04', '8X7067AAXHF0VAU_04.jpg', 'image/jpeg', 'public', 58658, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 148, '2020-10-28 11:22:22', '2020-10-28 11:22:24'),
(960, 'App\\Models\\Product', 428, 'image', '8X7067AAXHF0VAU_05', '8X7067AAXHF0VAU_05.jpg', 'image/jpeg', 'public', 43071, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 149, '2020-10-28 11:22:24', '2020-10-28 11:22:25'),
(961, 'App\\Models\\Product', 429, 'image', '8J6711A8UGF0MQ0_01', '8J6711A8UGF0MQ0_01.jpg', 'image/jpeg', 'public', 23975, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 150, '2020-10-28 11:22:25', '2020-10-28 11:22:27'),
(962, 'App\\Models\\Product', 429, 'image', '8J6711A8UGF0MQ0_02', '8J6711A8UGF0MQ0_02.jpg', 'image/jpeg', 'public', 24567, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 151, '2020-10-28 11:22:27', '2020-10-28 11:22:28'),
(963, 'App\\Models\\Product', 429, 'image', '8J6711A8UGF0MQ0_03', '8J6711A8UGF0MQ0_03.jpg', 'image/jpeg', 'public', 18751, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 152, '2020-10-28 11:22:28', '2020-10-28 11:22:30'),
(964, 'App\\Models\\Product', 429, 'image', '8J6711A8UGF0MQ0_04', '8J6711A8UGF0MQ0_04.jpg', 'image/jpeg', 'public', 35971, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 153, '2020-10-28 11:22:30', '2020-10-28 11:22:31'),
(965, 'App\\Models\\Product', 429, 'image', '8J6711A8UGF0MQ0_05', '8J6711A8UGF0MQ0_05.jpg', 'image/jpeg', 'public', 102338, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 154, '2020-10-28 11:22:31', '2020-10-28 11:22:33'),
(966, 'App\\Models\\Product', 430, 'image', '8T7009A8U9F0VAV_01', '8T7009A8U9F0VAV_01.jpg', 'image/jpeg', 'public', 27498, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 155, '2020-10-28 11:22:33', '2020-10-28 11:22:35'),
(967, 'App\\Models\\Product', 430, 'image', '8T7009A8U9F0VAV_02', '8T7009A8U9F0VAV_02.jpg', 'image/jpeg', 'public', 26746, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 156, '2020-10-28 11:22:35', '2020-10-28 11:22:36'),
(968, 'App\\Models\\Product', 430, 'image', '8T7009A8U9F0VAV_03', '8T7009A8U9F0VAV_03.jpg', 'image/jpeg', 'public', 19261, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 157, '2020-10-28 11:22:36', '2020-10-28 11:22:38'),
(969, 'App\\Models\\Product', 430, 'image', '8T7009A8U9F0VAV_04', '8T7009A8U9F0VAV_04.jpg', 'image/jpeg', 'public', 47489, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 158, '2020-10-28 11:22:38', '2020-10-28 11:22:39'),
(970, 'App\\Models\\Product', 431, 'image', '8E7043A8P5F18S5_01', '8E7043A8P5F18S5_01.jpg', 'image/jpeg', 'public', 31474, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 159, '2020-10-28 11:22:39', '2020-10-28 11:22:41'),
(971, 'App\\Models\\Product', 431, 'image', '8E7043A8P5F18S5_02', '8E7043A8P5F18S5_02.jpg', 'image/jpeg', 'public', 32934, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 160, '2020-10-28 11:22:41', '2020-10-28 11:22:42'),
(972, 'App\\Models\\Product', 431, 'image', '8E7043A8P5F18S5_03', '8E7043A8P5F18S5_03.jpg', 'image/jpeg', 'public', 18391, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 161, '2020-10-28 11:22:42', '2020-10-28 11:22:44'),
(973, 'App\\Models\\Product', 431, 'image', '8E7043A8P5F18S5_05', '8E7043A8P5F18S5_05.jpg', 'image/jpeg', 'public', 66733, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 162, '2020-10-28 11:22:44', '2020-10-28 11:22:45'),
(974, 'App\\Models\\Product', 432, 'image', '8I6804AK11F19MN_01', '8I6804AK11F19MN_01.jpg', 'image/jpeg', 'public', 20074, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 163, '2020-10-28 11:22:45', '2020-10-28 11:22:47'),
(975, 'App\\Models\\Product', 432, 'image', '8I6804AK11F19MN_02', '8I6804AK11F19MN_02.jpg', 'image/jpeg', 'public', 18425, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 164, '2020-10-28 11:22:47', '2020-10-28 11:22:48'),
(976, 'App\\Models\\Product', 432, 'image', '8I6804AK11F19MN_03_', '8I6804AK11F19MN_03_.jpg', 'image/jpeg', 'public', 13028, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 165, '2020-10-28 11:22:48', '2020-10-28 11:22:50'),
(977, 'App\\Models\\Product', 432, 'image', '8I6804AK11F19MN_04', '8I6804AK11F19MN_04.jpg', 'image/jpeg', 'public', 26582, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 166, '2020-10-28 11:22:50', '2020-10-28 11:22:51'),
(978, 'App\\Models\\Product', 432, 'image', '8I6804AK11F19MN_05', '8I6804AK11F19MN_05.jpg', 'image/jpeg', 'public', 130299, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 167, '2020-10-28 11:22:51', '2020-10-28 11:22:53'),
(979, 'App\\Models\\Product', 433, 'image', 'owna087r20423069', 'owna087r20423069.jpg', 'image/jpeg', 'public', 442052, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 168, '2020-10-28 11:22:53', '2020-10-28 11:22:55'),
(980, 'App\\Models\\Product', 433, 'image', 'owna087r20423069 - 02', 'owna087r20423069---02.jpg', 'image/jpeg', 'public', 452682, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 169, '2020-10-28 11:22:55', '2020-10-28 11:22:56'),
(981, 'App\\Models\\Product', 433, 'image', 'owna087r20423069 - 03', 'owna087r20423069---03.jpg', 'image/jpeg', 'public', 474312, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 170, '2020-10-28 11:22:56', '2020-10-28 11:22:58'),
(982, 'App\\Models\\Product', 434, 'image', 'OWNA087R20G99068', 'OWNA087R20G99068.PNG', 'image/png', 'public', 149533, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 171, '2020-10-28 11:22:58', '2020-10-28 11:23:00'),
(983, 'App\\Models\\Product', 434, 'image', 'OWNA087R20G99068 - 02', 'OWNA087R20G99068---02.PNG', 'image/png', 'public', 195276, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 172, '2020-10-28 11:23:00', '2020-10-28 11:23:01'),
(984, 'App\\Models\\Product', 434, 'image', 'OWNA087R20G99068 - 03', 'OWNA087R20G99068---03.PNG', 'image/png', 'public', 162509, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 173, '2020-10-28 11:23:01', '2020-10-28 11:23:03'),
(985, 'App\\Models\\Product', 435, 'image', 'OWNA059S20LEA001', 'OWNA059S20LEA001.jpg', 'image/jpeg', 'public', 152339, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 174, '2020-10-28 11:23:03', '2020-10-28 11:23:05'),
(986, 'App\\Models\\Product', 435, 'image', 'OWNA059S20LEA001 - 02', 'OWNA059S20LEA001---02.jpg', 'image/jpeg', 'public', 174315, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 175, '2020-10-28 11:23:05', '2020-10-28 11:23:07'),
(987, 'App\\Models\\Product', 435, 'image', 'OWNA059S20LEA001 - 03', 'OWNA059S20LEA001---03.jpg', 'image/jpeg', 'public', 152068, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 176, '2020-10-28 11:23:07', '2020-10-28 11:23:09'),
(988, 'App\\Models\\Product', 435, 'image', 'OWNA059S20LEA001 - 04', 'OWNA059S20LEA001---04.jpg', 'image/jpeg', 'public', 198790, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 177, '2020-10-28 11:23:09', '2020-10-28 11:23:12'),
(989, 'App\\Models\\Product', 435, 'image', 'OWNA059S20LEA001 - 05', 'OWNA059S20LEA001---05.jpg', 'image/jpeg', 'public', 157455, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 178, '2020-10-28 11:23:12', '2020-10-28 11:23:14'),
(990, 'App\\Models\\Product', 436, 'image', 'OWNA092S20LEA005', 'OWNA092S20LEA005.jpg', 'image/jpeg', 'public', 23394, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 179, '2020-10-28 11:23:14', '2020-10-28 11:23:15'),
(991, 'App\\Models\\Product', 436, 'image', 'OWNA092S20LEA005 - 03', 'OWNA092S20LEA005---03.jpg', 'image/jpeg', 'public', 21592, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 180, '2020-10-28 11:23:15', '2020-10-28 11:23:17'),
(992, 'App\\Models\\Product', 436, 'image', 'OWNA092S20LEA005 - 02', 'OWNA092S20LEA005---02.jpg', 'image/jpeg', 'public', 36128, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 181, '2020-10-28 11:23:17', '2020-10-28 11:23:18'),
(993, 'App\\Models\\Product', 437, 'image', 'OWNA093S20LEA004', 'OWNA093S20LEA004.jpg', 'image/jpeg', 'public', 36946, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 182, '2020-10-28 11:23:18', '2020-10-28 11:23:20'),
(994, 'App\\Models\\Product', 437, 'image', 'OWNA093S20LEA004 - 02', 'OWNA093S20LEA004---02.jpg', 'image/jpeg', 'public', 90975, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 183, '2020-10-28 11:23:20', '2020-10-28 11:23:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(995, 'App\\Models\\Product', 438, 'image', 'OWNA110S20LEA002', 'OWNA110S20LEA002.jpg', 'image/png', 'public', 55565, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 184, '2020-10-28 11:23:21', '2020-10-28 11:23:23'),
(996, 'App\\Models\\Product', 439, 'image', 'OWNA115S20LEA001 - 04', 'OWNA115S20LEA001---04.jpg', 'image/jpeg', 'public', 12700, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 185, '2020-10-28 11:23:23', '2020-10-28 11:23:24'),
(997, 'App\\Models\\Product', 439, 'image', 'OWNA115S20LEA001 -02', 'OWNA115S20LEA001--02.jpg', 'image/jpeg', 'public', 40175, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 186, '2020-10-28 11:23:24', '2020-10-28 11:23:25'),
(998, 'App\\Models\\Product', 439, 'image', 'OWNA115S20LEA001 -03', 'OWNA115S20LEA001--03.jpg', 'image/jpeg', 'public', 14827, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 187, '2020-10-28 11:23:25', '2020-10-28 11:23:27'),
(999, 'App\\Models\\Product', 440, 'image', 'OWRB009R20223075', 'OWRB009R20223075.jpg', 'image/png', 'public', 88053, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 188, '2020-10-28 11:23:27', '2020-10-28 11:23:28'),
(1000, 'App\\Models\\Product', 440, 'image', 'OWRB009R20223075 - 02', 'OWRB009R20223075---02.jpg', 'image/png', 'public', 167344, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 189, '2020-10-28 11:23:28', '2020-10-28 11:23:29'),
(1001, 'App\\Models\\Product', 441, 'image', 'OWRB027R20223076', 'OWRB027R20223076.jpg', 'image/jpeg', 'public', 32897, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 190, '2020-10-28 11:23:29', '2020-10-28 11:23:31'),
(1002, 'App\\Models\\Product', 441, 'image', 'OWRB027R20223076 - 03', 'OWRB027R20223076---03.jpg', 'image/jpeg', 'public', 21469, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 191, '2020-10-28 11:23:31', '2020-10-28 11:23:33'),
(1003, 'App\\Models\\Product', 441, 'image', 'OWRB027R20223076 - 02', 'OWRB027R20223076---02.jpg', 'image/jpeg', 'public', 15540, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 192, '2020-10-28 11:23:33', '2020-10-28 11:23:34'),
(1004, 'App\\Models\\Product', 442, 'image', 'OWDB168R20H38122', 'OWDB168R20H38122.jpg', 'image/jpeg', 'public', 46337, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 193, '2020-10-28 11:23:34', '2020-10-28 11:23:35'),
(1005, 'App\\Models\\Product', 442, 'image', 'OWDB168R20H38122 -03', 'OWDB168R20H38122--03.jpg', 'image/jpeg', 'public', 35127, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 194, '2020-10-28 11:23:35', '2020-10-28 11:23:37'),
(1006, 'App\\Models\\Product', 442, 'image', 'OWDB168R20H38122 - 02', 'OWDB168R20H38122---02.jpg', 'image/jpeg', 'public', 34059, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 195, '2020-10-28 11:23:37', '2020-10-28 11:23:38'),
(1007, 'App\\Models\\Product', 443, 'image', 'OWYM002R20773098', 'OWYM002R20773098.jpg', 'image/jpeg', 'public', 863760, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 196, '2020-10-28 11:23:38', '2020-10-28 11:23:42'),
(1008, 'App\\Models\\Product', 443, 'image', 'OWYM002R20773098 -02', 'OWYM002R20773098--02.jpg', 'image/jpeg', 'public', 784045, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 197, '2020-10-28 11:23:42', '2020-10-28 11:23:45'),
(1009, 'App\\Models\\Product', 444, 'image', 'OWIA198R20H16068', 'OWIA198R20H16068.jpg', 'image/jpeg', 'public', 2019903, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 198, '2020-10-28 11:23:45', '2020-10-28 11:23:49'),
(1010, 'App\\Models\\Product', 444, 'image', 'OWIA198R20H16068 - 03', 'OWIA198R20H16068---03.jpg', 'image/jpeg', 'public', 2032726, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 199, '2020-10-28 11:23:49', '2020-10-28 11:23:52'),
(1011, 'App\\Models\\Product', 444, 'image', 'OWIA198R20H16068 - 02', 'OWIA198R20H16068---02.jpg', 'image/jpeg', 'public', 1870160, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 200, '2020-10-28 11:23:52', '2020-10-28 11:23:55'),
(1012, 'App\\Models\\Product', 445, 'image', 'OWIA229S20LEA001', 'OWIA229S20LEA001.jpg', 'image/jpeg', 'public', 67798, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 201, '2020-10-28 11:23:55', '2020-10-28 11:23:57'),
(1013, 'App\\Models\\Product', 445, 'image', 'OWIA229S20LEA001 - 03', 'OWIA229S20LEA001---03.jpg', 'image/jpeg', 'public', 90072, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 202, '2020-10-28 11:23:57', '2020-10-28 11:23:59'),
(1014, 'App\\Models\\Product', 445, 'image', 'OWIA229S20LEA001 - 02', 'OWIA229S20LEA001---02.jpg', 'image/jpeg', 'public', 52560, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 203, '2020-10-28 11:23:59', '2020-10-28 11:24:00'),
(1015, 'App\\Models\\Product', 446, 'image', 'OWGA069R20C86068', 'OWGA069R20C86068.jpg', 'image/jpeg', 'public', 241742, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 204, '2020-10-28 11:24:00', '2020-10-28 11:24:02'),
(1016, 'App\\Models\\Product', 446, 'image', 'OWGA069R20C86068 - 02', 'OWGA069R20C86068---02.jpg', 'image/jpeg', 'public', 206025, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 205, '2020-10-28 11:24:02', '2020-10-28 11:24:04'),
(1017, 'App\\Models\\Product', 447, 'image', 'OWGA074S20FAB001', 'OWGA074S20FAB001.jpg', 'image/jpeg', 'public', 15131, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 206, '2020-10-28 11:24:04', '2020-10-28 11:24:05'),
(1018, 'App\\Models\\Product', 447, 'image', 'OWGA074S20FAB001 - 02', 'OWGA074S20FAB001---02.jpg', 'image/jpeg', 'public', 19806, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 207, '2020-10-28 11:24:06', '2020-10-28 11:24:07'),
(1019, 'App\\Models\\Product', 448, 'image', 'OWEA156R20D53088', 'OWEA156R20D53088.jpg', 'image/jpeg', 'public', 218814, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 208, '2020-10-28 11:24:07', '2020-10-28 11:24:09'),
(1020, 'App\\Models\\Product', 448, 'image', 'OWEA156R20D53088 - 03', 'OWEA156R20D53088---03.jpg', 'image/jpeg', 'public', 587815, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 209, '2020-10-28 11:24:09', '2020-10-28 11:24:11'),
(1021, 'App\\Models\\Product', 448, 'image', 'OWEA156R20D53088 - 02', 'OWEA156R20D53088---02.jpg', 'image/jpeg', 'public', 751930, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 210, '2020-10-28 11:24:11', '2020-10-28 11:24:12'),
(1022, 'App\\Models\\Product', 449, 'image', 'OWEA209S20FAB001', 'OWEA209S20FAB001.jpg', 'image/jpeg', 'public', 31072, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 211, '2020-10-28 11:24:12', '2020-10-28 11:24:14'),
(1023, 'App\\Models\\Product', 450, 'image', 'OWLB008R20624087', 'OWLB008R20624087.jpg', 'image/png', 'public', 157932, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 212, '2020-10-28 11:24:14', '2020-10-28 11:24:15'),
(1024, 'App\\Models\\Product', 451, 'image', 'OWLB008R20C86068', 'OWLB008R20C86068.jpg', 'image/jpeg', 'public', 69277, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 213, '2020-10-28 11:24:15', '2020-10-28 11:24:17'),
(1025, 'App\\Models\\Product', 451, 'image', 'OWLB008R20C86068 - 02', 'OWLB008R20C86068---02.jpg', 'image/jpeg', 'public', 54991, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 214, '2020-10-28 11:24:17', '2020-10-28 11:24:18'),
(1026, 'App\\Models\\Product', 452, 'image', '1Q1030Y6A8', '1Q1030Y6A8.jpg', 'image/jpeg', 'public', 316791, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 215, '2020-10-28 11:24:18', '2020-10-28 11:24:20'),
(1027, 'App\\Models\\Product', 452, 'image', '1Q1030Y6A8-02', '1Q1030Y6A8-02.jpg', 'image/jpeg', 'public', 309756, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 216, '2020-10-28 11:24:20', '2020-10-28 11:24:22'),
(1028, 'App\\Models\\Product', 452, 'image', '1Q1030Y6A8-03', '1Q1030Y6A8-03.jpg', 'image/jpeg', 'public', 258911, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 217, '2020-10-28 11:24:22', '2020-10-28 11:24:25'),
(1029, 'App\\Models\\Product', 452, 'image', '1Q1030Y6A8-04', '1Q1030Y6A8-04.jpg', 'image/jpeg', 'public', 333391, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 218, '2020-10-28 11:24:25', '2020-10-28 11:24:27'),
(1030, 'App\\Models\\Product', 453, 'image', '1P21LKY5GB-I09', '1P21LKY5GB-I09.jpg', 'image/jpeg', 'public', 299288, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 219, '2020-10-28 11:24:27', '2020-10-28 11:24:29'),
(1031, 'App\\Models\\Product', 453, 'image', '1P21LKY5GB-I09-02', '1P21LKY5GB-I09-02.jpg', 'image/jpeg', 'public', 64340, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 220, '2020-10-28 11:24:29', '2020-10-28 11:24:31'),
(1032, 'App\\Models\\Product', 454, 'image', 'STILLECOM-1P21LYY65Z-A76', 'STILLECOM-1P21LYY65Z-A76.jpg', 'image/jpeg', 'public', 138322, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 221, '2020-10-28 11:24:31', '2020-10-28 11:24:33'),
(1033, 'App\\Models\\Product', 454, 'image', 'STILLECOM-1P21LYY65Z-A76-02', 'STILLECOM-1P21LYY65Z-A76-02.jpg', 'image/jpeg', 'public', 99300, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 222, '2020-10-28 11:24:34', '2020-10-28 11:24:36'),
(1034, 'App\\Models\\Product', 454, 'image', 'STILLECOM-1P21LYY65Z-A76-03', 'STILLECOM-1P21LYY65Z-A76-03.jpg', 'image/jpeg', 'public', 1609090, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 223, '2020-10-28 11:24:36', '2020-10-28 11:24:38'),
(1035, 'App\\Models\\Product', 454, 'image', 'STILLECOM-1P21LYY65Z-A76-04', 'STILLECOM-1P21LYY65Z-A76-04.jpg', 'image/jpeg', 'public', 702062, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 224, '2020-10-28 11:24:38', '2020-10-28 11:24:40'),
(1036, 'App\\Models\\Product', 454, 'image', 'STILLECOM-1P21LYY65Z-A76-05', 'STILLECOM-1P21LYY65Z-A76-05.jpg', 'image/jpeg', 'public', 1716969, '[]', '{\"generated_conversions\":{\"thumb\":true,\"icon\":true,\"main\":true}}', '[]', 225, '2020-10-28 11:24:40', '2020-10-28 11:24:43'),
(1037, 'App\\Models\\Upload', 28, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"ca10e5b8-01a9-4ddb-acbb-2eccce7a23b3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 226, '2020-10-30 05:28:28', '2020-10-30 05:28:40'),
(1038, 'App\\Models\\Upload', 29, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"9cbbf7bf-a53f-4f68-be16-12667cfbb1cc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 227, '2020-10-30 05:28:44', '2020-10-30 05:28:45'),
(1039, 'App\\Models\\Upload', 30, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"19668e45-5016-4081-8132-9a15775f66ec\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 228, '2020-10-30 05:48:36', '2020-10-30 05:48:42'),
(1040, 'App\\Models\\Upload', 31, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"60f5d042-b648-4f18-bfb9-43cc444d961e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 228, '2020-10-30 05:48:36', '2020-10-30 05:48:42'),
(1041, 'App\\Models\\Upload', 32, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"7d349f43-fdac-469d-b179-90883d970d0b\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 229, '2020-10-30 05:50:25', '2020-10-30 05:50:26'),
(1042, 'App\\Models\\Upload', 33, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"e48966cb-b27b-411a-8b4c-aeeb3f326ed3\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 230, '2020-10-30 05:50:25', '2020-10-30 05:50:26'),
(1043, 'App\\Models\\Upload', 34, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"e75714aa-23ce-446f-9849-47044a27b962\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 231, '2020-10-30 05:56:37', '2020-10-30 05:56:37'),
(1044, 'App\\Models\\Upload', 35, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"ddc7c372-2e39-44e3-bdb4-431ea30315fc\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 231, '2020-10-30 05:56:37', '2020-10-30 05:56:38'),
(1045, 'App\\Models\\Upload', 36, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"b2869074-7fa9-4331-8c40-cbfec42cf929\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 232, '2020-10-30 19:09:16', '2020-10-30 19:09:20'),
(1046, 'App\\Models\\Upload', 37, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"a4f04d7a-6fcc-4052-9bb5-5b6b117c0897\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 232, '2020-10-30 19:09:16', '2020-10-30 19:09:20'),
(1047, 'App\\Models\\Upload', 38, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"15a03b1d-14f9-4473-8e0e-719789faf168\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 233, '2020-10-30 19:09:21', '2020-10-30 19:09:22'),
(1048, 'App\\Models\\Upload', 39, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"2d1cbc68-86c2-4f01-ba3e-24aae5201109\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 234, '2020-10-30 19:16:57', '2020-10-30 19:16:58'),
(1049, 'App\\Models\\Upload', 40, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"399bec89-8b9a-42c7-9194-2057dd6dec5f\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 235, '2020-10-30 19:16:57', '2020-10-30 19:16:58'),
(1050, 'App\\Models\\Upload', 41, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"08debb96-f41c-473d-9999-a4b4182875b4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 236, '2020-10-30 19:16:59', '2020-10-30 19:17:00'),
(1051, 'App\\Models\\Upload', 42, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"43157efe-5850-4fff-9ea6-177ebb0fa780\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 237, '2020-10-30 19:19:26', '2020-10-30 19:19:27'),
(1052, 'App\\Models\\Upload', 43, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"fceeb487-d300-4dcd-8ab4-56d7ea2aea01\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 237, '2020-10-30 19:19:26', '2020-10-30 19:19:27'),
(1053, 'App\\Models\\Upload', 44, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"7349b8d4-edd1-4a69-9ab2-7806bf945671\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 238, '2020-10-30 19:19:28', '2020-10-30 19:19:29'),
(1054, 'App\\Models\\Upload', 45, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"be59c9c8-5370-454e-9448-a53840343382\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 239, '2020-10-30 19:30:25', '2020-10-30 19:30:30'),
(1055, 'App\\Models\\Upload', 46, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"e6352aaa-769d-4bf4-a857-9bfa5cd5f2d6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 239, '2020-10-30 19:30:25', '2020-10-30 19:30:30'),
(1056, 'App\\Models\\Upload', 47, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"0714b0b3-00de-4b86-a335-d65e4c88908a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 240, '2020-10-30 19:30:32', '2020-10-30 19:30:33'),
(1057, 'App\\Models\\Upload', 48, 'undefined', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"aab8a615-b530-4ee7-90b9-9313d7a2de63\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 241, '2020-10-30 19:33:44', '2020-10-30 19:33:46'),
(1058, 'App\\Models\\Upload', 49, 'undefined', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"5b3dd9fb-22a0-45d3-bb73-70a6ab017f27\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 242, '2020-10-30 19:33:44', '2020-10-30 19:33:46'),
(1059, 'App\\Models\\Upload', 50, 'undefined', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"79e283b5-e6a7-48e4-b50b-faf49f0637cf\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 243, '2020-10-30 19:33:47', '2020-10-30 19:33:48'),
(1060, 'App\\Models\\Upload', 51, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"db8dd02b-a8df-4f17-ab89-17af6635f3df\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 244, '2020-10-30 19:36:27', '2020-10-30 19:36:29'),
(1061, 'App\\Models\\Upload', 52, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"2525b807-e64d-4a29-b06b-3936e70bf080\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 245, '2020-10-30 19:36:27', '2020-10-30 19:36:28'),
(1062, 'App\\Models\\Upload', 53, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"8270c872-aee0-43e8-996e-1e86eba0fab6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 246, '2020-10-30 19:36:30', '2020-10-30 19:36:31'),
(1063, 'App\\Models\\Upload', 54, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"7e934362-5541-4d95-ad26-b9d194bb37b6\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 247, '2020-10-30 19:39:01', '2020-10-30 19:39:02'),
(1064, 'App\\Models\\Upload', 55, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"7a0b1484-1399-4e4f-b9da-c2e99cf592c0\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 247, '2020-10-30 19:39:01', '2020-10-30 19:39:02'),
(1065, 'App\\Models\\Upload', 56, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"dc944516-9718-4858-aa49-8d5c0b2180c7\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 248, '2020-10-30 19:39:03', '2020-10-30 19:39:04'),
(1066, 'App\\Models\\Upload', 57, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"890a8c74-9b3a-4ad6-8c17-2699edf370b9\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 249, '2020-10-30 19:39:54', '2020-10-30 19:39:55'),
(1067, 'App\\Models\\Upload', 58, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"54c999ea-e1d1-45da-a641-56ad2e7b2836\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 249, '2020-10-30 19:39:54', '2020-10-30 19:39:55'),
(1068, 'App\\Models\\Upload', 59, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"a755d80d-d29a-4959-bca7-a75fe6dbfaf2\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 250, '2020-10-30 19:39:57', '2020-10-30 19:39:58'),
(1069, 'App\\Models\\Upload', 61, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"c0767d2e-3c19-48aa-8647-11c94f558e8d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 251, '2020-10-30 20:43:28', '2020-10-30 20:43:38'),
(1070, 'App\\Models\\Upload', 60, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"a9d3a8c7-4c8c-40d0-acad-850f8fcf8bdd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 251, '2020-10-30 20:43:29', '2020-10-30 20:43:38'),
(1071, 'App\\Models\\Upload', 62, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"634101a2-9eab-4f2e-b365-f90316f3cf37\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 252, '2020-10-30 20:43:41', '2020-10-30 20:43:42'),
(1072, 'App\\Models\\Upload', 63, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"25a6bae0-5b91-4002-929b-d432ff118261\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 253, '2020-10-30 20:44:54', '2020-10-30 20:44:55'),
(1073, 'App\\Models\\Upload', 64, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"31270846-e946-4d37-80cc-9057b44786ae\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 253, '2020-10-30 20:44:54', '2020-10-30 20:44:55'),
(1074, 'App\\Models\\Upload', 65, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"91528c92-e80f-4ddf-8a9c-8379f61d7c86\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 254, '2020-10-30 20:44:57', '2020-10-30 20:44:57'),
(1075, 'App\\Models\\Upload', 66, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"59c58390-5002-4266-8058-0e39b8ad8983\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 255, '2020-10-30 20:46:50', '2020-10-30 20:46:51'),
(1076, 'App\\Models\\Upload', 67, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"190c5f2d-11d4-434b-af42-3eed80f05ca5\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 256, '2020-10-30 20:46:50', '2020-10-30 20:46:51'),
(1077, 'App\\Models\\Upload', 68, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"b4e957cd-b1cd-4c65-a074-75d00c2aeae8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 257, '2020-10-30 20:46:53', '2020-10-30 20:46:54'),
(1078, 'App\\Models\\Upload', 69, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"18651a1d-881f-4a8c-90cc-d360b39e9383\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 258, '2020-10-30 20:47:53', '2020-10-30 20:47:54'),
(1079, 'App\\Models\\Upload', 70, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"66f7742c-a2ff-4791-beea-162c5a47ac35\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 259, '2020-10-30 20:47:53', '2020-10-30 20:47:54'),
(1080, 'App\\Models\\Upload', 71, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"df40c7b6-40da-40a8-9dc6-843309edfd0e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 260, '2020-10-30 20:48:14', '2020-10-30 20:48:15'),
(1081, 'App\\Models\\Upload', 72, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"829e3e94-33a5-4b43-8d59-180ee82ddf92\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 261, '2020-10-30 20:48:14', '2020-10-30 20:48:15'),
(1082, 'App\\Models\\Upload', 73, 'image', '3299201_0', '3299201_0.jpg', 'image/jpeg', 'public', 52876, '[]', '{\"uuid\":\"f720eef3-7120-498a-9483-1f53286dc267\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 262, '2020-10-30 20:48:16', '2020-10-30 20:48:18'),
(1083, 'App\\Models\\Upload', 75, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"3237be4c-241e-4225-84f7-9c359bbb5e8d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 263, '2020-10-30 20:49:08', '2020-10-30 20:49:09'),
(1084, 'App\\Models\\Upload', 74, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"b8113f6f-908d-4e46-8275-038eb7bce753\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 263, '2020-10-30 20:49:08', '2020-10-30 20:49:09'),
(1085, 'App\\Models\\Upload', 76, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"4b391215-9a3d-4091-ba6b-5fe93c3dd48e\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 264, '2020-10-30 20:49:10', '2020-10-30 20:49:11'),
(1086, 'App\\Models\\Upload', 77, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"d035f617-83ca-437e-8b19-866d4385cde4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 265, '2020-10-30 20:54:02', '2020-10-30 20:54:03'),
(1087, 'App\\Models\\Upload', 78, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"caae57d2-2bd9-4055-9baa-2d320934b79a\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 266, '2020-10-30 20:54:02', '2020-10-30 20:54:03'),
(1088, 'App\\Models\\Upload', 79, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"ba52230f-09b3-4020-b490-e21804cb5e8d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 267, '2020-10-30 20:54:04', '2020-10-30 20:54:05'),
(1089, 'App\\Models\\Upload', 80, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"427685ef-d52f-43d4-84c1-bc88d9b4de7c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 268, '2020-10-30 21:01:23', '2020-10-30 21:01:24'),
(1090, 'App\\Models\\Upload', 81, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"8889c106-3146-483d-a64c-3b354a82a037\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 269, '2020-10-30 21:01:23', '2020-10-30 21:01:24'),
(1091, 'App\\Models\\Upload', 82, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"7cf9cebd-36f0-4857-a088-b051fba457b8\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 270, '2020-10-30 21:01:25', '2020-10-30 21:01:26'),
(1092, 'App\\Models\\Upload', 113, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"85abb8d2-1fb4-4690-bd38-d4e45885aaf4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 271, '2020-10-31 05:55:41', '2020-10-31 05:55:48'),
(1093, 'App\\Models\\Product', 537, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"85abb8d2-1fb4-4690-bd38-d4e45885aaf4\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 272, '2020-10-31 05:57:19', '2020-10-31 05:57:19'),
(1094, 'App\\Models\\Upload', 114, 'image', 'Women-Flamingo-Tshirt-Harajuku-Summer-Funny-Printed-T-Shirt-Femme-Camisetas-Mujer-Graceful-Elegant-Flamingo-shirt_grande', 'Women-Flamingo-Tshirt-Harajuku-Summer-Funny-Printed-T-Shirt-Femme-Camisetas-Mujer-Graceful-Elegant-Flamingo-shirt_grande.jpg', 'image/jpeg', 'public', 29738, '[]', '{\"uuid\":\"4692fa78-76cf-4128-9192-a6b47e2aca96\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 273, '2020-10-31 06:03:39', '2020-10-31 06:03:41'),
(1095, 'App\\Models\\Upload', 115, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"181286e2-47ed-4a6b-947e-a1871dbe7a02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 274, '2020-10-31 06:05:59', '2020-10-31 06:06:00'),
(1096, 'App\\Models\\Product', 538, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"181286e2-47ed-4a6b-947e-a1871dbe7a02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 275, '2020-10-31 06:06:55', '2020-10-31 06:06:55'),
(1097, 'App\\Models\\Product', 541, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"181286e2-47ed-4a6b-947e-a1871dbe7a02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 276, '2020-10-31 06:18:09', '2020-10-31 06:18:09'),
(1098, 'App\\Models\\Product', 542, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"181286e2-47ed-4a6b-947e-a1871dbe7a02\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 277, '2020-10-31 06:18:35', '2020-10-31 06:18:35'),
(1099, 'App\\Models\\Upload', 116, 'image', '4105284_0', '4105284_0.jpg', 'image/jpeg', 'public', 57782, '[]', '{\"uuid\":\"bb99caaa-09d9-4d1c-aedb-5ca8f8651293\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 278, '2020-10-31 06:44:16', '2020-10-31 06:44:18'),
(1100, 'App\\Models\\Product', 543, 'image', '4105284_0', '4105284_0.jpg', 'image/jpeg', 'public', 57782, '[]', '{\"uuid\":\"bb99caaa-09d9-4d1c-aedb-5ca8f8651293\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 279, '2020-10-31 06:45:07', '2020-10-31 06:45:07'),
(1101, 'App\\Models\\Upload', 118, 'image', '1633128_1', '1633128_1.jpg', 'image/jpeg', 'public', 60976, '[]', '{\"uuid\":\"f3a393c3-1f1c-492f-8033-a41383288e6d\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 280, '2020-10-31 09:11:16', '2020-10-31 09:11:30'),
(1102, 'App\\Models\\Upload', 117, 'image', '115283_0', '115283_0.jpg', 'image/jpeg', 'public', 52833, '[]', '{\"uuid\":\"a0726228-9c04-4cf3-ac73-7d903ad1a50c\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 280, '2020-10-31 09:11:16', '2020-10-31 09:11:30'),
(1103, 'App\\Models\\Upload', 119, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"834884f6-913e-44ca-b1a1-ae6882e85909\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 281, '2020-10-31 09:11:31', '2020-10-31 09:11:33'),
(1104, 'App\\Models\\Product', 544, 'image', '1927119_1', '1927119_1.jpg', 'image/jpeg', 'public', 66488, '[]', '{\"uuid\":\"834884f6-913e-44ca-b1a1-ae6882e85909\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 282, '2020-10-31 09:11:42', '2020-10-31 09:11:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_05_26_175145_create_permission_tables', 1),
(4, '2018_06_12_140344_create_media_table', 1),
(5, '2018_06_13_035117_create_uploads_table', 1),
(6, '2018_07_17_180731_create_settings_table', 1),
(7, '2018_07_24_211308_create_custom_fields_table', 1),
(8, '2018_07_24_211327_create_custom_field_values_table', 1),
(9, '2019_08_29_213820_create_fields_table', 1),
(10, '2019_08_29_213821_create_markets_table', 1),
(11, '2019_08_29_213822_create_categories_table', 1),
(12, '2019_08_29_213826_create_option_groups_table', 1),
(13, '2019_08_29_213829_create_faq_categories_table', 1),
(14, '2019_08_29_213833_create_order_statuses_table', 1),
(15, '2019_08_29_213837_create_products_table', 1),
(16, '2019_08_29_213838_create_options_table', 1),
(17, '2019_08_29_213842_create_galleries_table', 1),
(18, '2019_08_29_213847_create_product_reviews_table', 1),
(19, '2019_08_29_213921_create_payments_table', 1),
(20, '2019_08_29_213922_create_delivery_addresses_table', 1),
(21, '2019_08_29_213926_create_faqs_table', 1),
(22, '2019_08_29_213940_create_market_reviews_table', 1),
(23, '2019_08_30_152927_create_favorites_table', 1),
(24, '2019_08_31_111104_create_orders_table', 1),
(25, '2019_09_04_153857_create_carts_table', 1),
(26, '2019_09_04_153858_create_favorite_options_table', 1),
(27, '2019_09_04_153859_create_cart_options_table', 1),
(28, '2019_09_04_153958_create_product_orders_table', 1),
(29, '2019_09_04_154957_create_product_order_options_table', 1),
(30, '2019_09_04_163857_create_user_markets_table', 1),
(31, '2019_10_22_144652_create_currencies_table', 1),
(32, '2019_12_14_134302_create_driver_markets_table', 1),
(33, '2020_03_25_094752_create_drivers_table', 1),
(34, '2020_03_25_094802_create_earnings_table', 1),
(35, '2020_03_25_094809_create_drivers_payouts_table', 1),
(36, '2020_03_25_094817_create_markets_payouts_table', 1),
(37, '2020_03_27_094855_create_notifications_table', 1),
(38, '2020_04_11_135804_create_market_fields_table', 1),
(39, '2020_08_23_181022_create_coupons_table', 1),
(40, '2020_08_23_181029_create_discountables_table', 1),
(41, '2020_09_01_192732_create_slides_table', 1),
(47, '2020_09_01_192736_create_brands_table', 2),
(48, '2020_10_14_131516_add_brand_to_products_table', 2),
(49, '2020_10_15_112021_add_parent_to_categories', 3),
(51, '2020_09_01_192732_create_userables_table', 4),
(56, '2020_03_25_094817_create_addresses_table', 5),
(57, '2020_03_25_094817_create_city_codes_table', 5),
(58, '2020_03_25_094817_create_delivery_states_table', 5),
(59, '2020_03_25_094817_create_delivery_types_table', 5),
(60, '2020_10_14_131516_add_new_to_delivery_addresses_table', 6),
(61, '2020_09_01_192732_create_receivers_table', 7),
(63, '2020_10_15_112021_add_ business_registration_to_users', 8),
(64, '2020_09_01_192736_create_subscribers_table', 9),
(65, '2020_09_01_192736_create_zones_table', 9),
(69, '2020_09_01_192736_create_color_products_table', 10),
(70, '2020_09_01_192736_create_colors_table', 10),
(71, '2020_09_01_192736_create_product_features_table', 10),
(72, '2020_09_01_192736_create_sizes_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_group_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_groups`
--

CREATE TABLE `option_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `tax` double(5,2) DEFAULT '0.00',
  `delivery_fee` double(5,2) DEFAULT '0.00',
  `hint` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_address_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(183, 'coupons.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(184, 'coupons.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(185, 'coupons.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(186, 'coupons.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(187, 'coupons.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(188, 'coupons.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(189, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(190, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(191, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(192, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(193, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(194, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(195, 'dashboard', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(196, 'medias.create', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(197, 'users.profile', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(198, 'users.index', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(199, 'users.create', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(200, 'users.store', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(201, 'users.show', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(202, 'users.edit', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(203, 'users.update', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(204, 'users.destroy', 'web', '2020-10-14 12:28:59', '2020-10-14 12:28:59', NULL),
(205, 'medias.delete', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(206, 'medias', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(207, 'permissions.index', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(208, 'permissions.create', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(209, 'permissions.store', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(210, 'permissions.show', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(211, 'permissions.edit', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(212, 'permissions.update', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(213, 'permissions.destroy', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(214, 'roles.index', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(215, 'roles.create', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(216, 'roles.store', 'web', '2020-10-14 12:29:00', '2020-10-14 12:29:00', NULL),
(217, 'roles.show', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(218, 'roles.edit', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(219, 'roles.update', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(220, 'roles.destroy', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(221, 'customFields.index', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(222, 'customFields.create', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(223, 'customFields.store', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(224, 'customFields.show', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(225, 'customFields.edit', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(226, 'customFields.update', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(227, 'customFields.destroy', 'web', '2020-10-14 12:29:01', '2020-10-14 12:29:01', NULL),
(228, 'currencies.index', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(229, 'currencies.create', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(230, 'currencies.store', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(231, 'currencies.edit', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(232, 'currencies.update', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(233, 'currencies.destroy', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(234, 'users.login-as-user', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(235, 'app-settings', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(236, 'fields.index', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(237, 'fields.create', 'web', '2020-10-14 12:29:02', '2020-10-14 12:29:02', NULL),
(238, 'fields.store', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(239, 'fields.edit', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(240, 'fields.update', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(241, 'fields.destroy', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(242, 'brands.index', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(243, 'brands.create', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(244, 'brands.store', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(245, 'brands.edit', 'web', '2020-10-14 12:29:03', '2020-10-14 12:29:03', NULL),
(246, 'brands.update', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(247, 'brands.destroy', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(248, 'requestedMarkets.index', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(249, 'markets.index', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(250, 'markets.create', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(251, 'markets.store', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(252, 'markets.edit', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(253, 'markets.update', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(254, 'markets.destroy', 'web', '2020-10-14 12:29:04', '2020-10-14 12:29:04', NULL),
(255, 'categories.index', 'web', '2020-10-14 12:29:05', '2020-10-14 12:29:05', NULL),
(256, 'categories.create', 'web', '2020-10-14 12:29:05', '2020-10-14 12:29:05', NULL),
(257, 'categories.store', 'web', '2020-10-14 12:29:05', '2020-10-14 12:29:05', NULL),
(258, 'categories.edit', 'web', '2020-10-14 12:29:05', '2020-10-14 12:29:05', NULL),
(259, 'categories.update', 'web', '2020-10-14 12:29:05', '2020-10-14 12:29:05', NULL),
(260, 'categories.destroy', 'web', '2020-10-14 12:29:05', '2020-10-14 12:29:05', NULL),
(261, 'faqCategories.index', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(262, 'faqCategories.create', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(263, 'faqCategories.store', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(264, 'faqCategories.edit', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(265, 'faqCategories.update', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(266, 'faqCategories.destroy', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(267, 'orderStatuses.index', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(268, 'orderStatuses.show', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(269, 'orderStatuses.edit', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(270, 'orderStatuses.update', 'web', '2020-10-14 12:29:06', '2020-10-14 12:29:06', NULL),
(271, 'products.index', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(272, 'products.create', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(273, 'products.store', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(274, 'products.edit', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(275, 'products.update', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(276, 'products.destroy', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(277, 'galleries.index', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(278, 'galleries.create', 'web', '2020-10-14 12:29:07', '2020-10-14 12:29:07', NULL),
(279, 'galleries.store', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(280, 'galleries.edit', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(281, 'galleries.update', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(282, 'galleries.destroy', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(283, 'productReviews.index', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(284, 'productReviews.create', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(285, 'productReviews.store', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(286, 'productReviews.edit', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(287, 'productReviews.update', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(288, 'productReviews.destroy', 'web', '2020-10-14 12:29:08', '2020-10-14 12:29:08', NULL),
(289, 'payments.index', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(290, 'payments.show', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(291, 'payments.update', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(292, 'faqs.index', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(293, 'faqs.create', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(294, 'faqs.store', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(295, 'faqs.edit', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(296, 'faqs.update', 'web', '2020-10-14 12:29:09', '2020-10-14 12:29:09', NULL),
(297, 'faqs.destroy', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(298, 'marketReviews.index', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(299, 'marketReviews.create', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(300, 'marketReviews.store', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(301, 'marketReviews.edit', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(302, 'marketReviews.update', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(303, 'marketReviews.destroy', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(304, 'favorites.index', 'web', '2020-10-14 12:29:10', '2020-10-14 12:29:10', NULL),
(305, 'favorites.create', 'web', '2020-10-14 12:29:11', '2020-10-14 12:29:11', NULL),
(306, 'favorites.store', 'web', '2020-10-14 12:29:11', '2020-10-14 12:29:11', NULL),
(307, 'favorites.edit', 'web', '2020-10-14 12:29:11', '2020-10-14 12:29:11', NULL),
(308, 'favorites.update', 'web', '2020-10-14 12:29:11', '2020-10-14 12:29:11', NULL),
(309, 'favorites.destroy', 'web', '2020-10-14 12:29:11', '2020-10-14 12:29:11', NULL),
(310, 'orders.index', 'web', '2020-10-14 12:29:11', '2020-10-14 12:29:11', NULL),
(311, 'orders.create', 'web', '2020-10-14 12:29:11', '2020-10-14 12:29:11', NULL),
(312, 'orders.store', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(313, 'orders.show', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(314, 'orders.edit', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(315, 'orders.update', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(316, 'orders.destroy', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(317, 'notifications.index', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(318, 'notifications.show', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(319, 'notifications.destroy', 'web', '2020-10-14 12:29:12', '2020-10-14 12:29:12', NULL),
(320, 'carts.index', 'web', '2020-10-14 12:29:13', '2020-10-14 12:29:13', NULL),
(321, 'carts.edit', 'web', '2020-10-14 12:29:13', '2020-10-14 12:29:13', NULL),
(322, 'carts.update', 'web', '2020-10-14 12:29:13', '2020-10-14 12:29:13', NULL),
(323, 'carts.destroy', 'web', '2020-10-14 12:29:13', '2020-10-14 12:29:13', NULL),
(324, 'deliveryAddresses.index', 'web', '2020-10-14 12:29:13', '2020-10-14 12:29:13', NULL),
(325, 'deliveryAddresses.create', 'web', '2020-10-14 12:29:13', '2020-10-14 12:29:13', NULL),
(326, 'deliveryAddresses.store', 'web', '2020-10-14 12:29:13', '2020-10-14 12:29:13', NULL),
(327, 'deliveryAddresses.edit', 'web', '2020-10-14 12:29:14', '2020-10-14 12:29:14', NULL),
(328, 'deliveryAddresses.update', 'web', '2020-10-14 12:29:14', '2020-10-14 12:29:14', NULL),
(329, 'deliveryAddresses.destroy', 'web', '2020-10-14 12:29:14', '2020-10-14 12:29:14', NULL),
(330, 'drivers.index', 'web', '2020-10-14 12:29:14', '2020-10-14 12:29:14', NULL),
(331, 'drivers.create', 'web', '2020-10-14 12:29:14', '2020-10-14 12:29:14', NULL),
(332, 'drivers.store', 'web', '2020-10-14 12:29:14', '2020-10-14 12:29:14', NULL),
(333, 'drivers.edit', 'web', '2020-10-14 12:29:14', '2020-10-14 12:29:14', NULL),
(334, 'drivers.update', 'web', '2020-10-14 12:29:15', '2020-10-14 12:29:15', NULL),
(335, 'drivers.destroy', 'web', '2020-10-14 12:29:15', '2020-10-14 12:29:15', NULL),
(336, 'earnings.index', 'web', '2020-10-14 12:29:15', '2020-10-14 12:29:15', NULL),
(337, 'earnings.create', 'web', '2020-10-14 12:29:15', '2020-10-14 12:29:15', NULL),
(338, 'earnings.store', 'web', '2020-10-14 12:29:15', '2020-10-14 12:29:15', NULL),
(339, 'earnings.destroy', 'web', '2020-10-14 12:29:15', '2020-10-14 12:29:15', NULL),
(340, 'driversPayouts.index', 'web', '2020-10-14 12:29:15', '2020-10-14 12:29:15', NULL),
(341, 'driversPayouts.create', 'web', '2020-10-14 12:29:16', '2020-10-14 12:29:16', NULL),
(342, 'driversPayouts.store', 'web', '2020-10-14 12:29:16', '2020-10-14 12:29:16', NULL),
(343, 'driversPayouts.destroy', 'web', '2020-10-14 12:29:16', '2020-10-14 12:29:16', NULL),
(344, 'marketsPayouts.index', 'web', '2020-10-14 12:29:16', '2020-10-14 12:29:16', NULL),
(345, 'marketsPayouts.create', 'web', '2020-10-14 12:29:16', '2020-10-14 12:29:16', NULL),
(346, 'marketsPayouts.store', 'web', '2020-10-14 12:29:17', '2020-10-14 12:29:17', NULL),
(347, 'marketsPayouts.destroy', 'web', '2020-10-14 12:29:17', '2020-10-14 12:29:17', NULL),
(348, 'optionGroups.index', 'web', '2020-10-14 12:29:17', '2020-10-14 12:29:17', NULL),
(349, 'optionGroups.create', 'web', '2020-10-14 12:29:17', '2020-10-14 12:29:17', NULL),
(350, 'optionGroups.store', 'web', '2020-10-14 12:29:17', '2020-10-14 12:29:17', NULL),
(351, 'optionGroups.edit', 'web', '2020-10-14 12:29:17', '2020-10-14 12:29:17', NULL),
(352, 'optionGroups.update', 'web', '2020-10-14 12:29:17', '2020-10-14 12:29:17', NULL),
(353, 'optionGroups.destroy', 'web', '2020-10-14 12:29:18', '2020-10-14 12:29:18', NULL),
(354, 'options.index', 'web', '2020-10-14 12:29:18', '2020-10-14 12:29:18', NULL),
(355, 'options.create', 'web', '2020-10-14 12:29:18', '2020-10-14 12:29:18', NULL),
(356, 'options.store', 'web', '2020-10-14 12:29:18', '2020-10-14 12:29:18', NULL),
(357, 'options.edit', 'web', '2020-10-14 12:29:19', '2020-10-14 12:29:19', NULL),
(358, 'options.update', 'web', '2020-10-14 12:29:19', '2020-10-14 12:29:19', NULL),
(359, 'options.destroy', 'web', '2020-10-14 12:29:19', '2020-10-14 12:29:19', NULL),
(360, 'front.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(361, 'front.products', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(362, 'front.product.show', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(363, 'favorable', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(364, 'front.search', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(365, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(366, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(367, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(368, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(369, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(370, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(371, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(372, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(373, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(374, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(375, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(376, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(377, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(378, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(379, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(380, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(381, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(382, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(383, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(384, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(385, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(386, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(387, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(388, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(389, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(390, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(391, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(392, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(393, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(394, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(395, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(396, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(397, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(398, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(399, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(400, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(401, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(402, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(403, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(404, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(405, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(406, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(407, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(408, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(409, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(410, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(411, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(412, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(413, 'front.profile', 'web', '2020-10-25 06:03:58', '2020-10-25 06:03:58', NULL),
(414, 'front.cart', 'web', '2020-10-25 06:03:58', '2020-10-25 06:03:58', NULL),
(415, 'front.cart.checkout', 'web', '2020-10-25 06:03:58', '2020-10-25 06:03:58', NULL),
(416, 'front.cart.product.add', 'web', '2020-10-25 06:03:58', '2020-10-25 06:03:58', NULL),
(417, 'front.cart.product.remove', 'web', '2020-10-25 06:03:58', '2020-10-25 06:03:58', NULL),
(418, 'front.cart.product.counterUp', 'web', '2020-10-25 06:03:58', '2020-10-25 06:03:58', NULL),
(419, 'front.cart.product.counterDown', 'web', '2020-10-25 06:03:59', '2020-10-25 06:03:59', NULL),
(420, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(421, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(422, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(423, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(424, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(425, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(426, 'front.search.autocomplete', 'web', '2020-10-26 10:44:06', '2020-10-26 10:44:06', NULL),
(427, 'front.products.price.filter', 'web', '2020-10-26 10:44:06', '2020-10-26 10:44:06', NULL),
(428, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(429, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(430, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(431, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(432, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(433, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(434, 'api-bosta.index', 'web', '2020-10-28 19:05:40', '2020-10-28 19:05:40', NULL),
(435, 'api-bosta.show', 'web', '2020-10-28 19:05:41', '2020-10-28 19:05:41', NULL),
(436, 'api-bosta.destroy', 'web', '2020-10-28 19:05:41', '2020-10-28 19:05:41', NULL),
(437, 'front.subscribe', 'web', '2020-10-28 19:05:41', '2020-10-28 19:05:41', NULL),
(438, 'front.single_store', 'web', '2020-10-28 19:05:42', '2020-10-28 19:05:42', NULL),
(439, 'front.products.sidebar', 'web', '2020-10-28 19:05:42', '2020-10-28 19:05:42', NULL),
(440, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(441, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(442, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(443, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(444, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(445, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(446, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(447, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(448, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(449, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(450, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(451, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(452, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(453, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(454, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(455, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(456, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(457, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(458, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(459, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(460, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(461, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(462, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(463, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(464, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(465, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(466, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(467, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(468, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(469, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(470, 'front.store_locator', 'web', '2020-10-30 08:24:07', '2020-10-30 08:24:07', NULL),
(471, 'front.sidebar.price.filter', 'web', '2020-10-30 08:24:08', '2020-10-30 08:24:08', NULL),
(472, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(473, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(474, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(475, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(476, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(477, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(478, 'slides.index', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(479, 'slides.create', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(480, 'slides.store', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(481, 'slides.edit', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(482, 'slides.update', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL),
(483, 'slides.destroy', 'web', '2020-08-23 12:58:02', '2020-08-23 12:58:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `discount_price` double(8,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `capacity` double(9,2) DEFAULT '0.00',
  `package_items_count` double(9,2) DEFAULT '0.00',
  `unit` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `featured` tinyint(1) DEFAULT '0',
  `deliverable` tinyint(1) DEFAULT '1',
  `market_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ego_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_category` enum('women','men') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `capacity`, `package_items_count`, `unit`, `featured`, `deliverable`, `market_id`, `category_id`, `brand_id`, `created_at`, `updated_at`, `ego_code`, `supplier_code`, `gender_category`, `color`) VALUES
(1, 'American fried rice', 11.00, 0.00, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s<br></p>', 193.00, 0.00, '', 1, 1, 2, 1, NULL, '2019-08-30 10:21:43', '2019-09-03 20:58:30', NULL, NULL, NULL, NULL),
(2, 'Calas', 15.00, 0.00, 'Calas are dumplings composed primarily of cooked rice, yeast, sugar, eggs, and flour; the resulting batter is deep-fried. It is traditionally a breakfast dish, served with coffee or cafe au lait, and has a mention in most Creole cuisine cookbooks.', 634.00, 0.00, '', 1, 1, 1, 1, NULL, '2019-08-31 11:03:37', '2019-08-31 11:36:16', NULL, NULL, NULL, NULL),
(3, 'Pizza Margherita', 8.00, 0.00, 'Tomato sauce, Firm mozzarella cheese, grated. Fresh soft mozzarella cheese, separated into small clumps. Fontina cheese, grated. Parmesan cheese, grated.', 200.00, 0.00, '', 1, 1, 1, 1, NULL, '2019-10-17 21:06:51', '2019-10-17 21:06:51', NULL, NULL, NULL, NULL),
(4, 'Pizza Montanara', 6.20, 0.00, '<p>Tomato sauce, mozzarella, mushrooms, pepperoni, and Stracchino (soft cheese)<br></p>', 290.50, 0.00, '', 0, 1, 1, 1, NULL, '2019-10-18 08:09:53', '2019-10-18 08:12:15', NULL, NULL, NULL, NULL),
(5, 'Pizza Valtellina', 7.40, 0.00, 'Tomato sauce, mozzarella, bresaola, Parmesan flakes and rocket', 245.30, 0.00, '', 0, 1, 2, 1, NULL, '2019-10-18 08:15:19', '2019-10-18 08:15:19', NULL, NULL, NULL, NULL),
(6, 'Pizza al Pesto', 4.80, 0.00, '<p>Tomato, mozzarella, Genoese pesto, pine nuts, and olives<br></p>', 240.00, 0.00, NULL, 0, 1, 21, 20, NULL, '2019-10-18 08:16:17', '2020-10-26 10:53:42', NULL, NULL, NULL, NULL),
(7, 'Angel Hair', 10.99, 8.00, 'Angel hair is the thinnest type of pasta, made of long, very fine strands that cook quickly. Use delicate sauces with this narrow noodle, like a light tomato sauce or a broth, or simply cook it with butter and oil.', 320.00, 0.00, '', 1, 1, 3, 3, NULL, '2019-10-18 08:19:33', '2019-10-18 08:19:33', NULL, NULL, NULL, NULL),
(8, 'Acini di Pepe', 11.99, 9.99, 'Sometimes referred to as pastina, acini di pepe means “small parts of the pepper” in Italian, alluding to its miniscule size and rounded shape, which makes it versatile enough to be welcome in a wide range of dishes. Make it the mainstay of a cold salad or sprinkle it into a piping hot soup.', 260.00, 0.00, '', 1, 1, 4, 3, NULL, '2019-10-18 08:36:17', '2019-10-18 08:36:17', NULL, NULL, NULL, NULL),
(9, 'Pasta Pappardelle', 12.99, 10.99, 'A wide egg noodle with Tuscan origins, pappardelle is often served with hearty meat sauces, as in our decadent bolognese recipe.', 290.00, 0.00, '', 0, 1, 4, 3, NULL, '2019-10-18 08:47:46', '2019-10-18 08:47:46', NULL, NULL, NULL, NULL),
(10, 'Pasta Campanelle', 13.99, 11.99, 'Literally meaning “bellflowers,” campanelle sports a very unique shape that’s great at capturing thick, creamy, or meaty sauces. And they work wonders in cheesy bowls, too.', 190.00, 0.00, '', 1, 1, 3, 3, NULL, '2019-10-18 08:49:08', '2019-10-18 08:49:08', NULL, NULL, NULL, NULL),
(11, 'Chicken Noodle Soup', 7.90, 0.00, 'This creamy cheese soup is delicious on a cold winter day!', 180.00, 0.00, '', 1, 1, 1, 3, NULL, '2019-10-18 08:52:28', '2019-10-18 08:52:28', NULL, NULL, NULL, NULL),
(12, 'California Italian Wedding Soup', 8.60, 0.00, 'This is my variation of a standard recipe. I like fresh basil and a little lemon rind, so those are basically my only changes. This is a quick and easy soup with flavors that impress all.', 170.00, 0.00, '', 1, 1, 3, 3, NULL, '2019-10-18 08:54:32', '2019-10-18 08:54:32', NULL, NULL, NULL, NULL),
(13, 'Italian Sausage Soup', 9.99, 7.89, 'This soup embodies all the wonders of Italian cooking: Italian sausage, garlic, tomatoes and red wines. Serve with hot bread and salad for a delicious meal. Garnish with Parmesan cheese.', 150.00, 0.00, '', 1, 1, 2, 3, NULL, '2019-10-18 08:57:54', '2019-10-18 08:57:54', NULL, NULL, NULL, NULL),
(14, 'Big Smokey Burgers', 7.99, 0.00, '<p>I created this recipe while trying to recreate the best burger I had ever tasted at a market in the Great Smoky Mountains of North Carolina. My family and I think these burgers are better! They are packed with flavor!<br></p>', 150.00, 0.00, '', 1, 1, 2, 2, NULL, '2019-10-18 09:01:09', '2019-10-18 09:46:40', NULL, NULL, NULL, NULL),
(15, 'Juicy Lucy Burgers', 8.99, 0.00, '<p>A favorite of Minnesotans! The famous Juicy Lucy! Mmmm. So good. You MUST use American cheese on this to achieve the juiciness in the middle! I like sauteed mushrooms and onions on mine!<br></p>', 190.00, 0.00, '', 1, 1, 4, 2, NULL, '2019-10-18 09:49:36', '2019-10-18 09:49:36', NULL, NULL, NULL, NULL),
(16, 'Cedar Planked Salmon', 16.30, 12.90, '<p>This is a dish my brother prepared for me in Seattle. It is by far the best salmon I\'ve ever eaten. I like to serve it with Asian-inspired rice and roasted asparagus.<br></p>', 163.00, 0.00, '', 1, 1, 3, 1, NULL, '2019-10-18 09:51:51', '2019-10-18 09:51:51', NULL, NULL, NULL, NULL),
(161, 'Fish', 26.73, 0.00, 'Quisquam sint est perspiciatis dolores. Ut natus earum voluptas eum esse. Incidunt dignissimos molestiae voluptate eaque aliquam.', 245.43, 2.00, 'm', 0, 1, 3, 1, NULL, '2020-10-14 12:29:19', '2020-10-14 12:29:19', NULL, NULL, NULL, NULL),
(162, 'Salt', 31.33, 28.10, 'Cum accusantium eligendi voluptas quasi debitis. Ab saepe quis et culpa. Asperiores a qui nihil nostrum molestias provident. Excepturi veniam voluptas qui ut possimus neque.', 388.23, 6.00, 'ml', 0, 0, 4, 5, NULL, '2020-10-14 12:29:19', '2020-10-14 12:29:19', NULL, NULL, NULL, NULL),
(163, 'Cookie', 46.60, 0.00, 'Corporis enim omnis consequatur consequatur et aliquid ut. Sed quam molestiae et ipsam ut.', 37.87, 6.00, 'ml', 1, 1, 5, 1, NULL, '2020-10-14 12:29:19', '2020-10-14 12:29:19', NULL, NULL, NULL, NULL),
(164, 'Aspirin', 27.88, 0.00, 'Sit optio non cumque cupiditate fugit. Fugit et quia accusamus. Expedita nulla ex aliquid neque illum. Tempora quaerat id blanditiis sed. Atque sed mollitia quis illum qui omnis molestiae corporis.', 454.10, 6.00, 'Oz', 1, 1, 5, 4, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(165, 'Cookie', 37.63, 0.00, 'Dolorum enim omnis consectetur error omnis unde quos. Vel et dolorum doloremque excepturi itaque non mollitia. Facere et dolorum iusto quasi quia.', 133.77, 3.00, 'Oz', 0, 1, 1, 1, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(166, 'Aspirin', 49.98, 0.00, 'Dolores animi dolorum sit sed magni molestias. Aut tenetur sapiente eum similique excepturi doloremque quod.', 182.35, 3.00, 'ml', 1, 1, 4, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(167, 'Salt', 32.09, 0.00, 'Molestiae quidem delectus aliquam illo molestiae nam et. Commodi fugit quas suscipit perspiciatis repellat ut. Saepe et nam ullam similique sunt.', 478.19, 4.00, 'g', 1, 1, 5, 5, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(168, 'Tuna steak', 12.87, 0.00, 'Velit aperiam molestiae sunt impedit. Omnis reprehenderit vero consequuntur et mollitia dolorem. Minima est qui et voluptate voluptas qui animi. Nisi aliquid aut sed soluta dolores molestiae ab.', 151.36, 4.00, 'L', 0, 0, 6, 5, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(169, 'Cupcake', 21.87, 0.00, 'Ut sed veniam cupiditate quia. Omnis asperiores ea corrupti soluta nisi dignissimos ut. Quod assumenda cum occaecati illum dolores fuga est. Occaecati nemo porro delectus nesciunt animi saepe vel.', 333.25, 6.00, 'Kg', 0, 0, 1, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(170, 'Salad', 39.67, 0.00, 'Eum eum exercitationem placeat consequuntur. Aut rerum non expedita esse voluptatum. Aut ex explicabo sit exercitationem id nihil. Ut et et et rerum velit eum impedit.', 323.56, 5.00, 'L', 1, 0, 1, 3, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(171, 'Cookie', 15.59, 12.57, 'Amet voluptatem ex sint doloribus et. Sequi sed repellendus est et eius deserunt aliquid nisi. Tempore velit eum aut quae dolorum dolores asperiores. Ut provident assumenda atque eius ut.', 36.30, 4.00, 'm²', 0, 1, 3, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(172, 'Acarbose', 16.99, 14.49, 'Eius sit consequatur sunt voluptas. Neque vel rem vel molestias fugiat. Commodi provident vitae quaerat eligendi. Nostrum eum ratione suscipit enim nihil ea.', 441.63, 2.00, 'Kg', 0, 0, 3, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(173, 'Salad', 23.52, 21.55, 'Aperiam sint ut unde autem. Minima et mollitia temporibus omnis rerum dolore alias incidunt. Expedita ut ratione est sit architecto magni. Vel a voluptatibus excepturi consectetur.', 353.50, 1.00, 'm²', 0, 1, 6, 4, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(174, 'Milk', 21.86, 0.00, 'Sit rem voluptas et. Officiis aut consequuntur blanditiis nam. Quos nam doloremque voluptates eligendi magni doloremque.', 375.02, 6.00, 'm', 1, 0, 6, 1, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(175, 'Cookie', 27.67, 24.94, 'Rerum sit numquam suscipit vel aperiam. Blanditiis beatae officia nisi consectetur dicta aut ut. In non assumenda impedit illo iure consequatur.', 272.60, 4.00, 'm', 1, 0, 4, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(176, 'Cookie', 11.05, 0.00, 'Facere ea sint doloribus qui. Cumque dolores repudiandae maiores quia molestias eaque. Minima similique et qui. Dolorem quia incidunt excepturi animi voluptas deserunt voluptatem.', 85.23, 5.00, 'L', 1, 0, 7, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(177, 'Pasta', 29.08, 0.00, 'Quo odio doloribus aspernatur et tempora quas quos. Impedit impedit sed suscipit. Tenetur et ut reiciendis sequi dolore ut sed.', 281.86, 2.00, 'm', 1, 1, 5, 4, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(178, 'Soup', 23.81, 18.06, 'Qui at vel libero quidem facilis. A expedita ipsam vel sit occaecati voluptatem.', 0.22, 4.00, 'ml', 1, 1, 1, 3, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(179, 'Sandwich', 27.78, 22.68, 'Enim dignissimos aut incidunt velit quam nihil vel reiciendis. Dolor non quia quae. Modi occaecati qui aut occaecati. Deserunt vel aspernatur perferendis quasi veritatis.', 183.32, 5.00, 'm²', 1, 0, 3, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(180, 'Pasta', 35.25, 29.39, 'Provident quasi non inventore libero molestiae ut quidem. In blanditiis consequuntur accusamus quis. Reprehenderit vel dolore ipsum.', 417.39, 5.00, 'Oz', 1, 1, 4, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(181, 'Rice', 48.04, 44.20, 'Unde ut neque et corrupti praesentium. Eveniet temporibus modi et qui. Sunt ducimus error soluta nulla ut dicta dolore.', 179.47, 2.00, 'm²', 1, 1, 2, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(182, 'Onion', 11.44, 8.88, 'Natus neque ratione non. Reprehenderit quia nesciunt vel rerum consequatur aut perferendis.', 21.06, 5.00, 'm²', 0, 1, 2, 3, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(183, 'Cookie', 17.15, 15.22, 'Sed ad iure repellat sed consequuntur tempore magni. Dicta magni quo rerum id aliquam rem. Tempore voluptatum blanditiis cupiditate ducimus. Numquam autem fugiat et repellat perspiciatis dolor.', 432.35, 6.00, 'g', 1, 1, 9, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20', NULL, NULL, NULL, NULL),
(184, 'Tuna steak', 13.29, 5.63, 'Omnis omnis aut iste vero nobis. Similique consequuntur eligendi voluptatem atque. Similique aut vitae veniam quisquam velit.', 447.76, 4.00, 'Oz', 0, 1, 4, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(185, 'Milk', 36.83, 0.00, 'Est cumque quaerat vitae nam placeat temporibus. Sed molestiae nobis qui ea a veniam nemo. Saepe sapiente omnis consequatur cumque blanditiis. Aperiam quis molestias est magni.', 492.49, 4.00, 'm', 0, 1, 6, 5, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(186, 'Rice', 33.90, 28.52, 'Quod laborum nulla numquam aut deserunt dolores. Molestiae sit quia quisquam facere. Autem est excepturi saepe possimus temporibus accusantium. Exercitationem sint ea nisi minima.', 299.70, 3.00, 'm', 0, 0, 6, 6, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(187, 'Pasta', 32.78, 0.00, 'Vero sunt optio saepe laudantium rerum sit. Autem magnam ducimus repellendus rerum rerum. Quidem architecto sit ea omnis ipsa. Et labore id nihil vel maxime a voluptates ut.', 453.56, 5.00, 'Oz', 1, 1, 8, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(188, 'Tuna steak', 19.53, 0.00, 'Perspiciatis in nisi reiciendis. Sed aliquam impedit sed rerum. Ea nostrum molestiae aut ipsum qui. Recusandae reprehenderit sed in qui non. Harum sed tempore iusto tempore ea recusandae veritatis.', 51.84, 3.00, 'ml', 0, 0, 21, 13, NULL, '2020-10-14 12:29:21', '2020-10-18 07:33:55', NULL, NULL, NULL, NULL),
(189, 'Acarbose', 15.58, 11.80, 'Ea iste quod qui excepturi. Enim qui sit itaque recusandae magni. Aut inventore et nam quisquam similique.', 316.15, 3.00, 'm²', 0, 0, 3, 6, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(190, 'Acarbose', 48.70, 46.28, 'Eos fuga repellat ducimus accusamus deleniti voluptatem quia. Aut minus rem corrupti quia qui eaque. Ipsum animi ut nihil quis nihil corrupti.', 438.49, 3.00, 'g', 0, 1, 6, 4, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(191, 'Pasta', 36.57, 27.99, 'Et vel vero accusamus et deleniti non et aliquid. Quod est consectetur debitis numquam provident voluptates esse. Et similique soluta aspernatur consectetur dolorem.', 307.88, 1.00, 'L', 1, 0, 8, 1, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(192, 'Steak', 22.86, 0.00, 'Numquam natus rerum nemo sapiente qui iure. Possimus pariatur dolores voluptas accusantium. Ipsum iste quos consequatur reiciendis a quia. Temporibus omnis est et suscipit perspiciatis quam.', 188.37, 6.00, 'ml', 0, 0, 4, 3, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(193, 'Steak', 30.64, 0.00, 'Temporibus non similique hic sapiente. Quasi veniam quisquam facere voluptas a aut. Facilis omnis ratione neque omnis.', 199.34, 2.00, 'ml', 0, 0, 2, 4, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(194, 'Tuna steak', 15.33, 14.06, 'Assumenda saepe suscipit quia itaque qui iusto. Ut tempore ipsum hic voluptatum. Ad nihil voluptatem quia adipisci natus ipsa. Laboriosam voluptas saepe eveniet architecto ut consequatur ab.', 453.84, 4.00, 'Oz', 0, 1, 4, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(195, 'Acarbose', 29.81, 0.00, 'Quod aliquam ipsam quaerat qui harum fugit. Sapiente blanditiis enim ea iste. Ratione et asperiores qui voluptate voluptas. Blanditiis quis sed ea et ut veritatis quae.', 254.43, 6.00, 'g', 0, 0, 9, 5, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(196, 'Rice', 15.85, 0.00, 'Possimus autem est velit facilis. Distinctio sequi nam et. Inventore debitis tenetur dolores saepe omnis fugit fuga sequi.', 215.46, 4.00, 'm²', 0, 0, 1, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(197, 'Tuna steak', 20.74, 10.90, 'Ut odit quia quia facilis voluptatem. Porro dignissimos qui natus ipsa qui sit itaque. Incidunt laudantium tenetur impedit aperiam amet doloremque sequi magnam.', 261.54, 6.00, 'm', 0, 1, 1, 6, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(198, 'Fish', 33.23, 31.23, 'Consequatur et veritatis aliquam aut ullam odio. Animi vero soluta aspernatur. Voluptatem modi distinctio fugiat veritatis possimus. Accusamus consequatur perferendis eos totam.', 71.09, 4.00, 'L', 0, 0, 7, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(199, 'Cheese', 25.67, 24.27, 'Impedit temporibus at laudantium ab in. Et omnis enim autem enim doloremque. Facilis dolorem et assumenda culpa.', 448.26, 2.00, 'm', 0, 0, 7, 3, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(200, 'Steak', 39.86, 35.67, 'Eius est unde cum maxime quisquam. Vel laudantium nulla omnis dolores exercitationem et et. Saepe iusto impedit in.', 184.51, 5.00, 'm', 0, 1, 9, 4, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21', NULL, NULL, NULL, NULL),
(201, 'trjhg', 999999.99, 7456.00, '<p>hfjhgjgyj</p>', NULL, NULL, NULL, 0, 0, 21, 13, NULL, '2020-10-25 06:52:28', '2020-10-25 06:52:28', NULL, NULL, NULL, NULL),
(202, 'trjhg', 999999.99, 7456.00, '<p>hfjhgjgyj</p>', NULL, NULL, NULL, 0, 0, 21, 13, NULL, '2020-10-25 09:22:28', '2020-10-25 09:22:28', NULL, NULL, NULL, NULL),
(203, '6756', 58768.00, 999999.99, '<p>gfhj</p>', NULL, NULL, NULL, 0, 0, 21, 13, NULL, '2020-10-25 09:29:43', '2020-10-25 09:29:43', NULL, NULL, NULL, NULL),
(204, 'gfjdjf', 65757.00, 67573.00, '<p>yjhgfcjc</p>', NULL, NULL, NULL, 0, 0, 21, 13, NULL, '2020-10-25 09:37:47', '2020-10-25 09:37:47', NULL, NULL, NULL, NULL),
(406, 'Colored shoulder bag', 6020.00, 4820.00, 'Rounded silhouette for this mini bag. The logo that embellishes the flap is inevitable and, with its gold reflections, takes up the supplied shoulder strap. Ideal to combine with outfits consisting of top and pantalo in tone', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410037', 'BS26A01E2', 'women', 'X35 (Green)'),
(407, 'Bag with rope shoulder strap', 6230.00, 4990.00, 'Crescent silhouette, rope handle and contrasting finishes distinguish this bag. An accessory with a marine flavor that will accompany you throughout the summer.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410039', 'BS42A01E2', 'women', '360 ( White)'),
(408, 'Elisabetta Franchi  belt bag', 6020.00, 4820.00, 'Among the many commitments, this belt bag is ideal for its comfort and chic. To be worn over an outerwear, it will make it more chic than ever. Nevermore without!', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410034', 'BM02A01E2', 'women', 'H85 (Red)'),
(409, 'Shirt with off the shoulder neckline', 5770.00, 4620.00, 'The street look of denim is softened by the super feminine off-the-shoulder neckline that Elisabetta Franchi wanted for this shirt. Tight fit with a practical closure on the front, it is suitable for a casual-chic look for your afternoons on the streets of the city', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410016', 'CJ07S01E2', 'women', '104 (Denim)'),
(410, 'Chain print dress', 14490.00, 11600.00, 'Feminine and fresh, this daily proposal smells of summer. Lightweight texture and seafaring print, wallet closure with sash, short cut and comfortable fit. Perfect with all the sandals in the collection', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410003', 'AB18601E2', 'women', 'YG4 ( Green )'),
(411, 'Short divisible dress', 10460.00, 8370.00, 'Flattering silhouette for this divisible mini dress. Choose how to wear it: combine it with ankle boots from the collection and a roomy hang bag, for a daily, feminine and slightly nautical look.', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410006', 'AB19801E2', 'women', 'YG2'),
(412, 'Dress with fringes', 13370.00, 10700.00, 'A dress that will make your head spin: two cascades of fringes cover the skirt giving a jaunty twist to the entire garment. Small gold fragments illuminate the silhouette, while the hidden buttons allow you to separate the skirt and top.', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410008', 'AB23601E2', 'women', '124 ( Green )'),
(413, 'One-shoulder micro star print dress', 6890.00, 5520.00, 'A shower of micro stars has fallen on this one-shoulder dress. Tight-fitting line that highlights curves, uncovers one shoulder and covers the other, has a sensual slit on the skirt that increases its femininity. Ideal for romantic evenings, where you will be the star', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410010', 'AB92501E2', 'women', '110 ( Black )'),
(414, 'One shoulder dress with bow', 7810.00, 6250.00, 'Elegance and bon ton for this one-shoulder dress. Elisabetta Franchi inserts nautical motifs, such as the anchor-shaped brooch on the shoulder and the buttons on the slit that recall the portholes of ships. Slip it on with sandals or pumps and set sail for the next event.', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410027', 'AB22301E2', 'women', '360 ( White)'),
(415, 'Sleeveless longuette dress with bow Menta', 11170.00, 8940.00, 'A proposal for the day that you will like to wear with a pair of high-heeled shos even for less formal ceremonies. Elisabetta Franchi dress with a longuette cut animated by an abundance of pleats, well bandaged at the waist and delicious in the sleeveless top, to be enriched by knotting at will the tone on tone sash that accompanies it.Double fabric for a single great effect, the one of being wonderful with simplicity and surprising colours. Deep keyhole neckline on the back. Concealed zip closure in the back Longuette cut Waistef fit', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410040', 'AB17301E2', 'women', '124 ( Green )'),
(416, 'Robe manteau dress', 9640.00, 7720.00, 'This time, Elisabetta Franchi adds a nautical-themed detail to her classic double-breasted dress: on the side an elegant weave enlivens the short silhouette, reminiscent of sailors\' ropes. A simple, daily and essential elegance', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:31', '2020-10-28 11:23:49', 'ABO1410041', 'AB24301E2', 'women', '124 ( Green )'),
(417, 'Sleeveless sheath dress', 9800.00, 7840.00, 'Rocking details for this sheath dress proposed in 5 different summer shades. The sweetheart neckline softens the shapes, while the slit on the skirt adds an extra touch of sensuality. Perfect with high sandals and micro bags in hand.', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO1410043', 'AB18101E2', 'women', 'H85 (Red)'),
(418, 'Embroidered jumpsuit', 19640.00, 15720.00, 'A mini jumpsuit with sparkling embroideries and a bow that hides the V-neckline for a game of blind eyes. The fringes give movement to the silhouette and the jumpsuit becomes perfect for an exclusive party or a dance evening with friends', 0.00, 0.00, '', 0, 1, 0, 131, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO1410057', 'SR06J03E2', 'women', 'J99 (Blue)'),
(419, 'One-shoulder lurex jumpsuit', 9080.00, 7270.00, 'Make the looks yours with this sartorial masterpiece. Made precious by the lurex fabric, the Elisabetta Franchi jumpsuit is sensual with its one-shoulder cut that reveals a sweetheart neckline. A tight-fitting jumpsuit that, accessorized with heels and a clutch, will brighten up your glamorous evenings.', 0.00, 0.00, '', 0, 1, 0, 131, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO1410128', 'TU23802E2', 'women', '153 (Rose)'),
(420, 'Camicia-body con arricciatura', 5870.00, 4700.00, 'Sweet curls and sinuous and graceful lines for a body with a unique shirt effect to combine with trousers, jeans or a skirt. Versatile for any type of outfit or occasion, this is Elisabetta Franchi\'s proposal for a quick last-minute \"save outfit\". Still not sure what to wear with your favorite pair of pants? This shirt might be the right choice.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO1410053', 'CB11403E2', 'women', '110 (Black)'),
(421, 'Shorts with sequins', 12300.00, 9840.00, 'Rain sequins for the new shorts by Elisabetta Franchi. The high-waisted tailored cut will be the absolute protagonists of your summer looks, worn with T-shirts and statement jewels.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO1410021', 'SH04201E2', 'women', '193  ( White ) '),
(422, 'Fabric shorts with charms and fringes', 9080.00, 7270.00, 'Embroidery and charms make these high-waisted shorts a must have for the season. With a shirt, a body or a t-shirt from the collection they become the focal point of the look. With an open toe or flat sandal, they will give a bon ton touch to your summer wardrobe that does not give up femininity', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO1410056', 'SH04703E2', 'women', '193 ( Beige)'),
(423, 'Fabric shorts with charms and fringes', 9080.00, 7270.00, 'Embroidery and charms make these high-waisted shorts a must have for the season. With a shirt, a body or a t-shirt from the collection they become the focal point of the look. With an open toe or flat sandal, they will give a bon ton touch to your summer wardrobe that does not give up femininity', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:32', '2020-10-26 09:48:21', 'ABO1410056', 'SH04703E2', 'women', '193 ( Beige)'),
(424, 'BY THE WAY MINI', 31260.00, NULL, 'Mini trunk with zip closure, double handle and tag. Interior with pocket. Removable shoulder strap with cufflinks. Made of black leather. Details with embossed and hand painted FF motif. Metal accessories with palladium finish.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340002', '8BL145-A6CO', 'women', 'F147M (Black)'),
(425, 'KAN U', 49500.00, NULL, 'Bag with flap and iconic FF snap closure. Gusseted interior with pocket and divided into two compartments by a rigid partition. It can be carried cross-body or by hand thanks to the removable shoulder strap. Made of black calfskin. The flap is decorated with embossed FF pattern printed in contrast. Metallic accessories with golden finish.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340007', '8BT315-A5TY', 'women', 'F13WB (Black)'),
(426, 'BAGUETTE', 49500.00, NULL, 'Iconic Baguette bag in medium version, with flap and FF closure with magnetic button. Lined interior with zip pocket. It can be carried by hand or cross body thanks to the handle and shoulder strap, both removable. Made of dark green canvas. Embellished FF motif embroidered in tone-on-tone thread. Finished with contrasting brown leather profiles. Shoulder strap in ribbon with Pequin motif. Metallic accessories with golden finish.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340046', '8BR600-A9P6', 'women', 'F1891 (Cuoio)'),
(427, 'PEEKABOO X-TOTE', 60000.00, NULL, 'Peekaboo X-Tote medium size, with internal pocket and iconic twist lock. Equipped with two short handles to be carried by hand and two long handles to be worn on the shoulder. Made of dark green canvas. Embossed FF motif embroidered in tone-on-tone thread. Finished with brown contrasting leather profiles. Metallic accessories with golden finish.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340045', '8BH374-A9P6', 'women', 'F1891 (Cuoio)'),
(428, 'Sandals', 17220.00, NULL, 'Promenade sandal, with quilted high end finished with metal micro FF Baguette. PU ankle strap. Made of brown fabric, with diagonal jacquard FF motif. Chunky heel in tortoiseshell PU with embossed effect.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340051', '8X7067-AAXH', 'women', 'F0VAuTobco'),
(429, 'Fendi SLINGBACK', 19740.00, NULL, 'Colibrì pointy slingbacks, with elastic straps that wrap around the foot. The sole is completed with a rubber island. Made of black technical mesh with FF motif. Tone-on-tone rubberized leather profiles. The padded cushion and the trekking hook add a sporty note. Black lacquered heel.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340014', '8J6711-A8UG', 'women', 'F0MQ0 (Black)'),
(430, 'Fendi BOOTS', 22260.00, NULL, 'Colibrì pointed ankle boot, with lateral elastic insert. Made of black mesh. Finished with a double layer of mesh with FF motif. Black lacquered heel.', 0.00, 0.00, '', 0, 1, 0, 127, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340017', '8T7009-A8U9', 'women', 'F0VAV (Black)'),
(431, 'Fendi Sneakers', 17220.00, NULL, 'FFluid lace-up running sneaker with multilayer wavy sole. Made of black and brown suede. Finished with technical stretch knit details. Tongue with FF motif. Personalized with the Fendi lettering and the coordinates of the Palazzo della Civiltà in Rome. Closure with trekking laces.', 0.00, 0.00, '', 0, 1, 0, 128, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340012', '8E7043-A8P5', 'women', 'F18S5 ( Black)'),
(432, 'DÉCOLLETÉ', 17220.00, NULL, 'Colibrì décolleté with a pointed silhouette. The sole is completed with a rubber island. Made of pink technical mesh with FF motif. Nude rubberized leather profiles. Gold-colored galvanized heel.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO3340013', '8I6804-AK11', 'women', 'F19MN (Rose)'),
(433, 'Off White Mini Bag', 14400.00, NULL, 'DIAGONAL BABY FLAP Bag by Off White with contrasting Diagonal print on the front and metal Binder clip charm', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO4290028', 'OWNA087R20423069', 'women', '1001BlkW (Black)'),
(434, 'Off-White Gradient Effect Baby Flap Bag', 17400.00, NULL, 'These days the tinier the better. Constructed from supple leather, this gradient-effect baby flap bag from Off-White is for essentials only. No worries about the phone you can carry it on your hand as always. Featuring a detachable and adjustable shoulder strap, a top handle, a foldover top, a magnetic fastening, a main internal compartment, multiple interior card slots and binder clip detail.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO4290030', 'OWNA087R20G99068', 'women', '3100L (Blue)'),
(435, 'Off White Mini Box Bag', 18000.00, NULL, 'Off-White Mini Box Bag in brushed leather with double handle and an adjustable and removable industrial shoulder strap with jacquard logo. Front logo print, rear \"Sculpture\" print with logo, side magnetic buttons. Iconic binder clip with engraved logo applied on the front edge. Fabric lining, painted metalware.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO4290053', 'OWNA059S20LEA001', 'women', '2501 (Red)'),
(436, 'Off White  Leather Top Handle Bag In Black', 20400.00, NULL, 'made in italy off-white c/o virgil abloh - cut here jitney 1. 4 bag in leather with cut-out pattern print. rotating off-white arrows buckle closure. color matched top handle. double compartment at interior. interior flat pocket in leather. flat pocket at back. detachable leather shoulder strap. contrast leather lining. ', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO4290055', 'OWNA092S20LEA005', 'women', '1001 (Black)'),
(437, 'Off-White Jitney 0.7 Shoulder Bag', 18960.00, NULL, 'Go hands-free with Off-White and this gold-tone leather belt bag. An Arrows plaque on the front will point you in the right direction. On the path to greatness. Featuring a metallic sheen, a foldover top with magnetic closure, a front logo plaque, an internal slip pocket and an embossed internal logo stamp.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO4290056', 'OWNA093S20LEA004', 'women', '7600 (Gold)'),
(438, 'Off-white Elite Round Bag ', 16500.00, NULL, 'made in italy off-white c/o virgil abloh - elite round cross-body bag in smooth leather. front flat pocket. metal zipper closure and ring-shaped zip- puller with logo. shoulder strap in fabric in the iconic industrial style. metal paper clip with logo included. flat interior pocket. fabric lining. metal logo in relief at back.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:32', '2020-10-28 11:23:49', 'ABO4290057', 'OWNA110S20LEA002', 'women', '3200 (Fuch)'),
(439, 'NEW 2.8 JITNEY BAG', 22200.00, NULL, '2.8 Jitney bag in black with metallic black arrows at front. Leather handle knots. Foldover flap with press-release fastening. Removable shoulder strap. Internal pocket and compartment. Back pocket.', 0.00, 0.00, '', 0, 1, 0, 124, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290060', 'OWNA115S20LEA001', 'women', '1000 (Black)'),
(440, 'Off White Belt', 3660.00, NULL, 'Dimensions: Width: 2cm, Length: 200cm 60% Polyamide, 40% Polyester   Colour: Pink', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290035', 'OWRB009R20223075', 'women', '2727  (Pink)'),
(441, 'Off White industrial logo belt', 4800.00, NULL, 'Ready to buckle yourself in for a stylish ride? Finish off your outfit with a bold yellow and black industrial logo belt from Off-White that has a striking embroidered design that tightens up the look to your preference. Featuring an embroidered design and a buckle fastening.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290036', 'OWRB027R20223076', 'women', '6010 (Yellow)'),
(442, 'Wrap Dresses Short Stripes Street Style Long Sleeves Cotton', 16500.00, NULL, 'Wrap Dresses Shirt Dresses from Off-White, Wrap Dresses, Shirt Dresses, Short, Logo, Stripes, Street Style, Asymmetry, Street Style, Long Sleeves, Elegant Style, 2020 SS', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290011', 'OWDB168R20H38122', 'women', '0110WhB'),
(443, 'Off White denim dress with belt', 17700.00, NULL, 'Off White shape dress in gradient effect denim with paint splashes at hem. Front closure with logo buttons. Long sleeves with contrast embroidery and buttoned cuffs. Flats pockets at chest with button and flap.Color matched waist belt.regular fit. ', 0.00, 0.00, '', 0, 1, 0, 125, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290040', 'OWYM002R20773098', 'women', '7171Bleach'),
(444, 'Heeled sandals women Off White', 23880.00, 16720.00, 'Heeled Sandals Black Women Off White ', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290022', 'OWIA198R20H16068', 'women', '3900Petrol'),
(445, 'Off White Ziptie Sandal', 14160.00, 9920.00, 'Black Ziptie Sandal By Off White', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290051', 'OWIA229S20LEA001', 'women', '1000Blk'),
(446, 'Powder blue acetate blend Baseball shirt', 14400.00, NULL, 'Shirt realized in acetate blend characterized by logoed embroidery on the entire surface.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290018', 'OWGA069R20C86068', 'women', '3100L.Blue'),
(447, 'Popeline Spiral Draping Shirt', 13800.00, NULL, 'Off-White Asymmetric Shirt', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290048', 'OWGA074S20FAB001', 'women', '0110WhB'),
(448, 'Logo-appliqued Tie-dyed Windbreaker Jacket In Rosa', 24300.00, NULL, 'When the weather is less than favourable outside, Off-White\'s windbreaker has got you covered. It\'s made from tie-dyed shell that proves the 90s-inspired trend is here to stay, not to mention keep you highly visible. Notice the brand\'s updated arrow logo at the neck and cuffs. Featuring a funnel neck, a snap fastening and logo appliques.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290013', 'OWEA156R20D53088', 'women', '2800Fuch.'),
(449, 'Off White mesh pocket-detailed vest', 10800.00, NULL, 'Sometimes it takes something a little bit extra to complete your outfit. This black mesh pocket-detailed vest from Off-White is that little something. Layer to your heart\'s content. Featuring a sleeveless design, a v-neck, mesh panels, front zipped pockets and side tie fastenings.', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290046', 'OWEA209S20FAB001', 'women', '1000Blk'),
(450, 'Off-white Baseball Cap ', 4380.00, NULL, 'made in italy off-white c/o virgil abloh - baseball cap in cotton. adjustable back with snap button. contrast off-white embroidery logo at front', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290023', 'OWLB008R20624087', 'women', '2810Fuch.'),
(451, 'Off White Cap', 4680.00, NULL, '53% Acetate, 47% Viscose', 0.00, 0.00, '', 0, 1, 0, 0, NULL, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO4290024', 'OWLB008R20C86068', 'women', '1000Blk'),
(452, 'Marble Look Trousers', 5040.00, 3530.00, '5 Pocket Marble Look Jeans', 0.00, 0.00, '', 0, 1, 0, 21, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780230', '1Q1030-Y6A8', 'women', 'ZZ1'),
(453, 'BABY GO-ROUND BAG STRASS FRINGES IN LEATHER', 7080.00, 4960.00, 'Baby Go-Round Bag in vintage-effect leather with appliquéd rhinestone fringe. The strap closure with micro studs is finished with the iconic metal buckle with Love Birds. The interior is lined in microfibre and has a leather wall pocket. The adjustable shoulder strap in leather and metal chain is 105 cm long so it can be carried both over the shoulder and as a fanny pack. Check the authenticity of your Love Bag using the special NFC chip or the Certilogo code printed on the heart-shaped tag.', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780204', '1P21LK-Y5GB', 'women', '109'),
(454, 'LOVE BAG SIMPLY IN TUMBLED LEATHER', 7260.00, 5090.00, 'Love Bag in tumbled leather. The leather strap closure with small metal stud decorations is finished with the iconic Love Birds metal buckle. The interior is lined in microfibre and has a zipped partition with custom pull featuring a bird-shaped stud and a leather wall pocket. The 110 cm shoulder strap combines the new PINKO personalised metal chain with the practical leather strap. Check the authenticity of your Love Bag using the special NFC chip or the Certilogo code printed on the heart-shaped tag.', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780206', '1P21LY-Y65Z', 'women', 'A76'),
(455, 'LOVE BAG TWIST IN LEATHER', 7920.00, 5550.00, 'Love Bag in vintage-effect leather with leather-look fabric threading detail around the edges. The closure is finished with the iconic metal buckle with black-enamelled Love Birds. The interior is lined in microfibre and has a leather wall pocket. The 110 cm shoulder strap combines the classic metal chain with the practical leather strap. Check the authenticity of your Love Bag using the special NFC chip or the Certilogo code printed on the heart-shaped tag.', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780210', '1P21MF-Y5GB', 'women', 'L11'),
(456, 'MINI LOVE BAG TWIST IN LEATHER', 7260.00, 5090.00, 'Mini Love Bag in vintage-effect leather with leather-look fabric threading detail around the edges. The closure is finished with the iconic metal buckle with black-enamelled Love Birds. The interior is lined in microfibre and has a leather wall pocket. The 110 cm shoulder strap combines the classic metal chain with the practical leather strap. Check the authenticity of your Love Bag using the special NFC chip or the Certilogo code printed on the heart-shaped tag.', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780211', '1P21MG-Y5GB', 'women', 'D90'),
(457, 'Roller Bag Mix Studs in leather', 9720.00, 6810.00, 'Roller Bag in vintage-effect leather with a mixture of metal studs and appliquéd micro chains. Embossed Love Birds logo on the top part, finished with a single leather handle for carrying it by hand. Metal zip fastening with Love Birds custom leather pull. The interior is lined in microfibre. The removable strap combines the new PINKO personalised metal chain with the practical leather strap. Check the authenticity of your Love Bag using the special NFC chip or the Certilogo code printed on the heart-shaped tag.', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780223', '1P21QB-Y68K', 'women', 'Z99'),
(458, 'Love quilted shoulder bag', 9720.00, 6810.00, 'White leather Love quilted shoulder bag from Pinko featuring silver-tone hardware, embroidered details, a foldover top with a signature Love Birds buckle, a silver-tone chain shoulder strap, multiple interior compartments, internal zipped pockets and a back slip pocket.', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780278', '1P21NR-Y66P', 'women', 'I09 '),
(459, 'Love quilted shoulder bag', 9720.00, 6810.00, 'White leather Love quilted shoulder bag from Pinko featuring silver-tone hardware, embroidered details, a foldover top with a signature Love Birds buckle, a silver-tone chain shoulder strap, multiple interior compartments, internal zipped pockets and a back slip pocket.', 0.00, 0.00, '', 0, 1, 0, 0, 23, '2020-10-26 09:32:33', '2020-10-26 09:48:22', 'ABO0780278', '1P21NR-Y66P', 'women', 'I09 '),
(460, 'MINI LOVE BAG MIX IN NAPPA LEATHER', 7260.00, NULL, 'Mini Love Bag in quilted nappa leather with chevron motif. The leather strap closure is finished with the iconic metal buckle with Love Birds. The interior is lined in poly cotton and has a zipped partition with custom pull featuring a bird-shaped stud and a wall pocket in leather. The 110 cm shoulder strap combines the classic metal chain with the practical nappa leather strap. Check the authenticity of your Love Bag using the special NFC chip or the Certilogo code printed on the heart-shaped tag', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780280', '1P21PD-Y677', 'women', 'R24'),
(461, 'LAMINATED MINI LOVE BAG SOFT MIX SHINY', 7800.00, 5460.00, 'Mini Love Bag Soft in laminated vintage-effect leather with mixed quilting. The closure is finished with the iconic metal buckle with Love Birds, updated by the rounded ring embellished by full crystal rhinestones. The interior is lined in poly cotton and has three bellows pockets, one of which is zipped and has a leather zip pull personalised with bird-shaped stud. The 110 cm shoulder strap combines the classic metal chain with the practical leather strap. Check the authenticity of your Love Bag using the special NFC chip or the Certilogo code printed on the heart-shaped tag.', 0.00, 0.00, '', 0, 1, 0, 124, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780287', '1P21R1-Y66H', 'women', 'ZZF'),
(462, 'SEQUINNED DRESS WITH FRINGE', 12600.00, 8820.00, 'Two-tone short sleeveless dress in full sequins with fringe detail on the top and at the hem. The slightly raised collar is embellished by embroidered multicolour rhinestones forming a floral-inspired decoration. Lined. Invisible zip fastening on the centre back', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780006', '1G14L4-Y637', 'women', 'AY1'),
(463, 'Shirt- style jacket in full sequins', 8880.00, 6220.00, 'Jacket-shirt Pinko with sequins', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780007', '1G14L5-Y637', 'women', 'I17'),
(464, 'MAXI DRESS WITH FLOUNCES', 9420.00, 6600.00, 'Maxi wraparound dress in viscose marocaine with cross-over V neckline and long striped sleeves with flounced cuffs. The long skirt is constructed with maxi flounces alternating the plain colour and striped fabric. Bodice and skirt lined, semitransparent sleeves. Fastening with side lace at the waist.', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780027', '1G14RJ-Y639', 'women', 'R51'),
(465, 'Maxi Polka Dot Dress With Flounces', 9000.00, 6300.00, 'Dresses • Wraparound maxi dress • Crossover V-neck • Long sleeves with ruffle cuff • Maxi flounces alternating with lace inserts • Fastening at the waist with a strap at the side • All-over polka dot print ', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780019', '1G14QW-Y5YC', 'women', 'ZZ2'),
(466, 'STRIPED LONG DRESS', 7260.00, 5090.00, 'Long dress in cotton muslin with black and white stripes and V neckline completed with a ribbon on front. Slightly full long sleeves and elasticated waist. Long skirt with a supple volume', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:33', '2020-10-28 11:23:49', 'ABO0780067', '1G14Z4-7930', 'women', 'ZZ2'),
(467, 'Pinko multi pattern dress', 7080.00, 4960.00, 'Long dress in printed satin, sleeveless with top to tie on the back. 100% viscose.', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:49', 'ABO0780114', '1G14U2-7939', 'women', 'NLC'),
(468, 'LONG SHIRT DRESS WITH PATCHWORK PRINT', 7560.00, 5300.00, 'Long blouse dress in viscose habotai with a patchwork print of floral patterns and colorful stripes in the 70s style. The combination and placement of the different printed inserts vary on each piece, so each dress is unique. Shirt collar and long sleeves with cuffs. Fluid fit. Button fastening on the front and contrasting button placket', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:49', 'ABO0780115', '1G14U5-7939', 'women', 'NLC'),
(469, 'JAPAN PRINT DRESS', 6420.00, 4500.00, 'Short cotton muslin dress with Japanese-inspired two-tone print, with V neckline and contrasting trim. Short sleeves with full volume and skirt constructed with flounces', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780143', '1B14EM-8035', 'women', 'ZBZ'),
(470, 'DRESS WITH BROOCH', 6660.00, 4670.00, 'Sleeveless short dress in poly crepe, with asymmetrical neckline and shoulder straps both on the front and back and embellished by a jewel brooch with rhinestone fringe. Wraparound-effect skirt with panel that crosses on front and creates a draped motif.', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780181', '1B14LL-4575', 'women', 'C32'),
(471, 'FULL RHINESTONE MINI-DRESS', 14820.00, 10380.00, 'Sleeveless mini-dress in jersey embroidered all over with rhinestones. Crossover V neckline on the front, elasticated waist and figure hugging skirt with draped wraparound effect on the front. ', 0.00, 0.00, '', 0, 1, 0, 125, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780165', '1B14H0-Y67T', 'women', 'ZI4'),
(472, 'LILY PRINT TROUSERS', 6240.00, 4370.00, 'These flowing trousers are made of lily printed viscose crepe de chine. The high waist comes with a belt loop and a wide waistband. The trouser legs are slightly loose, and there are pockets on the side. Hidden side zip closure', 0.00, 0.00, '', 0, 1, 0, 126, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780002', '1G14KC-7927', 'women', 'NH6'),
(473, 'TROUSERS IN ENVERS SATIN', 5040.00, 3530.00, 'Trousers in envers satin with high rise finished off with a matching fabric belt with metal buckle with double D-ring and elastic at the back. Slanted front pockets, welted back pockets and straps to knot at the ankles.', 0.00, 0.00, '', 0, 1, 0, 126, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780013', '1G14N5-Y5XX', 'women', 'Z05'),
(474, 'TROUSERS IN ENVERS SATIN', 5040.00, 3530.00, 'Trousers in envers satin with high rise finished off with a matching fabric belt with metal buckle with double D-ring and elastic at the back. Slanted front pockets, welted back pockets and straps to knot at the ankles.', 0.00, 0.00, '', 0, 1, 0, 0, 23, '2020-10-26 09:32:34', '2020-10-26 09:48:23', 'ABO0780013', '1G14N5-Y5XX', 'women', 'Z05'),
(475, 'JOGGERS IN ENVERS SATIN', 4440.00, 3110.00, 'Jogger-style trousers in envers satin featuring a loose fit with elasticated waist and bottom of the legs. Slant pockets on the sides', 0.00, 0.00, '', 0, 1, 0, 126, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780016', '1G14P1-Y5XX', 'women', 'Z99'),
(476, 'PATCHWORK-PRINT TROUSERS', 5040.00, 3530.00, 'Long trousers in viscose habutai with ‘70s-inspired patchwork print of floral patterns and colourful stripes. High contrasting waist with matching sash, flowing and slightly wide legs, with slant pockets on front', 0.00, 0.00, '', 0, 1, 0, 126, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780043', '1G14UQ-7939', 'women', 'NLC'),
(477, 'ETHNIC FLORAL PRINT TROUSERS', 4680.00, 3280.00, 'Flowing trousers in viscose twill with ethnic-inspired floral print and motif of slanting bands at mid-leg. Elasticated waist, pockets set into the seam and stretch cuffs', 0.00, 0.00, '', 0, 1, 0, 126, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780045', '1G14V6-7934', 'women', 'NL4'),
(478, 'KELLY PINKO JEANS', 5820.00, 4080.00, 'Blue jeans with a looser cut. Fastened with a silver zipper and a button signed with the brand logo. Two non-fastened pockets and a coin box on the front. There are also two unfastened pockets on the back. The legs are finished with an elastic welt. At the bottom, there are zippers that allow adjustment and a white print in the form of the brand name. Made of high quality cotton. Convenient and comfortable.', 0.00, 0.00, '', 0, 1, 0, 21, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780087', '1J10D5-Y5T5', 'women', 'F94');
INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `capacity`, `package_items_count`, `unit`, `featured`, `deliverable`, `market_id`, `category_id`, `brand_id`, `created_at`, `updated_at`, `ego_code`, `supplier_code`, `gender_category`, `color`) VALUES
(479, 'STRAIGHT-FIT JEANS WITH BELT', 4800.00, 3360.00, 'Five-pocket straight-fit trousers in comfort light denim. Very high rise with matching belt, metal buckle with two rings. Straight legs, with pressed crease at front and back. Fastening with a zip and metal tack button.', 0.00, 0.00, '', 0, 1, 0, 21, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780089', '1J10DH-Y63L', 'women', 'F94'),
(480, 'METALLIC KNIT ANKLE BOOTS', 10740.00, NULL, 'Draped-effect metallic knit ankle boots with contrasting leather turn-ups and 8 cm stiletto heel. Leather lining and insole with memory foam insert for a more comfortable fit. Leather sole', 0.00, 0.00, '', 0, 1, 0, 127, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780073', '1H20Q1-Y61N', 'women', 'ZZF'),
(481, 'COWBOY ANKLE BOOTS WITH OPENINGS', 9720.00, NULL, 'Leather cowboy ankle boots characterised by side openings with buckles, belt loops and tips in vintage-effect metal. 9 cm leather-wrapped Cuban heel, leather lining and insole. Leather sole with protruding welt.', 0.00, 0.00, '', 0, 1, 0, 127, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780126', '1H20Q2-Y61L', 'women', 'Z04'),
(482, 'Sneakers in leather and padded mesh', 5820.00, NULL, 'Sneakers • Shoes To Rock Sneakers • Round Toe • Lace - up • Mesh Fabric Details • Shiny and Rubberized Details • Logo On Tongue • Insole with Logo: 100% Cow Leather • Lining: 100% Polyestere • The Oversize Line is set by the innovative \"Running\" Sole, made up of 4 different Materials and Designed to select Lighter, Longer Lasting and make Walking even more Comfortable • Chunky Rubber Sole: Polyvinyl acetate 75% Rubber 15% Polyurethane 10% • Chunky Rubber Sole: 5 cm', 0.00, 0.00, '', 0, 1, 0, 128, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780072', '1H20PQ-Y5ZM', 'women', 'Z04'),
(483, 'TREK SNEAKERS', 6240.00, 4370.00, 'Oversized-design sneakers in trekking style with stretch fabric sock-effect upper with contrasting suede inserts, smooth leather and PVC eyelet. The rubber sole is lightweight and assembled by hand without seams, with embossed PINKO logo. Tubular elastic lace opening adjustable on the back.', 0.00, 0.00, '', 0, 1, 0, 128, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780075', '1H20QL-Y628', 'women', 'Z04'),
(484, 'Cumino sneakers in laminated leather', 6240.00, 4370.00, 'Metallic Cumino Sneakers In Bos Taurus', 0.00, 0.00, '', 0, 1, 0, 128, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780076', '1H20QR-Y62U', 'women', 'IN6'),
(485, 'Rubino Animalier Sneaker', 5820.00, 4074.00, 'Sneakers • Rubino Model • Round Toe • Lace - up • Rubber Logo on Padded Tongue • Padded Ankle • Lining: Mesh • Spotted pattern • Leather Insole with Logo • Rubber sole ', 0.00, 0.00, '', 0, 1, 0, 128, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780078', '1H20QZ-Y65Q', 'women', 'ZL0'),
(486, 'SNEAKERS IN SUEDE AND LAMINATED LEATHER', 5820.00, 4080.00, 'Sneakers made in suede and smooth leather, with laminated-look details and mesh finish in a contrasting colour. Rubber-coated logo on the tongue. The oversized design is completed by the innovative \"running\" sole, made in 4 different materials and designed to be lighter and more durable, and to make walking even more comfortable. The sole also features the PINKO logo. Leather insole and mesh lining.', 0.00, 0.00, '', 0, 1, 0, 128, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780124', '1H20PR-Y5ZN', 'women', 'Ni1'),
(487, 'Cropped sweatshirt with fringe', 5040.00, NULL, 'Cropped sweatshirt in cotton marked by a worn-out look with hood and garment-placed rodeo lettering theme print', 0.00, 0.00, '', 0, 1, 0, 129, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780004', '1G14KW-Y54B', 'women', 'C22'),
(488, 'Pinko Tabasco Hoodie', 6420.00, NULL, 'Nude & Neutrals Tabasco Hoodie In Cotton By Pinko,', 0.00, 0.00, '', 0, 1, 0, 129, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780005', '1G14KX-Y54B', 'women', 'C22'),
(489, 'PINKO ROCK CROPPED SWEATSHIRT', 4440.00, NULL, 'Cropped cotton sweatshirt with “PINKO Rock” print with Japanese-inspired dragon and appliquéd rhinestones. Dropped sleeves with thunderbolt print and Love Birds logo on the back.', 0.00, 0.00, '', 0, 1, 0, 129, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780178', '1B14KR-Y54B', 'women', 'Z99'),
(490, 'Cropped-Sweatshirt mit Print ', 4440.00, NULL, 'PINKO Sweatshirt. Cropped cotton sweatshirt with hood collar and \'PINKO Cinema\' placed print on the front. Long sleeves characterized by lace inserts and cuffs at the bottom. Elastic at the bottom. ', 0.00, 0.00, '', 0, 1, 0, 129, 23, '2020-10-26 09:32:34', '2020-10-28 11:23:50', 'ABO0780055', '1G14WU-Y54B', 'women', 'ZN8'),
(491, 'Pinko Senape Sweatshirt', 4080.00, NULL, 'White Senape Sweatshirt In Cotton By Pinko', 0.00, 0.00, '', 0, 1, 0, 129, 23, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO0780010', '1G14LJ-Y54B', 'women', 'Z05'),
(492, 'REDNAT CROSS BODY BAG', 8960.00, NULL, 'Crossbody bag in handmade raffia. Adjustable leather strap enriched by metallic eyelets. Twist-lock closure. Light gold finish. Made in Italy.', 0.00, 0.00, '', 0, 1, 0, 124, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480007', 'TQ0B0C07MVN', 'women', 'N17'),
(493, 'POINTOTE TOTE', 8960.00, NULL, 'Tote bag in Point d\'Esprit motif printed polymeric material. REDV logo print. Leather handles. Removable internal pouch. Light gold finish. Made in Italy. ', 0.00, 0.00, '', 0, 1, 0, 124, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480007', 'TQ0B0C07MVN', 'women', '0NO'),
(494, 'Waist Bag', 7960.00, NULL, 'Handbag is closed with flap, twist lock.', 0.00, 0.00, '', 0, 1, 0, 124, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480009', 'TQ0B0B87VFV', 'women', 'C07'),
(495, 'FLOWER PUZZLE SHOULDER BAG', 15740.00, 7500.00, 'A handmade finishing for a unique style. Inspired by the great value of the craftsmanship: the puzzle finish is handmade and built by single leather flowers held together', 0.00, 0.00, '', 0, 1, 0, 124, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480048', 'TQ2B0B65LFB', 'women', '15F'),
(496, 'FLOWER PUZZLE SHOULDER BAG', 12490.00, 7500.00, 'A handmade finishing for a unique style. Inspired by the great value of the craftsmanship: the puzzle finish is handmade and built by single leather flowers held together', 0.00, 0.00, '', 0, 1, 0, 0, 22, '2020-10-26 09:32:35', '2020-10-26 09:48:24', 'ABO1480048', 'TQ2B0B65LFB', 'women', '15F'),
(497, 'PARADISE IN THE FOREST EMBROIDERY', 24920.00, 17450.00, 'Point d\'esprit tulle dress with multicolor embroidery that creates a Bird of Paradise in the Forest pattern.', 0.00, 0.00, '', 0, 1, 0, 125, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480022', 'TR0VA11U51S', 'women', '0NO'),
(498, 'SINOUS FLOWERS PRINTED TULLE DRESS', 22570.00, 15800.00, 'Sinuous Flowers printed off-the-shoulder tulle dress with a pleated skirt. Enriched with ruffles along the neckline and sleeves.', 0.00, 0.00, '', 0, 1, 0, 125, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480024', 'TR0VAM80506', 'women', 'A47'),
(499, 'BOW DETAIL STRETCH COTTON DRESS', 9640.00, 6750.00, 'Stretch cotton fit and flare dress with a wrap silhouette that ties into a bow on the hip.', 0.00, 0.00, '', 0, 1, 0, 125, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480025', 'TR0VAQ800VL', 'women', '48X'),
(500, 'POINT D\'ESPRIT TULLE TRENCH COAT', 22570.00, NULL, 'Point d\'esprit tulle trench coat with a pleated construction to create a light flare.', 0.00, 0.00, '', 0, 1, 0, 125, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480027', 'TR3CHA30428', 'women', '0NO'),
(501, 'ANTIQUE FLOWERS EMBROIDERED POINT D\'ESPRIT TULLE DRESS', 24920.00, 17450.00, 'Point d\'esprit tulle dress enriched with a multicolor thread embroidery creating the Antique Flowers and Birds motif', 0.00, 0.00, '', 0, 1, 0, 125, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480045', 'TR3VA12G4T4', 'women', '0NO'),
(502, 'PHOENIX PRINTED SILK DRESS WITH COLLAR DETAIL', 13050.00, 9140.00, 'Phoenix printed silk dress with a flounced hemline, with a crepe de chine collar and a thin scarf tucked under and tied into a bow.', 0.00, 0.00, '', 0, 1, 0, 125, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480046', 'TR3VAL904SH', 'women', 'A03'),
(503, 'BIRD OF PARADISE IN THE FOREST EMBROIDERED CABAN', 13500.00, 9450.00, 'Three quarter sleeve cotton gabardine caban, enriched with a multicolor thread embroidery resembling the Bird of Paradise in the Forest print.', 0.00, 0.00, '', 0, 1, 0, 130, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480015', 'TR0CI00X51J', 'women', '825'),
(504, 'DENIM JUMPSUIT WITH BUTTERFLY PATCH', 15740.00, 11020.00, 'Denim jumpsuit with flounce along the bodice, large scoop back and Butterfly patch. The patch is made from different washes of denim.', 0.00, 0.00, '', 0, 1, 0, 131, 22, '2020-10-26 09:32:35', '2020-10-28 11:23:50', 'ABO1480016', 'TR0DA00G53V', 'women', 'LDM'),
(537, 'fsfbvn', 12.00, 7.00, '<p>dsfcbxvb&nbsp;</p>', 0.00, 0.00, '', 0, 1, 21, 20, NULL, '2020-10-31 05:57:18', '2020-10-31 05:57:18', NULL, NULL, NULL, NULL),
(538, 'esfdgfxb', 8.00, NULL, '<p>sfdgbvn&nbsp;</p>', 0.00, 0.00, '', 0, 1, 21, 20, NULL, '2020-10-31 06:06:54', '2020-10-31 06:06:55', NULL, NULL, NULL, NULL),
(539, 'esfdgfxb', 8.00, NULL, '<p>sfdgbvn&nbsp;</p>', 0.00, 0.00, '', 0, 1, 21, 20, NULL, '2020-10-31 06:17:12', '2020-10-31 06:17:12', NULL, NULL, NULL, NULL),
(540, 'esfdgfxb', 8.00, NULL, '<p>sfdgbvn&nbsp;</p>', 0.00, 0.00, '', 0, 1, 21, 20, NULL, '2020-10-31 06:17:39', '2020-10-31 06:17:40', NULL, NULL, NULL, NULL),
(541, 'esfdgfxb', 8.00, NULL, '<p>sfdgbvn&nbsp;</p>', 0.00, 0.00, '', 0, 1, 21, 20, 22, '2020-10-31 06:18:08', '2020-10-31 06:18:08', 'kfdm6885', NULL, 'men', NULL),
(542, 'esfdgfxb', 8.00, NULL, '<p>sfdgbvn&nbsp;</p>', 0.00, 0.00, '', 0, 1, 21, 20, 22, '2020-10-31 06:18:34', '2020-10-31 06:18:35', 'kfdm6885', NULL, 'men', NULL),
(543, '54564', 23.00, 11.00, '<p>safdsfbdbcvb</p>', 0.00, 0.00, '', 0, 1, 21, 122, 23, '2020-10-31 06:45:05', '2020-10-31 09:09:26', '2adsfdbvb2412', NULL, 'women', NULL),
(544, 'esgdfgfhnb', 16.00, NULL, '<p>wafdsdgbvnb</p>', 0.00, 0.00, '', 0, 1, 21, 20, 22, '2020-10-31 09:11:41', '2020-10-31 09:11:42', '546', NULL, 'women', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `count` int(11) DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `count`, `size_id`, `product_id`, `created_at`, `updated_at`) VALUES
(117, 5, 1, 537, NULL, NULL),
(118, 9, 2, 537, NULL, NULL),
(119, 10, 4, 537, NULL, NULL),
(121, 7, 1, 538, NULL, NULL),
(123, 7, 1, 539, NULL, NULL),
(125, 7, 1, 540, NULL, NULL),
(127, 7, 1, 541, NULL, NULL),
(129, 7, 1, 542, NULL, NULL),
(135, 18, 4, 543, NULL, NULL),
(139, 14, 6, 544, NULL, NULL),
(140, 12, 7, 537, NULL, NULL),
(141, 14, 9, 537, NULL, NULL),
(960, 4, 4, 408, NULL, NULL),
(961, 3, 5, 408, NULL, NULL),
(962, 1, 8, 409, NULL, NULL),
(963, 1, 7, 409, NULL, NULL),
(964, 1, 8, 411, NULL, NULL),
(965, 1, 7, 411, NULL, NULL),
(966, 2, 8, 412, NULL, NULL),
(967, 1, 7, 413, NULL, NULL),
(968, 1, 9, 414, NULL, NULL),
(969, 1, 8, 414, NULL, NULL),
(970, 1, 7, 414, NULL, NULL),
(971, 1, 9, 415, NULL, NULL),
(972, 3, 8, 415, NULL, NULL),
(973, 3, 7, 415, NULL, NULL),
(974, 1, 11, 416, NULL, NULL),
(975, 2, 9, 416, NULL, NULL),
(976, 1, 9, 418, NULL, NULL),
(977, 1, 7, 418, NULL, NULL),
(978, 1, 9, 419, NULL, NULL),
(979, 1, 7, 419, NULL, NULL),
(980, 1, 8, 420, NULL, NULL),
(981, 1, 7, 420, NULL, NULL),
(982, 2, 9, 421, NULL, NULL),
(983, 1, 8, 421, NULL, NULL),
(984, 1, 7, 421, NULL, NULL),
(985, 1, 7, 422, NULL, NULL),
(986, 1, 8, 422, NULL, NULL),
(987, 1, 8, 443, NULL, NULL),
(988, 1, 11, 446, NULL, NULL),
(989, 1, 9, 446, NULL, NULL),
(990, 1, 8, 446, NULL, NULL),
(991, 1, 9, 447, NULL, NULL),
(992, 1, 8, 447, NULL, NULL),
(993, 1, 9, 448, NULL, NULL),
(994, 2, 9, 464, NULL, NULL),
(995, 2, 8, 464, NULL, NULL),
(996, 1, 13, 468, NULL, NULL),
(997, 2, 11, 468, NULL, NULL),
(998, 3, 9, 468, NULL, NULL),
(999, 2, 8, 468, NULL, NULL),
(1000, 1, 7, 468, NULL, NULL),
(1001, 2, 9, 469, NULL, NULL),
(1002, 2, 8, 469, NULL, NULL),
(1003, 3, 7, 469, NULL, NULL),
(1004, 3, 9, 471, NULL, NULL),
(1005, 3, 8, 471, NULL, NULL),
(1006, 2, 7, 471, NULL, NULL),
(1007, 1, 9, 472, NULL, NULL),
(1008, 2, 8, 472, NULL, NULL),
(1009, 4, 11, 473, NULL, NULL),
(1010, 1, 9, 473, NULL, NULL),
(1011, 4, 8, 475, NULL, NULL),
(1012, 1, 7, 475, NULL, NULL),
(1013, 2, 9, 477, NULL, NULL),
(1014, 1, 8, 477, NULL, NULL),
(1015, 1, 15, 481, NULL, NULL),
(1016, 2, 14, 481, NULL, NULL),
(1017, 2, 13, 481, NULL, NULL),
(1018, 2, 12, 481, NULL, NULL),
(1019, 1, 11, 481, NULL, NULL),
(1020, 4, 14, 482, NULL, NULL),
(1021, 3, 12, 482, NULL, NULL),
(1022, 1, 15, 484, NULL, NULL),
(1023, 3, 14, 484, NULL, NULL),
(1024, 3, 13, 484, NULL, NULL),
(1025, 2, 14, 485, NULL, NULL),
(1026, 2, 13, 485, NULL, NULL),
(1027, 4, 12, 485, NULL, NULL),
(1028, 1, 10, 485, NULL, NULL),
(1029, 1, 15, 486, NULL, NULL),
(1030, 1, 12, 486, NULL, NULL),
(1031, 1, 11, 486, NULL, NULL),
(1032, 1, 10, 486, NULL, NULL),
(1033, 2, 6, 488, NULL, NULL),
(1034, 1, 6, 490, NULL, NULL),
(1035, 4, 5, 490, NULL, NULL),
(1036, 6, 4, 490, NULL, NULL),
(1037, 3, 3, 490, NULL, NULL),
(1038, 1, 9, 497, NULL, NULL),
(1039, 1, 8, 497, NULL, NULL),
(1040, 1, 9, 498, NULL, NULL),
(1041, 1, 11, 499, NULL, NULL),
(1042, 1, 11, 500, NULL, NULL),
(1043, 1, 9, 500, NULL, NULL),
(1044, 1, 9, 501, NULL, NULL),
(1045, 1, 8, 502, NULL, NULL),
(1046, 1, 7, 502, NULL, NULL),
(1047, 1, 8, 503, NULL, NULL),
(1048, 1, 11, 504, NULL, NULL),
(1049, 1, 9, 504, NULL, NULL),
(1050, 1, 8, 504, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_order_options`
--

CREATE TABLE `product_order_options` (
  `product_order_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `review`, `rate`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 23, 188, NULL, NULL),
(2, NULL, 5, 35, 188, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE `receivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `firstName`, `lastName`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, '{firstName: dsfdf', '4445', '54475', '', '2020-10-21 09:06:19', '2020-10-21 09:06:19'),
(8, 'WWWWW', '4445', '54475', NULL, '2020-10-21 11:32:27', '2020-10-21 11:32:27'),
(9, 'WWKKKKKKKKK', '4445', '54475', NULL, '2020-10-22 10:54:57', '2020-10-22 10:54:57'),
(10, 'TTTTTT', '4445', '54475', NULL, '2020-10-22 11:03:09', '2020-10-22 11:03:09'),
(11, 'xccccccc', '4445', '54475', NULL, '2020-10-22 11:24:29', '2020-10-22 11:24:29'),
(12, 'TTTT', '4445', '54475', NULL, '2020-10-22 12:46:58', '2020-10-22 12:46:58'),
(13, '46356', '4445', '54475', NULL, '2020-10-22 12:47:50', '2020-10-22 12:47:50'),
(14, '54635465', '4445', '54475', NULL, '2020-10-22 12:55:32', '2020-10-22 12:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `default` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin', 'web', 0, '2018-07-21 14:37:56', '2019-09-07 20:42:01', NULL),
(3, 'manager', 'web', 0, '2019-09-07 20:41:38', '2019-09-07 20:41:38', NULL),
(4, 'client', 'web', 1, '2019-09-07 20:41:54', '2019-09-07 20:41:54', NULL),
(5, 'driver', 'web', 0, '2019-12-15 16:50:21', '2019-12-15 16:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(6, 2),
(9, 2),
(10, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(28, 2),
(29, 2),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(31, 2),
(31, 3),
(31, 4),
(32, 2),
(32, 3),
(32, 4),
(33, 2),
(33, 3),
(34, 2),
(34, 3),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(42, 3),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(48, 3),
(48, 5),
(50, 2),
(51, 2),
(52, 2),
(52, 3),
(52, 4),
(52, 5),
(53, 2),
(53, 3),
(54, 2),
(54, 3),
(55, 2),
(55, 3),
(56, 2),
(56, 3),
(57, 2),
(57, 3),
(58, 2),
(58, 3),
(59, 2),
(59, 3),
(60, 2),
(60, 3),
(61, 2),
(61, 3),
(62, 2),
(62, 3),
(63, 2),
(63, 3),
(64, 2),
(64, 3),
(64, 4),
(64, 5),
(67, 2),
(67, 3),
(67, 4),
(67, 5),
(68, 2),
(68, 3),
(68, 4),
(68, 5),
(69, 2),
(76, 2),
(76, 3),
(77, 2),
(77, 3),
(78, 2),
(78, 3),
(80, 2),
(80, 3),
(81, 2),
(81, 3),
(82, 2),
(82, 3),
(83, 2),
(83, 3),
(83, 4),
(83, 5),
(85, 2),
(86, 2),
(86, 3),
(86, 4),
(86, 5),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(92, 3),
(92, 4),
(92, 5),
(95, 2),
(95, 3),
(95, 4),
(95, 5),
(96, 2),
(96, 3),
(96, 4),
(96, 5),
(97, 2),
(98, 2),
(98, 3),
(98, 4),
(98, 5),
(103, 2),
(103, 3),
(103, 4),
(103, 5),
(104, 2),
(104, 3),
(104, 4),
(104, 5),
(107, 2),
(107, 3),
(107, 4),
(107, 5),
(108, 2),
(108, 3),
(109, 2),
(109, 3),
(110, 2),
(110, 3),
(111, 2),
(111, 3),
(111, 4),
(111, 5),
(112, 2),
(113, 2),
(113, 3),
(113, 4),
(113, 5),
(114, 2),
(114, 3),
(114, 4),
(114, 5),
(117, 2),
(117, 3),
(117, 4),
(117, 5),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(130, 3),
(130, 5),
(131, 2),
(134, 2),
(134, 3),
(135, 2),
(135, 3),
(137, 2),
(137, 3),
(138, 2),
(144, 2),
(144, 5),
(145, 2),
(145, 3),
(145, 5),
(146, 2),
(146, 3),
(146, 5),
(148, 2),
(149, 2),
(151, 2),
(151, 3),
(152, 2),
(152, 3),
(153, 2),
(153, 3),
(155, 2),
(156, 2),
(160, 2),
(164, 2),
(164, 3),
(164, 4),
(164, 5),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(170, 3),
(171, 2),
(171, 3),
(172, 2),
(172, 3),
(173, 2),
(174, 2),
(175, 2),
(176, 2),
(176, 3),
(176, 4),
(176, 5),
(183, 2),
(183, 3),
(183, 4),
(183, 5),
(184, 2),
(185, 2),
(186, 2),
(186, 3),
(187, 2),
(187, 3),
(188, 2),
(189, 2),
(190, 2),
(191, 2),
(192, 2),
(193, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(198, 2),
(199, 2),
(200, 2),
(201, 2),
(202, 2),
(203, 2),
(204, 2),
(205, 2),
(206, 2),
(207, 2),
(208, 2),
(209, 2),
(210, 2),
(211, 2),
(212, 2),
(213, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(219, 2),
(220, 2),
(221, 2),
(222, 2),
(223, 2),
(224, 2),
(225, 2),
(226, 2),
(227, 2),
(228, 2),
(229, 2),
(230, 2),
(231, 2),
(232, 2),
(233, 2),
(234, 2),
(235, 2),
(236, 2),
(237, 2),
(238, 2),
(239, 2),
(240, 2),
(241, 2),
(242, 2),
(243, 2),
(244, 2),
(245, 2),
(246, 2),
(247, 2),
(248, 2),
(249, 2),
(250, 2),
(251, 2),
(252, 2),
(253, 2),
(254, 2),
(255, 2),
(256, 2),
(257, 2),
(258, 2),
(259, 2),
(260, 2),
(261, 2),
(262, 2),
(263, 2),
(264, 2),
(265, 2),
(266, 2),
(267, 2),
(268, 2),
(269, 2),
(270, 2),
(271, 2),
(272, 2),
(273, 2),
(274, 2),
(275, 2),
(276, 2),
(277, 2),
(278, 2),
(279, 2),
(280, 2),
(281, 2),
(282, 2),
(283, 2),
(284, 2),
(285, 2),
(286, 2),
(287, 2),
(288, 2),
(289, 2),
(290, 2),
(291, 2),
(292, 2),
(293, 2),
(294, 2),
(295, 2),
(296, 2),
(297, 2),
(298, 2),
(299, 2),
(300, 2),
(301, 2),
(302, 2),
(303, 2),
(304, 2),
(305, 2),
(306, 2),
(307, 2),
(308, 2),
(309, 2),
(310, 2),
(311, 2),
(312, 2),
(313, 2),
(314, 2),
(315, 2),
(316, 2),
(317, 2),
(318, 2),
(319, 2),
(320, 2),
(321, 2),
(322, 2),
(323, 2),
(324, 2),
(325, 2),
(326, 2),
(327, 2),
(328, 2),
(329, 2),
(330, 2),
(331, 2),
(332, 2),
(333, 2),
(334, 2),
(335, 2),
(336, 2),
(337, 2),
(338, 2),
(339, 2),
(340, 2),
(341, 2),
(342, 2),
(343, 2),
(344, 2),
(345, 2),
(346, 2),
(347, 2),
(348, 2),
(349, 2),
(350, 2),
(351, 2),
(352, 2),
(353, 2),
(354, 2),
(355, 2),
(356, 2),
(357, 2),
(358, 2),
(359, 2),
(360, 2),
(361, 2),
(362, 2),
(363, 2),
(364, 2),
(413, 2),
(414, 2),
(415, 2),
(416, 2),
(417, 2),
(418, 2),
(419, 2),
(426, 2),
(427, 2),
(434, 2),
(435, 2),
(436, 2),
(437, 2),
(438, 2),
(439, 2),
(470, 2),
(471, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, 'All Sizes'),
(2, 'XL'),
(3, 'L'),
(4, 'M'),
(5, 'S'),
(6, 'XS'),
(7, '46'),
(8, '44'),
(9, '42'),
(10, '41'),
(11, '40'),
(12, '39'),
(13, '38'),
(14, '37'),
(15, '36'),
(16, '29'),
(17, '28'),
(18, '27'),
(19, '29');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT '0',
  `text` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'start',
  `text_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_color` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fit` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover',
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `market_id` int(10) UNSIGNED DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `order`, `text`, `button`, `text_position`, `text_color`, `button_color`, `background_color`, `indicator_color`, `image_fit`, `product_id`, `market_id`, `enabled`, `created_at`, `updated_at`) VALUES
(116, 4, 'Et pariatur suscipit.', 'Discover It', 'end', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, 4, 0, '2020-10-31 16:21:35', '2020-10-31 16:21:35'),
(117, 1, 'Voluptatem laborum error itaque ea.', 'Get Discount', 'center', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, 4, 1, '2020-10-31 16:21:35', '2020-10-31 16:21:35'),
(118, 3, 'Ipsa omnis quam nihil.', 'Discover It', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, 2, 0, '2020-10-31 16:21:35', '2020-10-31 16:21:35'),
(119, 1, 'Voluptas soluta facere quis voluptatem.', 'Get Discount', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, 1, 0, '2020-10-31 16:21:35', '2020-10-31 16:21:35'),
(120, 3, 'Quas praesentium tenetur.', 'Discover It', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 10, NULL, 0, '2020-10-31 16:21:35', '2020-10-31 16:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `uuid`, `created_at`, `updated_at`) VALUES
(1, '3cf917f8-13e3-4f38-91d9-24175953df5c', '2020-10-14 12:00:09', '2020-10-14 12:00:09'),
(2, '193d05a0-c848-4d26-8436-bc997dbeaaad', '2020-10-14 12:32:02', '2020-10-14 12:32:02'),
(3, '4bd7038c-2205-45bd-b694-35cfee5c0087', '2020-10-15 05:14:07', '2020-10-15 05:14:07'),
(4, 'a0524e9a-655e-4297-9658-dabacc4649a3', '2020-10-15 05:24:24', '2020-10-15 05:24:24'),
(5, '8938e78a-b857-47a0-9da7-52733da704fb', '2020-10-15 05:24:43', '2020-10-15 05:24:43'),
(6, '1a143a6a-0e33-48eb-9ddf-00ac88712cdc', '2020-10-15 05:35:20', '2020-10-15 05:35:20'),
(7, '0650fb8f-f3ab-4099-b396-859950ff1f2c', '2020-10-15 05:57:54', '2020-10-15 05:57:54'),
(8, 'ee1fddc3-2598-4dc9-acaf-067c236bda9c', '2020-10-15 06:07:31', '2020-10-15 06:07:31'),
(9, '19406cd9-be40-4ac7-a32f-6ca4b2f05c27', '2020-10-15 07:08:18', '2020-10-15 07:08:18'),
(10, '0ed0d886-7e0d-4a7d-9d95-4551906ca8f0', '2020-10-15 07:25:31', '2020-10-15 07:25:31'),
(11, '0a43f3a7-a256-4ff4-959d-933357ef60ca', '2020-10-15 07:41:00', '2020-10-15 07:41:00'),
(12, 'cd70528f-442e-4930-8da1-96431b677895', '2020-10-15 07:49:43', '2020-10-15 07:49:43'),
(13, '6fd15d11-dd98-43a1-a6f6-44b39ddc370e', '2020-10-15 12:06:53', '2020-10-15 12:06:53'),
(14, 'e5964b27-6d6e-4477-8dd7-5f916a45a700', '2020-10-15 12:07:04', '2020-10-15 12:07:04'),
(15, 'a2539b5b-2066-4b56-8fb6-2f673bcbcf8c', '2020-10-15 12:15:08', '2020-10-15 12:15:08'),
(16, '56e9fd96-fc6e-4e83-bc37-c4a4542340a9', '2020-10-15 12:52:47', '2020-10-15 12:52:47'),
(17, 'fd4df2a8-0f2c-4b04-be2b-1f5d5bbf6abd', '2020-10-18 07:33:48', '2020-10-18 07:33:48'),
(18, 'e1acd1f6-6f53-46a7-9455-5ffb347c08f5', '2020-10-25 09:29:27', '2020-10-25 09:29:27'),
(19, '1c55c2fc-e8f0-440f-8baa-a5f57a809e41', '2020-10-25 09:36:17', '2020-10-25 09:36:17'),
(20, '7d572ea1-8431-40c7-b138-e6f81c78875b', '2020-10-25 09:37:38', '2020-10-25 09:37:38'),
(21, 'bbcd8917-7d5c-4545-bd3b-5e9a09001b33', '2020-10-25 10:19:04', '2020-10-25 10:19:04'),
(22, '61500e0c-c03d-45d7-87f0-c55eb4723fa4', '2020-10-25 10:21:11', '2020-10-25 10:21:11'),
(23, '6422c45b-3aea-48b0-931c-d3a46dba2cb2', '2020-10-25 10:42:51', '2020-10-25 10:42:51'),
(24, 'd21eb260-bc17-4d72-88d7-3784163e34b1', '2020-10-25 10:56:38', '2020-10-25 10:56:38'),
(25, '713e19a5-adf6-4a61-b5cd-03a3c61d0afd', '2020-10-26 10:53:30', '2020-10-26 10:53:30'),
(26, '4f113963-3ccf-442a-b559-1596bb5f1de7', '2020-10-26 10:53:30', '2020-10-26 10:53:30'),
(27, 'ddc5e6db-1299-41d9-b1c2-0c14a798ea09', '2020-10-26 10:53:37', '2020-10-26 10:53:37'),
(28, 'ca10e5b8-01a9-4ddb-acbb-2eccce7a23b3', '2020-10-30 05:28:26', '2020-10-30 05:28:26'),
(29, '9cbbf7bf-a53f-4f68-be16-12667cfbb1cc', '2020-10-30 05:28:44', '2020-10-30 05:28:44'),
(30, '19668e45-5016-4081-8132-9a15775f66ec', '2020-10-30 05:48:36', '2020-10-30 05:48:36'),
(31, '60f5d042-b648-4f18-bfb9-43cc444d961e', '2020-10-30 05:48:36', '2020-10-30 05:48:36'),
(32, '7d349f43-fdac-469d-b179-90883d970d0b', '2020-10-30 05:50:25', '2020-10-30 05:50:25'),
(33, 'e48966cb-b27b-411a-8b4c-aeeb3f326ed3', '2020-10-30 05:50:25', '2020-10-30 05:50:25'),
(34, 'e75714aa-23ce-446f-9849-47044a27b962', '2020-10-30 05:56:36', '2020-10-30 05:56:36'),
(35, 'ddc7c372-2e39-44e3-bdb4-431ea30315fc', '2020-10-30 05:56:37', '2020-10-30 05:56:37'),
(36, 'b2869074-7fa9-4331-8c40-cbfec42cf929', '2020-10-30 19:09:16', '2020-10-30 19:09:16'),
(37, 'a4f04d7a-6fcc-4052-9bb5-5b6b117c0897', '2020-10-30 19:09:16', '2020-10-30 19:09:16'),
(38, '15a03b1d-14f9-4473-8e0e-719789faf168', '2020-10-30 19:09:21', '2020-10-30 19:09:21'),
(39, '2d1cbc68-86c2-4f01-ba3e-24aae5201109', '2020-10-30 19:16:57', '2020-10-30 19:16:57'),
(40, '399bec89-8b9a-42c7-9194-2057dd6dec5f', '2020-10-30 19:16:57', '2020-10-30 19:16:57'),
(41, '08debb96-f41c-473d-9999-a4b4182875b4', '2020-10-30 19:16:59', '2020-10-30 19:16:59'),
(42, '43157efe-5850-4fff-9ea6-177ebb0fa780', '2020-10-30 19:19:26', '2020-10-30 19:19:26'),
(43, 'fceeb487-d300-4dcd-8ab4-56d7ea2aea01', '2020-10-30 19:19:26', '2020-10-30 19:19:26'),
(44, '7349b8d4-edd1-4a69-9ab2-7806bf945671', '2020-10-30 19:19:28', '2020-10-30 19:19:28'),
(45, 'be59c9c8-5370-454e-9448-a53840343382', '2020-10-30 19:30:24', '2020-10-30 19:30:24'),
(46, 'e6352aaa-769d-4bf4-a857-9bfa5cd5f2d6', '2020-10-30 19:30:24', '2020-10-30 19:30:24'),
(47, '0714b0b3-00de-4b86-a335-d65e4c88908a', '2020-10-30 19:30:32', '2020-10-30 19:30:32'),
(48, 'aab8a615-b530-4ee7-90b9-9313d7a2de63', '2020-10-30 19:33:44', '2020-10-30 19:33:44'),
(49, '5b3dd9fb-22a0-45d3-bb73-70a6ab017f27', '2020-10-30 19:33:44', '2020-10-30 19:33:44'),
(50, '79e283b5-e6a7-48e4-b50b-faf49f0637cf', '2020-10-30 19:33:47', '2020-10-30 19:33:47'),
(51, 'db8dd02b-a8df-4f17-ab89-17af6635f3df', '2020-10-30 19:36:27', '2020-10-30 19:36:27'),
(52, '2525b807-e64d-4a29-b06b-3936e70bf080', '2020-10-30 19:36:27', '2020-10-30 19:36:27'),
(53, '8270c872-aee0-43e8-996e-1e86eba0fab6', '2020-10-30 19:36:29', '2020-10-30 19:36:29'),
(54, '7e934362-5541-4d95-ad26-b9d194bb37b6', '2020-10-30 19:39:01', '2020-10-30 19:39:01'),
(55, '7a0b1484-1399-4e4f-b9da-c2e99cf592c0', '2020-10-30 19:39:01', '2020-10-30 19:39:01'),
(56, 'dc944516-9718-4858-aa49-8d5c0b2180c7', '2020-10-30 19:39:03', '2020-10-30 19:39:03'),
(57, '890a8c74-9b3a-4ad6-8c17-2699edf370b9', '2020-10-30 19:39:54', '2020-10-30 19:39:54'),
(58, '54c999ea-e1d1-45da-a641-56ad2e7b2836', '2020-10-30 19:39:54', '2020-10-30 19:39:54'),
(59, 'a755d80d-d29a-4959-bca7-a75fe6dbfaf2', '2020-10-30 19:39:56', '2020-10-30 19:39:56'),
(60, 'a9d3a8c7-4c8c-40d0-acad-850f8fcf8bdd', '2020-10-30 20:43:27', '2020-10-30 20:43:27'),
(61, 'c0767d2e-3c19-48aa-8647-11c94f558e8d', '2020-10-30 20:43:27', '2020-10-30 20:43:27'),
(62, '634101a2-9eab-4f2e-b365-f90316f3cf37', '2020-10-30 20:43:40', '2020-10-30 20:43:40'),
(63, '25a6bae0-5b91-4002-929b-d432ff118261', '2020-10-30 20:44:54', '2020-10-30 20:44:54'),
(64, '31270846-e946-4d37-80cc-9057b44786ae', '2020-10-30 20:44:54', '2020-10-30 20:44:54'),
(65, '91528c92-e80f-4ddf-8a9c-8379f61d7c86', '2020-10-30 20:44:56', '2020-10-30 20:44:56'),
(66, '59c58390-5002-4266-8058-0e39b8ad8983', '2020-10-30 20:46:50', '2020-10-30 20:46:50'),
(67, '190c5f2d-11d4-434b-af42-3eed80f05ca5', '2020-10-30 20:46:50', '2020-10-30 20:46:50'),
(68, 'b4e957cd-b1cd-4c65-a074-75d00c2aeae8', '2020-10-30 20:46:53', '2020-10-30 20:46:53'),
(69, '18651a1d-881f-4a8c-90cc-d360b39e9383', '2020-10-30 20:47:53', '2020-10-30 20:47:53'),
(70, '66f7742c-a2ff-4791-beea-162c5a47ac35', '2020-10-30 20:47:53', '2020-10-30 20:47:53'),
(71, 'df40c7b6-40da-40a8-9dc6-843309edfd0e', '2020-10-30 20:48:14', '2020-10-30 20:48:14'),
(72, '829e3e94-33a5-4b43-8d59-180ee82ddf92', '2020-10-30 20:48:14', '2020-10-30 20:48:14'),
(73, 'f720eef3-7120-498a-9483-1f53286dc267', '2020-10-30 20:48:16', '2020-10-30 20:48:16'),
(74, 'b8113f6f-908d-4e46-8275-038eb7bce753', '2020-10-30 20:49:08', '2020-10-30 20:49:08'),
(75, '3237be4c-241e-4225-84f7-9c359bbb5e8d', '2020-10-30 20:49:08', '2020-10-30 20:49:08'),
(76, '4b391215-9a3d-4091-ba6b-5fe93c3dd48e', '2020-10-30 20:49:10', '2020-10-30 20:49:10'),
(77, 'd035f617-83ca-437e-8b19-866d4385cde4', '2020-10-30 20:54:02', '2020-10-30 20:54:02'),
(78, 'caae57d2-2bd9-4055-9baa-2d320934b79a', '2020-10-30 20:54:02', '2020-10-30 20:54:02'),
(79, 'ba52230f-09b3-4020-b490-e21804cb5e8d', '2020-10-30 20:54:04', '2020-10-30 20:54:04'),
(80, '427685ef-d52f-43d4-84c1-bc88d9b4de7c', '2020-10-30 21:01:23', '2020-10-30 21:01:23'),
(81, '8889c106-3146-483d-a64c-3b354a82a037', '2020-10-30 21:01:23', '2020-10-30 21:01:23'),
(82, '7cf9cebd-36f0-4857-a088-b051fba457b8', '2020-10-30 21:01:25', '2020-10-30 21:01:25'),
(83, '', '2020-10-31 05:03:20', '2020-10-31 05:03:20'),
(84, '', '2020-10-31 05:03:20', '2020-10-31 05:03:20'),
(85, '', '2020-10-31 05:03:23', '2020-10-31 05:03:23'),
(86, '', '2020-10-31 05:07:28', '2020-10-31 05:07:28'),
(87, '', '2020-10-31 05:07:28', '2020-10-31 05:07:28'),
(88, '', '2020-10-31 05:07:29', '2020-10-31 05:07:29'),
(89, '', '2020-10-31 05:13:22', '2020-10-31 05:13:22'),
(90, '', '2020-10-31 05:13:22', '2020-10-31 05:13:22'),
(91, '', '2020-10-31 05:13:23', '2020-10-31 05:13:23'),
(92, '', '2020-10-31 05:16:06', '2020-10-31 05:16:06'),
(93, '', '2020-10-31 05:16:07', '2020-10-31 05:16:07'),
(94, '', '2020-10-31 05:16:07', '2020-10-31 05:16:07'),
(95, '', '2020-10-31 05:18:55', '2020-10-31 05:18:55'),
(96, '', '2020-10-31 05:18:56', '2020-10-31 05:18:56'),
(97, '', '2020-10-31 05:18:56', '2020-10-31 05:18:56'),
(98, '', '2020-10-31 05:25:05', '2020-10-31 05:25:05'),
(99, '', '2020-10-31 05:25:05', '2020-10-31 05:25:05'),
(100, '', '2020-10-31 05:25:06', '2020-10-31 05:25:06'),
(101, '', '2020-10-31 05:27:14', '2020-10-31 05:27:14'),
(102, '', '2020-10-31 05:27:14', '2020-10-31 05:27:14'),
(103, '', '2020-10-31 05:27:15', '2020-10-31 05:27:15'),
(104, '', '2020-10-31 05:30:31', '2020-10-31 05:30:31'),
(105, '', '2020-10-31 05:30:31', '2020-10-31 05:30:31'),
(106, '', '2020-10-31 05:30:31', '2020-10-31 05:30:31'),
(107, '', '2020-10-31 05:31:21', '2020-10-31 05:31:21'),
(108, '', '2020-10-31 05:31:21', '2020-10-31 05:31:21'),
(109, '', '2020-10-31 05:31:22', '2020-10-31 05:31:22'),
(110, '', '2020-10-31 05:32:08', '2020-10-31 05:32:08'),
(111, '', '2020-10-31 05:32:08', '2020-10-31 05:32:08'),
(112, '', '2020-10-31 05:32:09', '2020-10-31 05:32:09'),
(113, '85abb8d2-1fb4-4690-bd38-d4e45885aaf4', '2020-10-31 05:55:41', '2020-10-31 05:55:41'),
(114, '4692fa78-76cf-4128-9192-a6b47e2aca96', '2020-10-31 06:03:39', '2020-10-31 06:03:39'),
(115, '181286e2-47ed-4a6b-947e-a1871dbe7a02', '2020-10-31 06:05:59', '2020-10-31 06:05:59'),
(116, 'bb99caaa-09d9-4d1c-aedb-5ca8f8651293', '2020-10-31 06:44:16', '2020-10-31 06:44:16'),
(117, 'a0726228-9c04-4cf3-ac73-7d903ad1a50c', '2020-10-31 09:11:14', '2020-10-31 09:11:14'),
(118, 'f3a393c3-1f1c-492f-8033-a41383288e6d', '2020-10-31 09:11:14', '2020-10-31 09:11:14'),
(119, '834884f6-913e-44ca-b1a1-ae6882e85909', '2020-10-31 09:11:31', '2020-10-31 09:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `userables`
--

CREATE TABLE `userables` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `userable_id` int(11) NOT NULL,
  `userable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userables`
--

INSERT INTO `userables` (`id`, `user_id`, `userable_id`, `userable_type`, `is_read`, `created_at`, `updated_at`) VALUES
(12, 1, 182, 'App\\Models\\Product', 0, '2020-10-19 09:56:22', '2020-10-19 09:56:22'),
(13, 1, 183, 'App\\Models\\Product', 0, '2020-10-19 09:56:27', '2020-10-19 09:56:27'),
(14, 1, 188, 'App\\Models\\Product', 0, '2020-10-19 09:56:37', '2020-10-19 09:56:37'),
(15, 1, 187, 'App\\Models\\Product', 0, '2020-10-19 09:56:46', '2020-10-19 09:56:46'),
(16, 1, 2, 'App\\Models\\Product', 0, '2020-10-27 15:26:38', '2020-10-27 15:26:38'),
(19, 1, 428, 'App\\Models\\Product', 0, '2020-10-29 09:45:57', '2020-10-29 09:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `braintree_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `business_registration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`, `business_registration`) VALUES
(1, 'Michael E. Quinn', 'admin@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'T4PQhFvBcAA7k02f7ejq4I7z7QKKnvxQLV0oqGnuS6Ktz6FdWULrWrzZ3oYn', '2018-08-06 20:58:41', '2019-09-27 05:49:45', NULL),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5nysjzVKI4LU92bjRqMUSYdOaIo1EcPC3pIMb6Tcj2KXSUMriGrIQ1iwRdd0', '2018-08-14 15:06:28', '2019-09-25 20:09:35', NULL),
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'V6PIUfd8JdHT2zkraTlnBcRSINZNjz5Ou7N0WtUGRyaTweoaXKpSfij6UhqC', '2019-10-12 20:31:26', '2020-03-29 15:44:30', NULL),
(4, 'Robert E. Brock', 'client1@demo.com', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 15:55:39', '2020-03-29 15:59:39', NULL),
(5, 'Sanchez Roberto', 'driver@demo.com', '$2y$10$T/jwzYDJfC8c9CdD5PbpuOKvEXlpv4.RR1jMT0PgIMT.fzeGw67JO', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-15 16:49:44', '2020-03-29 15:22:10', NULL),
(6, 'John Doe', 'driver1@demo.com', '$2y$10$YF0jCx2WCQtfZOq99hR8kuXsAE0KSnu5OYSomRtI9iCVguXDoDqVm', 'zh9mzfNO2iPtIxj6k4Jpj8flaDyOsxmlGRVUZRnJqOGBr8IuDyhb3cGoncvS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 15:28:04', '2020-03-29 15:28:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_markets`
--

CREATE TABLE `user_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(127) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_key_index` (`key`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_options`
--
ALTER TABLE `cart_options`
  ADD PRIMARY KEY (`option_id`,`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_codes`
--
ALTER TABLE `city_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_products`
--
ALTER TABLE `color_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_states`
--
ALTER TABLE `delivery_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_types`
--
ALTER TABLE `delivery_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discountables`
--
ALTER TABLE `discountables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_markets`
--
ALTER TABLE `driver_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_options`
--
ALTER TABLE `favorite_options`
  ADD PRIMARY KEY (`option_id`,`favorite_id`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market_fields`
--
ALTER TABLE `market_fields`
  ADD PRIMARY KEY (`field_id`,`market_id`);

--
-- Indexes for table `market_reviews`
--
ALTER TABLE `market_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_groups`
--
ALTER TABLE `option_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_order_options`
--
ALTER TABLE `product_order_options`
  ADD PRIMARY KEY (`product_order_id`,`option_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivers`
--
ALTER TABLE `receivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userables`
--
ALTER TABLE `userables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Indexes for table `user_markets`
--
ALTER TABLE `user_markets`
  ADD PRIMARY KEY (`user_id`,`market_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `city_codes`
--
ALTER TABLE `city_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `color_products`
--
ALTER TABLE `color_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `delivery_states`
--
ALTER TABLE `delivery_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `delivery_types`
--
ALTER TABLE `delivery_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `drivers_payouts`
--
ALTER TABLE `drivers_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `markets_payouts`
--
ALTER TABLE `markets_payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_reviews`
--
ALTER TABLE `market_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_groups`
--
ALTER TABLE `option_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1051;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `receivers`
--
ALTER TABLE `receivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `userables`
--
ALTER TABLE `userables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
