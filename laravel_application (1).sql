-- phpMyAdmin SQL Dump
-- version 4.9.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2020 at 11:15 AM
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
-- Database: `laravel_application`
--

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
(84, 'home_section_12', 'recent_reviews');

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
(1, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:00:37', '2020-10-15 06:00:37'),
(2, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:01:05', '2020-10-15 06:01:05'),
(3, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:01:38', '2020-10-15 06:01:38'),
(4, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:02:04', '2020-10-15 06:02:04'),
(5, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:02:24', '2020-10-15 06:02:24'),
(6, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:02:33', '2020-10-15 06:02:33'),
(7, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:05:09', '2020-10-15 06:05:09'),
(8, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:05:44', '2020-10-15 06:05:44'),
(9, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:06:30', '2020-10-15 06:06:30'),
(10, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:06:41', '2020-10-15 06:06:41'),
(11, 'ferwgerger', '<p>gfererg</p>', 'cover', 1, '2020-10-15 06:07:09', '2020-10-15 06:07:09');

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
(13, 'Fish', 0, 'Optio et itaque voluptatibus quis quas nostrum totam. Ab occaecati est assumenda aperiam quos impedit. Sapiente illum doloremque reprehenderit alias non accusantium. Id asperiores eveniet delectus qui temporibus iste ab. Eveniet modi et ut nihil.', '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(14, 'Fish', 0, 'Earum aut quidem dicta. Dolores rerum velit dolor omnis fugit fugit. Totam possimus illum facilis earum cupiditate qui. Exercitationem rerum voluptatem magni a assumenda qui quod nesciunt. Quo velit aut vel qui excepturi facere.', '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(15, 'Medicines', 0, 'Nihil velit itaque pariatur sequi non temporibus necessitatibus. Ea aut mollitia delectus expedita molestias unde. Qui praesentium dolore modi aut ipsam ea eos. Qui et amet minus libero alias. Assumenda dignissimos sit eum illo velit quia harum.', '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(16, 'Foods', 0, 'In sed voluptatem in similique omnis quasi voluptates. Magnam dolor tempora praesentium vel fugiat possimus voluptatem. Laborum dignissimos quibusdam consequatur et ut. Voluptates earum dignissimos ut. Qui placeat quo qui consequatur laboriosam laudantium voluptatem.', '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(17, 'Drinks', 0, 'Asperiores quisquam non et molestias aliquid voluptatibus dolores. Impedit expedita suscipit soluta dolores. Corporis voluptatibus similique laboriosam deserunt dicta. Laudantium minus sequi deleniti ex aperiam est itaque itaque. Repellat non quas animi non omnis.', '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(18, 'Fruit', 0, 'Sed vel ut laudantium rerum aut et. Excepturi qui et nam excepturi cumque ad atque. Necessitatibus cum adipisci sed vel nulla. Eius ea eos non ipsa. Et ex magnam distinctio doloremque id in tempore rerum.', '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(19, 'adminhgfdht dytfg', 16, '<p>gfxhggfyhgkj</p>', '2020-10-15 12:19:04', '2020-10-15 12:19:04');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(21, 'App\\Models\\Product', 188, 'image', 'Annotation 2020-03-16 153111', 'Annotation-2020-03-16-153111.png', 'image/png', 'public', 287038, '[]', '{\"uuid\":\"fd4df2a8-0f2c-4b04-be2b-1f5d5bbf6abd\",\"user_id\":1,\"generated_conversions\":{\"thumb\":true,\"icon\":true}}', '[]', 19, '2020-10-18 07:33:56', '2020-10-18 07:33:56');

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
(49, '2020_10_15_112021_add_parent_to_categories', 3);

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
(5, 'App\\Models\\User', 6);

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
(359, 'options.destroy', 'web', '2020-10-14 12:29:19', '2020-10-14 12:29:19', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount_price`, `description`, `capacity`, `package_items_count`, `unit`, `featured`, `deliverable`, `market_id`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'American fried rice', 11.00, 0.00, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s<br></p>', 193.00, 0.00, '', 1, 1, 2, 1, NULL, '2019-08-30 10:21:43', '2019-09-03 20:58:30'),
(2, 'Calas', 15.00, 0.00, 'Calas are dumplings composed primarily of cooked rice, yeast, sugar, eggs, and flour; the resulting batter is deep-fried. It is traditionally a breakfast dish, served with coffee or cafe au lait, and has a mention in most Creole cuisine cookbooks.', 634.00, 0.00, '', 1, 1, 1, 1, NULL, '2019-08-31 11:03:37', '2019-08-31 11:36:16'),
(3, 'Pizza Margherita', 8.00, 0.00, 'Tomato sauce, Firm mozzarella cheese, grated. Fresh soft mozzarella cheese, separated into small clumps. Fontina cheese, grated. Parmesan cheese, grated.', 200.00, 0.00, '', 1, 1, 1, 1, NULL, '2019-10-17 21:06:51', '2019-10-17 21:06:51'),
(4, 'Pizza Montanara', 6.20, 0.00, '<p>Tomato sauce, mozzarella, mushrooms, pepperoni, and Stracchino (soft cheese)<br></p>', 290.50, 0.00, '', 0, 1, 1, 1, NULL, '2019-10-18 08:09:53', '2019-10-18 08:12:15'),
(5, 'Pizza Valtellina', 7.40, 0.00, 'Tomato sauce, mozzarella, bresaola, Parmesan flakes and rocket', 245.30, 0.00, '', 0, 1, 2, 1, NULL, '2019-10-18 08:15:19', '2019-10-18 08:15:19'),
(6, 'Pizza al Pesto', 4.80, 0.00, '<p>Tomato, mozzarella, Genoese pesto, pine nuts, and olives<br></p>', 240.00, 0.00, '', 0, 1, 3, 1, NULL, '2019-10-18 08:16:17', '2019-10-18 08:16:17'),
(7, 'Angel Hair', 10.99, 8.00, 'Angel hair is the thinnest type of pasta, made of long, very fine strands that cook quickly. Use delicate sauces with this narrow noodle, like a light tomato sauce or a broth, or simply cook it with butter and oil.', 320.00, 0.00, '', 1, 1, 3, 3, NULL, '2019-10-18 08:19:33', '2019-10-18 08:19:33'),
(8, 'Acini di Pepe', 11.99, 9.99, 'Sometimes referred to as pastina, acini di pepe means “small parts of the pepper” in Italian, alluding to its miniscule size and rounded shape, which makes it versatile enough to be welcome in a wide range of dishes. Make it the mainstay of a cold salad or sprinkle it into a piping hot soup.', 260.00, 0.00, '', 1, 1, 4, 3, NULL, '2019-10-18 08:36:17', '2019-10-18 08:36:17'),
(9, 'Pasta Pappardelle', 12.99, 10.99, 'A wide egg noodle with Tuscan origins, pappardelle is often served with hearty meat sauces, as in our decadent bolognese recipe.', 290.00, 0.00, '', 0, 1, 4, 3, NULL, '2019-10-18 08:47:46', '2019-10-18 08:47:46'),
(10, 'Pasta Campanelle', 13.99, 11.99, 'Literally meaning “bellflowers,” campanelle sports a very unique shape that’s great at capturing thick, creamy, or meaty sauces. And they work wonders in cheesy bowls, too.', 190.00, 0.00, '', 1, 1, 3, 3, NULL, '2019-10-18 08:49:08', '2019-10-18 08:49:08'),
(11, 'Chicken Noodle Soup', 7.90, 0.00, 'This creamy cheese soup is delicious on a cold winter day!', 180.00, 0.00, '', 1, 1, 1, 3, NULL, '2019-10-18 08:52:28', '2019-10-18 08:52:28'),
(12, 'California Italian Wedding Soup', 8.60, 0.00, 'This is my variation of a standard recipe. I like fresh basil and a little lemon rind, so those are basically my only changes. This is a quick and easy soup with flavors that impress all.', 170.00, 0.00, '', 1, 1, 3, 3, NULL, '2019-10-18 08:54:32', '2019-10-18 08:54:32'),
(13, 'Italian Sausage Soup', 9.99, 7.89, 'This soup embodies all the wonders of Italian cooking: Italian sausage, garlic, tomatoes and red wines. Serve with hot bread and salad for a delicious meal. Garnish with Parmesan cheese.', 150.00, 0.00, '', 1, 1, 2, 3, NULL, '2019-10-18 08:57:54', '2019-10-18 08:57:54'),
(14, 'Big Smokey Burgers', 7.99, 0.00, '<p>I created this recipe while trying to recreate the best burger I had ever tasted at a market in the Great Smoky Mountains of North Carolina. My family and I think these burgers are better! They are packed with flavor!<br></p>', 150.00, 0.00, '', 1, 1, 2, 2, NULL, '2019-10-18 09:01:09', '2019-10-18 09:46:40'),
(15, 'Juicy Lucy Burgers', 8.99, 0.00, '<p>A favorite of Minnesotans! The famous Juicy Lucy! Mmmm. So good. You MUST use American cheese on this to achieve the juiciness in the middle! I like sauteed mushrooms and onions on mine!<br></p>', 190.00, 0.00, '', 1, 1, 4, 2, NULL, '2019-10-18 09:49:36', '2019-10-18 09:49:36'),
(16, 'Cedar Planked Salmon', 16.30, 12.90, '<p>This is a dish my brother prepared for me in Seattle. It is by far the best salmon I\'ve ever eaten. I like to serve it with Asian-inspired rice and roasted asparagus.<br></p>', 163.00, 0.00, '', 1, 1, 3, 1, NULL, '2019-10-18 09:51:51', '2019-10-18 09:51:51'),
(161, 'Fish', 26.73, 0.00, 'Quisquam sint est perspiciatis dolores. Ut natus earum voluptas eum esse. Incidunt dignissimos molestiae voluptate eaque aliquam.', 245.43, 2.00, 'm', 0, 1, 3, 1, NULL, '2020-10-14 12:29:19', '2020-10-14 12:29:19'),
(162, 'Salt', 31.33, 28.10, 'Cum accusantium eligendi voluptas quasi debitis. Ab saepe quis et culpa. Asperiores a qui nihil nostrum molestias provident. Excepturi veniam voluptas qui ut possimus neque.', 388.23, 6.00, 'ml', 0, 0, 4, 5, NULL, '2020-10-14 12:29:19', '2020-10-14 12:29:19'),
(163, 'Cookie', 46.60, 0.00, 'Corporis enim omnis consequatur consequatur et aliquid ut. Sed quam molestiae et ipsam ut.', 37.87, 6.00, 'ml', 1, 1, 5, 1, NULL, '2020-10-14 12:29:19', '2020-10-14 12:29:19'),
(164, 'Aspirin', 27.88, 0.00, 'Sit optio non cumque cupiditate fugit. Fugit et quia accusamus. Expedita nulla ex aliquid neque illum. Tempora quaerat id blanditiis sed. Atque sed mollitia quis illum qui omnis molestiae corporis.', 454.10, 6.00, 'Oz', 1, 1, 5, 4, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(165, 'Cookie', 37.63, 0.00, 'Dolorum enim omnis consectetur error omnis unde quos. Vel et dolorum doloremque excepturi itaque non mollitia. Facere et dolorum iusto quasi quia.', 133.77, 3.00, 'Oz', 0, 1, 1, 1, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(166, 'Aspirin', 49.98, 0.00, 'Dolores animi dolorum sit sed magni molestias. Aut tenetur sapiente eum similique excepturi doloremque quod.', 182.35, 3.00, 'ml', 1, 1, 4, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(167, 'Salt', 32.09, 0.00, 'Molestiae quidem delectus aliquam illo molestiae nam et. Commodi fugit quas suscipit perspiciatis repellat ut. Saepe et nam ullam similique sunt.', 478.19, 4.00, 'g', 1, 1, 5, 5, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(168, 'Tuna steak', 12.87, 0.00, 'Velit aperiam molestiae sunt impedit. Omnis reprehenderit vero consequuntur et mollitia dolorem. Minima est qui et voluptate voluptas qui animi. Nisi aliquid aut sed soluta dolores molestiae ab.', 151.36, 4.00, 'L', 0, 0, 6, 5, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(169, 'Cupcake', 21.87, 0.00, 'Ut sed veniam cupiditate quia. Omnis asperiores ea corrupti soluta nisi dignissimos ut. Quod assumenda cum occaecati illum dolores fuga est. Occaecati nemo porro delectus nesciunt animi saepe vel.', 333.25, 6.00, 'Kg', 0, 0, 1, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(170, 'Salad', 39.67, 0.00, 'Eum eum exercitationem placeat consequuntur. Aut rerum non expedita esse voluptatum. Aut ex explicabo sit exercitationem id nihil. Ut et et et rerum velit eum impedit.', 323.56, 5.00, 'L', 1, 0, 1, 3, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(171, 'Cookie', 15.59, 12.57, 'Amet voluptatem ex sint doloribus et. Sequi sed repellendus est et eius deserunt aliquid nisi. Tempore velit eum aut quae dolorum dolores asperiores. Ut provident assumenda atque eius ut.', 36.30, 4.00, 'm²', 0, 1, 3, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(172, 'Acarbose', 16.99, 14.49, 'Eius sit consequatur sunt voluptas. Neque vel rem vel molestias fugiat. Commodi provident vitae quaerat eligendi. Nostrum eum ratione suscipit enim nihil ea.', 441.63, 2.00, 'Kg', 0, 0, 3, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(173, 'Salad', 23.52, 21.55, 'Aperiam sint ut unde autem. Minima et mollitia temporibus omnis rerum dolore alias incidunt. Expedita ut ratione est sit architecto magni. Vel a voluptatibus excepturi consectetur.', 353.50, 1.00, 'm²', 0, 1, 6, 4, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(174, 'Milk', 21.86, 0.00, 'Sit rem voluptas et. Officiis aut consequuntur blanditiis nam. Quos nam doloremque voluptates eligendi magni doloremque.', 375.02, 6.00, 'm', 1, 0, 6, 1, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(175, 'Cookie', 27.67, 24.94, 'Rerum sit numquam suscipit vel aperiam. Blanditiis beatae officia nisi consectetur dicta aut ut. In non assumenda impedit illo iure consequatur.', 272.60, 4.00, 'm', 1, 0, 4, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(176, 'Cookie', 11.05, 0.00, 'Facere ea sint doloribus qui. Cumque dolores repudiandae maiores quia molestias eaque. Minima similique et qui. Dolorem quia incidunt excepturi animi voluptas deserunt voluptatem.', 85.23, 5.00, 'L', 1, 0, 7, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(177, 'Pasta', 29.08, 0.00, 'Quo odio doloribus aspernatur et tempora quas quos. Impedit impedit sed suscipit. Tenetur et ut reiciendis sequi dolore ut sed.', 281.86, 2.00, 'm', 1, 1, 5, 4, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(178, 'Soup', 23.81, 18.06, 'Qui at vel libero quidem facilis. A expedita ipsam vel sit occaecati voluptatem.', 0.22, 4.00, 'ml', 1, 1, 1, 3, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(179, 'Sandwich', 27.78, 22.68, 'Enim dignissimos aut incidunt velit quam nihil vel reiciendis. Dolor non quia quae. Modi occaecati qui aut occaecati. Deserunt vel aspernatur perferendis quasi veritatis.', 183.32, 5.00, 'm²', 1, 0, 3, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(180, 'Pasta', 35.25, 29.39, 'Provident quasi non inventore libero molestiae ut quidem. In blanditiis consequuntur accusamus quis. Reprehenderit vel dolore ipsum.', 417.39, 5.00, 'Oz', 1, 1, 4, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(181, 'Rice', 48.04, 44.20, 'Unde ut neque et corrupti praesentium. Eveniet temporibus modi et qui. Sunt ducimus error soluta nulla ut dicta dolore.', 179.47, 2.00, 'm²', 1, 1, 2, 2, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(182, 'Onion', 11.44, 8.88, 'Natus neque ratione non. Reprehenderit quia nesciunt vel rerum consequatur aut perferendis.', 21.06, 5.00, 'm²', 0, 1, 2, 3, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(183, 'Cookie', 17.15, 15.22, 'Sed ad iure repellat sed consequuntur tempore magni. Dicta magni quo rerum id aliquam rem. Tempore voluptatum blanditiis cupiditate ducimus. Numquam autem fugiat et repellat perspiciatis dolor.', 432.35, 6.00, 'g', 1, 1, 9, 6, NULL, '2020-10-14 12:29:20', '2020-10-14 12:29:20'),
(184, 'Tuna steak', 13.29, 5.63, 'Omnis omnis aut iste vero nobis. Similique consequuntur eligendi voluptatem atque. Similique aut vitae veniam quisquam velit.', 447.76, 4.00, 'Oz', 0, 1, 4, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(185, 'Milk', 36.83, 0.00, 'Est cumque quaerat vitae nam placeat temporibus. Sed molestiae nobis qui ea a veniam nemo. Saepe sapiente omnis consequatur cumque blanditiis. Aperiam quis molestias est magni.', 492.49, 4.00, 'm', 0, 1, 6, 5, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(186, 'Rice', 33.90, 28.52, 'Quod laborum nulla numquam aut deserunt dolores. Molestiae sit quia quisquam facere. Autem est excepturi saepe possimus temporibus accusantium. Exercitationem sint ea nisi minima.', 299.70, 3.00, 'm', 0, 0, 6, 6, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(187, 'Pasta', 32.78, 0.00, 'Vero sunt optio saepe laudantium rerum sit. Autem magnam ducimus repellendus rerum rerum. Quidem architecto sit ea omnis ipsa. Et labore id nihil vel maxime a voluptates ut.', 453.56, 5.00, 'Oz', 1, 1, 8, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(188, 'Tuna steak', 19.53, 0.00, 'Perspiciatis in nisi reiciendis. Sed aliquam impedit sed rerum. Ea nostrum molestiae aut ipsum qui. Recusandae reprehenderit sed in qui non. Harum sed tempore iusto tempore ea recusandae veritatis.', 51.84, 3.00, 'ml', 0, 0, 21, 13, NULL, '2020-10-14 12:29:21', '2020-10-18 07:33:55'),
(189, 'Acarbose', 15.58, 11.80, 'Ea iste quod qui excepturi. Enim qui sit itaque recusandae magni. Aut inventore et nam quisquam similique.', 316.15, 3.00, 'm²', 0, 0, 3, 6, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(190, 'Acarbose', 48.70, 46.28, 'Eos fuga repellat ducimus accusamus deleniti voluptatem quia. Aut minus rem corrupti quia qui eaque. Ipsum animi ut nihil quis nihil corrupti.', 438.49, 3.00, 'g', 0, 1, 6, 4, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(191, 'Pasta', 36.57, 27.99, 'Et vel vero accusamus et deleniti non et aliquid. Quod est consectetur debitis numquam provident voluptates esse. Et similique soluta aspernatur consectetur dolorem.', 307.88, 1.00, 'L', 1, 0, 8, 1, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(192, 'Steak', 22.86, 0.00, 'Numquam natus rerum nemo sapiente qui iure. Possimus pariatur dolores voluptas accusantium. Ipsum iste quos consequatur reiciendis a quia. Temporibus omnis est et suscipit perspiciatis quam.', 188.37, 6.00, 'ml', 0, 0, 4, 3, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(193, 'Steak', 30.64, 0.00, 'Temporibus non similique hic sapiente. Quasi veniam quisquam facere voluptas a aut. Facilis omnis ratione neque omnis.', 199.34, 2.00, 'ml', 0, 0, 2, 4, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(194, 'Tuna steak', 15.33, 14.06, 'Assumenda saepe suscipit quia itaque qui iusto. Ut tempore ipsum hic voluptatum. Ad nihil voluptatem quia adipisci natus ipsa. Laboriosam voluptas saepe eveniet architecto ut consequatur ab.', 453.84, 4.00, 'Oz', 0, 1, 4, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(195, 'Acarbose', 29.81, 0.00, 'Quod aliquam ipsam quaerat qui harum fugit. Sapiente blanditiis enim ea iste. Ratione et asperiores qui voluptate voluptas. Blanditiis quis sed ea et ut veritatis quae.', 254.43, 6.00, 'g', 0, 0, 9, 5, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(196, 'Rice', 15.85, 0.00, 'Possimus autem est velit facilis. Distinctio sequi nam et. Inventore debitis tenetur dolores saepe omnis fugit fuga sequi.', 215.46, 4.00, 'm²', 0, 0, 1, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(197, 'Tuna steak', 20.74, 10.90, 'Ut odit quia quia facilis voluptatem. Porro dignissimos qui natus ipsa qui sit itaque. Incidunt laudantium tenetur impedit aperiam amet doloremque sequi magnam.', 261.54, 6.00, 'm', 0, 1, 1, 6, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(198, 'Fish', 33.23, 31.23, 'Consequatur et veritatis aliquam aut ullam odio. Animi vero soluta aspernatur. Voluptatem modi distinctio fugiat veritatis possimus. Accusamus consequatur perferendis eos totam.', 71.09, 4.00, 'L', 0, 0, 7, 2, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(199, 'Cheese', 25.67, 24.27, 'Impedit temporibus at laudantium ab in. Et omnis enim autem enim doloremque. Facilis dolorem et assumenda culpa.', 448.26, 2.00, 'm', 0, 0, 7, 3, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21'),
(200, 'Steak', 39.86, 35.67, 'Eius est unde cum maxime quisquam. Vel laudantium nulla omnis dolores exercitationem et et. Saepe iusto impedit in.', 184.51, 5.00, 'm', 0, 1, 9, 4, NULL, '2020-10-14 12:29:21', '2020-10-14 12:29:21');

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
(359, 2);

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
(31, 1, 'Ad facilis odit omnis fuga.', 'Get Discount', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', NULL, 4, 0, '2020-10-14 12:28:58', '2020-10-14 12:28:58'),
(32, 1, 'Voluptate quo inventore distinctio rerum.', 'Order Now', 'end', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 6, NULL, 1, '2020-10-14 12:28:58', '2020-10-14 12:28:58'),
(33, 2, 'Ab voluptatibus consequuntur dolores.', 'Discover It', 'start', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 7, NULL, 0, '2020-10-14 12:28:58', '2020-10-14 12:28:58'),
(34, 5, 'Doloribus provident voluptas expedita.', 'Get Discount', 'end', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 7, NULL, 0, '2020-10-14 12:28:58', '2020-10-14 12:28:58'),
(35, 4, 'Vel eum exercitationem placeat at.', 'Order Now', 'center', '#25d366', '#25d366', '#ccccdd', '#25d366', 'cover', 5, NULL, 0, '2020-10-14 12:28:58', '2020-10-14 12:28:58');

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
(17, 'fd4df2a8-0f2c-4b04-be2b-1f5d5bbf6abd', '2020-10-18 07:33:48', '2020-10-18 07:33:48');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `api_token`, `device_token`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`, `braintree_id`, `paypal_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Michael E. Quinn', 'admin@demo.com', '$2y$10$5EMas6wfJf3F2v7.sbS0r.B.z1SaZq/1oIuclN1VYSCl/leiv2yeu', 'PivvPlsQWxPl1bB5KrbKNBuraJit0PrUZekQUgtLyTRuyBq921atFtoR1HuA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7NlvobY3wAD66CC0FOkO48YI2u1rDMwL0JQcVWfgI5AGRPcZdnYaYNiZBT8g', '2018-08-06 20:58:41', '2019-09-27 05:49:45'),
(2, 'Barbara J. Glanz', 'manager@demo.com', '$2y$10$YOn/Xq6vfvi9oaixrtW8QuM2W0mawkLLqIxL.IoGqrsqOqbIsfBNu', 'tVSfIKRSX2Yn8iAMoUS3HPls84ycS8NAxO2dj2HvePbbr4WHorp4gIFRmFwB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5nysjzVKI4LU92bjRqMUSYdOaIo1EcPC3pIMb6Tcj2KXSUMriGrIQ1iwRdd0', '2018-08-14 15:06:28', '2019-09-25 20:09:35'),
(3, 'Charles W. Abeyta', 'client@demo.com', '$2y$10$EBubVy3wDbqNbHvMQwkj3OTYVitL8QnHvh/zV0ICVOaSbALy5dD0K', 'fXLu7VeYgXDu82SkMxlLPG1mCAXc4EBIx6O5isgYVIKFQiHah0xiOHmzNsBv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'V6PIUfd8JdHT2zkraTlnBcRSINZNjz5Ou7N0WtUGRyaTweoaXKpSfij6UhqC', '2019-10-12 20:31:26', '2020-03-29 15:44:30'),
(4, 'Robert E. Brock', 'client1@demo.com', '$2y$10$pmdnepS1FhZUMqOaFIFnNO0spltJpziz3j13UqyEwShmLhokmuoei', 'Czrsk9rwD0c75NUPkzNXM2WvbxYHKj8p0nG29pjKT0PZaTgMVzuVyv4hOlte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-15 15:55:39', '2020-03-29 15:59:39'),
(5, 'Sanchez Roberto', 'driver@demo.com', '$2y$10$T/jwzYDJfC8c9CdD5PbpuOKvEXlpv4.RR1jMT0PgIMT.fzeGw67JO', 'OuMsmU903WMcMhzAbuSFtxBekZVdXz66afifRo3YRCINi38jkXJ8rpN0FcfS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-15 16:49:44', '2020-03-29 15:22:10'),
(6, 'John Doe', 'driver1@demo.com', '$2y$10$YF0jCx2WCQtfZOq99hR8kuXsAE0KSnu5OYSomRtI9iCVguXDoDqVm', 'zh9mzfNO2iPtIxj6k4Jpj8flaDyOsxmlGRVUZRnJqOGBr8IuDyhb3cGoncvS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-29 15:28:04', '2020-03-29 15:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_markets`
--

CREATE TABLE `user_markets` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `market_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discountables`
--
ALTER TABLE `discountables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

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
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
