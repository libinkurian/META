-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2022 at 06:12 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a1642t4h_meta_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `board`
--

INSERT INTO `board` (`id`, `name`) VALUES
(1, 'RoomOnly'),
(2, 'Breakfast Included'),
(3, 'Half Board'),
(4, 'Full Board');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `description` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `name`, `status`, `description`, `hotel_id`, `created_at`, `updated_at`) VALUES
(1, 'extrawwww2', 0, 'description etradetails', 2, NULL, NULL),
(2, 'extras5555555555555555555555', 0, 'description etradetdgdfgdfsails', 2, '2022-02-20 03:44:00', '2022-02-20 03:44:00'),
(3, 'extra2', 0, 'description etradetails', 2, '2022-02-20 03:45:59', '2022-02-20 03:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `extras_availability`
--

CREATE TABLE `extras_availability` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL,
  `type` enum('ALL_BETWEEN','ANY_IN','CHECKIN_IN') COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketcurrencies`
--

CREATE TABLE `marketcurrencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `showprice_with_tax` tinyint(1) NOT NULL,
  `market` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_display_currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marketcurrencies`
--

INSERT INTO `marketcurrencies` (`id`, `currency`, `showprice_with_tax`, `market`, `default_display_currency`, `is_default`) VALUES
(1, 'Doller', 1, 'qwe', 'qwe', 1),
(2, 'Doller', 1, 'qwe', 'qwe', 1);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_29_083930_create_offers_table', 2),
(5, '2021_08_29_084254_create_extras_table', 2),
(6, '2021_08_29_161047_create_fecilits_table', 2),
(7, '2021_09_20_051435_create_rooms_table', 2),
(8, '2021_09_20_065121_create_rooms_table', 3),
(9, '2021_09_20_102233_create_rooms_table', 4),
(10, '2021_09_20_104051_create_roombeds_table', 5),
(11, '2021_09_20_112532_create_roombeds_table', 6),
(12, '2021_09_20_113539_create_roomfacilities_table', 7),
(13, '2021_09_20_115000_create_roombathrooms_table', 8),
(14, '2021_09_20_120510_create_roomphotos_table', 9),
(15, '2021_09_20_122027_create_roomdescriptions_table', 10),
(16, '2021_09_21_055421_create_policies_table', 11),
(17, '2021_09_21_060725_create_ratelists_table', 12),
(18, '2021_09_21_065033_create_marketcurrencies_table', 13),
(19, '2021_09_21_100220_create_roomservices_table', 14),
(20, '2021_09_21_104834_create_offers_table', 15),
(21, '2021_09_21_112720_create_offerdstays_table', 16),
(22, '2021_09_21_114617_create_offerdstays_table', 17),
(23, '2021_09_21_120910_create_offerdstays_table', 18),
(24, '2021_09_21_121648_create_offerdcheckins_table', 19),
(25, '2021_09_21_122403_create_offerdcheckouts_table', 20),
(26, '2021_09_21_123001_create_offerdreserves_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `offerdcheckins`
--

CREATE TABLE `offerdcheckins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offerdcheckins`
--

INSERT INTO `offerdcheckins` (`id`, `offer_id`, `date`) VALUES
(1, 1, '2021-09-21'),
(2, 1, '2021-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `offerdcheckouts`
--

CREATE TABLE `offerdcheckouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offerdcheckouts`
--

INSERT INTO `offerdcheckouts` (`id`, `offer_id`, `date`) VALUES
(1, 5, '2021-09-21'),
(2, 5, '2021-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `offerdreserves`
--

CREATE TABLE `offerdreserves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offerdreserves`
--

INSERT INTO `offerdreserves` (`id`, `offer_id`, `date`) VALUES
(1, 4, '2021-09-21'),
(2, 4, '2021-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `offerdstays`
--

CREATE TABLE `offerdstays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offerdstays`
--

INSERT INTO `offerdstays` (`id`, `offer_id`, `date`) VALUES
(2, 1, '2021-09-21'),
(3, 1, '2021-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dstay_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dcheckin_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dcheckout_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dreserve_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `hotel_id`, `title`, `description`, `dstay_status`, `dcheckin_status`, `dcheckout_status`, `dreserve_status`, `status`) VALUES
(1, 1, 'qwe', 'asd', 'active', 'active', 'active', 'active', 'active'),
(2, 2, 'qwe', 'asd', 'active', 'active', 'active', 'active', 'active'),
(3, 2, 'qwe', 'asd', 'active', 'active', 'active', 'active', 'active'),
(4, 2, 'qwe', 'asd', 'active', 'active', 'active', 'active', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hours` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `hours`, `description`, `payment_method`, `active_status`) VALUES
(1, 'Before the arrival in which cancellation will be activated', 'The dates appear as if the arrival were today	For the cancellation policy', 'For the cancellation policy', 0),
(3, '99999', 'When the hotel receives your reservation, the total amount will be charged on your card. No refund will be made in case of cancellation, early departure or no-show (the reservation is kept up to the 1st night). If the charge to your card is denied, the hotel will cancel your reservation', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratelists`
--

CREATE TABLE `ratelists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `public_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `internal_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_lead_days` int(11) NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `markets` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confidential` tinyint(1) NOT NULL,
  `loyaltymemebers` tinyint(1) NOT NULL DEFAULT '0',
  `assign_rooms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `boards` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assigned_policies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_policy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_cal` enum('by_stay','by_arraival') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratelists`
--

INSERT INTO `ratelists` (`id`, `hotel_id`, `public_name`, `internal_name`, `min_lead_days`, `currency`, `markets`, `confidential`, `loyaltymemebers`, `assign_rooms`, `boards`, `assigned_policies`, `default_policy`, `ref_cal`, `status`) VALUES
(8, 2, 'scc', 'zxcc', 2, '2', '[2,3]', 1, 0, '[2,3]', '[1,2,3]', '[2,4]', '2', '', 'active'),
(9, 2, 'scc', 'zxcc', 2, '2', '222', 1, 0, '[2,3]', '[1,2,3]', '[2,4]', '2', 'by_arraival', 'active'),
(12, 2, 'scwwwc', 'zxcc', 2, '2', '[2,3,4]', 1, 0, '[2,3]', '[1,2,3]', '[2,4]', '2', 'by_stay', 'active'),
(13, 2, 'scwwwc', 'zxcc', 2, '2', '[2,3,4]', 1, 0, '[2,3]', '[1,2,3]', '[2,4]', '2', 'by_stay', 'active'),
(14, 2, 'asdadda', 'zxcc', 2, '2', '[2,3,4]', 1, 0, '[2,3]', '[1,2,3]', '[2,4]', '2', 'by_stay', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `roombathrooms`
--

CREATE TABLE `roombathrooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `bathfacility_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roombathrooms`
--

INSERT INTO `roombathrooms` (`id`, `room_id`, `bathfacility_id`) VALUES
(1, 2, 5),
(2, 2, 2),
(216, 1, 12),
(217, 1, 2),
(218, 1, 2),
(219, 1, 2),
(220, 6, 1),
(221, 6, 2),
(222, 6, 2),
(223, 6, 2),
(224, 7, 1),
(225, 7, 13),
(226, 7, 14);

-- --------------------------------------------------------

--
-- Table structure for table `roombeds`
--

CREATE TABLE `roombeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `single_beds` int(11) NOT NULL,
  `double_beds` int(11) NOT NULL,
  `doublebed_size` int(11) NOT NULL,
  `foldable_bed_flag` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roombeds`
--

INSERT INTO `roombeds` (`id`, `room_id`, `single_beds`, `double_beds`, `doublebed_size`, `foldable_bed_flag`) VALUES
(1, 2, 1, 2, 3, 1),
(2, 2, 1, 2, 3, 0),
(3, 1, 1, 2, 3, 0),
(4, 2, 1, 2, 3, 0),
(5, 2, 1, 2, 8, 0),
(6, 2, 11, 22, 8, 0),
(7, 2, 1, 2, 8, 0),
(8, 2, 11, 22, 8, 0),
(9, 2, 0, 1, 0, 0),
(10, 2, 0, 1, 0, 0),
(11, 2, 2, 2, 0, 0),
(12, 2, 1, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roomdescriptions`
--

CREATE TABLE `roomdescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `room_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roomdescriptions`
--

INSERT INTO `roomdescriptions` (`id`, `room_id`, `room_description`) VALUES
(1, 1, 'des1'),
(2, 2, 'des2'),
(3, 2, 'des2'),
(4, 5, 'des Room id 5');

-- --------------------------------------------------------

--
-- Table structure for table `roomfacilities`
--

CREATE TABLE `roomfacilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(11) NOT NULL,
  `featured_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roomfacilities`
--

INSERT INTO `roomfacilities` (`id`, `room_id`, `facility_id`, `featured_id`) VALUES
(4, 3, 2, NULL),
(5, 3, 7, NULL),
(6, 3, 8, NULL),
(75, 2, 1, NULL),
(76, 2, 5, NULL),
(77, 2, 12, NULL),
(87, 1, 12, NULL),
(88, 1, 1, NULL),
(89, 1, 2, NULL),
(90, 6, 12, NULL),
(91, 6, 1, NULL),
(92, 6, 2, NULL),
(93, 7, 1, NULL),
(94, 7, 13, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roomphotos`
--

CREATE TABLE `roomphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roomphotos`
--

INSERT INTO `roomphotos` (`id`, `room_id`, `photo_url`, `title`) VALUES
(2, 1, 'http://localhost:8000/images/rooms/1632140304.buildings-header.jpg', 'title1'),
(3, 2, 'http://localhost:8000/images/rooms/1632140324.buildings-header.jpg', 'title1'),
(4, 2, 'http://localhost:8000/images/rooms/1632140327.buildings-header.jpg', 'title1'),
(5, 2, 'http://appgear.ga/images/rooms/1632492458.buildings-header.jpg', 'title1'),
(6, 2, 'https://appgear.ga/images/rooms/1643542718.test-design-sketch-name.png', 'room photo'),
(7, 2, 'images/rooms/1643552942.test-design-sketch-name.png', 'room photo');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `room_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_rooms` int(11) DEFAULT NULL,
  `area_sqmtr` decimal(4,1) UNSIGNED DEFAULT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_adults` int(11) NOT NULL,
  `max_extra_beds` int(11) DEFAULT NULL,
  `max_children` int(11) NOT NULL,
  `room_short_description` varchar(257) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_long_description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_count` int(11) DEFAULT NULL,
  `default_price` float DEFAULT NULL,
  `extra_bed_charge` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beds` int(11) DEFAULT NULL,
  `room_area` float DEFAULT NULL,
  `bed_types` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bed_count` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_views` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `hotel_id`, `room_name`, `num_rooms`, `area_sqmtr`, `room_type`, `max_adults`, `max_extra_beds`, `max_children`, `room_short_description`, `room_long_description`, `room_count`, `default_price`, `extra_bed_charge`, `beds`, `room_area`, `bed_types`, `bed_count`, `number_of_views`, `is_active`) VALUES
(1, 1, 'room1', 5, 53.6, 'single', 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(2, 2, 'room1', 5, 53.6, 'single', 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(3, 2, 'room5', 5, 53.6, 'single', 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(4, 2, 'room1', 5, 53.6, 'single', 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(5, 2, 'room1', 5, 53.6, 'single', 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(6, 1, 'Standard King Room', 12, 120.0, 'single', 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(7, 1, 'Standard King Room 2', 15, 150.0, NULL, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(8, 1, 'Standard King Room 3', 10, 120.0, NULL, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(9, 1, 'Standard King Room 3', 10, 120.0, NULL, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(10, 1, 'Standard King Room 4', 10, 120.0, NULL, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(11, 1, 'Standard King Room 5', 12, 135.0, NULL, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(12, 1, 'Standard King Room 6', 12, 135.0, NULL, 0, 0, 0, '', '', 0, 0, '', 0, 0, '', '', 0, 0),
(13, 2, 'room1', 5, 53.6, 'single', 0, 0, 0, 'dfsdf', 'sdfsdf', 0, 0, '12', 0, 0, 'sdfsfsd', '', 0, 0),
(14, 2, 'room1', 5, 53.6, 'single', 0, 0, 0, 'dfsdf', 'sdfsdf', 0, 0, NULL, 0, 0, 'sdfsfsd', '', 0, 0),
(15, 2, 'room_name', 3, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, 3456, 'bed_types', '', 0, 1),
(16, 2, 'room_name', 3, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, 'bed_types', '', 0, 1),
(17, 2, 'room_name', 3, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, 'bed_types', '', 0, 1),
(18, 2, NULL, NULL, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, NULL, '', 0, 1),
(19, 1, NULL, NULL, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, NULL, '', 0, 1),
(20, 1, NULL, NULL, NULL, '2', 5, 3, 2, 'test', 'asdasd', 12, 500, '125', 5, 123, '2', '', NULL, 1),
(21, 1, 'britto test room', NULL, NULL, '2', 10, 5, 5, 'test', 'test', 10, 2000, '100', 10, 1500, '2', '', NULL, 1),
(22, 1, 'test room', NULL, NULL, '1', 9, 3, 3, 'test', 'test', 5, 1500, '100', 5, 100, '3', '', NULL, 1),
(23, 1, NULL, NULL, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(24, 1, 'rgsegewt', NULL, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(25, 1, 'rgsegewt', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', 'wwwww', 0, 1),
(26, 1, 'rgsegewt', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(27, 1, 'rgsegewt', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(28, 1, 'rgsegewt', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(29, 1, 'rgsegewt', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(30, 1, 'rgsegewt', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(31, 1, 'rgsegewt', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(32, 1, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(33, 1, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(34, 1, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', NULL, 0, 1),
(35, 1, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'2\',\'1\']', NULL, 0, 1),
(36, 1, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'2\',\'1\']', '[\'2\',\'1\']', 0, 1),
(37, 2, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\',\'double\']', '[\'single\',\'double\']', 0, 1),
(38, 2, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\':2,\'double\':4]', '[\'single\':2,\'double\':4]', 0, 1),
(39, 2, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\':2,\'double\':4]', '[\'single\':2,\'double\':4]', 0, 1),
(40, 2, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[\'single\':2,\'double\':4]', '[\'single\':2,\'double\':4]', 0, 1),
(41, 1, 'test by britto', NULL, NULL, '1', 10, 5, 20, 'testing', 'testing', 20, 5000, '800', 15, 1500, NULL, NULL, NULL, 1),
(42, 2, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[{ id: 1, name: \'Single bed\', count: 0 }, { id: 2, name: \'Double bed\', count: 0 }, { id: 3, name: \'Single bed with double bed\', count: 0 }]', NULL, 0, 1),
(43, 2, 'ddddd', 2, 345.0, 'Single11', 5, 2, 5, 'room_short_description', 'room_long_description', 5, 2222, '44', 8, NULL, '[{ id: 1, name: \'Single bed\', count: 0 }, { id: 2, name: \'Double bed\', count: 0 }, { id: 3, name: \'Single bed with double bed\', count: 0 }]', NULL, 0, 1),
(44, 1, 'test by britto', NULL, NULL, '3', 20, 10, 10, 'testing', 'testing', 10, 5000, '800', 30, 2000, NULL, NULL, NULL, 1),
(45, 1, 'test britto', NULL, NULL, '1', 12, 23, 123, 'cdvdsvas', 'adsfadsf', 20, 12312, '123', NULL, 123, NULL, NULL, NULL, 1),
(46, 1, 'test', NULL, NULL, '1', 10, 5, 5, 'asdfghjk', 'sdfghjk', 10, 2000, '500', NULL, 1500, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomservices`
--

CREATE TABLE `roomservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frequency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roomservices`
--

INSERT INTO `roomservices` (`id`, `hotel_id`, `service_id`, `frequency`) VALUES
(26, 1, '1', 'Every 2 days'),
(27, 1, '2', 'Every 4 days'),
(28, 1, '3', '3 days a week'),
(29, 1, '4', '1'),
(30, 1, '5', '0');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`) VALUES
(1, 'Change of Towels'),
(2, 'Cleaning'),
(3, 'Change of Bed Linen'),
(4, 'Turndown Service'),
(5, 'Pillow menu');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_accounts`
--

CREATE TABLE `uhb_accounts` (
  `id` smallint(6) NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `profile_photo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_photo_thumb` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_type` enum('owner','mainadmin','admin','hotelowner','agencyowner','regionalmanager') CHARACTER SET latin1 NOT NULL DEFAULT 'mainadmin',
  `companies` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hotels` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `preferred_language` varchar(2) CHARACTER SET latin1 NOT NULL,
  `oa_consumer_domain` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `oa_consumer_key` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `oa_consumer_secret` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `oa_date_created` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_lastlogin` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_accounts`
--

INSERT INTO `uhb_accounts` (`id`, `first_name`, `last_name`, `user_name`, `password`, `email`, `profile_photo`, `profile_photo_thumb`, `account_type`, `companies`, `hotels`, `preferred_language`, `oa_consumer_domain`, `oa_consumer_key`, `oa_consumer_secret`, `oa_date_created`, `date_created`, `date_lastlogin`, `is_active`) VALUES
(1, 'John', 'Smith', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 'owner', '', '', 'en', '', '', '', NULL, NULL, '2020-12-24 13:10:38', 1),
(2, 'Sreekanth', 'MC', 'hotel1', 'e10adc3949ba59abbe56e057f20f883e', 'info@hotel1.com', '', '', 'hotelowner', 'a:1:{i:0;s:1:\"1\";}', '1,2', 'en', '', '', '', NULL, '2020-12-19 14:15:45', '2020-12-19 17:08:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_account_locations`
--

CREATE TABLE `uhb_account_locations` (
  `id` int(11) NOT NULL,
  `account_id` smallint(6) NOT NULL DEFAULT '0',
  `country_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `companies` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_affiliates`
--

CREATE TABLE `uhb_affiliates` (
  `id` int(11) NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `affiliate_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_added` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_banlist`
--

CREATE TABLE `uhb_banlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `ban_item` varchar(70) CHARACTER SET latin1 NOT NULL,
  `ban_item_type` enum('IP','Email') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'IP',
  `ban_reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_banners`
--

CREATE TABLE `uhb_banners` (
  `id` int(10) NOT NULL,
  `page` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `image_file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image_file_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `priority_order` tinyint(1) NOT NULL DEFAULT '0',
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_banners`
--

INSERT INTO `uhb_banners` (`id`, `page`, `image_file`, `image_file_thumb`, `priority_order`, `link_url`, `is_active`) VALUES
(1, 'home', 'banner_1.jpg', 'banner_1_thumb.jpg', 1, '', 1),
(2, 'home', 'banner_2.jpg', 'banner_2_thumb.jpg', 2, '', 1),
(3, 'home', 'banner_3.jpg', 'banner_3_thumb.jpg', 3, '', 1),
(4, 'check_hotels', 'banner_4.jpg', 'banner_4_thumb.jpg', 4, '', 1),
(5, 'check_hotels', 'banner_5.jpg', 'banner_5_thumb.jpg', 5, '', 1),
(6, 'check_hotels', 'banner_6.jpg', 'banner_6_thumb.jpg', 6, '', 1),
(7, 'check_hotels', 'banner_7.jpg', 'banner_7_thumb.jpg', 7, '', 1),
(8, 'check_hotels', 'banner_8.jpg', 'banner_8_thumb.jpg', 8, '', 1),
(9, 'check_villas', 'banner_9.jpg', 'banner_9_thumb.jpg', 9, '', 1),
(10, 'check_villas', 'banner_10.jpg', 'banner_10_thumb.jpg', 10, '', 1),
(11, 'check_villas', 'banner_11.jpg', 'banner_11_thumb.jpg', 11, '', 1),
(12, 'check_villas', 'banner_12.jpg', 'banner_12_thumb.jpg', 12, '', 1),
(13, 'check_villas', 'banner_13.jpg', 'banner_13_thumb.jpg', 13, '', 1),
(14, 'home', '1631508374.buildings-header.jpg', '1631508374.buildings-header.jpg', 14, 'abc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_banners_description`
--

CREATE TABLE `uhb_banners_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `image_text` varchar(2048) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_banners_description`
--

INSERT INTO `uhb_banners_description` (`id`, `banner_id`, `language_id`, `image_text`) VALUES
(1, 1, 'en', '<span class=\"lato size28 slim caps white\">Italy</span><br><br><br><span class=\"lato size100 slim caps white\">Rome</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(2, 1, 'es', '<span class=\"lato size28 slim caps white\">Italia</span><br><br><br><span class=\"lato size100 slim caps white\">Roma</span><br><span class=\"lato size20 normal caps white\">de</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(3, 1, 'de', '<span class=\"lato size28 slim caps white\">Italien</span><br><br><br><span class=\"lato size100 slim caps white\">Rom</span><br><span class=\"lato size20 normal caps white\">von</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(4, 2, 'en', '<span class=\"lato size28 slim caps white\">France</span><br><br><br><span class=\"lato size100 slim caps white\">Paris</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1300</span>'),
(5, 2, 'es', '<span class=\"lato size28 slim caps white\">Francia</span><br><br><br><span class=\"lato size100 slim caps white\">Par??s</span><br><span class=\"lato size20 normal caps white\">de</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1300</span>'),
(6, 2, 'de', '<span class=\"lato size28 slim caps white\">Frankreich</span><br><br><br><span class=\"lato size100 slim caps white\">Paris</span><br><span class=\"lato size20 normal caps white\">von</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1300</span>'),
(7, 3, 'en', '<span class=\"lato size28 slim caps white\">Greece</span><br><br><br><span class=\"lato size100 slim caps white\">Santorini</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1450</span>'),
(8, 3, 'es', '<span class=\"lato size28 slim caps white\">Grecia</span><br><br><br><span class=\"lato size100 slim caps white\">Santorini</span><br><span class=\"lato size20 normal caps white\">de</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1450</span>'),
(9, 3, 'de', '<span class=\"lato size28 slim caps white\">Griechenland</span><br><br><br><span class=\"lato size100 slim caps white\">Santorini</span><br><span class=\"lato size20 normal caps white\">von</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1450</span>'),
(10, 4, 'en', '<span class=\"lato size28 slim caps white\">Italy</span><br><br><br><span class=\"lato size100 slim caps white\">Rome</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(11, 4, 'es', '<span class=\"lato size28 slim caps white\">Italia</span><br><br><br><span class=\"lato size100 slim caps white\">Roma</span><br><span class=\"lato size20 normal caps white\">de</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(12, 4, 'de', '<span class=\"lato size28 slim caps white\">Italien</span><br><br><br><span class=\"lato size100 slim caps white\">Rom</span><br><span class=\"lato size20 normal caps white\">von</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(14, 5, 'en', '<span class=\"lato size28 slim caps white\">France</span><br><br><br><span class=\"lato size100 slim caps white\">Paris</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1300</span>'),
(15, 5, 'es', '<span class=\"lato size28 slim caps white\">Francia</span><br><br><br><span class=\"lato size100 slim caps white\">Par??s</span><br><span class=\"lato size20 normal caps white\">de</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1300</span>'),
(16, 5, 'de', '<span class=\"lato size28 slim caps white\">Frankreich</span><br><br><br><span class=\"lato size100 slim caps white\">Paris</span><br><span class=\"lato size20 normal caps white\">von</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1300</span>'),
(17, 6, 'en', '<span class=\"lato size28 slim caps white\">Greece</span><br><br><br><span class=\"lato size100 slim caps white\">Zakynthos</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(18, 6, 'es', '<span class=\"lato size28 slim caps white\">Greece</span><br><br><br><span class=\"lato size100 slim caps white\">Zakynthos</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(19, 6, 'de', '<span class=\"lato size28 slim caps white\">Greece</span><br><br><br><span class=\"lato size100 slim caps white\">Zakynthos</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1500</span>'),
(20, 7, 'en', '<span class=\"lato size28 slim caps white\">Greece</span><br><br><br><span class=\"lato size100 slim caps white\">Santorini</span><br><span class=\"lato size20 normal caps white\">from</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1450</span>'),
(21, 7, 'es', '<span class=\"lato size28 slim caps white\">Grecia</span><br><br><br><span class=\"lato size100 slim caps white\">Santorini</span><br><span class=\"lato size20 normal caps white\">de</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1450</span>'),
(22, 7, 'de', '<span class=\"lato size28 slim caps white\">Griechenland</span><br><br><br><span class=\"lato size100 slim caps white\">Santorini</span><br><span class=\"lato size20 normal caps white\">von</span><br><br><span class=\"lato size48 slim uppercase yellow\">$1450</span>'),
(23, 8, 'en', '<span class=\"lato size18 slim caps white\">Islands</span><br><br><br><span class=\"lato size65 slim caps white\">Bahamas</span><br><span class=\"lato size13 normal caps white\">from</span><br><br><span class=\"lato size40 slim caps yellow\">$1500</span>'),
(24, 8, 'es', '<span class=\"lato size18 slim caps white\">Islands</span><br><br><br><span class=\"lato size65 slim caps white\">Bahamas</span><br><span class=\"lato size13 normal caps white\">from</span><br><br><span class=\"lato size40 slim caps yellow\">$1500</span>'),
(25, 8, 'de', '<span class=\"lato size18 slim caps white\">Islands</span><br><br><br><span class=\"lato size65 slim caps white\">Bahamas</span><br><span class=\"lato size13 normal caps white\">from</span><br><br><span class=\"lato size40 slim caps yellow\">$1500</span>'),
(26, 9, 'en', '<span class=\"lato size28 slim caps white\">Pafagen/Laster</span><br><br><br><span class=\"lato size65 slim caps white\">Lakatya</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel</span>'),
(27, 9, 'es', '<span class=\"lato size28 slim caps white\">Pafagen/Laster</span><br><br><br><span class=\"lato size65 slim caps white\">Lakatya</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel</span>'),
(28, 9, 'de', '<span class=\"lato size28 slim caps white\">Pafagen/Laster</span><br><br><br><span class=\"lato size65 slim caps white\">Lakatya</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel</span>'),
(29, 10, 'en', '<span class=\"lato size28 slim caps white\">Protos</span><br><br><br><span class=\"lato size65 slim caps white\">Best Hotel</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel</span>'),
(30, 10, 'es', '<span class=\"lato size28 slim caps white\">Protos</span><br><br><br><span class=\"lato size65 slim caps white\">Best Hotel</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel</span>'),
(31, 10, 'de', '<span class=\"lato size28 slim caps white\">Protos</span><br><br><br><span class=\"lato size65 slim caps white\">Best Hotel</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel</span>'),
(32, 11, 'en', '<span class=\"lato size28 slim caps white\">Reposton</span><br><br><br><span class=\"lato size65 slim caps white\">Chartin</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase white\">Hotel</span>'),
(33, 11, 'es', '<span class=\"lato size28 slim caps white\">Reposton</span><br><br><br><span class=\"lato size65 slim caps white\">Chartin</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase white\">Hotel</span>'),
(34, 11, 'de', '<span class=\"lato size28 slim caps white\">Reposton</span><br><br><br><span class=\"lato size65 slim caps white\">Chartin</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase white\">Hotel</span>'),
(35, 12, 'en', '<span class=\"lato size28 slim caps white\">Chalston</span><br><br><br><span class=\"lato size65 slim caps white\">Beverly hills</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel & Resort</span>'),
(36, 12, 'es', '<span class=\"lato size28 slim caps white\">Chalston</span><br><br><br><span class=\"lato size65 slim caps white\">Beverly hills</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel & Resort</span>'),
(37, 12, 'de', '<span class=\"lato size28 slim caps white\">Chalston</span><br><br><br><span class=\"lato size65 slim caps white\">Beverly hills</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase yellow\">Hotel & Resort</span>'),
(38, 13, 'en', '<span class=\"lato size28 slim caps white\">Aristo</span><br><br><br><span class=\"lato size65 slim caps white\">Best Season</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase white\">Hotel</span>'),
(39, 13, 'es', '<span class=\"lato size28 slim caps white\">Aristo</span><br><br><br><span class=\"lato size65 slim caps white\">Best Season</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase white\">Hotel</span>'),
(40, 13, 'de', '<span class=\"lato size28 slim caps white\">Aristo</span><br><br><br><span class=\"lato size65 slim caps white\">Best Season</span><br><span class=\"lato size30 normal caps orange\">*****</span><br><br><span class=\"lato size48 slim uppercase white\">Hotel</span>'),
(41, 1, 'en', 'lato size28 slim caps white');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_bookings`
--

CREATE TABLE `uhb_bookings` (
  `id` int(11) NOT NULL,
  `booking_number` varchar(20) CHARACTER SET latin1 NOT NULL,
  `hotel_reservation_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `booking_description` varchar(255) CHARACTER SET latin1 NOT NULL,
  `discount_percent` decimal(5,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `discount_fee` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `guests_discount` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `nights_discount` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `order_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pre_payment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pre_payment_value` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `vat_fee` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `vat_percent` decimal(5,3) UNSIGNED NOT NULL DEFAULT '0.000',
  `initial_fee` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `guest_tax` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `payment_sum` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `additional_payment` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(3) CHARACTER SET latin1 NOT NULL DEFAULT 'USD',
  `rooms_amount` tinyint(4) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `is_admin_reservation` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_admin_id` int(11) NOT NULL DEFAULT '0',
  `transaction_number` varchar(30) CHARACTER SET latin1 NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `cancel_payment_date` date DEFAULT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - POA, 1 - Online Order, 2 - PayPal, 3 - 2CO, 4 - Authorize.Net, 5 - Bank Transfer, 6 - Account Balance',
  `payment_method` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - Payment Company Account, 1 - Credit Card, 2 - E-Check',
  `coupon_code` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `discount_campaign_id` int(10) DEFAULT '0',
  `additional_info` text COLLATE utf8_unicode_ci NOT NULL,
  `regional_menager_comment` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extras` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extras_fee` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `cc_type` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `cc_holder_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cc_number` varchar(50) CHARACTER SET latin1 NOT NULL,
  `cc_expires_month` varchar(2) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `cc_expires_year` varchar(4) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `cc_cvv_code` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - prebooking, 1 - pending, 2 - reserved, 3 - completed, 4 - refunded, 5 - payment error, 6 - canceled',
  `status_changed` datetime DEFAULT NULL,
  `status_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `affiliate_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_sent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_bookings`
--

INSERT INTO `uhb_bookings` (`id`, `booking_number`, `hotel_reservation_id`, `booking_description`, `discount_percent`, `discount_fee`, `guests_discount`, `nights_discount`, `order_price`, `pre_payment_type`, `pre_payment_value`, `vat_fee`, `vat_percent`, `initial_fee`, `guest_tax`, `payment_sum`, `additional_payment`, `currency`, `rooms_amount`, `customer_id`, `is_admin_reservation`, `created_by_admin_id`, `transaction_number`, `created_date`, `payment_date`, `cancel_payment_date`, `payment_type`, `payment_method`, `coupon_code`, `discount_campaign_id`, `additional_info`, `regional_menager_comment`, `extras`, `extras_fee`, `cc_type`, `cc_holder_name`, `cc_number`, `cc_expires_month`, `cc_expires_year`, `cc_cvv_code`, `status`, `status_changed`, `status_description`, `affiliate_id`, `email_sent`) VALUES
(1, 'MWDMZK0LZQ', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 160.00, 'full price', 0.00, 0.00, 0.000, 0.00, 15.00, 185.00, 0.00, 'USD', 1, 5, 0, 0, '', '2020-12-17 09:26:15', NULL, '2020-12-11', 0, 0, '', 0, '', '', 'a:1:{i:1;s:1:\"1\";}', 10.00, '', '', '??h3??0j??Q^G????K;%', '', '', '??h3??0j??Q^G????K;%', 6, '2020-12-18 09:47:42', 'This booking is canceled by administrator.', '', 0),
(2, '4OJYM7QN6F', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 327.90, 'full price', 0.00, 0.00, 0.000, 0.00, 45.00, 372.90, 0.00, 'USD', 3, 6, 0, 0, '', '2020-12-18 09:02:20', NULL, '2020-12-06', 0, 0, '', 0, '', '', 'a:0:{}', 0.00, '', '', '??h3??0j??Q^G????K;%', '', '', '??h3??0j??Q^G????K;%', 6, '2020-12-18 09:47:21', 'This booking is canceled by administrator.', '', 0),
(3, 'HMX0ZWOB57', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 303.90, 'full price', 0.00, 0.00, 0.000, 0.00, 30.00, 333.90, 0.00, 'USD', 2, 7, 0, 0, '', '2020-12-18 10:13:05', NULL, '2020-12-06', 0, 0, '', 0, '', '', 'a:0:{}', 0.00, '', '', '??h3??0j??Q^G????K;%', '', '', '??h3??0j??Q^G????K;%', 1, '2020-12-18 10:13:08', '', '', 0),
(4, 'FO9TAJ6IK0', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 539.70, 'full price', 0.00, 0.00, 0.000, 0.00, 45.00, 584.70, 0.00, 'USD', 3, 7, 0, 0, '', '2020-12-18 10:15:11', NULL, '2020-12-08', 0, 0, '', 0, '', '', 'a:0:{}', 0.00, '', '', '??h3??0j??Q^G????K;%', '', '', '??h3??0j??Q^G????K;%', 1, '2020-12-18 10:15:15', '', '', 0),
(5, 'JIW255EBIE', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 539.70, 'full price', 0.00, 0.00, 0.000, 0.00, 45.00, 584.70, 0.00, 'USD', 3, 7, 0, 0, '', '2020-12-18 10:16:28', NULL, '2020-12-08', 0, 0, '', 0, '', '', 'a:0:{}', 0.00, '', '', '??h3??0j??Q^G????K;%', '', '', '??h3??0j??Q^G????K;%', 1, '2020-12-18 10:16:31', '', '', 0),
(6, 'HVGKLASAZN', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 179.90, 'full price', 0.00, 0.00, 0.000, 0.00, 15.00, 194.90, 0.00, 'USD', 1, 8, 0, 0, '', '2020-12-19 13:52:45', NULL, '2020-12-07', 0, 0, '', 0, '', '', 'a:0:{}', 0.00, '', '', '??h3??0j??Q^G????K;%', '', '', '??h3??0j??Q^G????K;%', 1, '2020-12-19 13:52:50', '', '', 0),
(7, 'IXVPZ7PX8S', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 0.00, '', 0.00, 0.00, 0.000, 0.00, 0.00, 0.00, 0.00, 'USD', 8, 1, 1, 0, '', '2020-12-19 16:19:40', NULL, '2020-12-12', 0, 0, '', 0, '', '', 'a:0:{}', 0.00, '', '', '', '', '', '', 3, NULL, '', '', 0),
(8, '7S1N24OSD7', '', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 527.10, 'full price', 0.00, 28.61, 5.000, 0.00, 45.00, 600.71, 0.00, 'USD', 3, 8, 0, 0, '', '2020-12-20 16:45:42', NULL, '2020-12-08', 0, 0, '', 0, '', '', 'a:0:{}', 0.00, '', '', '??h3??0j??Q^G????K;%', '', '', '??h3??0j??Q^G????K;%', 1, '2020-12-20 16:45:47', '', '', 0),
(10, 'MWDMZK0LZQ', 'abc', 'Rooms Reservation', 0.00, 0.00, 0.00, 0.00, 160.00, 'full price', 0.00, 0.00, 0.000, 0.00, 15.00, 185.00, 0.00, 'USD', 1, 5, 0, 0, '123', '2021-09-24 14:27:07', NULL, '2020-12-11', 0, 0, NULL, 0, 'abc', 'abc', '1', 10.00, '12', 'abc', '??h3??0j??Q^G????K;%', '12', '2021', '??h3??0j??Q^G????K;%', 6, '2020-12-18 09:47:42', 'This booking is canceled by administrator.', '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_bookings_rooms`
--

CREATE TABLE `uhb_bookings_rooms` (
  `id` int(11) NOT NULL,
  `booking_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `room_id` int(11) NOT NULL DEFAULT '0',
  `room_numbers` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checkin` date DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `adults` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `children` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rooms` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `extra_beds` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `extra_beds_charge` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `meal_plan_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `meal_plan_price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `email_notify` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_bookings_rooms`
--

INSERT INTO `uhb_bookings_rooms` (`id`, `booking_number`, `hotel_id`, `room_id`, `room_numbers`, `checkin`, `checkout`, `adults`, `children`, `rooms`, `price`, `discount`, `extra_beds`, `extra_beds_charge`, `meal_plan_id`, `meal_plan_price`, `email_notify`) VALUES
(1, 'MWDMZK0LZQ', 1, 2, '', '2020-12-18', '2020-12-20', 1, 0, 1, 160.00, 0.00, 0, 0.00, 1, 0.00, 0),
(2, '4OJYM7QN6F', 2, 5, '', '2020-12-18', '2020-12-19', 1, 0, 2, 110.00, 0.00, 0, 0.00, 5, 38.00, 0),
(3, '4OJYM7QN6F', 3, 7, '', '2020-12-18', '2020-12-19', 1, 0, 1, 140.00, 0.00, 0, 0.00, 7, 39.90, 0),
(9, 'HMX0ZWOB57', 2, 5, '', '2020-12-18', '2020-12-19', 1, 0, 1, 55.00, 0.00, 0, 0.00, 5, 19.00, 0),
(8, 'HMX0ZWOB57', 3, 8, '', '2020-12-18', '2020-12-19', 1, 0, 1, 190.00, 0.00, 0, 0.00, 7, 39.90, 0),
(10, 'FO9TAJ6IK0', 3, 7, '', '2020-12-20', '2020-12-21', 1, 0, 3, 420.00, 0.00, 0, 0.00, 7, 119.70, 0),
(11, 'JIW255EBIE', 3, 7, '', '2020-12-20', '2020-12-21', 1, 0, 3, 420.00, 0.00, 0, 0.00, 7, 119.70, 0),
(12, 'HVGKLASAZN', 3, 7, '', '2020-12-19', '2020-12-20', 1, 0, 1, 140.00, 0.00, 0, 0.00, 7, 39.90, 0),
(13, 'IXVPZ7PX8S', 1, 1, '', '2020-12-19', '2020-12-20', 0, 0, 8, 0.00, 0.00, 0, 0.00, 0, 0.00, 0),
(14, '7S1N24OSD7', 3, 7, '', '2020-12-20', '2020-12-21', 1, 0, 3, 407.40, 0.00, 0, 0.00, 7, 119.70, 0),
(15, 'MWDMZK0LZQ', 1, 2, 'abc', '2020-12-18', '2020-12-20', 1, 0, 1, 160.00, 0.00, 0, 0.00, 1, 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_campaigns`
--

CREATE TABLE `uhb_campaigns` (
  `id` int(10) NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `campaign_type` enum('global','standard') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `campaign_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `check_by` enum('STAY_DATE','CHECKIN_DATE','CHECKOUT_DATE','RESERVATION_DATE') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '''STAY_DATE'',''CHECKIN_DATE'',''CHECKOUT_DATE'',''RESERVATION_DATE''',
  `campaign_rooms` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_mealplan` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `campaign_rate` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `same_price` tinyint(4) NOT NULL DEFAULT '0',
  `fixed_price` tinyint(4) NOT NULL DEFAULT '0',
  `price_week` tinyint(4) NOT NULL DEFAULT '0',
  `discount_flag` tinyint(4) NOT NULL DEFAULT '0',
  `discount_price` int(11) NOT NULL,
  `discount_unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `increment_status` tinyint(4) NOT NULL DEFAULT '0',
  `increment_type` enum('PERPERSON_ONCE','PERPERSON_PERNIGHT','PERROOM_ONCE','PERROOM_PERNIGHT') COLLATE utf8_unicode_ci NOT NULL,
  `increment_adult` int(11) NOT NULL,
  `increment_child` int(11) NOT NULL,
  `increment_unit` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `free_night` tinyint(4) NOT NULL DEFAULT '0',
  `free_night_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `free_night_condition` int(11) NOT NULL,
  `booking_night_wend` tinyint(4) NOT NULL DEFAULT '0',
  `booking_night_wend_percent` int(11) NOT NULL,
  `booking_night_fromto` int(11) NOT NULL,
  `booking_wend_fromto` int(11) NOT NULL,
  `addtional_disc` tinyint(4) NOT NULL DEFAULT '0',
  `additinal_disc_minstay` int(11) NOT NULL,
  `additional_disc_perc` int(11) NOT NULL,
  `early_booking` int(11) NOT NULL,
  `early_booking_uptodays` int(11) NOT NULL,
  `early_booking_percent` int(11) NOT NULL,
  `lastmin_booking` tinyint(4) NOT NULL DEFAULT '0',
  `lastmin_booking_hours` int(11) NOT NULL,
  `lastmin_booking_percent` int(11) NOT NULL,
  `is_promotional` tinyint(4) NOT NULL,
  `show_promo_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_adv_booking` tinyint(4) NOT NULL,
  `advbooking_days` int(11) NOT NULL,
  `cancel_policy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cancel_policy_rad` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_stay` int(11) NOT NULL,
  `minstay_status` tinyint(4) NOT NULL,
  `max_stay` int(11) NOT NULL,
  `min_stay_combo` int(11) DEFAULT NULL,
  `maxstay_valied` tinyint(4) NOT NULL,
  `maxstay_condition` int(11) NOT NULL,
  `min_num_rooms` int(11) NOT NULL,
  `min_rooms_combo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `close_order` int(11) NOT NULL,
  `close_order_num` int(11) NOT NULL,
  `max_reser_byday` int(11) NOT NULL,
  `max_quan_rooms_pernight` int(11) NOT NULL,
  `lastmin_active` tinyint(4) NOT NULL,
  `last_hours` int(11) NOT NULL,
  `only_night_wend` tinyint(4) NOT NULL,
  `night_from_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `wend_from_to` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `discount_percent` decimal(5,2) NOT NULL,
  `priority_order` int(3) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_campaigns`
--

INSERT INTO `uhb_campaigns` (`id`, `hotel_id`, `group_id`, `campaign_type`, `campaign_name`, `check_by`, `campaign_rooms`, `campaign_mealplan`, `campaign_rate`, `same_price`, `fixed_price`, `price_week`, `discount_flag`, `discount_price`, `discount_unit`, `increment_status`, `increment_type`, `increment_adult`, `increment_child`, `increment_unit`, `free_night`, `free_night_type`, `free_night_condition`, `booking_night_wend`, `booking_night_wend_percent`, `booking_night_fromto`, `booking_wend_fromto`, `addtional_disc`, `additinal_disc_minstay`, `additional_disc_perc`, `early_booking`, `early_booking_uptodays`, `early_booking_percent`, `lastmin_booking`, `lastmin_booking_hours`, `lastmin_booking_percent`, `is_promotional`, `show_promo_code`, `is_adv_booking`, `advbooking_days`, `cancel_policy`, `cancel_policy_rad`, `min_stay`, `minstay_status`, `max_stay`, `min_stay_combo`, `maxstay_valied`, `maxstay_condition`, `min_num_rooms`, `min_rooms_combo`, `close_order`, `close_order_num`, `max_reser_byday`, `max_quan_rooms_pernight`, `lastmin_active`, `last_hours`, `only_night_wend`, `night_from_to`, `wend_from_to`, `start_date`, `finish_date`, `discount_percent`, `priority_order`, `is_active`) VALUES
(1, 2, 0, 'global', 'Early Booking Offer 7 days in advance ', 'RESERVATION_DATE', NULL, '', NULL, 0, 0, 0, 0, 0, '', 0, 'PERPERSON_ONCE', 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', '2015-09-07', '2015-10-07', 10.00, 0, 1),
(2, 2, 0, 'standard', '5 nights stay offer', NULL, '[\"1\",\"2\"]', '[\"10\",\"13\"]', '[\"1\"]', 0, 0, 0, 0, 0, 'percentage', 0, '', 0, 0, 'PERCENTAGE', 0, '', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'on', 0, 0, '', NULL, 0, 0, 0, 2, 1, 0, 0, '2', 0, 2, 0, 1, 0, 12, 0, '0-0', '', '2020-12-19', '2020-12-23', 3.00, 0, 1),
(3, 2, 0, '', 'TEST 1', NULL, NULL, '', NULL, 0, 0, 0, 0, 0, '', 0, 'PERPERSON_ONCE', 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', NULL, NULL, 0.00, 0, 0),
(4, 2, 0, 'standard', 'TEST', NULL, NULL, '', NULL, 0, 0, 0, 0, 0, '', 0, 'PERPERSON_ONCE', 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', NULL, NULL, 0.00, 0, 0),
(5, 2, 0, 'global', 'TEST CAMPAIGN', NULL, '[\"10\",\"13\",\"14\"]', '[\"13\",\"16\"]', '[\"1\"]', 0, 0, 0, 0, 0, 'percentage', 0, '', 0, 0, 'PERCENTAGE', 0, '', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'on', 0, 0, '', NULL, 0, 0, 0, 2, 1, 0, 0, '2', 0, 2, 0, 1, 0, 12, 0, '', '', NULL, NULL, 0.00, 0, 0),
(6, 2, 0, 'standard', 'TEST3', NULL, '[\"10\",\"12\",\"13\"]', '[\"13\",\"16\"]', '[\"1\",\"2\"]', 0, 0, 0, 0, 0, 'percentage', 0, '', 0, 0, 'PERCENTAGE', 0, '', 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'on', 0, 0, '', NULL, 0, 0, 0, 2, 1, 0, 0, '2', 0, 2, 0, 1, 0, 12, 0, '0-0', '', NULL, NULL, 0.00, 0, 0),
(7, 0, 0, 'global', '', NULL, '[\"5\",\"18\",\"19\"]', '[\"13\",\"16\"]', '[\"2\"]', 0, 0, 0, 0, 0, '', 0, 'PERPERSON_ONCE', 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', NULL, NULL, 0.00, 0, 1),
(8, 0, 0, 'global', '', NULL, '[\"1\",\"2\",\"3\",\"4\",\"9\",\"5\",\"7\"]', '[\"13\",\"16\"]', '[\"1\",\"2\"]', 0, 0, 0, 0, 0, '', 0, 'PERPERSON_ONCE', 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', NULL, NULL, 0.00, 0, 1),
(9, 0, 0, 'global', '', NULL, '[\"2\",\"10\",\"6\",\"8\"]', '[\"13\"]', '[\"2\"]', 0, 0, 0, 0, 0, '', 0, 'PERPERSON_ONCE', 0, 0, '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, '', NULL, 0, 0, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', NULL, NULL, 0.00, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_comments`
--

CREATE TABLE `uhb_comments` (
  `id` int(11) NOT NULL,
  `article_id` int(10) NOT NULL DEFAULT '0',
  `user_id` int(10) NOT NULL DEFAULT '0',
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `comment_text` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `date_published` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_comments`
--

INSERT INTO `uhb_comments` (`id`, `article_id`, `user_id`, `user_name`, `user_email`, `comment_text`, `date_created`, `is_published`, `date_published`) VALUES
(1, 25, 1, 'customer1', '', 'Thanks! Very cool site.', '2013-11-12 14:34:40', 1, '2013-11-12 14:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_countries`
--

CREATE TABLE `uhb_countries` (
  `id` smallint(6) NOT NULL,
  `abbrv` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vat_value` decimal(5,3) NOT NULL DEFAULT '0.000',
  `priority_order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_countries`
--

INSERT INTO `uhb_countries` (`id`, `abbrv`, `is_active`, `is_default`, `vat_value`, `priority_order`) VALUES
(1, 'AF', 1, 0, 5.000, 0),
(2, 'AL', 1, 0, 5.000, 0),
(3, 'DZ', 1, 0, 5.000, 0),
(4, 'AS', 1, 0, 5.000, 0),
(5, 'AD', 1, 0, 5.000, 0),
(6, 'AO', 1, 0, 5.000, 0),
(7, 'AI', 1, 0, 5.000, 0),
(8, 'AQ', 1, 0, 5.000, 0),
(9, 'AG', 1, 0, 5.000, 0),
(10, 'AR', 1, 0, 5.000, 0),
(11, 'AM', 1, 0, 5.000, 0),
(12, 'AW', 1, 0, 5.000, 0),
(13, 'AU', 1, 0, 5.000, 0),
(14, 'AT', 1, 0, 5.000, 0),
(15, 'AZ', 1, 0, 5.000, 0),
(16, 'BS', 1, 0, 5.000, 0),
(17, 'BH', 1, 0, 5.000, 0),
(18, 'BD', 1, 0, 5.000, 0),
(19, 'BB', 1, 0, 5.000, 0),
(20, 'BY', 1, 0, 5.000, 0),
(21, 'BE', 1, 0, 5.000, 0),
(22, 'BZ', 1, 0, 5.000, 0),
(23, 'BJ', 1, 0, 5.000, 0),
(24, 'BM', 1, 0, 5.000, 0),
(25, 'BT', 1, 0, 5.000, 0),
(26, 'BO', 1, 0, 5.000, 0),
(27, 'BA', 1, 0, 5.000, 0),
(28, 'BW', 1, 0, 5.000, 0),
(29, 'BV', 1, 0, 5.000, 0),
(30, 'BR', 1, 0, 5.000, 0),
(31, 'IO', 1, 0, 5.000, 0),
(32, 'VG', 1, 0, 5.000, 0),
(33, 'BN', 1, 0, 5.000, 0),
(34, 'BG', 1, 0, 5.000, 0),
(35, 'BF', 1, 0, 5.000, 0),
(36, 'BI', 1, 0, 5.000, 0),
(37, 'KH', 1, 0, 5.000, 0),
(38, 'CM', 1, 0, 5.000, 0),
(39, 'CA', 1, 0, 5.000, 0),
(40, 'CV', 1, 0, 5.000, 0),
(41, 'KY', 1, 0, 5.000, 0),
(42, 'CF', 1, 0, 5.000, 0),
(43, 'TD', 1, 0, 5.000, 0),
(44, 'CL', 1, 0, 5.000, 0),
(45, 'CN', 1, 0, 5.000, 0),
(46, 'CX', 1, 0, 5.000, 0),
(47, 'CC', 1, 0, 5.000, 0),
(48, 'CO', 1, 0, 5.000, 0),
(49, 'KM', 1, 0, 5.000, 0),
(50, 'CG', 1, 0, 5.000, 0),
(51, 'CK', 1, 0, 5.000, 0),
(52, 'CR', 1, 0, 5.000, 0),
(53, 'CI', 1, 0, 5.000, 0),
(54, 'HR', 1, 0, 5.000, 0),
(55, 'CU', 1, 0, 5.000, 0),
(56, 'CY', 1, 0, 5.000, 0),
(57, 'CZ', 1, 0, 5.000, 0),
(58, 'DK', 1, 0, 5.000, 0),
(59, 'DJ', 1, 0, 5.000, 0),
(60, 'DM', 1, 0, 5.000, 0),
(61, 'DO', 1, 0, 5.000, 0),
(62, 'TP', 1, 0, 5.000, 0),
(63, 'EC', 1, 0, 5.000, 0),
(64, 'EG', 1, 0, 5.000, 0),
(65, 'SV', 1, 0, 5.000, 0),
(66, 'GQ', 1, 0, 5.000, 0),
(67, 'ER', 1, 0, 5.000, 0),
(68, 'EE', 1, 0, 5.000, 0),
(69, 'ET', 1, 0, 5.000, 0),
(70, 'FK', 1, 0, 5.000, 0),
(71, 'FO', 1, 0, 5.000, 0),
(72, 'FJ', 1, 0, 5.000, 0),
(73, 'FI', 1, 0, 5.000, 0),
(74, 'FR', 1, 0, 5.000, 0),
(75, 'GF', 1, 0, 5.000, 0),
(76, 'PF', 1, 0, 5.000, 0),
(77, 'TF', 1, 0, 5.000, 0),
(78, 'GA', 1, 0, 5.000, 0),
(79, 'GM', 1, 0, 5.000, 0),
(80, 'GE', 1, 0, 5.000, 0),
(81, 'DE', 1, 0, 5.000, 0),
(82, 'GH', 1, 0, 5.000, 0),
(83, 'GI', 1, 0, 5.000, 0),
(84, 'GR', 1, 0, 5.000, 0),
(85, 'GL', 1, 0, 5.000, 0),
(86, 'GD', 1, 0, 5.000, 0),
(87, 'GP', 1, 0, 5.000, 0),
(88, 'GU', 1, 0, 5.000, 0),
(89, 'GT', 1, 0, 5.000, 0),
(90, 'GN', 1, 0, 5.000, 0),
(91, 'GW', 1, 0, 5.000, 0),
(92, 'GY', 1, 0, 5.000, 0),
(93, 'HT', 1, 0, 5.000, 0),
(94, 'HM', 1, 0, 5.000, 0),
(95, 'HN', 1, 0, 5.000, 0),
(96, 'HK', 1, 0, 5.000, 0),
(97, 'HU', 1, 0, 5.000, 0),
(98, 'IS', 1, 0, 5.000, 0),
(99, 'IN', 1, 0, 5.000, 0),
(100, 'ID', 1, 0, 5.000, 0),
(101, 'IQ', 1, 0, 5.000, 0),
(102, 'IE', 1, 0, 5.000, 0),
(103, 'IR', 1, 0, 5.000, 0),
(104, 'IL', 1, 0, 5.000, 0),
(105, 'IT', 1, 0, 5.000, 0),
(106, 'JM', 1, 0, 5.000, 0),
(107, 'JP', 1, 0, 5.000, 0),
(108, 'JO', 1, 0, 5.000, 0),
(109, 'KZ', 1, 0, 5.000, 0),
(110, 'KE', 1, 0, 5.000, 0),
(111, 'KI', 1, 0, 5.000, 0),
(112, 'KP', 1, 0, 5.000, 0),
(113, 'KR', 1, 0, 5.000, 0),
(114, 'KW', 1, 0, 5.000, 0),
(115, 'KG', 1, 0, 5.000, 0),
(116, 'LA', 1, 0, 5.000, 0),
(117, 'LV', 1, 0, 5.000, 0),
(118, 'LB', 1, 0, 5.000, 0),
(119, 'LS', 1, 0, 5.000, 0),
(120, 'LR', 1, 0, 5.000, 0),
(121, 'LY', 1, 0, 5.000, 0),
(122, 'LI', 1, 0, 5.000, 0),
(123, 'LT', 1, 0, 5.000, 0),
(124, 'LU', 1, 0, 5.000, 0),
(125, 'MO', 1, 0, 5.000, 0),
(126, 'MK', 1, 0, 5.000, 0),
(127, 'MG', 1, 0, 5.000, 0),
(128, 'MW', 1, 0, 5.000, 0),
(129, 'MY', 1, 0, 5.000, 0),
(130, 'MV', 1, 0, 5.000, 0),
(131, 'ML', 1, 0, 5.000, 0),
(132, 'MT', 1, 0, 5.000, 0),
(133, 'MH', 1, 0, 5.000, 0),
(134, 'MQ', 1, 0, 5.000, 0),
(135, 'MR', 1, 0, 5.000, 0),
(136, 'MU', 1, 0, 5.000, 0),
(137, 'YT', 1, 0, 5.000, 0),
(138, 'MX', 1, 0, 5.000, 0),
(139, 'FM', 1, 0, 5.000, 0),
(140, 'MD', 1, 0, 5.000, 0),
(141, 'MC', 1, 0, 5.000, 0),
(142, 'MN', 1, 0, 5.000, 0),
(143, 'MS', 1, 0, 5.000, 0),
(144, 'MA', 1, 0, 5.000, 0),
(145, 'MZ', 1, 0, 5.000, 0),
(146, 'MM', 1, 0, 5.000, 0),
(147, 'NA', 1, 0, 5.000, 0),
(148, 'NR', 1, 0, 5.000, 0),
(149, 'NP', 1, 0, 5.000, 0),
(150, 'NL', 1, 0, 5.000, 0),
(151, 'AN', 1, 0, 5.000, 0),
(152, 'NC', 1, 0, 5.000, 0),
(153, 'NZ', 1, 0, 5.000, 0),
(154, 'NI', 1, 0, 5.000, 0),
(155, 'NE', 1, 0, 5.000, 0),
(156, 'NG', 1, 0, 5.000, 0),
(157, 'NU', 1, 0, 5.000, 0),
(158, 'NF', 1, 0, 5.000, 0),
(159, 'MP', 1, 0, 5.000, 0),
(160, 'NO', 1, 0, 5.000, 0),
(161, 'OM', 1, 0, 5.000, 0),
(162, 'PK', 1, 0, 5.000, 0),
(163, 'PW', 1, 0, 5.000, 0),
(164, 'PA', 1, 0, 5.000, 0),
(165, 'PG', 1, 0, 5.000, 0),
(166, 'PY', 1, 0, 5.000, 0),
(167, 'PE', 1, 0, 5.000, 0),
(168, 'PH', 1, 0, 5.000, 0),
(169, 'PN', 1, 0, 5.000, 0),
(170, 'PL', 1, 0, 5.000, 0),
(171, 'PT', 1, 0, 5.000, 0),
(172, 'PR', 1, 0, 5.000, 0),
(173, 'QA', 1, 0, 5.000, 0),
(174, 'RE', 1, 0, 5.000, 0),
(175, 'RO', 1, 0, 5.000, 0),
(176, 'RU', 1, 0, 5.000, 0),
(177, 'RW', 1, 0, 5.000, 0),
(178, 'LC', 1, 0, 5.000, 0),
(179, 'WS', 1, 0, 5.000, 0),
(180, 'SM', 1, 0, 5.000, 0),
(181, 'ST', 1, 0, 5.000, 0),
(182, 'SA', 1, 0, 5.000, 0),
(183, 'SN', 1, 0, 5.000, 0),
(184, 'RS', 1, 0, 5.000, 0),
(185, 'SC', 1, 0, 5.000, 0),
(186, 'SL', 1, 0, 5.000, 0),
(187, 'SG', 1, 0, 5.000, 0),
(188, 'SK', 1, 0, 5.000, 0),
(189, 'SI', 1, 0, 5.000, 0),
(190, 'SB', 1, 0, 5.000, 0),
(191, 'SO', 1, 0, 5.000, 0),
(192, 'ZA', 1, 0, 5.000, 0),
(193, 'ES', 1, 0, 5.000, 0),
(194, 'LK', 1, 0, 5.000, 0),
(195, 'SH', 1, 0, 5.000, 0),
(196, 'KN', 1, 0, 5.000, 0),
(197, 'PM', 1, 0, 5.000, 0),
(198, 'VC', 1, 0, 5.000, 0),
(199, 'SD', 1, 0, 5.000, 0),
(200, 'SR', 1, 0, 5.000, 0),
(201, 'SJ', 1, 0, 5.000, 0),
(202, 'SZ', 1, 0, 5.000, 0),
(203, 'SE', 1, 0, 5.000, 0),
(204, 'CH', 1, 0, 5.000, 0),
(205, 'SY', 1, 0, 5.000, 0),
(206, 'TW', 1, 0, 5.000, 0),
(207, 'TJ', 1, 0, 5.000, 0),
(208, 'TZ', 1, 0, 5.000, 0),
(209, 'TH', 1, 0, 5.000, 0),
(210, 'TG', 1, 0, 5.000, 0),
(211, 'TK', 1, 0, 5.000, 0),
(212, 'TO', 1, 0, 5.000, 0),
(213, 'TT', 1, 0, 5.000, 0),
(214, 'TN', 1, 0, 5.000, 0),
(215, 'TR', 1, 0, 5.000, 0),
(216, 'TM', 1, 0, 5.000, 0),
(217, 'TC', 1, 0, 5.000, 0),
(218, 'TV', 1, 0, 5.000, 0),
(219, 'UG', 1, 0, 5.000, 0),
(220, 'UA', 1, 0, 5.000, 0),
(221, 'AE', 1, 0, 5.000, 0),
(222, 'GB', 1, 0, 5.000, 999),
(224, 'US', 1, 1, 5.000, 1000),
(225, 'VI', 1, 0, 5.000, 0),
(226, 'UY', 1, 0, 5.000, 0),
(227, 'UZ', 1, 0, 5.000, 0),
(228, 'VU', 1, 0, 5.000, 0),
(229, 'VA', 1, 0, 5.000, 0),
(230, 'VE', 1, 0, 5.000, 0),
(231, 'VN', 1, 0, 5.000, 0),
(232, 'WF', 1, 0, 5.000, 0),
(233, 'EH', 1, 0, 5.000, 0),
(234, 'YE', 1, 0, 5.000, 0),
(235, 'ZR', 1, 0, 5.000, 0),
(236, 'ZM', 1, 0, 5.000, 0),
(237, 'ZW', 1, 0, 5.000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_countries_description`
--

CREATE TABLE `uhb_countries_description` (
  `id` smallint(6) NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_countries_description`
--

INSERT INTO `uhb_countries_description` (`id`, `country_id`, `language_id`, `name`) VALUES
(1, 1, 'en', 'Afghanistan'),
(2, 2, 'en', 'Albania'),
(3, 3, 'en', 'Algeria'),
(4, 4, 'en', 'American Samoa'),
(5, 5, 'en', 'Andorra'),
(6, 6, 'en', 'Angola'),
(7, 7, 'en', 'Anguilla'),
(8, 8, 'en', 'Antarctica'),
(9, 9, 'en', 'Antigua and Barbuda'),
(10, 10, 'en', 'Argentina'),
(11, 11, 'en', 'Armenia'),
(12, 12, 'en', 'Aruba'),
(13, 13, 'en', 'Australia'),
(14, 14, 'en', 'Austria'),
(15, 15, 'en', 'Azerbaijan'),
(16, 16, 'en', 'Bahamas'),
(17, 17, 'en', 'Bahrain'),
(18, 18, 'en', 'Bangladesh'),
(19, 19, 'en', 'Barbados'),
(20, 20, 'en', 'Belarus'),
(21, 21, 'en', 'Belgium'),
(22, 22, 'en', 'Belize'),
(23, 23, 'en', 'Benin'),
(24, 24, 'en', 'Bermuda'),
(25, 25, 'en', 'Bhutan'),
(26, 26, 'en', 'Bolivia'),
(27, 27, 'en', 'Bosnia and Herzegowina'),
(28, 28, 'en', 'Botswana'),
(29, 29, 'en', 'Bouvet Island'),
(30, 30, 'en', 'Brazil'),
(31, 31, 'en', 'British Indian Ocean Territory'),
(32, 32, 'en', 'British Virgin Islands'),
(33, 33, 'en', 'Brunei Darussalam'),
(34, 34, 'en', 'Bulgaria'),
(35, 35, 'en', 'Burkina Faso'),
(36, 36, 'en', 'Burundi'),
(37, 37, 'en', 'Cambodia'),
(38, 38, 'en', 'Cameroon'),
(39, 39, 'en', 'Canada'),
(40, 40, 'en', 'Cape Verde'),
(41, 41, 'en', 'Cayman Islands'),
(42, 42, 'en', 'Central African Republic'),
(43, 43, 'en', 'Chad'),
(44, 44, 'en', 'Chile'),
(45, 45, 'en', 'China'),
(46, 46, 'en', 'Christmas Island'),
(47, 47, 'en', 'Cocos (Keeling) Islands'),
(48, 48, 'en', 'Colombia'),
(49, 49, 'en', 'Comoros'),
(50, 50, 'en', 'Congo'),
(51, 51, 'en', 'Cook Islands'),
(52, 52, 'en', 'Costa Rica'),
(53, 53, 'en', 'Cote D\'ivoire'),
(54, 54, 'en', 'Croatia'),
(55, 55, 'en', 'Cuba'),
(56, 56, 'en', 'Cyprus'),
(57, 57, 'en', 'Czech Republic'),
(58, 58, 'en', 'Denmark'),
(59, 59, 'en', 'Djibouti'),
(60, 60, 'en', 'Dominica'),
(61, 61, 'en', 'Dominican Republic'),
(62, 62, 'en', 'East Timor'),
(63, 63, 'en', 'Ecuador'),
(64, 64, 'en', 'Egypt'),
(65, 65, 'en', 'El Salvador'),
(66, 66, 'en', 'Equatorial Guinea'),
(67, 67, 'en', 'Eritrea'),
(68, 68, 'en', 'Estonia'),
(69, 69, 'en', 'Ethiopia'),
(70, 70, 'en', 'Falkland Islands (Malvinas)'),
(71, 71, 'en', 'Faroe Islands'),
(72, 72, 'en', 'Fiji'),
(73, 73, 'en', 'Finland'),
(74, 74, 'en', 'France'),
(75, 75, 'en', 'French Guiana'),
(76, 76, 'en', 'French Polynesia'),
(77, 77, 'en', 'French Southern Territories'),
(78, 78, 'en', 'Gabon'),
(79, 79, 'en', 'Gambia'),
(80, 80, 'en', 'Georgia'),
(81, 81, 'en', 'Germany'),
(82, 82, 'en', 'Ghana'),
(83, 83, 'en', 'Gibraltar'),
(84, 84, 'en', 'Greece'),
(85, 85, 'en', 'Greenland'),
(86, 86, 'en', 'Grenada'),
(87, 87, 'en', 'Guadeloupe'),
(88, 88, 'en', 'Guam'),
(89, 89, 'en', 'Guatemala'),
(90, 90, 'en', 'Guinea'),
(91, 91, 'en', 'Guinea-Bissau'),
(92, 92, 'en', 'Guyana'),
(93, 93, 'en', 'Haiti'),
(94, 94, 'en', 'Heard and McDonald Islands'),
(95, 95, 'en', 'Honduras'),
(96, 96, 'en', 'Hong Kong'),
(97, 97, 'en', 'Hungary'),
(98, 98, 'en', 'Iceland'),
(99, 99, 'en', 'India'),
(100, 100, 'en', 'Indonesia'),
(101, 101, 'en', 'Iraq'),
(102, 102, 'en', 'Ireland'),
(103, 103, 'en', 'Islamic Republic of Iran'),
(104, 104, 'en', 'Israel'),
(105, 105, 'en', 'Italy'),
(106, 106, 'en', 'Jamaica'),
(107, 107, 'en', 'Japan'),
(108, 108, 'en', 'Jordan'),
(109, 109, 'en', 'Kazakhstan'),
(110, 110, 'en', 'Kenya'),
(111, 111, 'en', 'Kiribati'),
(112, 112, 'en', 'Korea, Dem. Peoples Rep of'),
(113, 113, 'en', 'Korea, Republic of'),
(114, 114, 'en', 'Kuwait'),
(115, 115, 'en', 'Kyrgyzstan'),
(116, 116, 'en', 'Laos'),
(117, 117, 'en', 'Latvia'),
(118, 118, 'en', 'Lebanon'),
(119, 119, 'en', 'Lesotho'),
(120, 120, 'en', 'Liberia'),
(121, 121, 'en', 'Libyan Arab Jamahiriya'),
(122, 122, 'en', 'Liechtenstein'),
(123, 123, 'en', 'Lithuania'),
(124, 124, 'en', 'Luxembourg'),
(125, 125, 'en', 'Macau'),
(126, 126, 'en', 'Macedonia'),
(127, 127, 'en', 'Madagascar'),
(128, 128, 'en', 'Malawi'),
(129, 129, 'en', 'Malaysia'),
(130, 130, 'en', 'Maldives'),
(131, 131, 'en', 'Mali'),
(132, 132, 'en', 'Malta'),
(133, 133, 'en', 'Marshall Islands'),
(134, 134, 'en', 'Martinique'),
(135, 135, 'en', 'Mauritania'),
(136, 136, 'en', 'Mauritius'),
(137, 137, 'en', 'Mayotte'),
(138, 138, 'en', 'Mexico'),
(139, 139, 'en', 'Micronesia'),
(140, 140, 'en', 'Moldova, Republic of'),
(141, 141, 'en', 'Monaco'),
(142, 142, 'en', 'Mongolia'),
(143, 143, 'en', 'Montserrat'),
(144, 144, 'en', 'Morocco'),
(145, 145, 'en', 'Mozambique'),
(146, 146, 'en', 'Myanmar'),
(147, 147, 'en', 'Namibia'),
(148, 148, 'en', 'Nauru'),
(149, 149, 'en', 'Nepal'),
(150, 150, 'en', 'Netherlands'),
(151, 151, 'en', 'Netherlands Antilles'),
(152, 152, 'en', 'New Caledonia'),
(153, 153, 'en', 'New Zealand'),
(154, 154, 'en', 'Nicaragua'),
(155, 155, 'en', 'Niger'),
(156, 156, 'en', 'Nigeria'),
(157, 157, 'en', 'Niue'),
(158, 158, 'en', 'Norfolk Island'),
(159, 159, 'en', 'Northern Mariana Islands'),
(160, 160, 'en', 'Norway'),
(161, 161, 'en', 'Oman'),
(162, 162, 'en', 'Pakistan'),
(163, 163, 'en', 'Palau'),
(164, 164, 'en', 'Panama'),
(165, 165, 'en', 'Papua New Guinea'),
(166, 166, 'en', 'Paraguay'),
(167, 167, 'en', 'Peru'),
(168, 168, 'en', 'Philippines'),
(169, 169, 'en', 'Pitcairn'),
(170, 170, 'en', 'Poland'),
(171, 171, 'en', 'Portugal'),
(172, 172, 'en', 'Puerto Rico'),
(173, 173, 'en', 'Qatar'),
(174, 174, 'en', 'Reunion'),
(175, 175, 'en', 'Romania'),
(176, 176, 'en', 'Russian Federation'),
(177, 177, 'en', 'Rwanda'),
(178, 178, 'en', 'Saint Lucia'),
(179, 179, 'en', 'Samoa'),
(180, 180, 'en', 'San Marino'),
(181, 181, 'en', 'Sao Tome and Principe'),
(182, 182, 'en', 'Saudi Arabia'),
(183, 183, 'en', 'Senegal'),
(184, 184, 'en', 'Republic of Serbia'),
(185, 185, 'en', 'Seychelles'),
(186, 186, 'en', 'Sierra Leone'),
(187, 187, 'en', 'Singapore'),
(188, 188, 'en', 'Slovakia'),
(189, 189, 'en', 'Slovenia'),
(190, 190, 'en', 'Solomon Islands'),
(191, 191, 'en', 'Somalia'),
(192, 192, 'en', 'South Africa'),
(193, 193, 'en', 'Spain'),
(194, 194, 'en', 'Sri Lanka'),
(195, 195, 'en', 'St. Helena'),
(196, 196, 'en', 'St. Kitts and Nevis'),
(197, 197, 'en', 'St. Pierre and Miquelon'),
(198, 198, 'en', 'St. Vincent and the Grenadines'),
(199, 199, 'en', 'Sudan'),
(200, 200, 'en', 'Suriname'),
(201, 201, 'en', 'Svalbard and Jan Mayen Islands'),
(202, 202, 'en', 'Swaziland'),
(203, 203, 'en', 'Sweden'),
(204, 204, 'en', 'Switzerland'),
(205, 205, 'en', 'Syrian Arab Republic'),
(206, 206, 'en', 'Taiwan'),
(207, 207, 'en', 'Tajikistan'),
(208, 208, 'en', 'Tanzania, United Republic of'),
(209, 209, 'en', 'Thailand'),
(210, 210, 'en', 'Togo'),
(211, 211, 'en', 'Tokelau'),
(212, 212, 'en', 'Tonga'),
(213, 213, 'en', 'Trinidad and Tobago'),
(214, 214, 'en', 'Tunisia'),
(215, 215, 'en', 'Turkey'),
(216, 216, 'en', 'Turkmenistan'),
(217, 217, 'en', 'Turks and Caicos Islands'),
(218, 218, 'en', 'Tuvalu'),
(219, 219, 'en', 'Uganda'),
(220, 220, 'en', 'Ukraine'),
(221, 221, 'en', 'United Arab Emirates'),
(222, 222, 'en', 'United Kingdom (GB)'),
(223, 224, 'en', 'United States'),
(224, 225, 'en', 'United States Virgin Islands'),
(225, 226, 'en', 'Uruguay'),
(226, 227, 'en', 'Uzbekistan'),
(227, 228, 'en', 'Vanuatu'),
(228, 229, 'en', 'Vatican City State'),
(229, 230, 'en', 'Venezuela'),
(230, 231, 'en', 'Vietnam'),
(231, 232, 'en', 'Wallis And Futuna Islands'),
(232, 233, 'en', 'Western Sahara'),
(233, 234, 'en', 'Yemen'),
(234, 235, 'en', 'Zaire'),
(235, 236, 'en', 'Zambia'),
(236, 237, 'en', 'Zimbabwe'),
(237, 1, 'es', 'Afghanistan'),
(238, 2, 'es', 'Albania'),
(239, 3, 'es', 'Algeria'),
(240, 4, 'es', 'American Samoa'),
(241, 5, 'es', 'Andorra'),
(242, 6, 'es', 'Angola'),
(243, 7, 'es', 'Anguilla'),
(244, 8, 'es', 'Antarctica'),
(245, 9, 'es', 'Antigua and Barbuda'),
(246, 10, 'es', 'Argentina'),
(247, 11, 'es', 'Armenia'),
(248, 12, 'es', 'Aruba'),
(249, 13, 'es', 'Australia'),
(250, 14, 'es', 'Austria'),
(251, 15, 'es', 'Azerbaijan'),
(252, 16, 'es', 'Bahamas'),
(253, 17, 'es', 'Bahrain'),
(254, 18, 'es', 'Bangladesh'),
(255, 19, 'es', 'Barbados'),
(256, 20, 'es', 'Belarus'),
(257, 21, 'es', 'Belgium'),
(258, 22, 'es', 'Belize'),
(259, 23, 'es', 'Benin'),
(260, 24, 'es', 'Bermuda'),
(261, 25, 'es', 'Bhutan'),
(262, 26, 'es', 'Bolivia'),
(263, 27, 'es', 'Bosnia and Herzegowina'),
(264, 28, 'es', 'Botswana'),
(265, 29, 'es', 'Bouvet Island'),
(266, 30, 'es', 'Brazil'),
(267, 31, 'es', 'British Indian Ocean Territory'),
(268, 32, 'es', 'British Virgin Islands'),
(269, 33, 'es', 'Brunei Darussalam'),
(270, 34, 'es', 'Bulgaria'),
(271, 35, 'es', 'Burkina Faso'),
(272, 36, 'es', 'Burundi'),
(273, 37, 'es', 'Cambodia'),
(274, 38, 'es', 'Cameroon'),
(275, 39, 'es', 'Canada'),
(276, 40, 'es', 'Cape Verde'),
(277, 41, 'es', 'Cayman Islands'),
(278, 42, 'es', 'Central African Republic'),
(279, 43, 'es', 'Chad'),
(280, 44, 'es', 'Chile'),
(281, 45, 'es', 'China'),
(282, 46, 'es', 'Christmas Island'),
(283, 47, 'es', 'Cocos (Keeling) Islands'),
(284, 48, 'es', 'Colombia'),
(285, 49, 'es', 'Comoros'),
(286, 50, 'es', 'Congo'),
(287, 51, 'es', 'Cook Islands'),
(288, 52, 'es', 'Costa Rica'),
(289, 53, 'es', 'Cote D\'ivoire'),
(290, 54, 'es', 'Croatia'),
(291, 55, 'es', 'Cuba'),
(292, 56, 'es', 'Cyprus'),
(293, 57, 'es', 'Czech Republic'),
(294, 58, 'es', 'Denmark'),
(295, 59, 'es', 'Djibouti'),
(296, 60, 'es', 'Dominica'),
(297, 61, 'es', 'Dominican Republic'),
(298, 62, 'es', 'East Timor'),
(299, 63, 'es', 'Ecuador'),
(300, 64, 'es', 'Egypt'),
(301, 65, 'es', 'El Salvador'),
(302, 66, 'es', 'Equatorial Guinea'),
(303, 67, 'es', 'Eritrea'),
(304, 68, 'es', 'Estonia'),
(305, 69, 'es', 'Ethiopia'),
(306, 70, 'es', 'Falkland Islands (Malvinas)'),
(307, 71, 'es', 'Faroe Islands'),
(308, 72, 'es', 'Fiji'),
(309, 73, 'es', 'Finland'),
(310, 74, 'es', 'France'),
(311, 75, 'es', 'French Guiana'),
(312, 76, 'es', 'French Polynesia'),
(313, 77, 'es', 'French Southern Territories'),
(314, 78, 'es', 'Gabon'),
(315, 79, 'es', 'Gambia'),
(316, 80, 'es', 'Georgia'),
(317, 81, 'es', 'Germany'),
(318, 82, 'es', 'Ghana'),
(319, 83, 'es', 'Gibraltar'),
(320, 84, 'es', 'Greece'),
(321, 85, 'es', 'Greenland'),
(322, 86, 'es', 'Grenada'),
(323, 87, 'es', 'Guadeloupe'),
(324, 88, 'es', 'Guam'),
(325, 89, 'es', 'Guatemala'),
(326, 90, 'es', 'Guinea'),
(327, 91, 'es', 'Guinea-Bissau'),
(328, 92, 'es', 'Guyana'),
(329, 93, 'es', 'Haiti'),
(330, 94, 'es', 'Heard and McDonald Islands'),
(331, 95, 'es', 'Honduras'),
(332, 96, 'es', 'Hong Kong'),
(333, 97, 'es', 'Hungary'),
(334, 98, 'es', 'Iceland'),
(335, 99, 'es', 'India'),
(336, 100, 'es', 'Indonesia'),
(337, 101, 'es', 'Iraq'),
(338, 102, 'es', 'Ireland'),
(339, 103, 'es', 'Islamic Republic of Iran'),
(340, 104, 'es', 'Israel'),
(341, 105, 'es', 'Italy'),
(342, 106, 'es', 'Jamaica'),
(343, 107, 'es', 'Japan'),
(344, 108, 'es', 'Jordan'),
(345, 109, 'es', 'Kazakhstan'),
(346, 110, 'es', 'Kenya'),
(347, 111, 'es', 'Kiribati'),
(348, 112, 'es', 'Korea, Dem. Peoples Rep of'),
(349, 113, 'es', 'Korea, Republic of'),
(350, 114, 'es', 'Kuwait'),
(351, 115, 'es', 'Kyrgyzstan'),
(352, 116, 'es', 'Laos'),
(353, 117, 'es', 'Latvia'),
(354, 118, 'es', 'Lebanon'),
(355, 119, 'es', 'Lesotho'),
(356, 120, 'es', 'Liberia'),
(357, 121, 'es', 'Libyan Arab Jamahiriya'),
(358, 122, 'es', 'Liechtenstein'),
(359, 123, 'es', 'Lithuania'),
(360, 124, 'es', 'Luxembourg'),
(361, 125, 'es', 'Macau'),
(362, 126, 'es', 'Macedonia'),
(363, 127, 'es', 'Madagascar'),
(364, 128, 'es', 'Malawi'),
(365, 129, 'es', 'Malaysia'),
(366, 130, 'es', 'Maldives'),
(367, 131, 'es', 'Mali'),
(368, 132, 'es', 'Malta'),
(369, 133, 'es', 'Marshall Islands'),
(370, 134, 'es', 'Martinique'),
(371, 135, 'es', 'Mauritania'),
(372, 136, 'es', 'Mauritius'),
(373, 137, 'es', 'Mayotte'),
(374, 138, 'es', 'Mexico'),
(375, 139, 'es', 'Micronesia'),
(376, 140, 'es', 'Moldova, Republic of'),
(377, 141, 'es', 'Monaco'),
(378, 142, 'es', 'Mongolia'),
(379, 143, 'es', 'Montserrat'),
(380, 144, 'es', 'Morocco'),
(381, 145, 'es', 'Mozambique'),
(382, 146, 'es', 'Myanmar'),
(383, 147, 'es', 'Namibia'),
(384, 148, 'es', 'Nauru'),
(385, 149, 'es', 'Nepal'),
(386, 150, 'es', 'Netherlands'),
(387, 151, 'es', 'Netherlands Antilles'),
(388, 152, 'es', 'New Caledonia'),
(389, 153, 'es', 'New Zealand'),
(390, 154, 'es', 'Nicaragua'),
(391, 155, 'es', 'Niger'),
(392, 156, 'es', 'Nigeria'),
(393, 157, 'es', 'Niue'),
(394, 158, 'es', 'Norfolk Island'),
(395, 159, 'es', 'Northern Mariana Islands'),
(396, 160, 'es', 'Norway'),
(397, 161, 'es', 'Oman'),
(398, 162, 'es', 'Pakistan'),
(399, 163, 'es', 'Palau'),
(400, 164, 'es', 'Panama'),
(401, 165, 'es', 'Papua New Guinea'),
(402, 166, 'es', 'Paraguay'),
(403, 167, 'es', 'Peru'),
(404, 168, 'es', 'Philippines'),
(405, 169, 'es', 'Pitcairn'),
(406, 170, 'es', 'Poland'),
(407, 171, 'es', 'Portugal'),
(408, 172, 'es', 'Puerto Rico'),
(409, 173, 'es', 'Qatar'),
(410, 174, 'es', 'Reunion'),
(411, 175, 'es', 'Romania'),
(412, 176, 'es', 'Russian Federation'),
(413, 177, 'es', 'Rwanda'),
(414, 178, 'es', 'Saint Lucia'),
(415, 179, 'es', 'Samoa'),
(416, 180, 'es', 'San Marino'),
(417, 181, 'es', 'Sao Tome and Principe'),
(418, 182, 'es', 'Saudi Arabia'),
(419, 183, 'es', 'Senegal'),
(420, 184, 'es', 'Republic of Serbia'),
(421, 185, 'es', 'Seychelles'),
(422, 186, 'es', 'Sierra Leone'),
(423, 187, 'es', 'Singapore'),
(424, 188, 'es', 'Slovakia'),
(425, 189, 'es', 'Slovenia'),
(426, 190, 'es', 'Solomon Islands'),
(427, 191, 'es', 'Somalia'),
(428, 192, 'es', 'South Africa'),
(429, 193, 'es', 'Spain'),
(430, 194, 'es', 'Sri Lanka'),
(431, 195, 'es', 'St. Helena'),
(432, 196, 'es', 'St. Kitts and Nevis'),
(433, 197, 'es', 'St. Pierre and Miquelon'),
(434, 198, 'es', 'St. Vincent and the Grenadines'),
(435, 199, 'es', 'Sudan'),
(436, 200, 'es', 'Suriname'),
(437, 201, 'es', 'Svalbard and Jan Mayen Islands'),
(438, 202, 'es', 'Swaziland'),
(439, 203, 'es', 'Sweden'),
(440, 204, 'es', 'Switzerland'),
(441, 205, 'es', 'Syrian Arab Republic'),
(442, 206, 'es', 'Taiwan'),
(443, 207, 'es', 'Tajikistan'),
(444, 208, 'es', 'Tanzania, United Republic of'),
(445, 209, 'es', 'Thailand'),
(446, 210, 'es', 'Togo'),
(447, 211, 'es', 'Tokelau'),
(448, 212, 'es', 'Tonga'),
(449, 213, 'es', 'Trinidad and Tobago'),
(450, 214, 'es', 'Tunisia'),
(451, 215, 'es', 'Turkey'),
(452, 216, 'es', 'Turkmenistan'),
(453, 217, 'es', 'Turks and Caicos Islands'),
(454, 218, 'es', 'Tuvalu'),
(455, 219, 'es', 'Uganda'),
(456, 220, 'es', 'Ukraine'),
(457, 221, 'es', 'United Arab Emirates'),
(458, 222, 'es', 'United Kingdom (GB)'),
(459, 224, 'es', 'Estados Unidos'),
(460, 225, 'es', 'United States Virgin Islands'),
(461, 226, 'es', 'Uruguay'),
(462, 227, 'es', 'Uzbekistan'),
(463, 228, 'es', 'Vanuatu'),
(464, 229, 'es', 'Vatican City State'),
(465, 230, 'es', 'Venezuela'),
(466, 231, 'es', 'Vietnam'),
(467, 232, 'es', 'Wallis And Futuna Islands'),
(468, 233, 'es', 'Western Sahara'),
(469, 234, 'es', 'Yemen'),
(470, 235, 'es', 'Zaire'),
(471, 236, 'es', 'Zambia'),
(472, 237, 'es', 'Zimbabwe'),
(473, 1, 'de', 'Afghanistan'),
(474, 2, 'de', 'Albania'),
(475, 3, 'de', 'Algeria'),
(476, 4, 'de', 'American Samoa'),
(477, 5, 'de', 'Andorra'),
(478, 6, 'de', 'Angola'),
(479, 7, 'de', 'Anguilla'),
(480, 8, 'de', 'Antarctica'),
(481, 9, 'de', 'Antigua and Barbuda'),
(482, 10, 'de', 'Argentina'),
(483, 11, 'de', 'Armenia'),
(484, 12, 'de', 'Aruba'),
(485, 13, 'de', 'Australia'),
(486, 14, 'de', 'Austria'),
(487, 15, 'de', 'Azerbaijan'),
(488, 16, 'de', 'Bahamas'),
(489, 17, 'de', 'Bahrain'),
(490, 18, 'de', 'Bangladesh'),
(491, 19, 'de', 'Barbados'),
(492, 20, 'de', 'Belarus'),
(493, 21, 'de', 'Belgium'),
(494, 22, 'de', 'Belize'),
(495, 23, 'de', 'Benin'),
(496, 24, 'de', 'Bermuda'),
(497, 25, 'de', 'Bhutan'),
(498, 26, 'de', 'Bolivia'),
(499, 27, 'de', 'Bosnia and Herzegowina'),
(500, 28, 'de', 'Botswana'),
(501, 29, 'de', 'Bouvet Island'),
(502, 30, 'de', 'Brazil'),
(503, 31, 'de', 'British Indian Ocean Territory'),
(504, 32, 'de', 'British Virgin Islands'),
(505, 33, 'de', 'Brunei Darussalam'),
(506, 34, 'de', 'Bulgaria'),
(507, 35, 'de', 'Burkina Faso'),
(508, 36, 'de', 'Burundi'),
(509, 37, 'de', 'Cambodia'),
(510, 38, 'de', 'Cameroon'),
(511, 39, 'de', 'Canada'),
(512, 40, 'de', 'Cape Verde'),
(513, 41, 'de', 'Cayman Islands'),
(514, 42, 'de', 'Central African Republic'),
(515, 43, 'de', 'Chad'),
(516, 44, 'de', 'Chile'),
(517, 45, 'de', 'China'),
(518, 46, 'de', 'Christmas Island'),
(519, 47, 'de', 'Cocos (Keeling) Islands'),
(520, 48, 'de', 'Colombia'),
(521, 49, 'de', 'Comoros'),
(522, 50, 'de', 'Congo'),
(523, 51, 'de', 'Cook Islands'),
(524, 52, 'de', 'Costa Rica'),
(525, 53, 'de', 'Cote D\'ivoire'),
(526, 54, 'de', 'Croatia'),
(527, 55, 'de', 'Cuba'),
(528, 56, 'de', 'Cyprus'),
(529, 57, 'de', 'Czech Republic'),
(530, 58, 'de', 'Denmark'),
(531, 59, 'de', 'Djibouti'),
(532, 60, 'de', 'Dominica'),
(533, 61, 'de', 'Dominican Republic'),
(534, 62, 'de', 'East Timor'),
(535, 63, 'de', 'Ecuador'),
(536, 64, 'de', 'Egypt'),
(537, 65, 'de', 'El Salvador'),
(538, 66, 'de', 'Equatorial Guinea'),
(539, 67, 'de', 'Eritrea'),
(540, 68, 'de', 'Estonia'),
(541, 69, 'de', 'Ethiopia'),
(542, 70, 'de', 'Falkland Islands (Malvinas)'),
(543, 71, 'de', 'Faroe Islands'),
(544, 72, 'de', 'Fiji'),
(545, 73, 'de', 'Finland'),
(546, 74, 'de', 'France'),
(547, 75, 'de', 'French Guiana'),
(548, 76, 'de', 'French Polynesia'),
(549, 77, 'de', 'French Southern Territories'),
(550, 78, 'de', 'Gabon'),
(551, 79, 'de', 'Gambia'),
(552, 80, 'de', 'Georgia'),
(553, 81, 'de', 'Germany'),
(554, 82, 'de', 'Ghana'),
(555, 83, 'de', 'Gibraltar'),
(556, 84, 'de', 'Greece'),
(557, 85, 'de', 'Greenland'),
(558, 86, 'de', 'Grenada'),
(559, 87, 'de', 'Guadeloupe'),
(560, 88, 'de', 'Guam'),
(561, 89, 'de', 'Guatemala'),
(562, 90, 'de', 'Guinea'),
(563, 91, 'de', 'Guinea-Bissau'),
(564, 92, 'de', 'Guyana'),
(565, 93, 'de', 'Haiti'),
(566, 94, 'de', 'Heard and McDonald Islands'),
(567, 95, 'de', 'Honduras'),
(568, 96, 'de', 'Hong Kong'),
(569, 97, 'de', 'Hungary'),
(570, 98, 'de', 'Iceland'),
(571, 99, 'de', 'India'),
(572, 100, 'de', 'Indonesia'),
(573, 101, 'de', 'Iraq'),
(574, 102, 'de', 'Ireland'),
(575, 103, 'de', 'Islamic Republic of Iran'),
(576, 104, 'de', 'Israel'),
(577, 105, 'de', 'Italy'),
(578, 106, 'de', 'Jamaica'),
(579, 107, 'de', 'Japan'),
(580, 108, 'de', 'Jordan'),
(581, 109, 'de', 'Kazakhstan'),
(582, 110, 'de', 'Kenya'),
(583, 111, 'de', 'Kiribati'),
(584, 112, 'de', 'Korea, Dem. Peoples Rep of'),
(585, 113, 'de', 'Korea, Republic of'),
(586, 114, 'de', 'Kuwait'),
(587, 115, 'de', 'Kyrgyzstan'),
(588, 116, 'de', 'Laos'),
(589, 117, 'de', 'Latvia'),
(590, 118, 'de', 'Lebanon'),
(591, 119, 'de', 'Lesotho'),
(592, 120, 'de', 'Liberia'),
(593, 121, 'de', 'Libyan Arab Jamahiriya'),
(594, 122, 'de', 'Liechtenstein'),
(595, 123, 'de', 'Lithuania'),
(596, 124, 'de', 'Luxembourg'),
(597, 125, 'de', 'Macau'),
(598, 126, 'de', 'Macedonia'),
(599, 127, 'de', 'Madagascar'),
(600, 128, 'de', 'Malawi'),
(601, 129, 'de', 'Malaysia'),
(602, 130, 'de', 'Maldives'),
(603, 131, 'de', 'Mali'),
(604, 132, 'de', 'Malta'),
(605, 133, 'de', 'Marshall Islands'),
(606, 134, 'de', 'Martinique'),
(607, 135, 'de', 'Mauritania'),
(608, 136, 'de', 'Mauritius'),
(609, 137, 'de', 'Mayotte'),
(610, 138, 'de', 'Mexico'),
(611, 139, 'de', 'Micronesia'),
(612, 140, 'de', 'Moldova, Republic of'),
(613, 141, 'de', 'Monaco'),
(614, 142, 'de', 'Mongolia'),
(615, 143, 'de', 'Montserrat'),
(616, 144, 'de', 'Morocco'),
(617, 145, 'de', 'Mozambique'),
(618, 146, 'de', 'Myanmar'),
(619, 147, 'de', 'Namibia'),
(620, 148, 'de', 'Nauru'),
(621, 149, 'de', 'Nepal'),
(622, 150, 'de', 'Netherlands'),
(623, 151, 'de', 'Netherlands Antilles'),
(624, 152, 'de', 'New Caledonia'),
(625, 153, 'de', 'New Zealand'),
(626, 154, 'de', 'Nicaragua'),
(627, 155, 'de', 'Niger'),
(628, 156, 'de', 'Nigeria'),
(629, 157, 'de', 'Niue'),
(630, 158, 'de', 'Norfolk Island'),
(631, 159, 'de', 'Northern Mariana Islands'),
(632, 160, 'de', 'Norway'),
(633, 161, 'de', 'Oman'),
(634, 162, 'de', 'Pakistan'),
(635, 163, 'de', 'Palau'),
(636, 164, 'de', 'Panama'),
(637, 165, 'de', 'Papua New Guinea'),
(638, 166, 'de', 'Paraguay'),
(639, 167, 'de', 'Peru'),
(640, 168, 'de', 'Philippines'),
(641, 169, 'de', 'Pitcairn'),
(642, 170, 'de', 'Poland'),
(643, 171, 'de', 'Portugal'),
(644, 172, 'de', 'Puerto Rico'),
(645, 173, 'de', 'Qatar'),
(646, 174, 'de', 'Reunion'),
(647, 175, 'de', 'Romania'),
(648, 176, 'de', 'Russian Federation'),
(649, 177, 'de', 'Rwanda'),
(650, 178, 'de', 'Saint Lucia'),
(651, 179, 'de', 'Samoa'),
(652, 180, 'de', 'San Marino'),
(653, 181, 'de', 'Sao Tome and Principe'),
(654, 182, 'de', 'Saudi Arabia'),
(655, 183, 'de', 'Senegal'),
(656, 184, 'de', 'Republic of Serbia'),
(657, 185, 'de', 'Seychelles'),
(658, 186, 'de', 'Sierra Leone'),
(659, 187, 'de', 'Singapore'),
(660, 188, 'de', 'Slovakia'),
(661, 189, 'de', 'Slovenia'),
(662, 190, 'de', 'Solomon Islands'),
(663, 191, 'de', 'Somalia'),
(664, 192, 'de', 'South Africa'),
(665, 193, 'de', 'Spain'),
(666, 194, 'de', 'Sri Lanka'),
(667, 195, 'de', 'St. Helena'),
(668, 196, 'de', 'St. Kitts and Nevis'),
(669, 197, 'de', 'St. Pierre and Miquelon'),
(670, 198, 'de', 'St. Vincent and the Grenadines'),
(671, 199, 'de', 'Sudan'),
(672, 200, 'de', 'Suriname'),
(673, 201, 'de', 'Svalbard and Jan Mayen Islands'),
(674, 202, 'de', 'Swaziland'),
(675, 203, 'de', 'Sweden'),
(676, 204, 'de', 'Switzerland'),
(677, 205, 'de', 'Syrian Arab Republic'),
(678, 206, 'de', 'Taiwan'),
(679, 207, 'de', 'Tajikistan'),
(680, 208, 'de', 'Tanzania, United Republic of'),
(681, 209, 'de', 'Thailand'),
(682, 210, 'de', 'Togo'),
(683, 211, 'de', 'Tokelau'),
(684, 212, 'de', 'Tonga'),
(685, 213, 'de', 'Trinidad and Tobago'),
(686, 214, 'de', 'Tunisia'),
(687, 215, 'de', 'Turkey'),
(688, 216, 'de', 'Turkmenistan'),
(689, 217, 'de', 'Turks and Caicos Islands'),
(690, 218, 'de', 'Tuvalu'),
(691, 219, 'de', 'Uganda'),
(692, 220, 'de', 'Ukraine'),
(693, 221, 'de', 'United Arab Emirates'),
(694, 222, 'de', 'United Kingdom (GB)'),
(695, 224, 'de', 'Vereinigte Staaten'),
(696, 225, 'de', 'United States Virgin Islands'),
(697, 226, 'de', 'Uruguay'),
(698, 227, 'de', 'Uzbekistan'),
(699, 228, 'de', 'Vanuatu'),
(700, 229, 'de', 'Vatican City State'),
(701, 230, 'de', 'Venezuela'),
(702, 231, 'de', 'Vietnam'),
(703, 232, 'de', 'Wallis And Futuna Islands'),
(704, 233, 'de', 'Western Sahara'),
(705, 234, 'de', 'Yemen'),
(706, 235, 'de', 'Zaire'),
(707, 236, 'de', 'Zambia'),
(708, 237, 'de', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_coupons`
--

CREATE TABLE `uhb_coupons` (
  `id` int(11) NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `coupon_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date_started` date DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `discount_percent` tinyint(2) NOT NULL,
  `max_amount` smallint(6) NOT NULL DEFAULT '0',
  `times_used` smallint(6) NOT NULL DEFAULT '0',
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_coupons`
--

INSERT INTO `uhb_coupons` (`id`, `hotel_id`, `customer_id`, `coupon_code`, `date_started`, `date_finished`, `discount_percent`, `max_amount`, `times_used`, `comments`, `is_active`) VALUES
(1, 1, 0, 'T0V4-UJKT-PFUT-VGMZ', '2020-12-19', '2020-12-30', 10, 100, 0, 'lorem ipsum', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_currencies`
--

CREATE TABLE `uhb_currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(3) CHARACTER SET latin1 NOT NULL,
  `rate` double(10,4) NOT NULL DEFAULT '1.0000',
  `decimals` tinyint(1) NOT NULL DEFAULT '2',
  `symbol_placement` enum('before','after') CHARACTER SET latin1 NOT NULL DEFAULT 'before',
  `primary_order` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `date_lastupdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_currencies`
--

INSERT INTO `uhb_currencies` (`id`, `name`, `symbol`, `code`, `rate`, `decimals`, `symbol_placement`, `primary_order`, `is_default`, `is_active`, `date_lastupdate`) VALUES
(1, 'UAE DIRHAMS', 'AED', 'AED', 1.0000, 2, 'before', 1, 1, 1, NULL),
(2, 'Euro', '???', 'EUR', 0.7691, 2, 'before', 2, 0, 1, NULL),
(3, 'GB Pound', '??', 'GBP', 0.6555, 2, 'before', 3, 0, 1, NULL),
(4, 'AU Dollar', 'A$', 'AUD', 0.9742, 2, 'before', 4, 0, 1, NULL),
(5, 'CA Dollar', 'C$', 'CAD', 1.0400, 2, 'before', 5, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_customers`
--

CREATE TABLE `uhb_customers` (
  `id` int(11) NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `customer_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - private person, 1- agency',
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `company` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo` varchar(125) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `b_address` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `b_address_2` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `b_city` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `b_state` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `b_country` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `b_zipcode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(32) CHARACTER SET latin1 NOT NULL,
  `user_password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `profile_photo` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `profile_photo_thumb` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `preferred_language` varchar(2) CHARACTER SET latin1 NOT NULL DEFAULT 'en',
  `date_created` datetime DEFAULT NULL,
  `date_lastlogin` datetime DEFAULT NULL,
  `created_by_admin_id` int(11) NOT NULL DEFAULT '0',
  `registered_from_ip` varchar(15) CHARACTER SET latin1 NOT NULL,
  `last_logged_ip` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT '000.000.000.000',
  `email_notifications` tinyint(1) NOT NULL DEFAULT '0',
  `notification_status_changed` datetime DEFAULT NULL,
  `orders_count` smallint(6) NOT NULL DEFAULT '0',
  `rooms_count` smallint(6) NOT NULL DEFAULT '0',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - registration pending, 1 - active customer',
  `is_removed` tinyint(4) NOT NULL DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `registration_code` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_customers`
--

INSERT INTO `uhb_customers` (`id`, `group_id`, `customer_type`, `first_name`, `last_name`, `birth_date`, `company`, `logo`, `url`, `b_address`, `b_address_2`, `b_city`, `b_state`, `b_country`, `b_zipcode`, `phone`, `fax`, `email`, `user_name`, `user_password`, `profile_photo`, `profile_photo_thumb`, `preferred_language`, `date_created`, `date_lastlogin`, `created_by_admin_id`, `registered_from_ip`, `last_logged_ip`, `email_notifications`, `notification_status_changed`, `orders_count`, `rooms_count`, `reviews_count`, `balance`, `is_active`, `is_removed`, `comments`, `registration_code`) VALUES
(1, 1, 0, 'John', 'Smith', NULL, '', '', '', '', '', '', 'CA', 'US', '', '', '', 'john.smith@email.com', 'customer1', '', 'customer1.png', 'customer1_thumb.png', 'en', '2016-04-20 11:00:06', NULL, 0, '127.0.0.1', '', 0, NULL, 0, 0, 2, 0.00, 1, 0, '', ''),
(2, 1, 0, 'Stephan', '', NULL, '', '', '', '', '', '', '', 'DE', '', '', '', 'stephan@email.com', 'customer2', '', 'customer2.png', 'customer2_thumb.png', 'en', '2016-04-21 12:00:02', NULL, 0, '127.0.0.1', '', 0, NULL, 0, 0, 1, 0.00, 1, 0, '', ''),
(3, 1, 0, 'Robert', '', NULL, '', '', '', '', '', '', '', 'GB', '', '', '', 'robert@email.com', 'customer3', '', '', '', 'en', '2016-04-22 13:00:03', NULL, 1270, '', '0', 0, '0000-00-00 00:00:00', 0, 0, 1, 0.00, 1, 0, '', ''),
(4, 1, 0, 'Debora', '', NULL, '', '', '', '', '', '', 'FL', 'US', '', '', '', 'debora@email.com', 'customer4', '', 'customer4.png', 'customer4_thumb.png', 'en', '2016-04-23 14:00:04', NULL, 0, '127.0.0.1', '', 0, NULL, 0, 0, 1, 0.00, 1, 0, '', ''),
(5, 0, 0, 'Manu', 'Sasidharan', '1981-12-21', 'ABC', '', '', 'qqq', 'www', 'eee', 'Kerala', 'IN', '683545', '9988776655', '', 'manu@manu.com', '', '', '', '', 'en', '2020-12-17 09:25:28', NULL, 0, '::1', '', 1, NULL, 1, 1, 0, 0.00, 1, 0, '', ''),
(6, 0, 0, 'Manu', 'Sasidharan', '1981-12-21', 'cc', '', '', 'adrs', '', 'pbvr', '', 'IN', '', '9988776655', '', 'manuspbvr@yahoo.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'en', '2020-12-18 09:00:50', NULL, 0, '::1', '', 1, NULL, 1, 3, 0, 0.00, 1, 0, '', ''),
(7, 0, 0, 'Manu', 'Sasidharan', '1981-12-21', 'ABC', '', '', 'adrs', '', 'pbvr', '', 'IN', '', '9988776655', '', 'manuspbvr@gmail.com', 'manuspbvr', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'en', '2020-12-18 09:08:29', '2020-12-18 09:11:56', 0, '::1', '::1', 1, NULL, 3, 8, 0, 0.00, 1, 0, '', 'EU9T03TA8R5CRA0F43V'),
(8, 0, 0, 'Manu', 'S', NULL, 'test', '', '', '2401 E Recker Rd., 121', '', 'Ancharakandy', 'Kerala', 'IN', '10001', '225577', '', 'codecarrotstech@gmail.com', '', '', '', '', 'en', '2020-12-19 13:52:22', NULL, 0, '::1', '::1', 1, '2020-12-20 16:45:11', 2, 4, 0, 0.00, 1, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_customer_funds`
--

CREATE TABLE `uhb_customer_funds` (
  `id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL DEFAULT '0',
  `admin_id` int(10) NOT NULL DEFAULT '0',
  `funds` decimal(10,2) NOT NULL DEFAULT '0.00',
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `voucher` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_added` datetime DEFAULT NULL,
  `removed_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `removed_comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `removal_date` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_customer_groups`
--

CREATE TABLE `uhb_customer_groups` (
  `id` int(10) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_customer_groups`
--

INSERT INTO `uhb_customer_groups` (`id`, `name`, `description`) VALUES
(1, 'General', 'General purpose only');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_email_templates`
--

CREATE TABLE `uhb_email_templates` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL,
  `template_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `template_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `template_subject` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `template_content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_system_template` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_email_templates`
--

INSERT INTO `uhb_email_templates` (`id`, `language_id`, `template_code`, `template_name`, `template_subject`, `template_content`, `is_system_template`) VALUES
(1, 'en', 'new_account_created', 'Email for new customer', 'Your account has been created', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nCongratulations on creating your new account.\r\n\r\nPlease keep this email for your records, as it contains an important information that you may need, should you ever encounter problems or forget your password.\r\n\r\nYou login: {USER NAME}\r\nYou password: {USER PASSWORD}\r\n\r\nYou may follow the link below to log into your account:\r\n<a href=\"{BASE URL}index.php?customer=login\">Login</a>\r\n\r\nP.S. Remember, we will never sell your name or email address.\r\n\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(2, 'es', 'new_account_created', 'Email para el nuevo cliente', 'Tu cuenta ha sido creada', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nFelicitaciones por la creaci??n de su nueva cuenta.\r\n\r\nPor favor, mantenga este e-mail para sus registros, ya que contiene una informaci??n importante que usted pueda necesitar, si surge alg??n problema u olvidas tu contrase??a.\r\n\r\nUsted entrada: {USER NAME}\r\nUsted contrase??a: {USER PASSWORD}\r\n\r\nUsted puede seguir el siguiente enlace para acceder a su cuenta: <a href=\"{BASE URL}index.php?customer=login\">Acceso Clientes</a>\r\n\r\nPD Recuerde, nosotros nunca venderemos su nombre o direcci??n de correo electr??nico.\r\n\r\nDisfrute!\r\n-\r\nSinceramente,\r\nSoporte al cliente', 1),
(3, 'de', 'new_account_created', 'E-Mail f??r neuen Kunden', 'Ihr Konto wurde erstellt', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nHerzlichen Gl??ckwunsch zu Ihrem neuen Konto erstellen.\r\n\r\nBitte bewahren Sie diese E-Mail f??r Ihre Aufzeichnungen, da sie eine wichtige Information, die Sie ben??tigen, sollten Sie Probleme auftreten oder Ihr Passwort vergessen enth??lt.\r\n\r\nSie Login: {USER NAME}\r\nIhr Passwort: {USER PASSWORD}\r\n\r\nSie k??nnen den folgenden Link in Ihren Account einloggen:\r\n<a href=\"{BASE URL}index.php?customer=login\">Kunden-Login</a>\r\n\r\nP.S. Denken Sie daran, wir werden nie verkaufen Ihren Namen oder E-Mail-Adresse.\r\n\r\nViel Spa??!\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support', 1),
(4, 'en', 'new_account_created_confirm_by_admin', 'Email for new user (admin approval required)', 'Your account has been created (approval required)', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nCongratulations on creating your new account.\r\n\r\nPlease keep this email for your records, as it contains an important information that you may need, should you ever encounter problems or forget your password.\r\n\r\nYour login: {USER NAME}\r\nYour password: {USER PASSWORD}\r\n\r\nAfter your registration will be approved by administrator,  you could log into your account with a following link:\r\n<a href=\"{BASE URL}index.php?customer=login\">Login</a>\r\n\r\nP.S. Remember, we will never sell your name or email address.\r\n\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(5, 'es', 'new_account_created_confirm_by_admin', 'E-mail para el nuevo usuario (requiere aprobaci??n del administrador)', 'Su cuenta ha sido creada (requiere aprobaci??n)', 'Estimados <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nFelicitaciones por la creaci??n de su nueva cuenta.\r\n\r\nPor favor, mantenga este e-mail para sus registros, ya que contiene una informaci??n importante que usted pueda necesitar, si surge alg??n problema u olvidas tu contrase??a.\r\n\r\nSu entrada: {USER NAME}\r\nSu contrase??a: {USER PASSWORD}\r\n\r\nDespu??s de su registro ser?? aprobado por el administrador, puede acceder a su cuenta con el siguiente enlace: <a href=\"\r\n{BASE URL}index.php?customer=login\">Acceso Clientes</a>\r\n\r\nPD Recuerde, nosotros nunca venderemos su nombre o direcci??n de correo electr??nico.\r\n\r\nDisfrute!\r\n-\r\nAtentamente,\r\nAtenci??n al cliente', 1),
(6, 'de', 'new_account_created_confirm_by_admin', 'E-Mail f??r neue Benutzer (admin Genehmigung erforderlich)', 'Ihr Konto wurde erstellt (Best??tigung erforderlich)', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nHerzlichen Gl??ckwunsch zu Ihrem neuen Konto erstellen.\r\n\r\nBitte bewahren Sie diese E-Mail f??r Ihre Aufzeichnungen, da sie eine wichtige Information, die Sie ben??tigen, sollten Sie Probleme auftreten oder Ihr Passwort vergessen enth??lt.\r\n\r\nIhre Login: {USER NAME}\r\nIhr Passwort: {USER PASSWORD}\r\n\r\nNach Ihrer Anmeldung vom Administrator genehmigt werden, k??nnten Sie sich in Ihrem Konto mit folgendem Link anmelden:\r\n<a href=\"{BASE URL}index.php?customer=login\">Kunden-Login</a>\r\n\r\nP.S. Denken Sie daran, wir werden nie verkaufen Ihren Namen oder E-Mail-Adresse.\r\n\r\nViel Spa??!\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support', 1),
(7, 'en', 'new_account_created_confirm_by_email', 'Email for new user (email confirmation required)', 'Your account has been created (confirmation required)', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nCongratulations on creating your new account.\r\n\r\nPlease keep this email for your records, as it contains an important information that you may need, should you ever encounter problems or forget your password.\r\n\r\nYour login: {USER NAME}\r\nYour password: {USER PASSWORD}\r\n\r\nIn order to become authorized member, you will need to confirm your registration. You may follow the link below to access the confirmation page:\r\n<a href=\"{BASE URL}index.php?customer=confirm_registration&c={REGISTRATION CODE}\">Confirm Registration</a>\r\n\r\nP.S. Remember, we will never sell your personal information or email address.\r\n\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(8, 'es', 'new_account_created_confirm_by_email', 'Correo electr??nico para el nuevo usuario (se requiere confirmaci??n)', 'Su cuenta ha sido creada (requiere confirmaci??n por e-mail)', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nFelicitaciones por la creaci??n de su nueva cuenta.\r\n\r\nPor favor, mantenga este e-mail para sus registros, ya que contiene una informaci??n importante que usted pueda necesitar, si surge alg??n problema u olvidas tu contrase??a.\r\n\r\nUsted entrada: {USER NAME}\r\nUsted contrase??a: {USER PASSWORD}\r\n\r\nPara convertirse en miembro autorizado, tendr?? que confirmar su registro. Por favor siga el siguiente enlace para acceder a la p??gina de confirmaci??n: <a href=\"\r\n{BASE URL}index.php?customer=confirm_registration&c={REGISTRATION CODE}\">Confirmar registro</a>\r\n\r\nPD Recuerde, nosotros nunca venderemos su nombre o direcci??n de correo electr??nico.\r\n\r\nDisfrute!\r\n-\r\nSinceramente,\r\nSoporte al cliente', 1),
(9, 'de', 'new_account_created_confirm_by_email', 'E-Mail f??r neue Benutzer (E-Mail eine Best??tigung erforderlich)', 'Ihr Konto wurde erstellt (Best??tigung erforderlich)', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nHerzlichen Gl??ckwunsch zu Ihrem neuen Konto erstellen.\r\n\r\nBitte bewahren Sie diese E-Mail f??r Ihre Aufzeichnungen, da sie eine wichtige Information, die Sie ben??tigen, sollten Sie Probleme auftreten oder Ihr Passwort vergessen enth??lt.\r\n\r\nIhre Login: {USER NAME}\r\nIhr Passwort: {USER PASSWORD}\r\n\r\nUm Mitglied zu werden erm??chtigt, m??ssen Sie Ihre Registrierung best??tigen. Sie k??nnen folgen Sie den untenstehenden Link, um die Best??tigungs-Seite zu erreichen: <a href=\"{BASE URL}index.php?customer=confirm_registration&c={REGISTRATION CODE}\">Best??tigung der Registrierung</a>\r\n\r\nP.S. Denken Sie daran, wir werden nie verkaufen Ihre pers??nlichen Informationen oder E-Mail-Adresse.\r\n\r\nViel Spa??!\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support', 1),
(10, 'en', 'new_account_created_by_admin', 'Email for new user (account created by admin)', 'Your account has been created by admin', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nOur administrator just created a new account for you.\r\n\r\nPlease keep this email for your records, as it contains an important information that you may need, should you ever encounter problems or forget your password.\r\n\r\nYou login: {USER NAME}\r\nYou password: {USER PASSWORD}\r\n\r\nYou may follow the link below to log into your account:\r\n<a href=\"{BASE URL}index.php?customer=login\">Login</a>\r\n\r\nP.S. Remember, we will never sell your name or email address.\r\n\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(11, 'es', 'new_account_created_by_admin', 'Correo electr??nico para el nuevo usuario (cuenta creada por el admin)', 'Su cuenta ha sido creada por admin', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nNuestro administrador acaba de crear una cuenta nueva para usted.\r\n\r\nPor favor, mantenga este e-mail para sus registros, ya que contiene una informaci??n importante que usted pueda necesitar, si surge alg??n problema u olvidas tu contrase??a.\r\n\r\nUsted entrada: {USER NAME}\r\nUsted contrase??a: {USER PASSWORD}\r\n\r\nUsted puede seguir el siguiente enlace para acceder a su cuenta: <a href=\"{BASE URL}index.php?customer=login\">Acceso Clientes</a>\r\n\r\nPD Recuerde, nosotros nunca venderemos su nombre o direcci??n de correo electr??nico.\r\n\r\nDisfrute!\r\n-\r\nAtentamente,\r\nAtenci??n al cliente', 1),
(12, 'de', 'new_account_created_by_admin', 'E-Mail f??r neue Benutzer (Account erstellt von admin)', 'Ihr Konto wurde von admin erstellt', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nUnser Administrator gerade erstellt ein neues Konto f??r Sie.\r\n\r\nBitte bewahren Sie diese E-Mail f??r Ihre Aufzeichnungen, da sie eine wichtige Information, die Sie ben??tigen, sollten Sie Probleme auftreten oder Ihr Passwort vergessen enth??lt.\r\n\r\nSie Login: {USER NAME}\r\nIhr Passwort: {USER PASSWORD}\r\n\r\nSie k??nnen den folgenden Link in Ihren Account einloggen: <a href=\"{BASE URL}index.php?customer=login\">Kunden-Login</a>\r\n\r\nP.S. Denken Sie daran, wir werden nie verkaufen Ihren Namen oder E-Mail-Adresse.\r\n\r\nViel Spa??!\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support', 1),
(13, 'de', 'new_account_created_notify_admin', 'Neues Konto erstellt wurde (benachrichtigen admin)', 'Neues Konto erstellt wurde', 'Hallo Admin!\r\n\r\nEin neuer Benutzer hat bei Ihnen vor Ort registriert worden.\r\nDiese Email enth??lt einen Benutzer-Account Details:\r\n\r\nName: {FIRST NAME} {LAST NAME}\r\nE-Mail: {USER EMAIL}\r\nBenutzername: {USER NAME}\r\n\r\nP.S. Bitte ??berpr??fen Sie, ob es nicht erforderlich, Ihre Zustimmung zur Aktivierung.', 1),
(14, 'en', 'new_account_created_notify_admin', 'New account has been created (notify admin)', 'New account has been created', 'Hello Admin!\r\n\r\nA new user has been registered at your site.\r\nThis email contains a user account details:\r\n\r\nName: {FIRST NAME} {LAST NAME}\r\nEmail: {USER EMAIL}\r\nUsername: {USER NAME}\r\n\r\nP.S. Please check if it doesn\'t require your approval for activation', 1),
(15, 'es', 'new_account_created_notify_admin', 'Nueva cuenta se ha creado (notificar admin)', 'Nueva cuenta se ha creado', 'Hola admin!\r\n\r\nUn nuevo usuario ha sido registrado en su sitio.\r\nEste correo electr??nico contiene una informaci??n de la cuenta de usuario:\r\n\r\nNombre: {FIRST NAME} {LAST NAME}\r\nE-mail: {USER EMAIL}\r\nNombre de usuario: {USER NAME}\r\n\r\nPD Por favor, compruebe si no se requiere su aprobaci??n para la activaci??n.', 1),
(16, 'en', 'password_forgotten', 'Email for customer or admin forgotten password', 'Forgotten Password', 'Hello <b>{USER NAME}</b>!\r\n\r\nYou or someone else asked for your login info on our site:\r\n{WEB SITE}\r\n\r\nYour Login Info:\r\n\r\nUsername: {USER NAME}\r\nPassword: {USER PASSWORD}\r\n\r\n\r\nBest regards,\r\n{WEB SITE}', 1),
(17, 'es', 'password_forgotten', 'Email para el cliente o administrador contrase??a olvidada', 'He olvidado la contrase??a', 'Hola <b>{USER NAME}</b>!\r\n\r\nUsted o alguien m??s pide su informaci??n de acceso en nuestro sitio:\r\n{WEB SITE}\r\n\r\nSu usuario Info:\r\n\r\nNombre de usuario: {USER NAME}\r\nContrase??a: {USER PASSWORD}\r\n\r\n\r\nSaludos cordiales,\r\n{WEB SITE}', 1),
(18, 'de', 'password_forgotten', 'E-Mail-Client oder f??r admin vergessenes Passwort', 'Passwort vergessen?', 'Hallo <b>{USER NAME}</b>!\r\n\r\nSie oder jemand anderes baten um Ihre Login-Informationen auf unserer Website:\r\n{WEB SITE}\r\n\r\nIhre Login-Infos:\r\n\r\nBenutzername: {USER NAME}\r\nPasswort: {USER PASSWORD}\r\n\r\n\r\nMit freundlichen Gr????en,\r\n{WEB SITE}\r\n', 1),
(19, 'en', 'password_changed_by_admin', 'Password changed by admin', 'Your password has been changed', 'Hello <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nYour password was changed by administrator of the site:\r\n{WEB SITE}\r\n\r\nHere your new login info:\r\n-\r\nUsername: {USER NAME} \r\nPassword: {USER PASSWORD}\r\n\r\n-\r\nBest regards,\r\nAdministration', 1),
(20, 'es', 'password_changed_by_admin', 'Contrase??a cambiada por admin', 'Su contrase??a ha sido cambiada', 'Hola <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nSu contrase??a se ha cambiado por el administrador del sitio:\r\n{WEB SITE}\r\n\r\nAqu?? la informaci??n de su nuevo inicio de sesi??n:\r\n-\r\nNombre de usuario: {USER NAME} \r\nContrase??a: {USER PASSWORD}\r\n\r\n-\r\nSaludos cordiales,\r\nAdministraci??n', 1),
(21, 'de', 'password_changed_by_admin', 'Kennwort von admin ge??ndert', 'Ihr Passwort wurde ge??ndert', 'Hallo <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nIhr Passwort wurde durch den Administrator der Website ge??ndert:\r\n{WEB SITE}\r\n\r\nHier werden Ihre neuen Login-Info:\r\n-\r\nBenutzername: {USER NAME} \r\nKennwort: {USER PASSWORD}\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nVerwaltung', 1),
(22, 'en', 'registration_approved_by_admin', 'Email for new customer (registration was approved by admin)', 'Your registration has been approved', 'Dear <b>{FIRST NAME} {LAST NAME}!</b>\r\n\r\nCongratulations! This e-mail is to confirm that your registration at {WEB SITE} has been approved.\r\n\r\nYou can now login in to your account now.\r\n\r\nThank you for choosing {WEB SITE}.\r\n-\r\nSincerely,\r\nAdministration', 1),
(23, 'es', 'registration_approved_by_admin', 'E-mail para clientes nuevos (el registro fue aprobado por el administrador)', 'Su registro ha sido aprobado', 'Estimado <b>{FIRST NAME} {LAST NAME}!</b>\r\n\r\n??Felicitaciones! Este e-mail es para confirmar que su inscripci??n en {WEB SITE} ha sido aprobado.\r\n\r\nAhora puede acceder a su cuenta ahora.\r\n\r\nGracias por elegir {WEB SITE}.\r\n-\r\nAtentamente,\r\nadministraci??n', 1),
(24, 'de', 'registration_approved_by_admin', 'E-Mail f??r neue Kunden (Registrierung wurde von admin zugelassen)', 'Ihre Registrierung genehmigt wurde', 'Sehr geehrte <b>{FIRST NAME} {LAST NAME}!</b>\r\n\r\nHerzlichen Gl??ckwunsch! Diese E-Mail ist zu best??tigen, dass Ihre Anmeldung bei {WEB SITE} genehmigt wurde.\r\n\r\nSie k??nnen jetzt in Ihr Konto jetzt einloggen.\r\n\r\nDanke f??r die Wahl {WEB SITE}.\r\n-\r\nMit freundlichen Gr????en,\r\nVerwaltung', 1),
(25, 'en', 'account_deleted_by_user', 'Account removed email (by customer)', 'Your account has been removed', 'Dear {USER NAME}!\r\n\r\nYour account was removed.\r\n\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(26, 'es', 'account_deleted_by_user', 'Cuenta Eliminada Email (por el cliente)', 'Su cuenta ha sido fue eliminado', 'Estimado {USER NAME}!\r\n\r\nTu cuenta ha sido eliminada.\r\n\r\n-\r\nAtentamente,\r\nAtenci??n al cliente', 1),
(27, 'de', 'account_deleted_by_user', 'Konto entfernt E-Mail (vom Client)', 'Ihr Konto wurde entfernt', 'Sehr geehrte {USER NAME}!\r\n\r\nIhr Konto wurde entfernt.\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support', 1),
(28, 'es', 'new_account_created_without', 'Correo electr??nico para el nuevo cliente/devuelto (sin cuenta)', 'Su informaci??n de contacto ha sido aceptada', 'Querido <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nGracias por enviarnos su informaci??n de contacto. Ahora puede completar su reserva - s??lo tienes que seguir las instrucciones que aparecen en la p??gina de pago.\r\n\r\nPor favor, recuerde que a??n no tiene cuenta en nuestro sitio, siempre se puede crear con facilidad. Para ello basta con seguir este enlace e introducir toda la informaci??n necesaria para crear una cuenta nueva: <a href=\"{BASE URL}index.php?client=create_account\">Crear una cuenta</a>\r\n\r\nPD Recuerde, nosotros nunca venderemos su nombre o direcci??n de correo electr??nico.\r\n\r\nDisfrutar!\r\n-\r\nAtentamente,\r\nAtenci??n al cliente', 1),
(29, 'de', 'new_account_created_without', 'E-Mail f??r neue/kehrte Kunden (ohne Rechnung)', 'Ihre Kontaktinformationen angenommen wurde', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nVielen Dank f??r die Zusendung Ihrer Kontaktdaten. Sie k??nnen nun vervollst??ndigen Sie Ihre Buchung - folgen Sie einfach den Anweisungen auf der Checkout-Seite.\r\n\r\nBitte denken Sie daran, dass auch Sie nicht ??ber Konto auf unserer Website, k??nnen Sie immer schaffen es mit leicht. Um dies zu tun folgen Sie einfach diesem Link und geben Sie alle ben??tigten Informationen auf neue Rechnung erstellen: <a href=\"{BASE URL}index.php?customer=create_account\">Konto erstellen</a>\r\n\r\nP.S. Denken Sie daran, wir werden nie verkaufen Ihren Namen oder E-Mail-Adresse.\r\n\r\nGenie??en!\r\n-\r\nMit freundlichen Gr????en,\r\nCustomer Support', 1),
(30, 'en', 'new_account_created_without', 'Email for new/returned customer (without account)', 'Your contact information has been accepted', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nThank you for sending us your contact information. You may now complete your booking - just follow the instructions on the checkout page.\r\n\r\nPlease remember that even you don\'t have account on our site, you may always create it with easily. To do it simply follow this link and enter all needed information to create a new account: <a href=\"{BASE URL}index.php?customer=create_account\">Create Account</a>\r\n\r\nP.S. Remember, we will never sell your name or email address.\r\n\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(31, 'en', 'order_placed_online', 'Email for online placed orders (not paid yet)', 'Your order has been placed in our system!', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nThank you for reservation request!\r\n\r\nYour order {BOOKING NUMBER} has been placed in our system and will be processed shortly.\r\n{STATUS DESCRIPTION}\r\n\r\n{BOOKING DETAILS}\r\n\r\n{PERSONAL INFORMATION}\r\n\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n\r\n-\r\nSincerely,\r\nCustomer Support\r\n\r\n{HOTEL INFO}', 1),
(32, 'es', 'order_placed_online', 'Email para pedidos en l??nea (a??n sin pagar)', 'Su pedido ha sido realizado en nuestro sistema!', 'Estimado <b>{LAST NAME} {FIRST NAME}</b>!\r\n\r\nGracias por solicitud de reserva!\r\n\r\nSu {BOOKING NUMBER} pedido ha sido realizado en nuestro sistema y se procesar?? en breve.\r\n{STATUS DESCRIPTION}\r\n\r\n{BOOKING DETAILS}\r\n\r\n{PERSONAL INFORMATION}\r\n\r\nPD Por favor, mantenga este e-mail para sus registros, ya que contiene una informaci??n importante que puede\r\nnecesitan.\r\n\r\n-\r\nAtentamente,\r\nAtenci??n al cliente\r\n\r\n{HOTEL INFO}', 1),
(33, 'de', 'order_placed_online', 'E-Mail f??r Bestellungen online gestellt (noch nicht bezahlt)', 'Ihre Bestellung wurde in unserem System gelegt!', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nVielen Dank f??r Reservierungs-Anfrage!\r\n\r\nIhre Bestellung {BOOKING NUMBER} hat in unserem System platziert und wird in K??rze bearbeitet werden.\r\n{STATUS DESCRIPTION}\r\n\r\n{BOOKING DETAILS}\r\n\r\n{PERSONAL INFORMATION}\r\n\r\nP.S. Bitte bewahren Sie diese E-Mail f??r Ihre Aufzeichnungen, da sie eine wichtige Information enth??lt, dass Sie m??glicherweise\r\nben??tigen.\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support\r\n\r\n{HOTEL INFO}', 1),
(34, 'en', 'order_paid', 'Email for orders paid via payment processing systems', 'Your order {BOOKING NUMBER} has been paid and received by the system!', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nThank you for reservation!\r\n\r\nYour order {BOOKING NUMBER} has been completed!\r\n\r\n{BOOKING DETAILS}\r\n\r\n{PERSONAL INFORMATION}\r\n\r\n{BILLING INFORMATION}\r\n\r\n{REFUND INFORMATION}\r\n\r\nP.S. Please keep this email for your records, as it contains an important information that you may need.\r\nP.P.S You may always check your booking status here:\r\n<a href=\"{BASE URL}index.php?page=check_status\">Check Status</a>\r\n\r\n-\r\nSincerely,\r\nCustomer Support\r\n\r\n{HOTEL INFO}', 1),
(35, 'es', 'order_paid', 'Email para los pedidos pagados a trav??s de sistemas de procesamiento de pagos', 'Su pedido {BOOKING NUMBER} ha sido pagado y recibido por el sistema!', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nGracias por su reservaci??n!\r\n\r\nSu {BOOKING NUMBER} fin se ha terminado!\r\n\r\n{BOOKING DETAILS}\r\n\r\n{PERSONAL INFORMATION}\r\n\r\n{BILLING INFORMATION}\r\n\r\n{REFUND INFORMATION}\r\n\r\nPD Por favor, mantenga este e-mail para sus registros, ya que contiene una informaci??n importante que usted pueda necesitar.\r\nPPD Usted siempre puede revisar su estado de su reserva aqu??: <a href=\"{BASE URL}index.php?page=check_status\">Comprobar el estado de</a>\r\n\r\n-\r\nAtentamente,\r\nAtenci??n al cliente\r\n\r\n{HOTEL INFO}', 1),
(36, 'de', 'order_paid', 'E-Mail f??r Bestellungen via Zahlungsabwicklung Systeme bezahlt', 'Ihre Bestellung {BOOKING NUMBER} wurde bezahlt und erhalten vom System!', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nVielen Dank f??r die Reservierung!\r\n\r\nIhre Bestellung {BOOKING NUMBER} ist abgeschlossen!\r\n\r\n{BOOKING DETAILS}\r\n\r\n{PERSONAL INFORMATION}\r\n\r\n{BILLING INFORMATION}\r\n\r\n{REFUND INFORMATION}\r\n\r\nP.S. Bitte bewahren Sie diese E-Mail f??r Ihre Aufzeichnungen, da sie eine wichtige Information, die Sie ben??tigen enth??lt.\r\nP.P.S. Sie k??nnen jederzeit ??berpr??fen Sie Ihre Buchung Status hier: <a href=\"{BASE URL}index.php?page=check_status\">Status ??berpr??fen</a>\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support\r\n\r\n{HOTEL INFO}', 1),
(37, 'en', 'events_new_registration', 'Events - new member has registered (member copy)', 'You have been successfully registered to the event!', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nCongratulations on registering to {EVENT}.\r\n\r\nPlease keep this email for your records, as it contains an important information that you may need.\r\n\r\n-\r\nBest Regards,\r\nAdministration', 1),
(38, 'es', 'events_new_registration', 'Eventos - nuevo miembro se ha registrado (copia de miembro)', 'Se le ha registrado con ??xito en el evento!', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nFelicitaciones por el registro de {EVENT}.\r\n\r\nPor favor, mantenga este e-mail para sus registros, ya que contiene una informaci??n importante que usted pueda necesitar.\r\n\r\n-\r\nSaludos cordiales,\r\nAdministraci??n', 1),
(39, 'de', 'events_new_registration', 'Veranstaltungen - neues Mitglied registriert hat (Mitglied Kopie)', 'Sie en erfolgreich an der Veranstaltung angemeldet haben!', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nHerzlichen Gl??ckwunsch zu der Registrierung zu {EVENT}.\r\n\r\nBitte bewahren Sie diese E-Mail f??r Ihre Aufzeichnungen, da sie eine wichtige Information, die Sie ben??tigen enth??lt.\r\n\r\n-\r\nMit besten Gr????en,\r\nVerwaltung', 1),
(40, 'en', 'order_canceled', 'Reservation has been canceled by Customer/Administrator', 'Your order has been canceled!', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nYour order {BOOKING NUMBER} has been canceled.\r\n\r\n{BOOKING DETAILS}\r\n\r\n{REFUND INFORMATION}\r\n\r\nP.S. Please feel free to contact us if you have any questions.\r\n\r\n-\r\nSincerely,\r\nCustomer Support\r\n\r\n{HOTEL INFO}', 1),
(41, 'es', 'order_canceled', 'Reserva ha sido cancelada por Cliente/Administrator', 'Su pedido ha sido cancelado!', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nSu pedido {BOOKING_NUMBER} ha sido cancelado.\r\n\r\n{BOOKING DETAILS}\r\n\r\n{REFUND INFORMATION}\r\n\r\nPD Por favor, no dude en contactar con nosotros si tiene alguna pregunta.\r\n\r\n-\r\nAtentamente,\r\nSoporte al Cliente\r\n\r\n{HOTEL INFO}', 1),
(42, 'de', 'order_canceled', 'Die Reservierung muss durch Kunden/Administrator wurde abgesagt', 'Ihre Bestellung wurde abgesagt!', 'Sehr geehrte <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nIhre Bestellung {BOOKING NUMBER} wurde abgebrochen.\r\n\r\n{BOOKING DETAILS}\r\n\r\n{REFUND INFORMATION}\r\n\r\nP.S. Bitte z??gern Sie nicht uns zu kontaktieren, wenn Sie Fragen haben.\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support\r\n\r\n{HOTEL INFO}', 1),
(43, 'de', 'order_refunded', 'Die Reservierung wurde erstattet Administrator', 'Ihre Bestellung wurde erstattet', 'Liebe <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nIhre Bestellung {BOOKING NUMBER} wurde erstattet!\r\n\r\n{BOOKING DETAILS}\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nCustomer Support', 1),
(44, 'en', 'order_refunded', 'Reservation has been refunded by administrator', 'Your order  has been refunded', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nYour order {BOOKING NUMBER} has been refunded!\r\n\r\n{BOOKING DETAILS}\r\n\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(45, 'es', 'order_refunded', 'Reserva ha sido reembolsado por el administrador', 'Su orden ha sido reembolsado', 'Querido <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nSu orden {BOOKING NUMBER} ha sido devuelto!\r\n\r\n{BOOKING DETAILS}\r\n\r\n-\r\nAtentamente,\r\nAtenci??n al cliente', 1),
(46, 'de', 'order_status_changed', 'Reservation Status wurde ge??ndert', 'Ihre Reservierung Status wurde ge??ndert.', 'Liebe <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nDer Status Ihrer Reservierung #{BOOKING NUMBER} hat {STATUS DESCRIPTION} ge??ndert worden!\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nCustomer Support', 1),
(47, 'en', 'order_status_changed', 'Reservation status has been changed', 'Your reservation status has been changed.', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nThe status of your reservation #{BOOKING NUMBER} has been changed to {STATUS DESCRIPTION}!\r\n\r\n-\r\nSincerely,\r\nCustomer Support\r\n', 1),
(48, 'es', 'order_status_changed', 'Estado de la reserva se ha cambiado', 'Su estado de la reserva se ha cambiado.', 'Querido <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nEl estado de su reserva #{BOOKING NUMBER} se ha cambiado a {STATUS DESCRIPTION}!\r\n\r\n-\r\nAtentamente,\r\nAtenci??n al cliente', 1),
(49, 'en', 'payment_error', 'Customer payment has been failed for some reason', 'Your payment has been failed', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nThe payment for your booking {BOOKING NUMBER} has been failed. The reason was: {STATUS DESCRIPTION}\r\n\r\n{BOOKING DETAILS}\r\n\r\nP.S. Please feel free to contact us if you have any questions.\r\n\r\n-\r\nSincerely,\r\nCustomer Support\r\n\r\n{HOTEL INFO}', 1),
(50, 'es', 'payment_error', 'De pago del cliente ha sido fallado por alguna raz??n', 'Su pago se ha fallado', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nEl pago de su reserva {BOOKING NUMBER} se ha fallado. La raz??n era: {STATUS DESCRIPTION}\r\n \r\n{BOOKING DETAILS}\r\n\r\nPD Por favor, no dude en contactar con nosotros si tiene alguna pregunta.\r\n\r\n-\r\nAtentamente,\r\nSoporte al Cliente\r\n\r\n{HOTEL INFO}', 1),
(51, 'de', 'payment_error', 'Client-Zahlung aus irgendeinem Grund nicht bestanden', 'Ihre Zahlung wurde nicht', 'Sehr geehrte <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nDie Zahlung f??r Ihre Buchung {BOOKING NUMBER} wurde fehlgeschlagen. Der Grund war: {STATUS DESCRIPTION}\r\n\r\n{BOOKING DETAILS}\r\n\r\nP.S. Bitte z??gern Sie nicht uns zu kontaktieren, wenn Sie Fragen haben.\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support\r\n\r\n{HOTEL INFO}', 1),
(52, 'en', 'subscription_to_newsletter', 'Newsletter - new member has subscribed (member copy)', 'You have been subscribed to the Newsletter', 'Hello!\r\n\r\nYou are receiving this email because you, or someone using this email address, subscribed to the Newsletter of {WEB SITE}\r\n\r\nIf you do not wish to receive such emails in the future, please click this link: <a href=\"{BASE URL}index.php?page=newsletter&task=pre_unsubscribe&email={USER EMAIL}\">Unsubscribe</a>\r\n\r\n-\r\nBest Regards,\r\nAdministration', 1),
(53, 'es', 'subscription_to_newsletter', 'Newsletter - nuevo miembro se ha suscrito (copia miembros)', 'Que se han suscrito al bolet??n de noticias', 'Hola!\r\n\r\nUsted est?? recibiendo este correo electr??nico porque usted o alguien que use la siguiente direcci??n de correo electr??nico, suscritas al bolet??n de noticias de {WEB SITE}\r\n\r\nSi usted no desea recibir dichos correos electr??nicos en el futuro, por favor haga clic en este enlace: <a href=\"{BASE URL}index.php?page=newsletter&task=pre_unsubscribe&email={USER EMAIL}\">Cancelar la suscripci??n</a>\r\n\r\n-\r\nSaludos cordiales,\r\nadministraci??n', 1),
(54, 'de', 'subscription_to_newsletter', 'Newsletter - neues Mitglied abonniert hat (Mitglied Kopie)', 'Sie haben den Newsletter abonniert haben', 'Hallo!\r\n\r\nSie erhalten diese E-Mail, weil Sie oder jemand mit dieser E-Mail-Adresse, den Newsletter von {WEB SITE} abonniert\r\n\r\nWenn Sie nicht m??chten, dass solche E-Mails in der Zukunft erhalten, klicken Sie bitte diesen Link: <a href=\"{BASE URL}index.php?page=newsletter&task=pre_unsubscribe&email={USER EMAIL}\">Abmelden</a>\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nVerwaltung', 1),
(55, 'en', 'unsubscription_from_newsletter', 'Newsletter - member has unsubscribed (member copy)', 'You have been unsubscribed from the Newsletter', 'Hello!\r\n\r\nYou are receiving this email because you, or someone using this email address, unsubscribed from the Newsletter of {WEB SITE}\r\n\r\nYou can always restore your subscription, using the link below: <a href=\"{BASE URL}index.php?page=newsletter&task=pre_subscribe&email={USER EMAIL}\">Subscribe</a>\r\n\r\n-\r\nBest Regards,\r\nAdministration', 1),
(56, 'es', 'unsubscription_from_newsletter', 'Newsletter - miembro ha dado de baja (miembro de la copia)', 'Se le ha cancelado la suscripci??n a la Newsletter', 'Hola!\r\n\r\nUsted est?? recibiendo este correo electr??nico porque usted o alguien que use la siguiente direcci??n de correo electr??nico, de baja de la Newsletter de {WEB SITE}\r\n\r\nSiempre podr?? restaurar su suscripci??n, usando el siguiente enlace: <a href=\"{BASE URL}index.php?page=newsletter&task=pre_subscribe&email={USER EMAIL}\">Suscribirse</a>\r\n\r\n-\r\nSaludos cordiales,\r\nadministraci??n', 1),
(57, 'de', 'unsubscription_from_newsletter', 'Newsletter - Mitglied hat sich abgemeldet (Mitglied Kopie)', 'Sie haben den Newsletter abbestellt worden', 'Hallo!\r\n\r\nSie erhalten diese E-Mail, weil Sie oder jemand mit dieser E-Mail-Adresse, von der Newsletter von {WEB SITE} abgemeldet\r\n\r\nSie k??nnen immer wieder Ihr Abonnement, ??ber den Link unten: <a href=\"{BASE URL}index.php?page=newsletter&task=pre_subscribe&email={USER EMAIL}\">Abonnieren</a>\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nVerwaltung', 1),
(58, 'en', 'reservation_expired', 'Reservation has been expired', 'Your reservation has been expired!', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nYour order reservation has been expired.\r\n\r\n{BOOKING DETAILS}\r\n\r\nP.S. Please feel free to contact us if you have any questions.\r\n\r\n-\r\nSincerely,\r\nCustomer Support\r\n\r\n{HOTEL INFO}', 1),
(59, 'es', 'reservation_expired', 'Reserva ha expirado', 'Su reserva ha sido vencido!', 'Querido <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nSu reserva orden ha sido vencido.\r\n\r\n{BOOKING DETAILS}\r\n\r\nPD Por favor, no dude en contactar con nosotros si tiene alguna pregunta.\r\n\r\n-\r\nAtentamente, \r\nAtenci??n al cliente\r\n\r\n{HOTEL INFO}', 1),
(60, 'de', 'reservation_expired', 'Reservierung ist abgelaufen', 'Ihre Reservierung ist abgelaufen!', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nIhre Bestellung Reservierung ist abgelaufen.\r\n\r\n{BOOKING DETAILS}\r\n\r\nP.S. Bitte z??gern Sie nicht uns zu kontaktieren, wenn Sie Fragen haben.\r\n\r\n-\r\nMit freundlichen Gr????en, \r\nKunden-Support\r\n\r\n{HOTEL INFO}', 1),
(61, 'en', 'new_review', 'Email for new review', 'You left a review', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nYour review has been set aside for the hotel {HOTEL}.\r\nYou can view the link below\r\n{REVIEW LINK}\r\n\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(62, 'es', 'new_review', 'Email un examen de nuevo', 'Dejaste una revisi??n', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nTu opini??n se ha reservado para el hotel {HOTEL}.\r\nSe puede ver en el siguiente enlace\r\n{REVIEW LINK}\r\n\r\n-\r\nAtentamente,\r\nAtenci??n al cliente', 1),
(63, 'de', 'new_review', 'E-Mail f??r neue Bewertung', 'Sie hinterlie?? eine Bewertung', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nIhre Meinung ist f??r das Hotel beiseite legen {HOTEL}.\r\n\r\nK??nnen Sie den Link ansehen{REVIEW LINK}\r\n\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support', 1),
(64, 'en', 'test_template', 'Testing Email', 'Testing Email', 'Hello <b>{USER NAME}</b>!\r\n\r\nThis a testing email.\r\n\r\nBest regards,\r\n{WEB SITE}', 0),
(65, 'es', 'test_template', 'Prueba de correo electr??nico', 'Prueba de correo electr??nico', 'Hola <b>{USER NAME}</b>!\r\n\r\nEsta es una prueba de correo electr??nico.\r\n\r\nSaludos cordiales,\r\n{WEB SITE}', 0),
(66, 'de', 'test_template', 'Testen E-Mail', 'Testen E-Mail', 'Hallo <b>{USER NAME}</b>!\r\n\r\nDies ist ein Test E-Mail.\r\n\r\nMit freundlichen Gr????en,\r\n{WEB SITE}', 0),
(67, 'en', 'notice_leave_review', 'Notice to leave a review', 'Please Leave a Review', 'Dear <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nThank you for using our hotel we hope that you enjoyed it.\r\nYou can post a review about our hotel <a href=\"{LINK REVIEW}\">here</a>\r\n\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support', 1),
(68, 'es', 'notice_leave_review', 'Notar en dejar un comentario', 'Por favor Lave y Revev', 'Estimado <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nGracias por usar nuestro hotel, esperamos que les haya gustado usted.\r\nUsted puede dejar un comentario sobre nuestro hotel <a href=\"{LINK REVIEW}\">aqu??</a>\r\n\r\nDisfrute!\r\n-\r\nSinceramente,\r\nSoporte al cliente', 1),
(69, 'de', 'notice_leave_review', 'Bemerken Sie eine Rezension zu verlassen', 'Bitte Lave und Revev', 'Lieber <b>{FIRST NAME} {LAST NAME}</b>!\r\n\r\nVielen Dank, dass Sie sich f??r unser Hotel wir hoffen, dass es Ihnen gefallen hat.\r\nSie k??nnen einen ??berblick ??ber unser Hotel Post <a href=\"{LINK REVIEW}\">hier</a>\r\n\r\nViel Spa??!\r\n-\r\nMit freundlichen Gr????en,\r\nKunden-Support', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_events_registered`
--

CREATE TABLE `uhb_events_registered` (
  `id` int(10) NOT NULL,
  `event_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date_registered` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_extras`
--

CREATE TABLE `uhb_extras` (
  `id` int(11) NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `checkforDays` tinyint(1) NOT NULL,
  `reservation_type` enum('ALL_BETWEEN','ANY_IN','CHECKIN_IN') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '''ALL_BETWEEN'', ''ANY_IN'', ''CHECKIN_IN''',
  `rooms` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `rates` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price_type` enum('ROOM_ONCE','ROOM_PER_NIGHT','PERSON_ONCE','PERSON_PER_NIGHT','PERSON_RANGE_ONCE','RESERVE_ONCE','RESERVE_PER_NIGHT') COLLATE utf8_unicode_ci DEFAULT 'ROOM_ONCE' COMMENT '''ROOM_ONCE'',''ROOM_PER_NIGHT'',''PERSON_ONCE'',''PERSON_PER_NIGHT'',''PERSON_RANGE_ONCE'',''RESERVE_ONCE'',''RESERVE_PER_NIGHT''',
  `price_per_num_persons` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `price2` decimal(10,2) NOT NULL,
  `price3` decimal(10,2) NOT NULL,
  `price4` decimal(10,2) NOT NULL,
  `price5` decimal(10,2) NOT NULL,
  `price6` decimal(10,2) NOT NULL,
  `price7` decimal(10,2) NOT NULL,
  `price8` decimal(10,2) NOT NULL,
  `price9` decimal(10,2) NOT NULL,
  `price10` decimal(10,2) NOT NULL,
  `price11` decimal(10,2) NOT NULL,
  `price12` decimal(10,2) NOT NULL,
  `canChooseDaysToApplyAux` tinyint(1) NOT NULL,
  `ageCategory` enum('ALL','ADULT','CHILD') COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '''ALL'',''ADULT'',''CHILD''',
  `minStay` tinyint(2) NOT NULL,
  `maxStay` tinyint(2) NOT NULL,
  `daysInAdvance` int(3) NOT NULL,
  `maximum_count` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `provider` enum('HOTEL','EXTERNAL') COLLATE utf8_unicode_ci NOT NULL COMMENT '''HOTEL'',''EXTERNAL''',
  `notifyEmail` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_extras`
--

INSERT INTO `uhb_extras` (`id`, `hotel_id`, `checkforDays`, `reservation_type`, `rooms`, `rates`, `price_type`, `price_per_num_persons`, `price`, `price2`, `price3`, `price4`, `price5`, `price6`, `price7`, `price8`, `price9`, `price10`, `price11`, `price12`, `canChooseDaysToApplyAux`, `ageCategory`, `minStay`, `maxStay`, `daysInAdvance`, `maximum_count`, `image`, `provider`, `notifyEmail`, `priority_order`, `is_active`) VALUES
(1, 2, 1, 'ALL_BETWEEN', '[\"1\",\"2\",\"3\",\"4\",\"9\",\"10\",\"12\",\"13\",\"14\",\"15\",\"5\",\"6\",\"7\",\"8\",\"16\",\"17\",\"18\",\"19\"]', '[\"on\",\"on\"]', 'RESERVE_PER_NIGHT', '[\"100.00\",\"222\",\"222\",\"\",\"555\",\"33\",\"777\",\"\",\"99\",\"99\",\"\",\"33\",null]', 6666.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1, NULL, 1, 1, 2, 0, 'https://images.mirai.com/EXTRAS%2FSHARED%2Fbed%2FiStock_000013850098XSmall_1480593278497.jpg', 'EXTERNAL', 'extantinfotect2020@gmail.com', 0, 1),
(2, 2, 1, 'ALL_BETWEEN', '[\"9\",\"10\",\"12\",\"13\",\"14\",\"15\",\"5\",\"6\",\"7\",\"8\",\"16\",\"17\",\"18\",\"19\"]', '[\"on\",\"on\"]', 'ROOM_ONCE', '[\"100.00\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",null]', 99999.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0, NULL, 16, 19, 3, 0, 'https://images.mirai.com/EXTRAS%2FSHARED%2Fbed%2FiStock_000013850098XSmall_1480593278497.jpg', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_extrasitems`
--

CREATE TABLE `uhb_extrasitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `Parent_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci DEFAULT '0',
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `conditions` text COLLATE utf8_unicode_ci,
  `hotel_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_extrasitems`
--

INSERT INTO `uhb_extrasitems` (`id`, `extra_id`, `Parent_id`, `language_id`, `name`, `subtitle`, `description`, `conditions`, `hotel_id`) VALUES
(1, 1, '', 'en', 'Wireless Internet Access', '', 'Wireless Internet Access (24 hour period)	', '', 0),
(4, 2, '', 'en', 'Airport Pickup', '', 'Airport Pickup (1 car with 5 seater)', '', 0),
(7, 3, '', 'en', 'Extra1', '', 'Extra1Extra1Extra1', '', 0),
(10, 4, 'bvbv', '', 'dfbb', '', 'bnvbnbn', '', 0),
(11, 5, 'sdfdd', '', 'test', '', 'gfdgdgd', '', 0),
(13, 0, '0', '0', 'required', NULL, 'required', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_extras_availability`
--

CREATE TABLE `uhb_extras_availability` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available_date` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_extras_availability`
--

INSERT INTO `uhb_extras_availability` (`id`, `extra_id`, `available_date`, `description`) VALUES
(332, 1, '2021-01-14', ''),
(331, 1, '2021-01-13', ''),
(330, 1, '2021-01-12', ''),
(333, 1, '2021-01-15', ''),
(329, 2, '2021-01-30', ''),
(328, 2, '2021-01-29', ''),
(327, 2, '2021-01-28', ''),
(326, 2, '2021-01-27', '');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_extras_description`
--

CREATE TABLE `uhb_extras_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `conditions` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_extras_description`
--

INSERT INTO `uhb_extras_description` (`id`, `extra_id`, `parent_id`, `language_id`, `name`, `subtitle`, `description`, `conditions`) VALUES
(1, 1, '3', '', 'wireless internet access', 'ewrrt', 'wireless internet access 24  hours', 'retertre'),
(2, 2, '3', '', 'test extra', '', 'fsdfdghgffgh', '');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_faq_categories`
--

CREATE TABLE `uhb_faq_categories` (
  `id` int(10) NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_faq_categories_description`
--

CREATE TABLE `uhb_faq_categories_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `faq_category_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_faq_category_items`
--

CREATE TABLE `uhb_faq_category_items` (
  `id` int(10) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_faq_category_items_description`
--

CREATE TABLE `uhb_faq_category_items_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `faq_category_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `faq_question` text COLLATE utf8_unicode_ci NOT NULL,
  `faq_answer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_gallery_albums`
--

CREATE TABLE `uhb_gallery_albums` (
  `id` int(10) NOT NULL,
  `album_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `album_type` enum('images','video') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'images',
  `priority_order` smallint(6) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_gallery_albums`
--

INSERT INTO `uhb_gallery_albums` (`id`, `album_code`, `album_type`, `priority_order`, `is_active`) VALUES
(1, 'afbirxww', 'images', 1, 1),
(2, 'dkw3vvot', 'video', 11, 1),
(3, '7u9sfhaz', 'images', 3, 1),
(4, '0bxbqgps', 'images', 5, 1),
(5, '6z5i5ikr', 'images', 7, 1),
(6, 'gvgbrtmc', 'images', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_gallery_albums_description`
--

CREATE TABLE `uhb_gallery_albums_description` (
  `id` int(10) NOT NULL,
  `gallery_album_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_gallery_albums_description`
--

INSERT INTO `uhb_gallery_albums_description` (`id`, `gallery_album_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'es', 'General de las im??genes', 'General de las im??genes'),
(2, 1, 'en', 'General Images', 'General Images'),
(3, 1, 'de', 'General Images', 'General Images'),
(4, 2, 'en', 'General Video', 'General Video'),
(5, 2, 'es', 'Para Video', 'Para Video'),
(6, 2, 'de', 'General Video', 'General Video'),
(7, 3, 'en', 'Single Rooms', 'Single Rooms'),
(8, 3, 'es', 'Habitaciones individuales', 'Habitaciones individuales'),
(9, 3, 'de', 'Single Rooms', 'Single Rooms'),
(10, 4, 'en', 'Double Rooms', 'Double Rooms'),
(11, 4, 'es', 'Habitaciones Dobles', 'Habitaciones Dobles'),
(12, 4, 'de', 'Double Rooms', 'Double Rooms'),
(13, 5, 'en', 'Superior Rooms', 'Superior Rooms'),
(14, 5, 'es', 'Habitaciones Superiores', 'Habitaciones Superiores'),
(15, 5, 'de', 'Superior Rooms', 'Superior Rooms'),
(16, 6, 'en', 'Luxury Rooms', 'Luxury Rooms'),
(17, 6, 'es', 'Habitaciones de Lujo', 'Habitaciones de Lujo'),
(18, 6, 'de', 'Luxury Rooms', 'Luxury Rooms');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_gallery_album_items`
--

CREATE TABLE `uhb_gallery_album_items` (
  `id` int(10) NOT NULL,
  `album_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `item_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_file_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `priority_order` smallint(6) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_gallery_album_items`
--

INSERT INTO `uhb_gallery_album_items` (`id`, `album_code`, `item_file`, `item_file_thumb`, `priority_order`, `is_active`) VALUES
(1, 'dkw3vvot', 'http://www.youtube.com/watch?v=5VIV8nt2KkU', '', 5, 1),
(2, 'afbirxww', 'home.jpg', 'home_thumb.jpg', 1, 1),
(3, '7u9sfhaz', 'img1_1.jpg', 'img1_1_thumb.jpg', 1, 1),
(4, '7u9sfhaz', 'img1_2.jpg', 'img1_2_thumb.jpg', 2, 1),
(5, '7u9sfhaz', 'img1_3.jpg', 'img1_3_thumb.jpg', 3, 1),
(6, '0bxbqgps', 'img2_1.jpg', 'img2_1_thumb.jpg', 1, 1),
(7, '0bxbqgps', 'img2_2.jpg', 'img2_2_thumb.jpg', 2, 1),
(8, '0bxbqgps', 'img2_3.jpg', 'img2_3_thumb.jpg', 3, 1),
(9, '6z5i5ikr', 'img3_1.jpg', 'img3_1_thumb.jpg', 1, 1),
(10, '6z5i5ikr', 'img3_2.jpg', 'img3_2_thumb.jpg', 2, 1),
(11, '6z5i5ikr', 'img3_3.jpg', 'img3_3_thumb.jpg', 3, 1),
(12, 'gvgbrtmc', 'img4_1.jpg', 'img4_1_thumb.jpg', 1, 1),
(13, 'gvgbrtmc', 'img4_2.jpg', 'img4_2_thumb.jpg', 2, 1),
(14, 'gvgbrtmc', 'img4_3.jpg', 'img4_3_thumb.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_gallery_album_items_description`
--

CREATE TABLE `uhb_gallery_album_items_description` (
  `id` int(10) NOT NULL,
  `gallery_album_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_gallery_album_items_description`
--

INSERT INTO `uhb_gallery_album_items_description` (`id`, `gallery_album_item_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'es', 'Mi video del hotel', ''),
(2, 1, 'en', 'My Hotel Video', ''),
(3, 1, 'de', 'My Hotel Video', ''),
(4, 2, 'es', 'Foto #1', ''),
(5, 2, 'en', 'Picture #1', ''),
(6, 2, 'de', 'Picture #1', ''),
(7, 3, 'en', 'Picture #2', ''),
(8, 3, 'es', 'Foto #2', ''),
(9, 3, 'de', 'Picture #2', ''),
(10, 4, 'en', 'Picture #3', ''),
(11, 4, 'es', 'Foto #3', ''),
(12, 4, 'de', 'Picture #3', ''),
(13, 5, 'en', 'Picture #1', ''),
(14, 5, 'es', 'Foto #1', ''),
(15, 5, 'de', 'Picture #1', ''),
(16, 6, 'en', 'Picture #2', ''),
(17, 6, 'es', 'Foto #2', ''),
(18, 6, 'de', 'Picture #2', ''),
(19, 7, 'en', 'Picture #3', ''),
(20, 7, 'es', 'Foto #3', ''),
(21, 7, 'de', 'Picture #3', ''),
(22, 8, 'en', 'Picture #1', ''),
(23, 8, 'es', 'Foto #1', ''),
(24, 8, 'de', 'Picture #1', ''),
(25, 9, 'en', 'Picture #2', ''),
(26, 9, 'es', 'Foto #2', ''),
(27, 9, 'de', 'Picture #2', ''),
(28, 10, 'en', 'Picture #3', ''),
(29, 10, 'es', 'Foto #3', ''),
(30, 10, 'de', 'Picture #3', ''),
(31, 11, 'en', 'Picture #1', ''),
(32, 11, 'es', 'Foto #1', ''),
(33, 11, 'de', 'Picture #1', ''),
(34, 12, 'de', 'Picture #2', ''),
(35, 12, 'en', 'Picture #2', ''),
(36, 12, 'es', 'Foto #2', ''),
(37, 13, 'en', 'Picture #3', ''),
(38, 13, 'es', 'Foto #3', ''),
(39, 13, 'de', 'Picture #3', ''),
(40, 14, 'en', '', ''),
(41, 14, 'es', '', ''),
(42, 14, 'de', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotels`
--

CREATE TABLE `uhb_hotels` (
  `id` smallint(6) NOT NULL,
  `hotel_location_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_type_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `hotel_group_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_zone` varchar(5) CHARACTER SET latin1 NOT NULL,
  `map_code` text COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `longitude` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `latitude_center` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `longitude_center` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `distance_center` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hotel_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hotel_currency` int(5) NOT NULL,
  `tax_included` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `hotel_image_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `agent_commision` decimal(4,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `stars` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `facilities` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `cancel_reservation_day` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Specifies the number of days before customers may cancel a reservation for free',
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `number_of_views` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_hotels`
--

INSERT INTO `uhb_hotels` (`id`, `hotel_location_id`, `property_type_id`, `hotel_group_id`, `phone`, `fax`, `email`, `time_zone`, `map_code`, `latitude`, `longitude`, `latitude_center`, `longitude_center`, `distance_center`, `hotel_image`, `hotel_currency`, `tax_included`, `hotel_image_thumb`, `agent_commision`, `stars`, `facilities`, `cancel_reservation_day`, `priority_order`, `number_of_views`, `is_default`, `is_active`) VALUES
(1, 1, 2, 1, '1-800-123-4567', '1-800-123-6789', 'info@hotel1.com', '-8', '<iframe width=\"100%\" height=\"400\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=Hotel+Circle+South,+San+Diego,+California,+United+States&aq=1&sll=33.981232,-84.173813&sspn=0.12868,0.307274&ie=UTF8&hq=&hnear=Hotel+Cir+S,+San+Diego,+California&ll=32.759,-117.177036&spn=0.017215,0.038409&z=14&output=embed\"></iframe>', '32.7742488', '-117.1411815', '', '', '', 'hotel_main_1.jpg', 0, 'N', 'hotel_main_1_thumb.jpg', 9.0, '4', 'a:9:{i:0;s:1:\"1\";i:1;s:1:\"4\";i:2;s:1:\"5\";i:3;s:1:\"6\";i:4;s:1:\"9\";i:5;s:2:\"10\";i:6;s:2:\"11\";i:7;s:2:\"14\";i:8;s:2:\"16\";}', 7, 1, 2, 1, 1),
(2, 2, 1, 1, '1-800-123-2222', '1-800-123-2223', 'info@hotel2.com', '-6', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2948.0965968856144!2d-71.0666208!3d42.361780599999996!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89e3709a3c7713c5%3A0x922cf2c02c6d4e5a!2s5+Blossom+St%2C+Charles+River+Plaza+Shopping+Center%2C+Boston%2C+MA+02114!5e0!3m2!1sen!2s!4v1405938488556\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\"></iframe>', '', '', '', '', '', 'hotel_main_2.jpg', 1, 'N', 'hotel_main_2_thumb.jpg', 1.5, '4', 'a:8:{i:0;s:1:\"4\";i:1;s:1:\"6\";i:2;s:1:\"9\";i:3;s:2:\"11\";i:4;s:2:\"12\";i:5;s:2:\"15\";i:6;s:2:\"16\";i:7;s:2:\"17\";}', 7, 2, 0, 0, 1),
(3, 3, 1, 2, '1-800-123-2233', '1-800-123-1234', 'info@hotel3.com', '-8', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3021.7983721254104!2d-73.9780617!3d40.7664592!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258f72e9171bb%3A0x3adf1f82b9f2dc62!2sCentral+Park+S%2C+New+York%2C+NY+10019!5e0!3m2!1sen!2s!4v1406544095540\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0\"></iframe>', '', '', '', '', '', 'hotel_main_3.jpg', 0, 'N', 'hotel_main_3_thumb.jpg', 0.0, '5', 'a:11:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"8\";i:4;s:1:\"9\";i:5;s:2:\"12\";i:6;s:2:\"14\";i:7;s:2:\"15\";i:8;s:2:\"17\";i:9;s:2:\"19\";i:10;s:2:\"22\";}', 12, 3, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotels_description`
--

CREATE TABLE `uhb_hotels_description` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL DEFAULT 'en',
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `name_center_point` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `preferences` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_hotels_description`
--

INSERT INTO `uhb_hotels_description` (`id`, `hotel_id`, `language_id`, `name`, `address`, `name_center_point`, `description`, `preferences`) VALUES
(1, 1, 'en', 'Rotem King Villa', 'San Diego, CA 92108, USA', '', '<p>Step into a world of ease, luxury and Swiss hospitality at The Stamford, our 5-star deluxe hotel. Located in the heart of the city amidst world-class shopping, entertainment and the CBD. The hotel is seated at Turn 9 of the F1 race and 20 minutes away from the Airport.</p>', ''),
(4, 2, 'en', 'Wyndham Boston Hill', '5 Blossom Street, Boston, MA 02114', '', '<p>The Museum of Science and TD Bank Garden are a short distance from this downtown Boston hotel which features completely non-smoking rooms, an on-site restaurant and many modern amenities. Thoughtful amenities at the Wyndham Boston Beacon Hill include a 24-hour fitness center, a seasonal outdoor swimming pool and modern business facilities. Guests can also enjoy on-site dining at Dean\'s List restaurant, which serves small plates and has an extensive drink menu.</p>\r\n<p>The Boston Wyndham Beacon Hill is near the famed Faneuil Hall and Quincy Market. Boston Common, the Hynes Convention Center and the Boston Public Gardens are also close to the hotel.</p>', 'Here you may found our hotel preferences.'),
(7, 3, 'en', 'Park Lany Hotel', '37 Central Park South, New York City, NY 10019', '', '<p>The Park Lany Hotel is a deluxe hotel with a European atmosphere, providing views of Central Park and the New York skyline. It is only a 2-minute walk from the elegant shops of 5th Avenue and the 59th Street N,Q,R subway station. Spacious and bright, the rooms at the Park Lany Hotel are fitted with oversized windows and fine sheets. Amenities include flat-screen TVs and access to the on-site fitness center.</p>\r\n<p>??</p>\r\n<p>Enjoy a seasonal menu created by Jeff Cristelli at The Park Room Restaurant, or select from a wide variety of cocktails at Harry\'s New York Bar. New York???s Museum of Modern Art, Radio City Music Hall, and Rockefeller Center, are all within a 10-minute walk. With the park right in front of the hotel, jogging and recreational activities are easily accessible.</p>', 'If in your dream you see a big hotel with good furniture, ahead you will have the life full of pleasure. Stay in shabby dirty hotel with the sick owner dreams to failure or receiving a sad vital lesson.'),
(10, 4, 'en', 'Wyndham Boston Hill', '5 Blossom Street, Boston, MA 02114', 'abc', 'The Museum of Science and TD Bank Garden are a short distance from this downtown Boston hotel which features completely non-smoking rooms, an on-site restaurant and many modern amenities. Thoughtful amenities at the Wyndham Boston Beacon Hill include a 24-hour fitness center, a seasonal outdoor swimming pool and modern business facilities. Guests can also enjoy on-site dining at Dean\'s List restaurant, which serves small plates and has an extensive drink menu.</p>\r\n<p>The Boston Wyndham Beacon Hill is near the famed Faneuil Hall and Quincy Market. Boston Common, the Hynes Convention Center and the Boston Public Gardens are also close to the hotel.', 'Here you may found our hotel preferences.'),
(11, 2, 'en', 'Wyndham Boston Hill', '5 Blossom Street, Boston, MA 02114', 'abc', 'The Museum of Science and TD Bank Garden are a short distance from this downtown Boston hotel which features completely non-smoking rooms, an on-site restaurant and many modern amenities. Thoughtful amenities at the Wyndham Boston Beacon Hill include a 24-hour fitness center, a seasonal outdoor swimming pool and modern business facilities. Guests can also enjoy on-site dining at Dean\'s List restaurant, which serves small plates and has an extensive drink menu.</p>\r\n<p>The Boston Wyndham Beacon Hill is near the famed Faneuil Hall and Quincy Market. Boston Common, the Hynes Convention Center and the Boston Public Gardens are also close to the hotel.', 'Here you may found our hotel preferences.');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotels_locations`
--

CREATE TABLE `uhb_hotels_locations` (
  `id` int(10) NOT NULL,
  `country_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_hotels_locations`
--

INSERT INTO `uhb_hotels_locations` (`id`, `country_id`, `priority_order`, `is_active`) VALUES
(1, 'US', 9, 1),
(2, 'US', 2, 1),
(3, 'US', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotels_locations_description`
--

CREATE TABLE `uhb_hotels_locations_description` (
  `id` int(10) NOT NULL,
  `hotel_location_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_hotels_locations_description`
--

INSERT INTO `uhb_hotels_locations_description` (`id`, `hotel_location_id`, `language_id`, `name`) VALUES
(1, 1, 'es', 'Ronston'),
(2, 1, 'de', 'Ronston'),
(3, 1, 'en', 'Ronston'),
(4, 2, 'en', 'Boston'),
(5, 2, 'es', 'Boston'),
(6, 2, 'de', 'Boston'),
(7, 3, 'en', 'New York City'),
(8, 3, 'es', 'New York City'),
(9, 3, 'de', 'New York City');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotels_property_types`
--

CREATE TABLE `uhb_hotels_property_types` (
  `id` int(10) NOT NULL,
  `property_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_hotels_property_types`
--

INSERT INTO `uhb_hotels_property_types` (`id`, `property_code`, `priority_order`, `is_default`, `is_active`) VALUES
(1, 'hotels', 1, 1, 1),
(2, 'villas', 2, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotels_property_types_description`
--

CREATE TABLE `uhb_hotels_property_types_description` (
  `id` int(10) NOT NULL,
  `hotel_property_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_hotels_property_types_description`
--

INSERT INTO `uhb_hotels_property_types_description` (`id`, `hotel_property_id`, `language_id`, `name`) VALUES
(1, 1, 'en', 'Hotels'),
(2, 1, 'es', 'Hoteles'),
(3, 1, 'de', 'Hotels'),
(4, 2, 'en', 'Villas'),
(5, 2, 'es', 'Villas'),
(6, 2, 'de', 'Villas');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotel_images`
--

CREATE TABLE `uhb_hotel_images` (
  `id` int(10) NOT NULL,
  `hotel_id` int(11) NOT NULL DEFAULT '0',
  `item_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_file_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `image_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority_order` smallint(6) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_hotel_images`
--

INSERT INTO `uhb_hotel_images` (`id`, `hotel_id`, `item_file`, `item_file_thumb`, `image_title`, `priority_order`, `is_active`) VALUES
(1, 1, 'hotel_img_1.jpg', 'hotel_img_1_thumb.jpg', '', 4, 1),
(2, 1, 'hotel_img_2.jpg', 'hotel_img_2_thumb.jpg', '', 3, 1),
(3, 1, 'hotel_img_3.jpg', 'hotel_img_3_thumb.jpg', '', 2, 1),
(4, 1, 'hotel_img_4.jpg', 'hotel_img_4_thumb.jpg', '', 1, 1),
(5, 1, 'hotel_img_5.jpg', 'hotel_img_5_thumb.jpg', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotel_payment_gateways`
--

CREATE TABLE `uhb_hotel_payment_gateways` (
  `id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL DEFAULT '0',
  `payment_type` varchar(20) NOT NULL DEFAULT '',
  `payment_type_name` varchar(50) NOT NULL DEFAULT '',
  `api_login` varchar(40) NOT NULL DEFAULT '',
  `api_key` varchar(40) NOT NULL DEFAULT '',
  `payment_info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uhb_hotel_payment_gateways`
--

INSERT INTO `uhb_hotel_payment_gateways` (`id`, `hotel_id`, `payment_type`, `payment_type_name`, `api_login`, `api_key`, `payment_info`, `is_active`) VALUES
(1, 1, 'poa', 'Pay on Arrival', '', '', '', 1),
(2, 1, 'online', 'On-line Order', '', '', '', 1),
(3, 1, 'paypal', 'PayPal', '', '', '', 1),
(4, 1, '2co', '2CO (2 checkout)', '', '', '', 1),
(5, 1, 'authorize.net', 'Authorize.Net', '', '', '', 1),
(6, 1, 'bank.transfer', 'Bank Transfer', '', '', 'Bank name: {BANK NAME HERE}\r\nSwift code: {CODE HERE}\r\nRouting in Transit# or ABA#: {ROUTING HERE}\r\nAccount number *: {ACCOUNT NUMBER HERE}\r\n\r\n*The account number must be in the IBAN format which may be obtained from the branch handling the customer\'s account or may be seen at the top the customer\'s bank statement\r\n', 1),
(7, 1, 'account.balance', 'Pay with Balance', '', '', '', 1),
(8, 2, 'poa', 'Pay on Arrival', '', '', '', 1),
(9, 2, 'online', 'On-line Order', '', '', '', 1),
(10, 2, 'paypal', 'PayPal', '', '', '', 1),
(11, 2, '2co', '2CO (2 checkout)', '', '', '', 1),
(12, 2, 'authorize.net', 'Authorize.Net', '', '', '', 1),
(13, 2, 'bank.transfer', 'Bank Transfer', '', '', 'Bank name: {BANK NAME HERE}\r\nSwift code: {CODE HERE}\r\nRouting in Transit# or ABA#: {ROUTING HERE}\r\nAccount number *: {ACCOUNT NUMBER HERE}\r\n\r\n*The account number must be in the IBAN format which may be obtained from the branch handling the customer\'s account or may be seen at the top the customer\'s bank statement\r\n', 1),
(14, 2, 'account.balance', 'Pay with Balance', '', '', '', 1),
(15, 3, 'poa', 'Pay on Arrival', '', '', '', 1),
(16, 3, 'online', 'On-line Order', '', '', '', 1),
(17, 3, 'paypal', 'PayPal', '', '', '', 1),
(18, 3, '2co', '2CO (2 checkout)', '', '', '', 1),
(19, 3, 'authorize.net', 'Authorize.Net', '', '', '', 1),
(20, 3, 'bank.transfer', 'Bank Transfer', '', '', 'Bank name: {BANK NAME HERE}\r\nSwift code: {CODE HERE}\r\nRouting in Transit# or ABA#: {ROUTING HERE}\r\nAccount number *: {ACCOUNT NUMBER HERE}\r\n\r\n*The account number must be in the IBAN format which may be obtained from the branch handling the customer\'s account or may be seen at the top the customer\'s bank statement\r\n', 1),
(21, 3, 'account.balance', 'Pay with Balance', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_hotel_periods`
--

CREATE TABLE `uhb_hotel_periods` (
  `id` int(10) NOT NULL,
  `hotel_id` int(11) NOT NULL DEFAULT '0',
  `period_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_languages`
--

CREATE TABLE `uhb_languages` (
  `id` smallint(6) NOT NULL,
  `lang_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `lang_name_en` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `lc_time_name` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT 'en_US',
  `lang_dir` varchar(3) CHARACTER SET latin1 NOT NULL DEFAULT 'ltr',
  `icon_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `priority_order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `used_on` enum('front-end','back-end','global') CHARACTER SET latin1 NOT NULL DEFAULT 'global',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_languages`
--

INSERT INTO `uhb_languages` (`id`, `lang_name`, `lang_name_en`, `abbreviation`, `lc_time_name`, `lang_dir`, `icon_image`, `priority_order`, `used_on`, `is_default`, `is_active`) VALUES
(1, 'English', 'English', 'en', 'en_US', 'ltr', 'en.gif', 1, 'global', 1, 1),
(2, 'Espa??ol', 'Spanish', 'es', 'es_ES', 'ltr', 'es.gif', 2, 'global', 0, 1),
(3, 'Deutsch', 'German', 'de', 'de_DE', 'ltr', 'de.gif', 3, 'global', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_mail_log`
--

CREATE TABLE `uhb_mail_log` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `account_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `email_to` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_template_code` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_template_subject` varchar(125) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email_template_content` text COLLATE utf8_unicode_ci NOT NULL,
  `emails_total` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `emails_sent` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_mail_log`
--

INSERT INTO `uhb_mail_log` (`id`, `account_id`, `email_to`, `email_template_code`, `email_template_subject`, `email_template_content`, `emails_total`, `emails_sent`, `status`, `status_description`, `date_created`) VALUES
(1, 0, 'manu@manu.com', 'new_account_created_without', 'Your contact information has been accepted', '<div style=direction:ltr>Dear <b>Manu Sasidharan</b>!\r\nThank you for sending us your contact information. You may now complete your booking - just follow the instructions on the checkout page.\r\nPlease remember that even you don\'t have account on our site, you may always create it with easily. To do it simply follow this link and enter all needed information to create a new account: <a href=\"http://localhost/manu/uhotel/index.php?customer=create_account\">Create Account</a>\r\nP.S. Remember, we will never sell your name or email address.\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support</div>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-17 09:25:30'),
(2, 0, 'manu@manu.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order MWDMZK0LZQ has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 17 Dec, 2020 09:26:15<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $160.00<br />Booking Subtotal: $160.00<br />Extras Subtotal: $10.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $185.00<br />Payment Required: $0.00<br /><br /><b>Extras:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><thead><tr><th align=\"center\"> # </th><th align=\"left\">Name</th><th align=\"right\" >Unit Price</th><th align=\"center\" >Units</th><th align=\"right\" >Price</th><th width=\"5px\" nowrap=\"nowrap\">&nbsp;</th></tr></thead><tr><td align=\"center\" width=\"40px\">1.</td><td>Wireless Internet Access </td><td align=\"right\">$10.00</td><td align=\"center\">1</td><td align=\"right\">$10.00&nbsp;</td><td></td></tr></table><br><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Double</td><td align=\"left\">Rotem King Villa</td><td>18 Dec, 2020</td><td>20 Dec, 2020</td><td>2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast (Included) ($0.00Breakfast (Included))</td><td align=\"right\">$80.00</td><td align=\"right\">$160.00</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$160.00</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manu@manu.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Rotem King Villa<br/>San Diego, CA 92108, USA<br/>Phone:1-800-123-4567, Fax:1-800-123-6789<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-17 09:26:24'),
(3, 0, 'info@yourdomain.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order MWDMZK0LZQ has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 17 Dec, 2020 09:26:15<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $160.00<br />Booking Subtotal: $160.00<br />Extras Subtotal: $10.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $185.00<br />Payment Required: $0.00<br /><br /><b>Extras:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><thead><tr><th align=\"center\"> # </th><th align=\"left\">Name</th><th align=\"right\" >Unit Price</th><th align=\"center\" >Units</th><th align=\"right\" >Price</th><th width=\"5px\" nowrap=\"nowrap\">&nbsp;</th></tr></thead><tr><td align=\"center\" width=\"40px\">1.</td><td>Wireless Internet Access </td><td align=\"right\">$10.00</td><td align=\"center\">1</td><td align=\"right\">$10.00&nbsp;</td><td></td></tr></table><br><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Double</td><td align=\"left\">Rotem King Villa</td><td>18 Dec, 2020</td><td>20 Dec, 2020</td><td>2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast (Included) ($0.00Breakfast (Included))</td><td align=\"right\">$80.00</td><td align=\"right\">$160.00</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$160.00</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manu@manu.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Rotem King Villa<br/>San Diego, CA 92108, USA<br/>Phone:1-800-123-4567, Fax:1-800-123-6789<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-17 09:26:26'),
(4, 0, 'info@hotel1.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order MWDMZK0LZQ has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 17 Dec, 2020 09:26:15<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $160.00<br />Booking Subtotal: $160.00<br />Extras Subtotal: $10.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $185.00<br />Payment Required: $0.00<br /><br /><b>Extras:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><thead><tr><th align=\"center\"> # </th><th align=\"left\">Name</th><th align=\"right\" >Unit Price</th><th align=\"center\" >Units</th><th align=\"right\" >Price</th><th width=\"5px\" nowrap=\"nowrap\">&nbsp;</th></tr></thead><tr><td align=\"center\" width=\"40px\">1.</td><td>Wireless Internet Access </td><td align=\"right\">$10.00</td><td align=\"center\">1</td><td align=\"right\">$10.00&nbsp;</td><td></td></tr></table><br><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Double</td><td align=\"left\">Rotem King Villa</td><td>18 Dec, 2020</td><td>20 Dec, 2020</td><td>2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast (Included) ($0.00Breakfast (Included))</td><td align=\"right\">$80.00</td><td align=\"right\">$160.00</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$160.00</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manu@manu.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Rotem King Villa<br/>San Diego, CA 92108, USA<br/>Phone:1-800-123-4567, Fax:1-800-123-6789<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-17 09:26:28'),
(5, 0, 'manuspbvr@yahoo.com', 'new_account_created_without', 'Your contact information has been accepted', '<div style=direction:ltr>Dear <b>Manu Sasidharan</b>!\r\nThank you for sending us your contact information. You may now complete your booking - just follow the instructions on the checkout page.\r\nPlease remember that even you don\'t have account on our site, you may always create it with easily. To do it simply follow this link and enter all needed information to create a new account: <a href=\"http://localhost/manu/uhotel/index.php?customer=create_account\">Create Account</a>\r\nP.S. Remember, we will never sell your name or email address.\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support</div>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:00:52'),
(6, 0, 'manuspbvr@yahoo.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order 4OJYM7QN6F has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 09:02:20<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $327.90<br />Booking Subtotal: $327.90<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $372.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>2</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($38.00Breakfast)</td><td align=\"right\">$110.00</td><td align=\"right\">$148.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$327.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@yahoo.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:02:36'),
(7, 0, 'info@yourdomain.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order 4OJYM7QN6F has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 09:02:20<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $327.90<br />Booking Subtotal: $327.90<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $372.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>2</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($38.00Breakfast)</td><td align=\"right\">$110.00</td><td align=\"right\">$148.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$327.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@yahoo.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:02:38'),
(8, 0, 'info@hotel2.com,info@hotel3.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order 4OJYM7QN6F has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 09:02:20<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $327.90<br />Booking Subtotal: $327.90<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $372.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>2</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($38.00Breakfast)</td><td align=\"right\">$110.00</td><td align=\"right\">$148.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$327.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@yahoo.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:02:40'),
(9, 0, 'manuspbvr@gmail.com', 'new_account_created_confirm_by_admin', 'Your account has been created (approval required)', '<div style=direction:ltr>Dear <b>Manu Sasidharan</b>!\r\nCongratulations on creating your new account.\r\nPlease keep this email for your records, as it contains an important information that you may need, should you ever encounter problems or forget your password.\r\nYour login: manuspbvr\r\nYour password: 123456\r\nAfter your registration will be approved by administrator,  you could log into your account with a following link:\r\n<a href=\"http://localhost/manu/uhotel/index.php?customer=login\">Login</a>\r\nP.S. Remember, we will never sell your name or email address.\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support</div>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:08:31'),
(10, 0, 'info@yourdomain.com', 'new_account_created_notify_admin', 'New account has been created', '<div style=direction:ltr>Hello Admin!\r\nA new user has been registered at your site.\r\nThis email contains a user account details:\r\nName: Manu Sasidharan\r\nEmail: manuspbvr@gmail.com\r\nUsername: manuspbvr\r\nP.S. Please check if it doesn\'t require your approval for activation</div>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:08:33'),
(11, 1, 'manuspbvr@yahoo.com', '', 'Your order has been canceled!', 'Dear <b>Manu Sasidharan</b>!\r\nYour order 4OJYM7QN6F has been canceled.\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 09:02:20<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $327.90<br />Booking Subtotal: $327.90<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $372.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>2</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($38.00Breakfast)</td><td align=\"right\">$110.00</td><td align=\"right\">$148.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$327.90</label></b></td></tr></table>\r\n<br /><h4 style=\"color:#960000\">Cancellation Policy:</h4>\r\n					Till 06 Dec 2020 12:00 AM - <strong>free of charge</strong><br>\r\n					After 06 Dec 2020 12:00 AM - <strong>$327.90</strong>\r\n				<br />\r\nP.S. Please feel free to contact us if you have any questions.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:47:23'),
(12, 1, 'info@yourdomain.com', '', 'Your order has been canceled!', 'Dear <b>Manu Sasidharan</b>!\r\nYour order 4OJYM7QN6F has been canceled.\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 09:02:20<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $327.90<br />Booking Subtotal: $327.90<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $372.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>2</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($38.00Breakfast)</td><td align=\"right\">$110.00</td><td align=\"right\">$148.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$327.90</label></b></td></tr></table>\r\n<br /><h4 style=\"color:#960000\">Cancellation Policy:</h4>\r\n					Till 06 Dec 2020 12:00 AM - <strong>free of charge</strong><br>\r\n					After 06 Dec 2020 12:00 AM - <strong>$327.90</strong>\r\n				<br />\r\nP.S. Please feel free to contact us if you have any questions.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:47:25'),
(13, 1, 'info@hotel2.com,info@hotel3.com', '', 'Your order has been canceled!', 'Dear <b>Manu Sasidharan</b>!\r\nYour order 4OJYM7QN6F has been canceled.\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 09:02:20<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $327.90<br />Booking Subtotal: $327.90<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $372.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>2</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($38.00Breakfast)</td><td align=\"right\">$110.00</td><td align=\"right\">$148.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$327.90</label></b></td></tr></table>\r\n<br /><h4 style=\"color:#960000\">Cancellation Policy:</h4>\r\n					Till 06 Dec 2020 12:00 AM - <strong>free of charge</strong><br>\r\n					After 06 Dec 2020 12:00 AM - <strong>$327.90</strong>\r\n				<br />\r\nP.S. Please feel free to contact us if you have any questions.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:47:27'),
(14, 1, 'manu@manu.com', '', 'Your order has been canceled!', 'Dear <b>Manu Sasidharan</b>!\r\nYour order MWDMZK0LZQ has been canceled.\r\nBooking Description: Rooms Reservation<br />Date Created: 17 Dec, 2020 09:26:15<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $160.00<br />Booking Subtotal: $160.00<br />Extras Subtotal: $10.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $185.00<br />Payment Required: $0.00<br /><br /><b>Extras:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><thead><tr><th align=\"center\"> # </th><th align=\"left\">Name</th><th align=\"right\" >Unit Price</th><th align=\"center\" >Units</th><th align=\"right\" >Price</th><th width=\"5px\" nowrap=\"nowrap\">&nbsp;</th></tr></thead><tr><td align=\"center\" width=\"40px\">1.</td><td>Wireless Internet Access </td><td align=\"right\">$10.00</td><td align=\"center\">1</td><td align=\"right\">$10.00&nbsp;</td><td></td></tr></table><br><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Double</td><td align=\"left\">Rotem King Villa</td><td>18 Dec, 2020</td><td>20 Dec, 2020</td><td>2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast (Included) ($0.00Breakfast (Included))</td><td align=\"right\">$80.00</td><td align=\"right\">$160.00</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$160.00</label></b></td></tr></table>\r\n<br /><h4 style=\"color:#960000\">Cancellation Policy:</h4>\r\n					Till 11 Dec 2020 12:00 AM - <strong>free of charge</strong><br>\r\n					After 11 Dec 2020 12:00 AM - <strong>$80.00</strong>\r\n				<br />\r\nP.S. Please feel free to contact us if you have any questions.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Rotem King Villa<br/>San Diego, CA 92108, USA<br/>Phone:1-800-123-4567, Fax:1-800-123-6789<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:47:44'),
(15, 1, 'info@yourdomain.com', '', 'Your order has been canceled!', 'Dear <b>Manu Sasidharan</b>!\r\nYour order MWDMZK0LZQ has been canceled.\r\nBooking Description: Rooms Reservation<br />Date Created: 17 Dec, 2020 09:26:15<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $160.00<br />Booking Subtotal: $160.00<br />Extras Subtotal: $10.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $185.00<br />Payment Required: $0.00<br /><br /><b>Extras:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><thead><tr><th align=\"center\"> # </th><th align=\"left\">Name</th><th align=\"right\" >Unit Price</th><th align=\"center\" >Units</th><th align=\"right\" >Price</th><th width=\"5px\" nowrap=\"nowrap\">&nbsp;</th></tr></thead><tr><td align=\"center\" width=\"40px\">1.</td><td>Wireless Internet Access </td><td align=\"right\">$10.00</td><td align=\"center\">1</td><td align=\"right\">$10.00&nbsp;</td><td></td></tr></table><br><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Double</td><td align=\"left\">Rotem King Villa</td><td>18 Dec, 2020</td><td>20 Dec, 2020</td><td>2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast (Included) ($0.00Breakfast (Included))</td><td align=\"right\">$80.00</td><td align=\"right\">$160.00</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$160.00</label></b></td></tr></table>\r\n<br /><h4 style=\"color:#960000\">Cancellation Policy:</h4>\r\n					Till 11 Dec 2020 12:00 AM - <strong>free of charge</strong><br>\r\n					After 11 Dec 2020 12:00 AM - <strong>$80.00</strong>\r\n				<br />\r\nP.S. Please feel free to contact us if you have any questions.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Rotem King Villa<br/>San Diego, CA 92108, USA<br/>Phone:1-800-123-4567, Fax:1-800-123-6789<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:47:46'),
(16, 1, 'info@hotel1.com', '', 'Your order has been canceled!', 'Dear <b>Manu Sasidharan</b>!\r\nYour order MWDMZK0LZQ has been canceled.\r\nBooking Description: Rooms Reservation<br />Date Created: 17 Dec, 2020 09:26:15<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $160.00<br />Booking Subtotal: $160.00<br />Extras Subtotal: $10.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $185.00<br />Payment Required: $0.00<br /><br /><b>Extras:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><thead><tr><th align=\"center\"> # </th><th align=\"left\">Name</th><th align=\"right\" >Unit Price</th><th align=\"center\" >Units</th><th align=\"right\" >Price</th><th width=\"5px\" nowrap=\"nowrap\">&nbsp;</th></tr></thead><tr><td align=\"center\" width=\"40px\">1.</td><td>Wireless Internet Access </td><td align=\"right\">$10.00</td><td align=\"center\">1</td><td align=\"right\">$10.00&nbsp;</td><td></td></tr></table><br><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Double</td><td align=\"left\">Rotem King Villa</td><td>18 Dec, 2020</td><td>20 Dec, 2020</td><td>2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast (Included) ($0.00Breakfast (Included))</td><td align=\"right\">$80.00</td><td align=\"right\">$160.00</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$160.00</label></b></td></tr></table>\r\n<br /><h4 style=\"color:#960000\">Cancellation Policy:</h4>\r\n					Till 11 Dec 2020 12:00 AM - <strong>free of charge</strong><br>\r\n					After 11 Dec 2020 12:00 AM - <strong>$80.00</strong>\r\n				<br />\r\nP.S. Please feel free to contact us if you have any questions.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Rotem King Villa<br/>San Diego, CA 92108, USA<br/>Phone:1-800-123-4567, Fax:1-800-123-6789<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 09:47:48'),
(17, 7, 'manuspbvr@gmail.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order HMX0ZWOB57 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:13:05<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 2<br />Booking Price: $303.90<br />Booking Subtotal: $303.90<br />Extras Subtotal: $0.00<br />Guest Tax: $30.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $333.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($19.00Breakfast)</td><td align=\"right\">$55.00</td><td align=\"right\">$74.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Executive Double Room</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$190.00</td><td align=\"right\">$229.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$303.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:13:10'),
(18, 7, 'info@yourdomain.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order HMX0ZWOB57 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:13:05<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 2<br />Booking Price: $303.90<br />Booking Subtotal: $303.90<br />Extras Subtotal: $0.00<br />Guest Tax: $30.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $333.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($19.00Breakfast)</td><td align=\"right\">$55.00</td><td align=\"right\">$74.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Executive Double Room</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$190.00</td><td align=\"right\">$229.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$303.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:13:12'),
(19, 7, 'info@hotel2.com,info@hotel3.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order HMX0ZWOB57 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:13:05<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 2<br />Booking Price: $303.90<br />Booking Subtotal: $303.90<br />Extras Subtotal: $0.00<br />Guest Tax: $30.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $333.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Standard Room</td><td align=\"left\">Wyndham Boston Hill</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Breakfast ($19.00Breakfast)</td><td align=\"right\">$55.00</td><td align=\"right\">$74.00</td></tr><tr align=\"center\"><td width=\"30px\">2.</td><td align=\"left\">Executive Double Room</td><td align=\"left\">Park Lany Hotel</td><td>18 Dec, 2020</td><td>19 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$190.00</td><td align=\"right\">$229.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$303.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Wyndham Boston Hill<br/>5 Blossom Street, Boston, MA 02114<br/>Phone:1-800-123-2222, Fax:1-800-123-2223<br/><br/>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:13:14'),
(20, 7, 'manuspbvr@gmail.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order FO9TAJ6IK0 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:15:11<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $539.70<br />Booking Subtotal: $539.70<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $584.70<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$420.00</td><td align=\"right\">$539.70</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$539.70</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:15:17'),
(21, 7, 'info@yourdomain.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order FO9TAJ6IK0 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:15:11<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $539.70<br />Booking Subtotal: $539.70<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $584.70<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$420.00</td><td align=\"right\">$539.70</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$539.70</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:15:19');
INSERT INTO `uhb_mail_log` (`id`, `account_id`, `email_to`, `email_template_code`, `email_template_subject`, `email_template_content`, `emails_total`, `emails_sent`, `status`, `status_description`, `date_created`) VALUES
(22, 7, 'info@hotel3.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order FO9TAJ6IK0 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:15:11<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $539.70<br />Booking Subtotal: $539.70<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $584.70<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$420.00</td><td align=\"right\">$539.70</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$539.70</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:15:21'),
(23, 7, 'manuspbvr@gmail.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order JIW255EBIE has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:16:28<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $539.70<br />Booking Subtotal: $539.70<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $584.70<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$420.00</td><td align=\"right\">$539.70</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$539.70</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:16:33'),
(24, 7, 'info@yourdomain.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order JIW255EBIE has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:16:28<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $539.70<br />Booking Subtotal: $539.70<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $584.70<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$420.00</td><td align=\"right\">$539.70</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$539.70</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:16:35'),
(25, 7, 'info@hotel3.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu Sasidharan</b>!\r\nThank you for reservation request!\r\nYour order JIW255EBIE has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 18 Dec, 2020 10:16:28<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $539.70<br />Booking Subtotal: $539.70<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $584.70<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$420.00</td><td align=\"right\">$539.70</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$539.70</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : Sasidharan<br />E-mail address : manuspbvr@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-18 10:16:37'),
(26, 0, 'codecarrotstech@gmail.com', 'new_account_created_without', 'Your contact information has been accepted', '<div style=direction:ltr>Dear <b>Manu S</b>!\r\nThank you for sending us your contact information. You may now complete your booking - just follow the instructions on the checkout page.\r\nPlease remember that even you don\'t have account on our site, you may always create it with easily. To do it simply follow this link and enter all needed information to create a new account: <a href=\"http://localhost/manu/uhotel/index.php?customer=create_account\">Create Account</a>\r\nP.S. Remember, we will never sell your name or email address.\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support</div>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-19 13:52:24'),
(27, 0, 'codecarrotstech@gmail.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu S</b>!\r\nThank you for reservation request!\r\nYour order HVGKLASAZN has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 19 Dec, 2020 13:52:45<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $179.90<br />Booking Subtotal: $179.90<br />Extras Subtotal: $0.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $194.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>19 Dec, 2020</td><td>20 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$179.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : S<br />E-mail address : codecarrotstech@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-19 13:52:52'),
(28, 0, 'info@yourdomain.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu S</b>!\r\nThank you for reservation request!\r\nYour order HVGKLASAZN has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 19 Dec, 2020 13:52:45<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $179.90<br />Booking Subtotal: $179.90<br />Extras Subtotal: $0.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $194.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>19 Dec, 2020</td><td>20 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$179.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : S<br />E-mail address : codecarrotstech@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-19 13:52:54'),
(29, 0, 'info@hotel3.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu S</b>!\r\nThank you for reservation request!\r\nYour order HVGKLASAZN has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 19 Dec, 2020 13:52:45<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 1<br />Booking Price: $179.90<br />Booking Subtotal: $179.90<br />Extras Subtotal: $0.00<br />Guest Tax: $15.00<br />VAT: $0.00 (0.00%)<br />Payment Sum: $194.90<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>19 Dec, 2020</td><td>20 Dec, 2020</td><td>1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>Full Board ($39.90Full Board)</td><td align=\"right\">$140.00</td><td align=\"right\">$179.90</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$179.90</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : S<br />E-mail address : codecarrotstech@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-19 13:52:56'),
(30, 1, 'hotel@hotel.com', 'new_account_created_by_admin', 'Your account has been created by admin', '<div style=direction:ltr>Dear <b>Sreekanth MC</b>!\r\nOur administrator just created a new account for you.\r\nPlease keep this email for your records, as it contains an important information that you may need, should you ever encounter problems or forget your password.\r\nYou login: hotel1\r\nYou password: 123456\r\nYou may follow the link below to log into your account:\r\n<a href=\"http://localhost/manu/uhotel/index.php?admin=login\">Login</a>\r\nP.S. Remember, we will never sell your name or email address.\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support</div>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-19 14:16:31'),
(31, 0, 'codecarrotstech@gmail.com', 'new_account_created_without', 'Your contact information has been accepted', '<div style=direction:ltr>Dear <b>Manu S</b>!\r\nThank you for sending us your contact information. You may now complete your booking - just follow the instructions on the checkout page.\r\nPlease remember that even you don\'t have account on our site, you may always create it with easily. To do it simply follow this link and enter all needed information to create a new account: <a href=\"http://localhost/manu/uhotel/index.php?customer=create_account\">Create Account</a>\r\nP.S. Remember, we will never sell your name or email address.\r\nEnjoy!\r\n-\r\nSincerely,\r\nCustomer Support</div>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-20 16:45:13'),
(32, 0, 'codecarrotstech@gmail.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu S</b>!\r\nThank you for reservation request!\r\nYour order 7S1N24OSD7 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 20 Dec, 2020 16:45:42<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $527.10<br />Booking Subtotal: $527.10<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $28.61 (5.00%)<br />Payment Sum: $600.71<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$407.40</td><td align=\"right\">$527.10</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$527.10</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : S<br />E-mail address : codecarrotstech@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-20 16:45:49'),
(33, 0, 'info@yourdomain.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu S</b>!\r\nThank you for reservation request!\r\nYour order 7S1N24OSD7 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 20 Dec, 2020 16:45:42<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $527.10<br />Booking Subtotal: $527.10<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $28.61 (5.00%)<br />Payment Sum: $600.71<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$407.40</td><td align=\"right\">$527.10</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$527.10</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : S<br />E-mail address : codecarrotstech@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-20 16:45:51'),
(34, 0, 'info@hotel3.com', '', 'Your order has been placed in our system!', 'Dear <b>Manu S</b>!\r\nThank you for reservation request!\r\nYour order 7S1N24OSD7 has been placed in our system and will be processed shortly.\r\nStatus: Pending\r\nBooking Description: Rooms Reservation<br />Date Created: 20 Dec, 2020 16:45:42<br />Payment Date: Not paid yet<br />Payment Type: Pay on Arrival<br />Payment Method: Payment Company Account<br />Currency: USD<br />Rooms: 3<br />Booking Price: $527.10<br />Booking Subtotal: $527.10<br />Extras Subtotal: $0.00<br />Guest Tax: $45.00<br />VAT: $28.61 (5.00%)<br />Payment Sum: $600.71<br />Payment Required: $0.00<br /><br /><b>Reservation Details:</b><br />-----------------------------<br /><table style=\"border:1px\" cellspacing=\"2\"><tr align=\"center\"><th>#</th><th align=\"left\">Room Type</th><th align=\"left\">Hotel</th><th>Check In</th><th>Check Out</th><th>Nights</th><th>Rooms</th><th>Adult</th><th>Child</th><th>Extra Beds</th><th>Meal Plans</th><th align=\"right\">Per Night</th><th align=\"right\">Price</th></tr><tr align=\"center\"><td width=\"30px\">1.</td><td align=\"left\">Junior Suite</td><td align=\"left\">Park Lany Hotel</td><td>20 Dec, 2020</td><td>21 Dec, 2020</td><td>1</td><td>3</td><td>1</td><td>0</td><td>0</td><td>Full Board ($119.70Full Board)</td><td align=\"right\">$407.40</td><td align=\"right\">$527.10</td></tr><tr><td colspan=\"11\" nowrap height=\"5px\"></td></tr><tr class=\"tr-footer\"><td colspan=\"9\"></td><td class=\"td left\" colspan=\"3\"><b>Total:</b></td><td class=\"td right\" align=\"right\"><b><label id=\"reservation_total\">$527.10</label></b></td></tr></table>\r\n<b>Personal Information:</b><br />-----------------------------<br />First Name : Manu<br />Last Name : S<br />E-mail address : codecarrotstech@gmail.com<br />\r\nP.S. Please keep this email for your records, as it contains an important information that you may\r\nneed.\r\n-\r\nSincerely,\r\nCustomer Support\r\n<br>-----<br>Park Lany Hotel<br/>37 Central Park South, New York City, NY 10019<br/>Phone:1-800-123-2233, Fax:1-800-123-1234<br/><br/>', 1, 1, 0, 'mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()', '2020-12-20 16:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_meal_plans`
--

CREATE TABLE `uhb_meal_plans` (
  `id` int(11) NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `charge_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Per person per night',
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_meal_plans`
--

INSERT INTO `uhb_meal_plans` (`id`, `hotel_id`, `price`, `charge_type`, `priority_order`, `is_active`, `is_default`) VALUES
(1, 1, 0.00, 0, 0, 1, 1),
(2, 1, 10.00, 0, 1, 1, 0),
(3, 1, 22.00, 0, 2, 1, 0),
(5, 2, 19.00, 0, 0, 1, 1),
(6, 2, 33.00, 0, 1, 1, 0),
(7, 2, 39.90, 0, 0, 1, 0),
(10, 2, 0.00, 0, 0, 0, 0),
(11, 2, 0.00, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_meal_plans_description`
--

CREATE TABLE `uhb_meal_plans_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `meal_plan_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_meal_plans_description`
--

INSERT INTO `uhb_meal_plans_description` (`id`, `meal_plan_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'en', 'Breakfast (Included)', 'One meal supplied'),
(4, 2, 'en', 'Half Board', 'Two meals (no lunch) supplied'),
(7, 3, 'en', 'Full Board', 'Three meals supplied'),
(10, 5, 'en', 'Room only', '0'),
(13, 6, 'en', 'Breakfast included\r\n', ''),
(16, 7, 'en', 'Half Board\r\n', ''),
(19, 10, 'en', 'FULL BOARD', '');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_menus`
--

CREATE TABLE `uhb_menus` (
  `id` int(11) NOT NULL,
  `menu_code` varchar(10) CHARACTER SET latin1 NOT NULL,
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL,
  `menu_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_placement` enum('','left','top','right','bottom','hidden') CHARACTER SET latin1 NOT NULL,
  `menu_order` tinyint(3) DEFAULT '1',
  `access_level` enum('public','registered') CHARACTER SET latin1 NOT NULL DEFAULT 'public'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_menus`
--

INSERT INTO `uhb_menus` (`id`, `menu_code`, `language_id`, `menu_name`, `menu_placement`, `menu_order`, `access_level`) VALUES
(2, 'AMM8WBAKJ9', 'es', 'Informaci??n', 'left', 1, 'public'),
(3, 'AMM8WBAKJ9', 'de', 'Information', 'left', 1, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_modules`
--

CREATE TABLE `uhb_modules` (
  `id` smallint(6) NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name_const` varchar(40) CHARACTER SET latin1 NOT NULL,
  `description_const` varchar(30) CHARACTER SET latin1 NOT NULL,
  `icon_file` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_tables` varchar(255) CHARACTER SET latin1 NOT NULL,
  `dependent_modules` varchar(20) CHARACTER SET latin1 NOT NULL,
  `settings_page` varchar(30) CHARACTER SET latin1 NOT NULL,
  `settings_const` varchar(30) CHARACTER SET latin1 NOT NULL,
  `settings_access_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `management_page` varchar(255) CHARACTER SET latin1 NOT NULL,
  `management_const` varchar(125) CHARACTER SET latin1 NOT NULL,
  `management_access_by` varchar(50) CHARACTER SET latin1 NOT NULL,
  `is_installed` tinyint(1) NOT NULL DEFAULT '0',
  `module_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - system, 1 - application, 2 - additional',
  `show_on_dashboard` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `priority_order` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_modules`
--

INSERT INTO `uhb_modules` (`id`, `name`, `name_const`, `description_const`, `icon_file`, `module_tables`, `dependent_modules`, `settings_page`, `settings_const`, `settings_access_by`, `management_page`, `management_const`, `management_access_by`, `is_installed`, `module_type`, `show_on_dashboard`, `priority_order`) VALUES
(1, 'rooms', '_ROOMS', '_MD_ROOMS', 'rooms.png', 'rooms,rooms_availabilities,rooms_description,rooms_prices,room_facilities,room_facilities_description', '', 'mod_rooms_settings', '_ROOMS_SETTINGS', 'owner,mainadmin', 'mod_rooms_management', '_ROOMS_MANAGEMENT', 'owner,mainadmin', 1, 0, 1, 0),
(2, 'pages', '_PAGES', '_MD_PAGES', 'pages.png', 'pages,menus', '', '', '', 'owner,mainadmin', 'pages', '_PAGE_EDIT_PAGES', 'owner,mainadmin', 1, 0, 1, 1),
(3, 'customers', '_CUSTOMERS', '_MD_CUSTOMERS', 'customers.png', 'customers', '', 'mod_customers_settings', '_CUSTOMERS_SETTINGS', 'owner,mainadmin', '', '', '', 1, 1, 0, 0),
(4, 'booking', '_BOOKINGS', '_MD_BOOKINGS', 'booking.png', 'bookings,bookings_rooms,extras', '', 'mod_booking_settings', '_BOOKINGS_SETTINGS', 'owner,mainadmin', 'mod_booking_bookings', '', '', 1, 1, 1, 1),
(5, 'contact_us', '_CONTACT_US', '_MD_CONTACT_US', 'contact_us.png', '', '', 'mod_contact_us_settings', '_CONTACT_US_SETTINGS', 'owner,mainadmin', '', '', '', 1, 1, 0, 2),
(6, 'comments', '_COMMENTS', '_MD_COMMENTS', 'comments.png', 'comments', '', 'mod_comments_settings', '_COMMENTS_SETTINGS', 'owner,mainadmin', 'mod_comments_management', '_COMMENTS_MANAGEMENT', 'owner,mainadmin', 1, 1, 0, 3),
(7, 'ratings', '_RATINGS', '_MD_RATINGS', 'ratings.png', 'ratings_items,ratings_users', '', 'mod_ratings_settings', '_RATINGS_SETTINGS', 'owner,mainadmin', '', '', '', 1, 1, 0, 4),
(8, 'testimonials', '_TESTIMONIALS', '_MD_TESTIMONIALS', 'testimonials.png', 'testimonials', '', 'mod_testimonials_settings', '_TESTIMONIALS_SETTINGS', 'owner,mainadmin', 'mod_testimonials_management', '_TESTIMONIALS_MANAGEMENT', 'owner,mainadmin', 1, 1, 0, 5),
(9, 'reviews', '_REVIEWS', '_MD_REVIEWS', 'reviews.png', 'reviews', '', 'mod_reviews_settings', '_REVIEWS_SETTINGS', 'owner,mainadmin', 'mod_reviews_management', '_REVIEWS_MANAGEMENT', 'owner,mainadmin,hotelowner', 1, 1, 1, 6),
(10, 'news', '_NEWS', '_MD_NEWS', 'news.png', 'news,events_registered,news_subscribed', '', 'mod_news_settings', '_NEWS_SETTINGS', 'owner,mainadmin', 'mod_news_management,mod_news_subscribed', '_NEWS_MANAGEMENT,_SUBSCRIPTION_MANAGEMENT', 'owner,mainadmin', 1, 1, 1, 7),
(11, 'gallery', '_GALLERY', '_MD_GALLERY', 'gallery.png', 'gallery_albums,gallery_images', '', 'mod_gallery_settings', '_GALLERY_SETTINGS', 'owner,mainadmin', 'mod_gallery_management', '_GALLERY_MANAGEMENT', 'owner,mainadmin', 1, 1, 0, 8),
(12, 'banners', '_BANNERS', '_MD_BANNERS', 'banners.png', 'banners', '', 'mod_banners_settings', '_BANNERS_SETTINGS', 'owner,mainadmin', 'mod_banners_management', '_BANNERS_MANAGEMENT', 'owner,mainadmin', 1, 1, 0, 9),
(13, 'faq', '_FAQ', '_MD_FAQ', 'faq.png', 'faq_categories,faq_categories_description,faq_category_items,faq_category_items_description', '', 'mod_faq_settings', '_FAQ_SETTINGS', 'owner,mainadmin', 'mod_faq_management', '_FAQ_MANAGEMENT', 'owner,mainadmin', 1, 1, 0, 10),
(14, 'affiliates', '_AFFILIATES', '_MD_AFFILIATES', 'affiliates.png', '', '', 'mod_affiliates_settings', '_AFFILIATES_SETTINGS', 'owner', 'mod_affiliates_management', '_AFFILIATES_MANAGEMENT', 'owner,mainadmin', 1, 1, 0, 11),
(15, 'backup', '_BACKUP_AND_RESTORE', '_MD_BACKUP_AND_RESTORE', 'backup.png', '', '', 'mod_backup_installation', '_BACKUP_INSTALLATION', 'owner', 'mod_backup_restore', '_BACKUP_RESTORE', 'owner,mainadmin', 1, 1, 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_modules_settings`
--

CREATE TABLE `uhb_modules_settings` (
  `id` int(10) NOT NULL,
  `module_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `settings_key` varchar(40) CHARACTER SET latin1 NOT NULL,
  `settings_value` text COLLATE utf8_unicode_ci NOT NULL,
  `settings_name_const` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `settings_description_const` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `key_display_type` enum('string','alpha','email','numeric','unsigned float','integer','positive integer','unsigned integer','enum','yes/no','html size','text') CHARACTER SET latin1 NOT NULL,
  `key_is_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `key_display_source` varchar(255) CHARACTER SET latin1 NOT NULL COMMENT 'for ''enum'' field type'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_modules_settings`
--

INSERT INTO `uhb_modules_settings` (`id`, `module_name`, `settings_key`, `settings_value`, `settings_name_const`, `settings_description_const`, `key_display_type`, `key_is_required`, `key_display_source`) VALUES
(1, 'banners', 'is_active', 'yes', '_MSN_BANNERS_IS_ACTIVE', '_MS_BANNERS_IS_ACTIVE', 'yes/no', 1, ''),
(2, 'banners', 'rotation_type', 'slide show', '_MSN_ROTATION_TYPE', '_MS_ROTATION_TYPE', 'enum', 1, 'random image,slide show'),
(3, 'banners', 'rotate_delay', '9', '_MSN_ROTATE_DELAY', '_MS_ROTATE_DELAY', 'positive integer', 1, ''),
(4, 'banners', 'slideshow_caption_html', 'no', '_MSN_BANNERS_CAPTION_HTML', '_MS_BANNERS_CAPTION_HTML', 'yes/no', 1, ''),
(5, 'booking', 'is_active', 'global', '_MSN_ACTIVATE_BOOKINGS', '_MS_ACTIVATE_BOOKINGS', 'enum', 1, 'front-end,back-end,global,no'),
(6, 'booking', 'payment_type_poa', 'Frontend & Backend', '_MSN_PAYMENT_TYPE_POA', '_MS_PAYMENT_TYPE_POA', 'enum', 1, 'No,Frontend Only,Backend Only,Frontend & Backend'),
(7, 'booking', 'payment_type_online', 'Frontend & Backend', '_MSN_PAYMENT_TYPE_ONLINE', '_MS_PAYMENT_TYPE_ONLINE', 'enum', 1, 'No,Frontend Only,Backend Only,Frontend & Backend'),
(8, 'booking', 'online_credit_card_required', 'yes', '_MSN_ONLINE_CREDIT_CARD_REQUIRED', '_MS_ONLINE_CREDIT_CARD_REQUIRED', 'yes/no', 0, ''),
(9, 'booking', 'payment_type_bank_transfer', 'Frontend & Backend', '_MSN_PAYMENT_TYPE_BANK_TRANSFER', '_MS_PAYMENT_TYPE_BANK_TRANSFER', 'enum', 1, 'No,Frontend Only,Backend Only,Frontend & Backend'),
(10, 'booking', 'bank_transfer_info', 'Bank name: {BANK NAME HERE}\r\nSwift code: {CODE HERE}\r\nRouting in Transit# or ABA#: {ROUTING HERE}\r\nAccount number *: {ACCOUNT NUMBER HERE}\r\n\r\n*The account number must be in the IBAN format which may be obtained from the branch handling the customer\'s account or may be seen at the top the customer\'s bank statement\r\n', '_MSN_BANK_TRANSFER_INFO', '_MS_BANK_TRANSFER_INFO', 'text', 0, ''),
(11, 'booking', 'payment_type_paypal', 'Frontend & Backend', '_MSN_PAYMENT_TYPE_PAYPAL', '_MS_PAYMENT_TYPE_PAYPAL', 'enum', 1, 'No,Frontend Only,Backend Only,Frontend & Backend'),
(12, 'booking', 'paypal_email', 'paypal@yourdomain.com', '_MSN_PAYPAL_EMAIL', '_MS_PAYPAL_EMAIL', 'email', 1, ''),
(13, 'booking', 'payment_type_2co', 'Frontend & Backend', '_MSN_PAYMENT_TYPE_2CO', '_MS_PAYMENT_TYPE_2CO', 'enum', 0, 'No,Frontend Only,Backend Only,Frontend & Backend'),
(14, 'booking', 'two_checkout_vendor', 'Your 2CO Vendor ID here', '_MSN_TWO_CHECKOUT_VENDOR', '_MS_TWO_CHECKOUT_VENDOR', 'string', 1, ''),
(15, 'booking', 'payment_type_authorize', 'Frontend & Backend', '_MSN_PAYMENT_TYPE_AUTHORIZE', '_MS_PAYMENT_TYPE_AUTHORIZE', 'enum', 1, 'No,Frontend Only,Backend Only,Frontend & Backend'),
(16, 'booking', 'authorize_login_id', 'Your API Login ID here', '_MSN_AUTHORIZE_LOGIN_ID', '_MS_AUTHORIZE_LOGIN_ID', 'string', 1, ''),
(17, 'booking', 'authorize_transaction_key', 'Your Transaction Key here', '_MSN_AUTHORIZE_TRANSACTION_KEY', '_MS_AUTHORIZE_TRANSACTION_KEY', 'string', 1, ''),
(18, 'booking', 'default_payment_system', 'paypal', '_MSN_DEFAULT_PAYMENT_SYSTEM', '_MS_DEFAULT_PAYMENT_SYSTEM', 'enum', 1, 'poa,online,bank transfer,paypal,2co,authorize.net'),
(19, 'booking', 'allow_separate_gateways', 'no', '_MSN_SEPARATE_GATEWAYS', '_MS_SEPARATE_GATEWAYS', 'yes/no', 1, ''),
(20, 'booking', 'send_order_copy_to_admin', 'yes', '_MSN_SEND_ORDER_COPY_TO_ADMIN', '_MS_SEND_ORDER_COPY_TO_ADMIN', 'yes/no', 0, ''),
(21, 'booking', 'allow_booking_without_account', 'yes', '_MSN_ALLOW_BOOKING_WITHOUT_ACCOUNT', '_MS_ALLOW_BOOKING_WITHOUT_ACCOUNT', 'yes/no', 0, ''),
(22, 'booking', 'pre_payment_type', 'percentage', '_MSN_PRE_PAYMENT_TYPE', '_MS_PRE_PAYMENT_TYPE', 'enum', 1, 'full price,first night,fixed sum,percentage'),
(23, 'booking', 'pre_payment_value', '10', '_MSN_PRE_PAYMENT_VALUE', '_MS_PRE_PAYMENT_VALUE', 'enum', 0, '1,2,3,4,5,6,7,8,9,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,99,100,125,150,175,200,250,500,750,1000'),
(24, 'booking', 'vat_value', '5', '_MSN_VAT_VALUE', '_MS_VAT_VALUE', 'unsigned float', 0, ''),
(25, 'booking', 'minimum_nights', '1', '_MSN_MINIMUM_NIGHTS', '_MS_MINIMUM_NIGHTS', 'enum', 1, '1,2,3,4,5,6,7,8,9,10,14,21,28,30,45,60,90'),
(26, 'booking', 'maximum_nights', '90', '_MSN_MAXIMUM_NIGHTS', '_MS_MAXIMUM_NIGHTS', 'enum', 1, '1,2,3,4,5,6,7,8,9,10,14,21,28,30,45,60,90,120,150,180,240,360'),
(27, 'booking', 'mode', 'REAL MODE', '_MSN_BOOKING_MODE', '_MS_BOOKING_MODE', 'enum', 1, 'TEST MODE,REAL MODE'),
(28, 'booking', 'show_fully_booked_rooms', 'no', '_MSN_SHOW_FULLY_BOOKED_ROOMS', '_MS_SHOW_FULLY_BOOKED_ROOMS', 'yes/no', 1, ''),
(29, 'booking', 'prebooking_orders_timeout', '2', '_MSN_PREBOOKING_ORDERS_TIMEOUT', '_MS_PREBOOKING_ORDERS_TIMEOUT', 'enum', 1, '0,1,2,3,4,5,6,7,8,9,10,12,14,16,18,20,22,24,36,48,72'),
(30, 'booking', 'customers_cancel_reservation', '7', '_MSN_CUSTOMERS_CANCEL_RESERVATION', '_MS_CUSTOMERS_CANCEL_RESERVATION', 'enum', 1, '0,1,2,3,4,5,6,7,10,14,21,30,45,60'),
(31, 'booking', 'show_reservation_form', 'yes', '_MSN_SHOW_RESERVATION_FORM', '_MS_SHOW_RESERVATION_FORM', 'yes/no', 1, ''),
(32, 'booking', 'booking_initial_fee', '0', '_MSN_RESERVATION_INITIAL_FEE', '_MS_RESERVATION_INITIAL_FEE', 'unsigned float', 1, ''),
(33, 'booking', 'booking_number_type', 'random', '_MSN_BOOKING_NUMBER_TYPE', '_MS_BOOKING_NUMBER_TYPE', 'enum', 1, 'random,sequential'),
(34, 'booking', 'vat_included_in_price', 'no', '_MSN_VAT_INCLUDED_IN_PRICE', '_MS_VAT_INCLUDED_IN_PRICE', 'yes/no', 1, ''),
(35, 'booking', 'show_booking_status_form', 'yes', '_MSN_SHOW_BOOKING_STATUS_FORM', '_MS_SHOW_BOOKING_STATUS_FORM', 'yes/no', 1, ''),
(36, 'booking', 'maximum_allowed_reservations', '10', '_MSN_MAXIMUM_ALLOWED_RESERVATIONS', '_MS_MAXIMUM_ALLOWED_RESERVATIONS', 'positive integer', 1, ''),
(37, 'booking', 'first_night_calculating_type', 'real', '_MSN_FIRST_NIGHT_CALCULATING_TYPE', '_MS_FIRST_NIGHT_CALCULATING_TYPE', 'enum', 1, 'real,average'),
(38, 'booking', 'available_until_approval', 'no', '_MSN_AVAILABLE_UNTIL_APPROVAL', '_MS_AVAILABLE_UNTIL_APPROVAL', 'yes/no', 1, ''),
(39, 'booking', 'reservation_expired_alert', 'no', '_MSN_RESERVATION_EXPIRED_ALERT', '_MS_RESERVATION EXPIRED_ALERT', 'yes/no', 1, ''),
(40, 'booking', 'allow_booking_in_past', 'no', '_MSN_ADMIN_BOOKING_IN_PAST', '_MS_ADMIN_BOOKING_IN_PAST', 'yes/no', 1, ''),
(41, 'booking', 'customer_booking_in_past', 'no', '_MSN_CUSTOMER_BOOKING_IN_PAST', '_MS_CUSTOMER_BOOKING_IN_PAST', 'yes/no', 1, ''),
(42, 'booking', 'allow_payment_with_balance', 'yes', '_MSN_ALLOW_PAYMENT_WITH_BALANCE', '_MS_ALLOW_PAYMENT_WITH_BALANCE', 'yes/no', 1, ''),
(43, 'booking', 'special_tax', '15', '_MSN_SPECIAL_TAX', '_MS_SPECIAL_TAX', 'unsigned float', 1, ''),
(44, 'comments', 'comments_allow', 'yes', '_MSN_COMMENTS_ALLOW', '_MS_COMMENTS_ALLOW', 'yes/no', 1, ''),
(45, 'comments', 'user_type', 'all', '_MSN_USER_TYPE', '_MS_USER_TYPE', 'enum', 1, 'all,registered'),
(46, 'comments', 'comment_length', '500', '_MSN_COMMENTS_LENGTH', '_MS_COMMENTS_LENGTH', 'positive integer', 1, ''),
(47, 'comments', 'image_verification_allow', 'yes', '_MSN_IMAGE_VERIFICATION_ALLOW', '_MS_IMAGE_VERIFICATION_ALLOW', 'yes/no', 1, ''),
(48, 'comments', 'page_size', '20', '_MSN_COMMENTS_PAGE_SIZE', '_MS_COMMENTS_PAGE_SIZE', 'positive integer', 1, ''),
(49, 'comments', 'pre_moderation_allow', 'yes', '_MSN_PRE_MODERATION_ALLOW', '_MS_PRE_MODERATION_ALLOW', 'yes/no', 1, ''),
(50, 'comments', 'delete_pending_time', '2', '_MSN_DELETE_PENDING_TIME', '_MS_DELETE_PENDING_TIME', 'enum', 1, '0,1,2,3,4,5,6,7,8,9,10,15,20,30,45,60,120,180'),
(51, 'contact_us', 'key', '{module:contact_us}', '_MSN_CONTACT_US_KEY', '_MS_CONTACT_US_KEY', 'enum', 1, '{module:contact_us}'),
(52, 'contact_us', 'email', 'contact@yourdomain.com', '_MSN_EMAIL', '_MS_EMAIL', 'email', 1, ''),
(53, 'contact_us', 'is_send_delay', 'yes', '_MSN_IS_SEND_DELAY', '_MS_IS_SEND_DELAY', 'yes/no', 1, ''),
(54, 'contact_us', 'delay_length', '20', '_MSN_DELAY_LENGTH', '_MS_DELAY_LENGTH', 'positive integer', 0, ''),
(55, 'contact_us', 'image_verification_allow', 'yes', '_MSN_IMAGE_VERIFICATION_ALLOW', '_MS_IMAGE_VERIFICATION_ALLOW', 'yes/no', 0, ''),
(56, 'customers', 'allow_adding_by_admin', 'yes', '_MSN_ALLOW_ADDING_BY_ADMIN', '_MS_ALLOW_ADDING_BY_ADMIN', 'yes/no', 1, ''),
(57, 'customers', 'reg_confirmation', 'by admin', '_MSN_REG_CONFIRMATION', '_MS_REG_CONFIRMATION', 'enum', 0, 'automatic,by email,by admin'),
(58, 'customers', 'image_verification_allow', 'yes', '_MSN_CUSTOMERS_IMAGE_VERIFICATION', '_MS_CUSTOMERS_IMAGE_VERIFICATION', 'yes/no', 1, ''),
(59, 'customers', 'allow_login', 'yes', '_MSN_ALLOW_CUSTOMERS_LOGIN', '_MS_ALLOW_CUSTOMERS_LOGIN', 'yes/no', 1, ''),
(60, 'customers', 'allow_registration', 'yes', '_MSN_ALLOW_CUSTOMERS_REGISTRATION', '_MS_ALLOW_CUSTOMERS_REGISTRATION', 'yes/no', 0, ''),
(61, 'customers', 'password_changing_by_admin', 'yes', '_MSN_ADMIN_CHANGE_CUSTOMER_PASSWORD', '_MS_ADMIN_CHANGE_CUSTOMER_PASSWORD', 'yes/no', 1, ''),
(62, 'customers', 'allow_reset_passwords', 'yes', '_MSN_ALLOW_CUST_RESET_PASSWORDS', '_MS_ALLOW_CUST_RESET_PASSWORDS', 'yes/no', 1, ''),
(63, 'customers', 'admin_alert_new_registration', 'yes', '_MSN_ALERT_ADMIN_NEW_REGISTRATION', '_MS_ALERT_ADMIN_NEW_REGISTRATION', 'yes/no', 1, ''),
(64, 'customers', 'remember_me_allow', 'yes', '_MSN_REMEMBER_ME', '_MS_REMEMBER_ME', 'yes/no', 1, ''),
(65, 'customers', 'allow_agencies', 'yes', '_MSN_ALLOW_AGENCIES', '_MS_ALLOW_AGENCIES', 'yes/no', 1, ''),
(66, 'faq', 'is_active', 'yes', '_MSN_FAQ_IS_ACTIVE', '_MS_FAQ_IS_ACTIVE', 'yes/no', 1, ''),
(67, 'gallery', 'key', '{module:gallery}', '_MSN_GALLERY_KEY', '_MS_GALLERY_KEY', 'enum', 1, '{module:gallery}'),
(68, 'gallery', 'album_key', '{module:album=CODE}', '_MSN_ALBUM_KEY', '_MS_ALBUM_KEY', 'enum', 1, '{module:album=CODE}'),
(69, 'gallery', 'image_gallery_type', 'lytebox', '_MSN_IMAGE_GALLERY_TYPE', '_MS_IMAGE_GALLERY_TYPE', 'enum', 1, 'lytebox,rokbox'),
(70, 'gallery', 'album_icon_width', '140px', '_MSN_ALBUM_ICON_WIDTH', '_MS_ALBUM_ICON_WIDTH', 'html size', 1, ''),
(71, 'gallery', 'album_icon_height', '105px', '_MSN_ALBUM_ICON_HEIGHT', '_MS_ALBUM_ICON_HEIGHT', 'html size', 1, ''),
(72, 'gallery', 'albums_per_line', '4', '_MSN_ALBUMS_PER_LINE', '_MS_ALBUMS_PER_LINE', 'positive integer', 1, ''),
(73, 'gallery', 'video_gallery_type', 'rokbox', '_MSN_VIDEO_GALLERY_TYPE', '_MS_VIDEO_GALLERY_TYPE', 'enum', 1, 'rokbox,videobox'),
(74, 'gallery', 'wrapper', 'div', '_MSN_GALLERY_WRAPPER', '_MS_GALLERY_WRAPPER', 'enum', 1, 'table,div'),
(75, 'gallery', 'show_items_count_in_album', 'yes', '_MSN_ITEMS_COUNT_IN_ALBUM', '_MS_ITEMS_COUNT_IN_ALBUM', 'yes/no', 1, ''),
(76, 'gallery', 'show_items_numeration_in_album', 'yes', '_MSN_ALBUM_ITEMS_NUMERATION', '_MS_ALBUM_ITEMS_NUMERATION', 'yes/no', 1, ''),
(77, 'news', 'news_count', '5', '_MSN_NEWS_COUNT', '_MS_NEWS_COUNT', 'positive integer', 1, ''),
(78, 'news', 'news_header_length', '80', '_MSN_NEWS_HEADER_LENGTH', '_MS_NEWS_HEADER_LENGTH', 'positive integer', 1, ''),
(79, 'news', 'news_rss', 'yes', '_MSN_NEWS_RSS', '_MS_NEWS_RSS', 'yes/no', 1, ''),
(80, 'news', 'show_news_block', 'left side', '_MSN_SHOW_NEWS_BLOCK', '_MS_SHOW_NEWS_BLOCK', 'enum', 1, 'no,left side,right side'),
(81, 'news', 'show_newsletter_subscribe_block', 'no', '_MSN_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', '_MS_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', 'enum', 1, 'no,left side,right side'),
(82, 'ratings', 'user_type', 'registered', '_MSN_RATINGS_USER_TYPE', '_MS_RATINGS_USER_TYPE', 'enum', 1, 'all,registered'),
(83, 'ratings', 'multiple_items_per_day', 'yes', '_MSN_MULTIPLE_ITEMS_PER_DAY', '_MS_MULTIPLE_ITEMS_PER_DAY', 'yes/no', 1, ''),
(84, 'reviews', 'key', '{module:reviews}', '_MSN_REVIEWS_KEY', '_MS_REVIEWS_KEY', 'enum', 1, '{module:reviews}'),
(85, 'rooms', 'search_availability_period', '1', '_MSN_SEARCH_AVAILABILITY_PERIOD', '_MS_SEARCH_AVAILABILITY_PERIOD', 'enum', 1, '1,2,3'),
(86, 'rooms', 'search_availability_page_size', '20', '_MSN_SEARCH_AVAILABILITY_PAGE_SIZE', '_MS_SEARCH_AVAILABILITY_PAGE_SIZE', 'enum', 1, '1,2,3,4,5,6,7,8,9,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,250,500,1000'),
(87, 'rooms', 'show_room_types_in_search', 'all', '_MSN_ROOMS_IN_SEARCH', '_MS_ROOMS_IN_SEARCH', 'enum', 1, 'all,available only'),
(88, 'rooms', 'allow_children', 'yes', '_MSN_ALLOW_CHILDREN_IN_ROOM', '_MS_ALLOW_CHILDREN_IN_ROOM', 'yes/no', 1, ''),
(89, 'rooms', 'allow_system_suggestion', 'yes', '_MSN_ALLOW_SYSTEM_SUGGESTION', '_MS_ALLOW_SYSTEM_SUGGESTION', 'yes/no', 1, ''),
(90, 'rooms', 'allow_extra_beds', 'yes', '_MSN_ALLOW_EXTRA_BEDS', '_MS_ALLOW_EXTRA_BEDS', 'yes/no', 1, ''),
(91, 'rooms', 'show_default_prices', 'yes', '_MSN_SHOW_DEFAULT_PRICES', '_MS_SHOW_DEFAULT_PRICES', 'yes/no', 1, ''),
(92, 'rooms', 'allow_default_periods', 'yes', '_MSN_ALLOW_DEFAULT_PERIODS', '_MS_ALLOW_DEFAULT_PERIODS', 'yes/no', 1, ''),
(93, 'rooms', 'watermark', 'no', '_MSN_ADD_WATERMARK', '_MS_ADD_WATERMARK', 'yes/no', 1, ''),
(94, 'rooms', 'watermark_text', '', '_MSN_WATERMARK_TEXT', '_MS_WATERMARK_TEXT', 'string', 0, ''),
(95, 'rooms', 'max_adults', '8', '_MSN_MAX_ADULTS_IN_SEARCH', '_MS_MAX_ADULTS_IN_SEARCH', 'enum', 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15'),
(96, 'rooms', 'max_children', '3', '_MSN_MAX_CHILDREN_IN_SEARCH', '_MS_MAX_CHILDREN_IN_SEARCH', 'enum', 1, '1,2,3,4,5'),
(97, 'rooms', 'check_partially_overlapping', 'yes', '_MSN_CHECK_PARTIALLY_OVERLAPPING', '_MS_CHECK_PARTIALLY_OVERLAPPING', 'yes/no', 1, ''),
(98, 'rooms', 'show_rooms_occupancy', 'yes', '_MSN_SHOW_ROOMS_OCCUPANCY', '_MS_SHOW_ROOMS_OCCUPANCY', 'yes/no', 1, ''),
(99, 'rooms', 'show_rooms_occupancy_months', '6', '_MSN_SHOW_ROOMS_OCCUPANCY_MONTHS', '_MS_SHOW_ROOMS_OCCUPANCY_MONTHS', 'enum', 1, '3,6,9,12'),
(100, 'rooms', 'show_hotel_in_search_result', 'yes', '_MSN_HOTEL_IN_SEARCH_RESULT', '_MS_HOTEL_IN_SEARCH_RESULT', 'yes/no', 0, ''),
(101, 'rooms', 'default_contant_email', '', '_MSN_HOTEL_DEFAULT_CONTACT_EMAIL', '_MS_HOTEL_DEFAULT_CONTACT_EMAIL', 'email', 0, ''),
(102, 'rooms', 'default_contant_phone', '', '_MSN_HOTEL_DEFAULT_CONTACT_PHONE', '_MS_HOTEL_DEFAULT_CONTACT_PHONE', 'string', 0, ''),
(103, 'rooms', 'long_term_stay_discount', 'yes', '_MSN_LONG_TERM_STAY_DISCOUNT', '_MS_LONG_TERM_STAY_DISCOUNT', 'yes/no', 1, ''),
(104, 'rooms', 'guests_stay_discount', 'yes', '_MSN_GUESTS_STAY_DISCOUNT', '_MS_GUESTS_STAY_DISCOUNT', 'yes/no', 1, ''),
(105, 'rooms', 'refund_money', 'yes', '_MSN_REFUND_MONEY', '_MS_REFUND_MONEY', 'yes/no', 1, ''),
(106, 'rooms', 'allow_minimum_beds', 'yes', '_MSN_ROOMS_ALLOW_MINIMUM_BEDS', '_MN_ROOMS_ALLOW_MINIMUM_BEDS', 'yes/no', 1, ''),
(107, 'testimonials', 'key', '{module:testimonials}', '_MSN_TESTIMONIALS_KEY', '_MS_TESTIMONIALS_KEY', 'enum', 1, '{module:testimonials}'),
(108, 'affiliates', 'url_parameter', 'afid', '_MSN_AFFILIATES_URL_PARAM', '_MS_AFFILIATES_URL_PARAM', 'alpha', 1, ''),
(109, 'affiliates', 'expiration_date', '30', '_MSN_AFFILIATES_EXPIRATION_DATE', '_MS_AFFILIATES_EXPIRATION_DATE', 'positive integer', 1, ''),
(110, 'affiliates', 'number_orders', 'first', '_MSN_AFFILIATES_NUMBER_ORDERS', '_MS_AFFILIATES_NUMBER_ORDERS', 'enum', 1, 'first,all');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_news`
--

CREATE TABLE `uhb_news` (
  `id` int(10) NOT NULL,
  `news_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL,
  `type` enum('news','events','last_minute') CHARACTER SET latin1 NOT NULL DEFAULT 'news',
  `header_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body_text` text COLLATE utf8_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_news`
--

INSERT INTO `uhb_news` (`id`, `news_code`, `language_id`, `type`, `header_text`, `body_text`, `date_created`, `is_active`) VALUES
(1, 'txj17hkwau', 'en', 'news', 'New version 2.2.6 of uHotelBooking has been released', '<p>New version 2.2.6 of uHotelBooking has been released and available now for downloading. There are many improvements and new features added you will like. This version may be installed as a new version or updated, if you have the previous version already installed. All recent changes can be viewed <a href=\"http://www.hotel-booking-script.com/index.php?page=history_of_changes\">here</a>.</p>', '2013-11-21 19:39:45', 1),
(2, 'txj17hkwau', 'es', 'news', 'Nueva versi??n 2.2.6 de uHotelBooking ha sido puesto en libertad.', '<p>Nueva versi??n??2.2.6??del uHotelBooking ha sido liberado y disponible para su descarga. Hay muchas mejoras y nuevas caracter??sticas a??adidas que te guste. Esta versi??n se puede instalar como una versi??n nueva o actualizada, si usted tiene la versi??n anterior already instalado. Todos los cambios recientes se pueden ver <a href=\"http://www.hotel-booking-script.com/index.php?page=history_of_changes\">aqu??</a>.</p>', '2013-11-21 19:42:12', 1),
(3, 'txj17hkwau', 'de', 'news', 'Neue Version 2.2.6 von uHotelBooking ist ver??ffentlicht worden', '<p>Neue Version??2.2.6??von uHotelBooking ist erschienen und ab sofort zum Download bereit. Es gibt viele Verbesserungen und neue Funktionen hinzugef??gt werden Sie m??gen. Diese Version kann als eine neue Version installiert oder aktualisiert werden, wenn Sie ??ber die vorherige Version already installiert. Alle ??nderungen k??nnen <a href=\"http://www.hotel-booking-script.com/index.php?page=history_of_changes\">hiere</a> eingesehen werden.</p>', '2013-11-21 19:42:33', 1),
(4, 'qwe', 'en', 'news', 'abc', 'abc', '2021-09-24 14:27:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_news_subscribed`
--

CREATE TABLE `uhb_news_subscribed` (
  `id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date_subscribed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_packages`
--

CREATE TABLE `uhb_packages` (
  `id` int(10) NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `package_name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `minimum_nights` tinyint(1) NOT NULL DEFAULT '0',
  `maximum_nights` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `minimum_rooms` tinyint(1) NOT NULL DEFAULT '0',
  `maximum_rooms` tinyint(1) NOT NULL DEFAULT '0',
  `cancel_reservation_day` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Specifies the number of days before customers may cancel a reservation for free',
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_packages`
--

INSERT INTO `uhb_packages` (`id`, `hotel_id`, `package_name`, `start_date`, `finish_date`, `minimum_nights`, `maximum_nights`, `minimum_rooms`, `maximum_rooms`, `cancel_reservation_day`, `is_active`) VALUES
(1, 1, 'Package #_ Dec 2020', '2020-12-19', '2020-12-30', 1, 1, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_pages`
--

CREATE TABLE `uhb_pages` (
  `id` int(11) NOT NULL,
  `page_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL,
  `content_type` enum('article','link','') CHARACTER SET latin1 NOT NULL DEFAULT 'article',
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_target` enum('','_self','_blank') COLLATE utf8_unicode_ci NOT NULL,
  `page_key` varchar(125) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_text` text COLLATE utf8_unicode_ci,
  `menu_id` int(11) DEFAULT '0',
  `menu_link` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `tag_description` text COLLATE utf8_unicode_ci NOT NULL,
  `comments_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `finish_publishing` date DEFAULT NULL,
  `is_home` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_removed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_system_page` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `system_page` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show_in_search` tinyint(1) NOT NULL DEFAULT '1',
  `status_changed` datetime DEFAULT NULL,
  `access_level` enum('public','registered') CHARACTER SET latin1 NOT NULL DEFAULT 'public',
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_pages`
--

INSERT INTO `uhb_pages` (`id`, `page_code`, `language_id`, `content_type`, `link_url`, `link_target`, `page_key`, `page_title`, `page_text`, `menu_id`, `menu_link`, `tag_title`, `tag_keywords`, `tag_description`, `comments_allowed`, `date_created`, `date_updated`, `finish_publishing`, `is_home`, `is_removed`, `is_published`, `is_system_page`, `system_page`, `show_in_search`, `status_changed`, `access_level`, `priority_order`) VALUES
(1, 'rpo5bahloy', 'en', 'article', '', '_self', 'uHotelBooking-is-happy-to-welcome-you', 'uHotelBooking is happy to welcome you!', '<p><img class=\"img-indent\" src=\"images/upload/img1.png\" border=\"0\" alt=\"\" align=\"left\" /></p>\r\n<p>Come alone or bring your family with you, stay here for a night or for weeks, stay here while on business trip or at some kind of conference - either way our hotel is the best possible variant.</p>\r\n<p>Our site makes it simple to book your next hotel stay. Whether you\'re traveling for business or pleasure, we provide you with some of the best hotel deals around. Discover cheap rates on rooms near the places you like, tucked away in the mountains, in the heart of the city, or scattered in the countryside. With our site, your hotel reservation options are endless.</p>', 0, '', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2016-02-03 17:11:01', NULL, 1, 0, 1, 0, '', 1, '2010-04-24 16:55:05', 'public', 0),
(2, 'rpo5bahloy', 'es', 'article', '', '_self', 'uHotelBooking-se-complace-en-darle-la', 'uHotelBooking se complace en darle la bienvenida!', '<p><img class=\"img-indent\" src=\"images/upload/img1.png\" border=\"0\" alt=\"\" align=\"left\" /></p>\r\n<p>Venga solo o traer a su familia con usted, qu??dese aqu?? por una noche o por semana, estancia aqu?? en viaje de negocios o en alg??n tipo de conferencia - en cualquier caso, nuestro hotel es la mejor variante posible.</p>\r\n<p>ONuestro sitio hace que sea sencillo para reservar su estad??a en el hotel. Ya sea que viaje por negocios o por placer, le ofrecemos algunas de las mejores ofertas de hoteles en los alrededores. Descubre tarifas econ??micas en habitaciones cerca de los lugares que le gusten, escondido en las monta??as, en el coraz??n de la ciudad, o dispersas en el campo. Con nuestro sitio, las opciones de reservas de hotel son infinitas.</p>', 0, '', 'uHotelBooking', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2016-02-03 17:12:48', NULL, 1, 0, 1, 0, '', 1, '2010-04-24 16:55:12', 'public', 0),
(3, 'rpo5bahloy', 'de', 'article', '', '_self', 'uHotelBooking-ist-gl??cklich-Sie-zu-empfangen', 'uHotelBooking ist gl??cklich, Sie zu empfangen!', '<p><img class=\"img-indent\" src=\"images/upload/img1.png\" border=\"0\" alt=\"\" align=\"left\" /></p>\r\n<p>Kommen Sie alleine oder bringen Sie Ihre Familie mit Ihnen, bleiben Sie hier f??r eine Nacht oder f??r Wochen, bleiben hier w??hrend einer Gesch??ftsreise oder bei irgendeiner Art von Konferenz - so oder so unser Hotel die beste Variante ist.</p>\r\n<p>Unsere Website macht es einfach, Ihren n??chsten Hotelaufenthalt zu buchen. Ob Sie gesch??ftlich oder privat unterwegs sind, stellen wir Ihnen einige der besten Hotelangebote um. Entdecken Sie g??nstige Raten f??r Zimmer in der N??he der Orte, die Sie m??gen, versteckt in den Bergen entfernt, im Herzen der Stadt, oder in der Landschaft verstreut. Mit unserer Website, sind Ihre Reservierungsm??glichkeiten endlos.</p>', 0, '', 'uHotelBooking', 'php Hotel Website, Hotel online buchen Website', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2016-02-03 17:13:30', NULL, 1, 0, 1, 0, '', 1, '2010-04-24 16:55:05', 'public', 0),
(4, '99fnhie8in', 'en', 'article', '', '_self', 'Installation', 'Installation', '<p>Software requirements: PHP 5.0 or later version.</p>\r\n<p>A new installation of uHotelBooking is a very straight forward process:</p>\r\n<p><strong>Step 1</strong>. Uncompressing downloaded file.<br />-<br /> Uncompress the uHotelBooking version 4.x.x script archive. The archive will create<br /> a directory called \"uHotelBooking_2xx\"<br /><br /><br /><strong>Step 2</strong>. Uploading files.<br />-<br /> Upload content of this folder (all files and directories it includes) to your <br /> document root (public_html, www, httpdocs etc.) or your booking script directory using FTP.<br /> Pay attention to DON\'T use the capital letters in the name of the folder (for Linux users).</p>\r\n<p>public_html/<br /> or<br /> public_html/{hotel-site directory}/<br /> <br /> Rename default.htaccess into .htaccess if you need to add PHP5 handler.</p>\r\n<p><br /><strong>Step 3</strong>. Creating database.<br />-<br /> Using your hosting Control Panel, phpMyAdmin or another tool, create your database<br /> and user, and assign that user to the database. Write down the name of the<br /> database, username, and password for the site installation procedure.</p>\r\n<p><br /><strong>Step 4</strong>. Running install.php file.<br />-<br /> Now you can run install.php file. To do this, open a browser and type in Address Bar</p>\r\n<p>http://{www.mydomain.com}/install.php<br /> or<br /> http://{www.mydomain.com}/{hotel-site directory}/install.php</p>\r\n<p>Follow instructions on the screen. You will be asked to enter: database host,<br /> database name, username and password. Also you need to enter admin username and<br /> admin password, that will be used to get access to administration area of the<br /> site.</p>\r\n<p><br /><strong>Step 5</strong>. Setting up access permissions.<br />-<br /> Check access permissions to images/uploads/. You need to have 755 permissions <br /> to this folder.</p>\r\n<p><br /><strong>Step 6</strong>. Deleting install.php file.<br />-<br /> After successful installation you will get an appropriate message and warning to<br /> remove install.php file. For security reasons, please delete install file<br /> immediately.</p>\r\n<p><br />Congratulations, you now have uHotelBooking installed!</p>', 1, 'Installation', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-21 19:18:35', NULL, 0, 0, 1, 0, '', 1, '2012-04-23 20:08:59', 'public', 0),
(5, '99fnhie8in', 'es', 'article', '', '_self', 'Instalaci??n', 'Instalaci??n', '<p>Requisitos de software: PHP 5.0 o una versi??n posterior.</p>\r\n<p>Una nueva instalaci??n de uHotelBooking es un proceso muy sencillo:</p>\r\n<p><strong>Paso 1</strong>. Descomprimir el archivo descargado.</p>\r\n<p>Descomprimir el archivo uHotelBooking versi??n 4.xx secuencia de comandos. El archivo se crear?? un directorio llamado \"uHotelBooking_2xx\".<br /><br /><strong>Paso 2</strong>. Carga de archivos.<br /><br />Subir el contenido de esta carpeta (todos los archivos y directorios que incluye) a la ra??z del documento (www public_html, httpdocs etc) o el directorio de secuencias de comandos de reserva a trav??s de FTP. Preste atenci??n a NO usar las letras may??sculas en el nombre de la carpeta (para usuarios de Linux).</p>\r\n<p>public_html/<br /> or<br /> public_html/{hotel-site directorio}/<br /> <br /> Cambiar el nombre de default.htaccess en. htaccess si es necesario agregar controlador de PHP5.</p>\r\n<p><br /><strong>Paso 3</strong>. Creaci??n de base de datos.<br /><br />Usando su Panel de Control, phpMyAdmin o cualquier otra herramienta, crear su base de datos y el usuario, y asignar a ese usuario a la base de datos. Anote el nombre de la base de datos, nombre de usuario y una contrase??a para el procedimiento de instalaci??n del sitio.</p>\r\n<p><br />Paso 4. Ejecutar el archivo install.php.<br /><br />Ahora puedes ejecutar el archivo install.php. Para ello, abra un navegador y escriba en la barra de direcciones</p>\r\n<p>http://{www.mydomain.com}/install.php<br /> or<br /> http://{www.mydomain.com}/{hotel-site directorio}/install.php</p>\r\n<p>Siga las instrucciones en la pantalla. Se le pedir?? que introduzca: base de datos de host, nombre de base de datos, nombre de usuario y contrase??a. Tambi??n es necesario introducir nombre de usuario y contrase??a de administrador, que se utilizar?? para tener acceso al ??rea de administraci??n del sitio.</p>\r\n<p><br /><strong>Paso 5</strong>. Configuraci??n de permisos de acceso.<br /><br />Compruebe los permisos de acceso a las images/uploads/. Usted necesita tener 755 permisos a esta carpeta.</p>\r\n<p><br /><strong>Paso 6</strong>. Borrar el archivo install.php.<br /><br />Despu??s de la instalaci??n aparecer?? un mensaje apropiado y alerta a eliminar el archivo install.php. Por razones de seguridad, por favor elimine el archivo de instalaci??n de inmediato.</p>\r\n<p><br />Felicitaciones, ahora tiene uHotelBooking Instalado!</p>', 2, 'Instalaci??n', 'uHotelBooking', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-21 19:18:45', NULL, 0, 0, 1, 0, '', 1, NULL, 'public', 0),
(6, '99fnhie8in', 'de', 'article', '', '_self', 'Installation', 'Installation', '<p>Software-Anforderungen: PHP 5.0 oder h??her Version.</p>\r\n<p>Eine neue Installation von uHotelBooking ist ein sehr geradlinig Prozess:</p>\r\n<p><strong><span style=\"text-decoration: underline;\">Schritt 1</span></strong>. Dekomprimieren heruntergeladene Datei.<br /><br />Entpacken Sie das uHotelBooking Version 4.xx Skript-Archiv. Das Archivwirderstellt ein Verzeichnis namens \"uHotelBooking_2xx\".<br /><br /><br /><strong><span style=\"text-decoration: underline;\">Schritt 2</span></strong>. Hochladen von Dateien.<br /><br />Hochladen Inhalt dieses Ordners (alle Dateien und Verzeichnisse es umfasst), um Ihre Document-Root (public_html, www, httpdocs usw.) oder Ihre Reservierung Skript direkt per FTP. Achten Sie auf Don\'t Gebrauch die Gro??buchstaben im Namen des Ordners (f??r Linux-Anwender).</p>\r\n<p>public_html/<br /> or<br /> public_html/{hotel-site Verzeichnis}/<br /> <br />Benennen Sie in default.htaccess. htaccess, wenn Sie PHP5 Handler hinzuf??gen m??ssen.</p>\r\n<p><br /><strong>Schritt 3</strong>. Erstellen Datenbank.<br /><br />Mit Ihrem Hosting Control Panel, phpMyAdmin oder ein anderes Tool, erstellen Sie Ihre Datenbank und Benutzer, und weisen Sie die Benutzer auf die Datenbank. Notieren Sie den Namen des Datenbank, den Benutzernamen und das Kennwort f??r den Einbau vor Ort Verfahren.</p>\r\n<p><br /><span style=\"text-decoration: underline;\"><strong>Schritt 4</strong></span>. Running install.php Datei..<br /><br />Jetzt k??nnen Sie install.php Datei. Dazu ??ffnen Sie einen Browser und geben Sie Adresse Bar</p>\r\n<p>http://{www.mydomain.com}/install.php<br /> or<br /> http://{www.mydomain.com}/{hotel-site Verzeichnis}/install.php</p>\r\n<p>Befolgen Sie die Anweisungen auf dem Bildschirm. Sie werden aufgefordert, einzugeben: Datenbank-Host,<br />Datenbankname, Benutzername und Passwort. Dar??ber hinaus m??ssen Sie Benutzernamen admin und?????? geben??Sie??Admin-Passwort, mit denen der Zugriff auf Administrationsbereich der erhalten werden Website.</p>\r\n<p><br /><span style=\"text-decoration: underline;\"><strong>Schritt 5</strong></span>. Einrichten von Zugriffsberechtigungen.<br /><br />??berpr??fen Sie die Zugriffsberechtigungen auf images/uploads/. Sie m??ssen zu 755 Berechtigungen f??r diesen Ordner haben.</p>\r\n<p><br /><span style=\"text-decoration: underline;\"><strong>Schritt 6</strong></span>. L??schen install.php.<br /><br />Nach erfolgreicher Installation erhalten Sie eine entsprechende Meldung und Warnung an install.php Datei zu entfernen. Aus Sicherheitsgr??nden bitte l??schen Installationsdatei sofort.</p>\r\n<p><br />Herzlichen Gl??ckwunsch, Sie haben jetzt uHotelBooking Installiert!</p>', 3, 'Installation', 'Installation', 'php Hotel Website, Hotel online buchen Website', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-21 19:18:58', NULL, 0, 0, 1, 0, '', 1, NULL, 'public', 0),
(7, 'afd4vgf5yt', 'en', 'article', '', '_self', 'Gallery', 'Gallery', '<p>{module:gallery}</p>', 0, 'Gallery', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-06 16:59:27', NULL, 0, 0, 1, 1, 'gallery', 1, NULL, 'public', 1),
(8, 'afd4vgf5yt', 'es', 'article', '', '_self', 'Galer??a', 'Galer??a', '<p>{module:gallery}</p>', 0, 'Galer??a', 'Galer??a', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'Ver nuestra galer??a de im??genes de v??deo y', 0, '2011-05-01 11:16:22', '2013-11-06 16:59:12', NULL, 0, 0, 1, 1, 'gallery', 1, NULL, 'public', 1),
(9, 'afd4vgf5yt', 'de', 'article', '', '_self', 'Galerie', 'Galerie', '<p>{module:gallery}</p>', 0, 'Galerie', 'Galerie', 'php Hotel Website, Hotel online buchen Website', 'Sehen Sie sich unsere Videos und Bildergalerien', 0, '2011-05-01 11:16:22', '2013-11-06 16:58:58', NULL, 0, 0, 1, 1, 'gallery', 1, NULL, 'public', 1),
(10, 'op8uy67ydd', 'en', 'article', '', '_self', 'Testimonials', 'Testimonials', '<p>{module:testimonials}</p>', 0, 'Testimonials', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-06 17:01:53', NULL, 0, 0, 1, 1, 'testimonials', 1, NULL, 'public', 3),
(11, 'op8uy67ydd', 'es', 'article', '', '_self', 'Testimonios', 'Testimonios', '<p>{module:testimonials}</p>', 0, 'Testimonios', 'Testimonios', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'Lo que nuestros clientes dicen', 0, '2011-05-01 11:16:22', '2013-11-06 17:01:41', NULL, 0, 0, 1, 1, 'testimonials', 1, NULL, 'public', 3),
(12, 'op8uy67ydd', 'de', 'article', '', '_self', 'Zeugnisse', 'Zeugnisse', '<p>{module:testimonials}</p>', 0, 'Zeugnisse', 'Zeugnisse', 'php Hotel Website, Hotel online buchen Website', 'Was unsere Kunden sagen', 0, '2011-05-01 11:16:22', '2013-11-21 19:23:21', NULL, 0, 0, 1, 1, 'testimonials', 1, NULL, 'public', 3),
(13, '87ghtyfd5t', 'en', 'article', '', '_self', 'We-offer-several-kinds-of-rooms', 'We offer several kinds of rooms', 'We offer several kinds of rooms and apartments, in various sizes and  price ranges; single rooms in shared kitchens and studio, couples and  family apartments (1 or??2 bedroom). Many apartments are accessible for  wheelchair users.<br>{module:rooms}', 0, 'Rooms', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-19 19:06:56', NULL, 0, 0, 1, 1, 'rooms', 1, NULL, 'public', 0),
(14, '87ghtyfd5t', 'es', 'article', '', '_self', 'Ofrecemos-varios-tipos-de-habitaciones', 'Ofrecemos varios tipos de habitaciones', 'Ofrecemos varios tipos de habitaciones y apartamentos, en diversos tama??os y precios; habitaciones individuales en cocinas compartidas y estudio, parejas y apartamentos de la familia (1 o 2 dormitorios). Muchos de los apartamentos son accesibles para usuarios de sillas de ruedas.<br>{module:rooms}', 0, 'Habitaciones', 'Ofrecemos varios tipos de habitaciones', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'Compruebe distintas habitaciones de nuestro hotel', 0, '2011-05-01 11:16:22', '2013-11-21 19:21:32', NULL, 0, 0, 1, 1, 'rooms', 1, NULL, 'public', 0),
(15, '87ghtyfd5t', 'de', 'article', '', '_self', 'Zimmer', 'Zimmer', 'Wir bieten verschiedene Arten von Zimmern und Apartments in verschiedenen Gr????en und Preisklassen ; Einzelzimmer in Gemeinschaftsk??chen und Studio, Paare und Familien-Appartements (1 oder 2 Schlafzimmer). Viele Wohnungen sind f??r Rollstuhlfahrer zug??nglich.<br>{module:rooms}', 0, 'Zimmer', 'Zimmer', 'php Hotel Website, Hotel online buchen Website', 'Pr??fen Sie verschiedene Zimmer in unserem Hotel', 0, '2011-05-01 11:16:22', '2013-11-21 19:22:25', NULL, 0, 0, 1, 1, 'rooms', 1, NULL, 'public', 0),
(16, '45tfrtbfg8', 'en', 'article', '', '_self', 'Today???s-featured-menu-item', 'Today???s featured menu item', '<p><img style=\"margin-right: 7px;\" src=\"images/upload/restaurant_dishes.jpg\" border=\"0\" alt=\"\" vspace=\"5\" align=\"left\" /></p>\r\n<h3 class=\"extra-wrap\">Foie gras!</h3>\r\n<div class=\"extra-wrap\">\r\n<ul class=\"list2\">\r\n<li>Nice and tasty! </li>\r\n<li>Made from French ingredients! </li>\r\n<li>Cooked by Italian chef! </li>\r\n<li>Awarded by world???s assosiation of chef! </li>\r\n<li>Proved to be good for your health!</li>\r\n</ul>\r\n</div>\r\n<div><strong class=\"txt2\">AS LOW AS ???19!</strong></div>\r\n<p><br /><br /><br /><br /></p>\r\n<h3><br />Menu/Specials</h3>\r\n<div class=\"extra-wrap\">\r\n<ul>\r\n<li>LYNAGH???S BEER CHEESE <br />Our own recipe, made with Guinness Stout served w/ carrots, celery &amp; crackers. -- $4.99 </li>\r\n<li>SALSA <br />TAME OR FLAME Homemade salsa served with tortilla chips. The TAME is HOT!!! -- $2.99 </li>\r\n<li>SPINACH ARTICHOKE DIP <br />Served with tortilla chips. -- $6.49 </li>\r\n<li>DOC BILL\'S PUB PRETZELS <br />Two jumbo pretzels deep fried and served with hot homemade beer cheese. -- $5.49 </li>\r\n<li>ULTIMATE IRISH <br />Take the Irish Nacho, add red onions and our famous chili. -- $9.99 </li>\r\n<li>SPICY QUESO BEEF DIP <br />Ground beef, queso, Mexican spices, jalapenos, and sour cream. That???s gotta be good! -- $6.49 </li>\r\n<li>DELUXE NACHOS <br />Tortillas smothered with chili, cheese, lettuce tomatoes, jalapenos &amp; sour cream.</li>\r\n</ul>\r\n</div>', 0, 'Restaurant', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-12 14:04:55', NULL, 0, 0, 1, 1, 'restaurant', 1, NULL, 'public', 2),
(17, '45tfrtbfg8', 'es', 'article', '', '_self', 'Elemento-de-men??-aparece-hoy', 'Elemento de men?? aparece hoy', '<p><img src=\"images/upload/restaurant_dishes.jpg\" border=\"0\" alt=\"\" hspace=\"5\" vspace=\"5\" align=\"left\" /></p>\r\n<div class=\"extra-wrap\">\r\n<h5>Foie gras!</h5>\r\n<ul class=\"list2\">\r\n<li>Niza y sabroso! </li>\r\n<li>Elaborado con ingredientes franc??s! </li>\r\n<li>Cocinados por el chef italiano! </li>\r\n<li>Demuestran ser buenos para tu salud!</li>\r\n</ul>\r\n<div class=\"aligncenter\"><strong class=\"txt2\">M??s bajo de ???19!</strong></div>\r\n</div>\r\n<p>??</p>\r\n<h3><br /><br /><br /></h3>\r\n<h3>Men?? / Especiales</h3>\r\n<div class=\"extra-wrap\">\r\n<ul>\r\n<li>LYNAGH???S BEER CHEESE <br />Our own recipe, made with Guinness Stout served w/ carrots, celery &amp; crackers. -- $4.99 </li>\r\n<li>SALSA <br />TAME OR FLAME Homemade salsa served with tortilla chips. The TAME is HOT!!! -- $2.99 </li>\r\n<li>SPINACH ARTICHOKE DIP <br />Served with tortilla chips. -- $6.49 </li>\r\n<li>DOC BILL\'S PUB PRETZELS <br />Two jumbo pretzels deep fried and served with hot homemade beer cheese. -- $5.49 </li>\r\n<li>ULTIMATE IRISH <br />Take the Irish Nacho, add red onions and our famous chili. -- $9.99 </li>\r\n<li>SPICY QUESO BEEF DIP <br />Ground beef, queso, Mexican spices, jalapenos, and sour cream. That???s gotta be good! -- $6.49 </li>\r\n<li>DELUXE NACHOS <br />Tortillas smothered with chili, cheese, lettuce tomatoes, jalapenos &amp; sour cream.</li>\r\n</ul>\r\n</div>', 0, 'Restaurante', 'Restaurante', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'Elemento de men?? aparece hoy', 0, '2011-05-01 11:16:22', '2013-11-12 14:00:54', NULL, 0, 0, 1, 1, 'restaurant', 1, NULL, 'public', 2),
(18, '45tfrtbfg8', 'de', 'article', '', '_self', 'Restaurant', 'Restaurant', '<p><img style=\"margin-right: 7px;\" src=\"images/upload/restaurant_dishes.jpg\" border=\"0\" alt=\"\" vspace=\"5\" align=\"left\" /></p>\r\n<h3 class=\"extra-wrap\">Stopfleber!</h3>\r\n<div class=\"extra-wrap\">\r\n<ul class=\"list2\">\r\n<li>Nizza und lecker!<br />Aus Franz??sisch Zutaten!<br />Gekochtes vom italienischen K??chenchef!<br />Ausgezeichnet vom weltweit Hauptverbandes der Chef!<br />Erwies sich als gut f??r Ihre Gesundheit!</li>\r\n</ul>\r\n</div>\r\n<div><strong class=\"txt2\">so niedrig wie 19 ???!</strong></div>\r\n<p><br /><br /><br /><br /></p>\r\n<h3>Men??/Specials</h3>\r\n<div class=\"extra-wrap\">\r\n<ul>\r\n<li>Lynagh Bier K??SE<br />Unser eigenes Rezept, mit Guinness Stout gemacht serviert w/Karotten, Sellerie &amp; Cracker. - $4,99 </li>\r\n<li>SALSA<br />TAME oder Flamme Hausgemachte Salsa serviert mit Tortilla Chips. Die TAME ist hei??! - $2,99 </li>\r\n<li>SPINAT ARTISCHOCKE DIP<br />Serviert mit Tortilla Chips. - $6,49 </li>\r\n<li>DOC BILL\'s Pub PRETZELS<br />Zwei Jumbo-Brezeln gebacken und serviert mit hei??er hausgemachtes Bier K??se. - $5,49 </li>\r\n<li>ULTIMATE IRISH<br />Nehmen Sie die irischen Nacho, roten Zwiebeln hinzuf??gen und unser ber??hmtes Chili. - $9.99 </li>\r\n<li>SPICY QUESO BEEF DIP<br />Hackfleisch, queso, mexikanische Gew??rze, Jalapenos und Sauerrahm. Das musst gut sein! - $6,49 </li>\r\n<li>DELUXE NACHOS<br />Tortillas mit Chili, K??se, Salat Tomaten, Jalapenos &amp; Sauerrahm erstickt.</li>\r\n</ul>\r\n</div>', 0, 'Restaurant', 'Restaurant', 'php Hotel Website, Hotel online buchen Website', 'Die heutige vorgestellten Men??eintrag', 0, '2011-05-01 11:16:22', '2013-11-21 19:22:56', NULL, 0, 0, 1, 1, 'restaurant', 1, NULL, 'public', 2),
(19, 's3d4fder56', 'en', 'article', '', '_self', 'About-Us', 'About Us', '<p>{module:about_us}</p>', 0, 'About Us', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-06 17:02:02', NULL, 0, 0, 1, 1, 'about_us', 1, NULL, 'public', 4),
(20, 's3d4fder56', 'es', 'article', '', '_self', 'Qui??nes-somos', 'Qui??nes somos', '<p>{module:about_us}</p>', 0, 'Qui??nes somos', 'Qui??nes somos', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-06 17:02:10', NULL, 0, 0, 1, 1, 'about_us', 1, NULL, 'public', 4),
(21, 's3d4fder56', 'de', 'article', '', '_self', '??ber-uns', '??ber uns', '<p>{module:about_us}</p>', 0, '??ber uns', '??ber uns', 'php Hotel Website, Hotel online buchen Website', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-06 17:02:17', NULL, 0, 0, 1, 1, 'about_us', 1, NULL, 'public', 4),
(22, '90jhtyu78y', 'en', 'article', '', '_self', 'Terms-and-Conditions', 'Terms and Conditions', '<h4>Conditions of Purchase and Money Back Guarantee</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in enim sed arcu congue mollis. Mauris sed elementum nulla. Donec eleifend nunc dapibus turpis euismod at commodo mi pulvinar. Praesent vitae metus ligula. Maecenas commodo massa id arcu luctus posuere. Praesent adipiscing scelerisque nisi id accumsan.</p>\r\n<ul>\r\n<li>Sed posuere, sem mollis eleifend placerat, nisl magna dapibus nunc, in mattis augue urna ac dui. Nunc mollis venenatis mi. </li>\r\n<li>A elementum nulla mollis in. Maecenas et mi augue. Nulla euismod mauris sit amet mauris ullamcorper lobortis. </li>\r\n<li>Vivamus nec ligula nulla. Curabitur non sapien nec lectus euismod consectetur. Morbi ut vestibulum risus. </li>\r\n</ul>\r\n<h4><br />Detailed Conditions</h4>\r\n<p><br />Cras elit purus, dapibus et cursus vel, eleifend interdum neque. Aenean nec magna sit amet felis pellentesque sollicitudin. Praesent ut enim est, quis ornare massa:</p>\r\n<ul>\r\n<li>Sed ultrices turpis at dolor dictum eu sollicitudin leo gravida. Praesent leo leo, malesuada nec facilisis non, lobortis eget lacus. </li>\r\n<li>Donec at orci odio. Aliquam eu nulla felis, eget volutpat enim. Vivamus ullamcorper ligula eu sapien rutrum et hendrerit neque convallis. Sed fringilla tristique arcu, a interdum erat fringilla non. Nunc sit amet sodales leo. </li>\r\n<li>Quisque luctus lacus nulla. Duis iaculis porttitor velit et feugiat. Nam sed velit libero. Praesent metus mauris, fermentum nec consequat vel, bibendum vel sem. </li>\r\n</ul>\r\n<p><br />Etiam auctor est et leo tristique ut scelerisque sapien bibendum. Suspendisse tellus urna, pellentesque eget pellentesque a, dictum in massa.</p>', 0, 'Terms and Conditions', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-06 19:32:11', NULL, 0, 0, 1, 1, 'terms_and_conditions', 1, NULL, 'public', 6),
(23, '90jhtyu78y', 'es', 'article', '', '_self', 'T??rminos-y-Condiciones', 'T??rminos y Condiciones', '<h4>Conditions of Purchase and Money Back Guarantee</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in enim sed arcu congue mollis. Mauris sed elementum nulla. Donec eleifend nunc dapibus turpis euismod at commodo mi pulvinar. Praesent vitae metus ligula. Maecenas commodo massa id arcu luctus posuere. Praesent adipiscing scelerisque nisi id accumsan.</p>\r\n<ul>\r\n<li>Sed posuere, sem mollis eleifend placerat, nisl magna dapibus nunc, in mattis augue urna ac dui. Nunc mollis venenatis mi. </li>\r\n<li>A elementum nulla mollis in. Maecenas et mi augue. Nulla euismod mauris sit amet mauris ullamcorper lobortis. </li>\r\n<li>Vivamus nec ligula nulla. Curabitur non sapien nec lectus euismod consectetur. Morbi ut vestibulum risus. <br /><br /></li>\r\n</ul>\r\n<h4>Detailed Conditions<br /><br /></h4>\r\n<p>Cras elit purus, dapibus et cursus vel, eleifend interdum neque. Aenean nec magna sit amet felis pellentesque sollicitudin. Praesent ut enim est, quis ornare massa:</p>\r\n<ul>\r\n<li>Sed ultrices turpis at dolor dictum eu sollicitudin leo gravida. Praesent leo leo, malesuada nec facilisis non, lobortis eget lacus. </li>\r\n<li>Donec at orci odio. Aliquam eu nulla felis, eget volutpat enim. Vivamus ullamcorper ligula eu sapien rutrum et hendrerit neque convallis. Sed fringilla tristique arcu, a interdum erat fringilla non. Nunc sit amet sodales leo. </li>\r\n<li>Quisque luctus lacus nulla. Duis iaculis porttitor velit et feugiat. Nam sed velit libero. Praesent metus mauris, fermentum nec consequat vel, bibendum vel sem. </li>\r\n</ul>\r\n<p>Etiam auctor est et leo tristique ut scelerisque sapien bibendum. Suspendisse tellus urna, pellentesque eget pellentesque a, dictum in massa.</p>', 0, 'T??rminos y Condiciones', 'T??rminos y Condiciones', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-06 17:02:57', NULL, 0, 0, 1, 1, 'terms_and_conditions', 1, NULL, 'public', 6),
(24, '90jhtyu78y', 'de', 'article', '', '_self', 'Allgemeine-Gesch??ftsbedingungen', 'Allgemeine Gesch??ftsbedingungen', '<h4>Einkaufs-und Geld-Zur??ck-Garantie</h4>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed in enim sed arcu congue mollis. Mauris sed elementum nulla. Donec eleifend nunc dapibus turpis euismod at commodo mi pulvinar. Praesent vitae metus ligula. Maecenas commodo massa id arcu luctus posuere. Praesent adipiscing scelerisque nisi id accumsan.</p>\r\n<ul>\r\n<li>Sed posuere, sem mollis eleifend placerat, nisl magna dapibus nunc, in mattis augue urna ac dui. Nunc mollis venenatis mi. </li>\r\n<li>A elementum nulla mollis in. Maecenas et mi augue. Nulla euismod mauris sit amet mauris ullamcorper lobortis. </li>\r\n<li>Vivamus nec ligula nulla. Curabitur non sapien nec lectus euismod consectetur. Morbi ut vestibulum risus. </li>\r\n</ul>\r\n<h4><br />Detaillierte Bedingungen<br /><br /></h4>\r\n<p>Cras elit purus, dapibus et cursus vel, eleifend interdum neque. Aenean nec magna sit amet felis pellentesque sollicitudin. Praesent ut enim est, quis ornare massa:</p>\r\n<ul>\r\n<li>Sed ultrices turpis at dolor dictum eu sollicitudin leo gravida. Praesent leo leo, malesuada nec facilisis non, lobortis eget lacus. </li>\r\n<li>Donec at orci odio. Aliquam eu nulla felis, eget volutpat enim. Vivamus ullamcorper ligula eu sapien rutrum et hendrerit neque convallis. Sed fringilla tristique arcu, a interdum erat fringilla non. Nunc sit amet sodales leo. </li>\r\n<li>Quisque luctus lacus nulla. Duis iaculis porttitor velit et feugiat. Nam sed velit libero. Praesent metus mauris, fermentum nec consequat vel, bibendum vel sem. </li>\r\n</ul>\r\n<p><br />Etiam auctor est et leo tristique ut scelerisque sapien bibendum. Suspendisse tellus urna, pellentesque eget pellentesque a, dictum in massa.</p>', 0, 'Allgemeine Gesch??ftsbedin', 'Allgemeine Gesch??ftsbedingungen', 'php Hotel Website, Hotel online buchen Website', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-06 17:03:04', NULL, 0, 0, 1, 1, 'terms_and_conditions', 1, NULL, 'public', 6),
(25, 'zxcs3d4fd5', 'en', 'article', '', '_self', 'Test-Page', 'Test Page', '<p>Test page with comments</p>', 1, 'Test Page', 'Metahotels', 'hotel booking engine', 'Metahotels', 1, '2011-05-01 11:16:22', '2013-11-21 19:16:15', NULL, 0, 0, 1, 0, '', 1, NULL, 'public', 1),
(26, 'zxcs3d4fd5', 'es', 'article', '', '_self', 'P??gina-de-prueba', 'P??gina de prueba', '<p>Prueba de la p??gina con comentarios</p>', 2, 'P??gina de prueba', 'P??gina de prueba', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'uHotelBooking', 1, '2011-05-01 11:16:22', '2013-11-21 19:16:54', NULL, 0, 0, 1, 0, '', 1, NULL, 'public', 1),
(27, 'zxcs3d4fd5', 'de', 'article', '', '_self', 'Testseite', 'Testseite', '<p>Testseite mit Kommentaren</p>', 3, 'Testseite', 'Testseite', 'php Hotel Website, Hotel online buchen Website', 'uHotelBooking', 1, '2011-05-01 11:16:22', '2013-11-21 19:17:45', NULL, 0, 0, 1, 0, '', 1, NULL, 'public', 1),
(28, 'q8mv7zrzmo', 'en', 'article', '', '_self', 'Contact-Us', 'Contact Us', '<p>{module:contact_us}</p>', 0, 'Contact Us', 'Metahotels', 'hotel booking engine', 'Metahotels', 0, '2011-05-01 11:16:22', '2013-11-06 17:02:41', NULL, 0, 0, 1, 1, 'contact_us', 1, NULL, 'public', 5),
(29, 'q8mv7zrzmo', 'es', 'article', '', '_self', 'Cont??ctenos', 'Cont??ctenos', '<p>{module:contact_us}</p>', 0, 'Cont??ctenos', 'Cont??ctenos', 'php sitio del hotel, sitio de reserva de hotel en l??nea', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-21 19:22:07', NULL, 0, 0, 1, 1, 'contact_us', 1, NULL, 'public', 5),
(30, 'q8mv7zrzmo', 'de', 'article', '', '_self', 'Schreiben-Sie-uns', 'Schreiben Sie uns', '<p>{module:contact_us}</p>', 0, 'Kontakt', 'Schreiben Sie uns', 'php Hotel Website, Hotel online buchen Website', 'uHotelBooking', 0, '2011-05-01 11:16:22', '2013-11-21 19:23:52', NULL, 0, 0, 1, 1, 'contact_us', 1, NULL, 'public', 5);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_privileges`
--

CREATE TABLE `uhb_privileges` (
  `id` smallint(6) NOT NULL,
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_privileges`
--

INSERT INTO `uhb_privileges` (`id`, `code`, `name`, `description`) VALUES
(1, 'add_menus', 'Add Menus', 'Add Menus on the site'),
(2, 'edit_menus', 'Edit Menus', 'Edit Menus on the site'),
(3, 'delete_menus', 'Delete Menus', 'Delete Menus from the site'),
(4, 'add_pages', 'Add Pages', 'Add Pages on the site'),
(5, 'edit_pages', 'Edit Pages', 'Edit Pages on the site'),
(6, 'delete_pages', 'Delete Pages', 'Delete Pages from the site'),
(7, 'edit_hotel_info', 'Manage Hotels', 'See and modify the hotels info'),
(8, 'edit_hotel_rooms', 'Manage Hotel Rooms', 'See and modify the hotel rooms info'),
(9, 'view_hotel_reports', 'See Hotel Reports', 'See only reports related to assigned hotel'),
(10, 'edit_bookings', 'Edit Bookings', 'Edit bookings on the site'),
(11, 'cancel_bookings', 'Cancel Bookings', 'Cancel bookings on the site'),
(12, 'delete_bookings', 'Delete Bookings', 'Delete bookings from the site'),
(13, 'view_hotel_payments', 'See Hotel Payment Gateways', 'Allow management of payment gateways for assigned properties'),
(14, 'edit_hotel_payments', 'Edit Hotel Payment Gateways', 'Edit payment gateways for the account');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_rates`
--

CREATE TABLE `uhb_rates` (
  `id` int(11) NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `hotel_id` int(11) DEFAULT NULL,
  `public_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `internal_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` int(11) DEFAULT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_rates`
--

INSERT INTO `uhb_rates` (`id`, `priority_order`, `hotel_id`, `public_name`, `internal_name`, `currency`, `is_active`) VALUES
(1, 1, 2, 'Standard Rate', 'BAR', NULL, 1),
(2, 2, 2, 'NR', 'NR', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_ratings_items`
--

CREATE TABLE `uhb_ratings_items` (
  `item` varchar(200) NOT NULL DEFAULT '',
  `totalrate` int(10) NOT NULL DEFAULT '0',
  `nrrates` int(9) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_ratings_users`
--

CREATE TABLE `uhb_ratings_users` (
  `day` int(2) DEFAULT NULL,
  `rater` varchar(15) DEFAULT NULL,
  `item` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_reviews`
--

CREATE TABLE `uhb_reviews` (
  `id` int(11) NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `positive_comments` varchar(1048) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `negative_comments` varchar(1048) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin_answer` varchar(1048) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rating_cleanliness` float(2,1) NOT NULL DEFAULT '0.0',
  `rating_room_comfort` float(2,1) NOT NULL DEFAULT '0.0',
  `rating_location` float(2,1) NOT NULL DEFAULT '0.0',
  `rating_service` float(2,1) NOT NULL DEFAULT '0.0',
  `rating_sleep_quality` float(2,1) NOT NULL DEFAULT '0.0',
  `rating_price` float(2,1) NOT NULL DEFAULT '0.0',
  `evaluation` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0 - Not Recommend, 1 - Not Good, 2 - Neutral, 3 - Good, 4 - Very Good, 5 - Wonderful',
  `travel_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '0 - Work, 1 - Tourismus, 2 - Other',
  `passenger_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 - An individual, 1 - A young couple, 2 - An old couple, 3 - Family with young children, 4 - Family with older children, 5 - Groups of Friends',
  `image_file_1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_file_1_thumb` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_file_2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_file_2_thumb` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_file_3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_file_3_thumb` varchar(70) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `priority_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uhb_reviews`
--

INSERT INTO `uhb_reviews` (`id`, `hotel_id`, `customer_id`, `title`, `positive_comments`, `negative_comments`, `admin_answer`, `rating_cleanliness`, `rating_room_comfort`, `rating_location`, `rating_service`, `rating_sleep_quality`, `rating_price`, `evaluation`, `travel_type`, `passenger_type`, `image_file_1`, `image_file_1_thumb`, `image_file_2`, `image_file_2_thumb`, `image_file_3`, `image_file_3_thumb`, `date_created`, `is_active`, `priority_order`) VALUES
(1, 1, 1, 'Great experience', 'Nice large hotel located on the Red Sea. The breakfast buffet is GREAT! Good location, good beach, good facilities. Staff was more or less friendly, with some exceptions. Nice breakfasts.', 'Noisy at evenings, especially when lots of people arrive. The hotel facilities are outdated. When the hotel is heavily booked it becomes too crowded everywhere and not nice to be.', 'Thank you for this review! We\'ll be glad to see you again in our hotel.', 2.0, 3.0, 4.0, 4.1, 4.2, 4.0, 4, 0, 2, '', '', '', '', '', '', '2013-01-02 12:03:00', 1, 0),
(2, 1, 2, 'I liked it very mutch!', 'It is close to everything but if you go in the lower season the pool won\'t be ready even though the temperature was quiet high already.', 'Your front staff was wonderful, i believe her name was Moran, please thank her from us.', '', 4.4, 2.3, 3.0, 5.0, 4.0, 4.0, 5, 1, 1, '', '', '', '', '', '', '2013-01-04 13:04:00', 1, 1),
(3, 1, 3, 'Excellent hotel, very good!', 'The view from our balcony in room # 409, was terrific. It was centrally located to everything on and around the port area. Wonderful service and everything was very clean.', 'The breakfast was below average, although not bad. If back in this town we would stay there again.', '', 4.0, 5.0, 4.1, 4.3, 4.0, 3.0, 3, 2, 0, '', '', '', '', '', '', '2013-01-04 15:04:00', 1, 2),
(4, 1, 4, 'Great experience', 'Excellent hotel, friendly staff would def go there again. Breakfast is from 7:00 until 12:00, which is Great. Breakfast is really good and worth the cost.', '', '', 4.1, 3.2, 4.0, 4.0, 5.0, 4.0, 4, 3, 1, '', '', '', '', '', '', '2013-01-05 12:05:00', 1, 3),
(5, 2, 1, 'Super, great experience', 'Rooms clean tidy and serviced daily. Pool stunning.', 'Nice location, but the hotel is so old...', '', 3.2, 4.2, 4.0, 2.5, 5.0, 4.0, 3, 4, 2, '', '', '', '', '', '', '2013-01-06 16:05:00', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_roles`
--

CREATE TABLE `uhb_roles` (
  `id` smallint(6) NOT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_roles`
--

INSERT INTO `uhb_roles` (`id`, `code`, `name`, `description`) VALUES
(1, 'owner', 'Site Owner', 'Site Owner is the owner of the site, has all privileges and could not be removed.'),
(2, 'mainadmin', 'Main Admin', 'The \"Main Administrator\" user has top privileges like Site Owner and may be removed only by him.'),
(3, 'admin', 'Simple Admin', 'The \"Simple Admin\" is required to assist the Main Admins, has different privileges and may be created by Site Owner or Main Admins.'),
(4, 'hotelowner', 'Hotel Owner', 'The \"Hotel Owner\" is the owner of the hotel, has special privileges to the hotels/rooms he/she assigned to.'),
(5, 'regionalmanager', 'Regional Manager', 'The \"Regional Manager\" is the person who responsible for the hotels in the region/s he/she assigned to.');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_role_privileges`
--

CREATE TABLE `uhb_role_privileges` (
  `id` int(10) NOT NULL,
  `role_id` int(5) NOT NULL,
  `privilege_id` int(5) NOT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_role_privileges`
--

INSERT INTO `uhb_role_privileges` (`id`, `role_id`, `privilege_id`, `is_active`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 10, 1),
(8, 1, 11, 1),
(9, 1, 12, 1),
(11, 2, 1, 1),
(12, 2, 2, 1),
(13, 2, 3, 1),
(14, 2, 4, 1),
(15, 2, 5, 1),
(16, 2, 6, 1),
(17, 2, 10, 1),
(18, 2, 11, 1),
(19, 2, 12, 1),
(20, 3, 1, 0),
(21, 3, 2, 1),
(22, 3, 3, 0),
(23, 3, 4, 1),
(24, 3, 5, 1),
(25, 3, 6, 0),
(26, 3, 10, 1),
(27, 3, 11, 0),
(28, 3, 12, 0),
(29, 4, 7, 1),
(30, 4, 8, 1),
(31, 4, 9, 1),
(32, 4, 10, 1),
(33, 4, 11, 1),
(34, 4, 12, 1),
(35, 4, 13, 1),
(36, 4, 14, 1),
(37, 5, 7, 1),
(38, 5, 8, 1),
(39, 5, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_rooms`
--

CREATE TABLE `uhb_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotel_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `room_type` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `room_short_description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `room_long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `room_count` smallint(6) NOT NULL,
  `max_adults` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `max_extra_beds` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `max_children` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `default_price` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `extra_bed_charge` decimal(10,2) UNSIGNED NOT NULL,
  `discount_night_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - fixed price, 1 - percentage',
  `discount_night_3` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_night_4` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_night_5` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_guests_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - fixed price, 1 - percentage',
  `discount_guests_3` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_guests_4` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_guests_5` decimal(10,2) NOT NULL DEFAULT '0.00',
  `refund_money_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - first night, 1 - fixed price, 2 - percentage',
  `refund_money_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `default_availability` tinyint(1) NOT NULL DEFAULT '1',
  `beds` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `bathrooms` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `room_area` decimal(4,1) UNSIGNED NOT NULL DEFAULT '0.0',
  `bed_types` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `double_bed_size` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sofa` tinyint(1) NOT NULL,
  `fecilities` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `square_metres` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bathroom_facilities` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `room_icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_icon_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_1_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_2_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_3` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_3_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_4` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_4_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_5` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `room_picture_5_thumb` varchar(70) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `number_of_views` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_rooms`
--

INSERT INTO `uhb_rooms` (`id`, `hotel_id`, `room_type`, `room_short_description`, `room_long_description`, `room_count`, `max_adults`, `max_extra_beds`, `max_children`, `default_price`, `extra_bed_charge`, `discount_night_type`, `discount_night_3`, `discount_night_4`, `discount_night_5`, `discount_guests_type`, `discount_guests_3`, `discount_guests_4`, `discount_guests_5`, `refund_money_type`, `refund_money_value`, `default_availability`, `beds`, `bathrooms`, `room_area`, `bed_types`, `double_bed_size`, `sofa`, `fecilities`, `square_metres`, `bathroom_facilities`, `room_icon`, `room_icon_thumb`, `room_picture_1`, `room_picture_1_thumb`, `room_picture_2`, `room_picture_2_thumb`, `room_picture_3`, `room_picture_3_thumb`, `room_picture_4`, `room_picture_4_thumb`, `room_picture_5`, `room_picture_5_thumb`, `priority_order`, `number_of_views`, `is_active`) VALUES
(1, 1, 'Single', '', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '', NULL, 0, '[2,4,6,8,7]', '', '', 'single_icon.png', 'single_icon_thumb.jpg', 'single_1.jpg', 'single_1_thumb.jpg', 'single_2.jpg', 'single_2_thumb.jpg', 'single_3.jpg', 'single_3_thumb.jpg', 'single_4.jpg', 'single_4_thumb.jpg', 'single_5.jpg', 'single_5_thumb.jpg', 1, 0, 1),
(2, 1, 'Double', '', 'Double', 10, 2, 1, 1, 80.00, 30.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 2, 2, 25.0, '', NULL, 0, '[1,2,6,8]', '', '', 'double_icon.png', 'double_icon_thumb.jpg', 'double_1.jpg', 'double_1_thumb.jpg', 'double_2.jpg', 'double_2_thumb.jpg', 'double_3.jpg', 'double_3_thumb.jpg', '', '', '', '', 2, 1, 1),
(3, 1, 'Superior', '', 'Superior', 5, 3, 1, 1, 140.00, 50.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 2, 1, 35.0, '', NULL, 0, '[1,2,3,4]', '', '', 'superior_icon.png', 'superior_icon_thumb.jpg', 'superior_1.jpg', 'superior_1_thumb.jpg', 'superior_2.jpg', 'superior_2_thumb.jpg', 'superior_3.jpg', 'superior_3_thumb.jpg', '', '', '', '', 3, 0, 1),
(4, 1, 'Luxury', '', 'Luxury', 3, 4, 2, 2, 190.00, 80.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 2, 2, 60.0, '', NULL, 0, '[4,6,8,9]', '', '', 'luxury_icon.png', 'luxury_icon_thumb.jpg', 'luxury_1.jpg', 'luxury_1_thumb.jpg', 'luxury_2.jpg', 'luxury_2_thumb.jpg', 'luxury_3.jpg', 'luxury_3_thumb.jpg', '', '', '', '', 4, 0, 1),
(5, 2, 'Standard King Room', 'Relax in our standard room, complete with two queen size beds, customized furniture, gel-infused pillow top mattresses topped with luxurious duvets and duvet covers clean for every guest.', '<p>Relax in our standard room, complete with two queen size beds, customized furniture, gel-infused pillow top mattresses topped with luxurious duvets and duvet covers clean for every guest, flat screen TV, mini-fridge, executive desk, wireless internet, all tastefully decorated with climate control at your fingertips. Exercise in our state of the art fitness facility, swim in our heated indoor swimming pool or relax in our sauna, all free of cost for our guests.</p>', 12, 2, 1, 0, 78.00, 50.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 44.0, '1,2', '111', 1, '[4,6,8,9]', '37', '1', '2_icon_standard.jpg', '2_icon_standard_thumb.jpg', '2_view1_standard.jpg', '2_view1_standard_thumb.jpg', '2_view2_standard.jpg', '2_view2_standard_thumb.jpg', '', '', '', '', '', '', 0, 3, 1),
(6, 2, 'Standard Twin Room', '<p>A standard hotel room is an elongated hotel room designed for two people, though some standard doubles can accommodate up to four. The standard double hotel room is available at many full-service hotels, with the exclusion of facilities that house only suites or extended-stay guests.</p>', '<p>A standard hotel room is an elongated hotel room designed for two people, though some standard doubles can accommodate up to four. The standard double hotel room is available at many full-service hotels, with the exclusion of facilities that house only suites or extended-stay guests. The standard double room is ideal for a brief stay of up to a few days. It doesn\'t contain a kitchen, so guests can\'t cook their own meals.</p>', 10, 4, 1, 1, 119.00, 80.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 2, 2, 90.0, '4', '0', 2, '[1,24,6,8,9]', '', '11', '2_icon_double_two.jpg', '2_icon_double_two_thumb.jpg', '2_view1_double_two.jpg', '2_view1_double_two_thumb.jpg', '2_view2_double_two.jpg', '2_view2_double_two_thumb.jpg', '', '', '', '', '', '', 1, 0, 1),
(7, 2, 'Standard Triple Room	', '<p>Our spacious Junior hotel Suites are 460 square feet (43 square meters) featuring floor-to-ceiling windows overlooking Manhattan from our New York City hotel suites. Junior Suites offer luxurious king beds, 55-inch flat-panel HDTV with Blu-ray player and iPod docking station, marble baths, and a large walk-in closet.</p>', '<p>Our spacious Junior hotel Suites are 460 square feet (43 square meters) featuring floor-to-ceiling windows overlooking Manhattan from our New York City hotel suites. Junior Suites offer luxurious king beds, 55-inch flat-panel HDTV with Blu-ray player and iPod docking station, marble baths, and a large walk-in closet.<br /> For your comfort and convenience, most also include a fully equipped European-style kitchen with appliances by Sub-Zero, and a sitting area with a twin-size sofa bed. All of our New York hotel guests enjoy full access to our health club and spa.</p>', 5, 1, 1, 0, 75.00, 45.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 99.0, '2,3', '222', 2, '[2,4,6,8,7]', '60', '7', '3_icon_junior.jpg', '3_icon_junior_thumb.jpg', '3_view1_junior.jpg', '3_view1_junior_thumb.jpg', '3_view2_junior.jpg', '3_view2_junior_thumb.jpg', '3_view3_junior.jpg', '3_view3_junior_thumb.jpg', '', '', '', '', 0, 3, 1),
(8, 2, 'Deluxe King Room	', '<p>Stunning Executive Double bedrooms provide the perfect setting in the heart of London. Exclusive features you won???t find in Double Cumberland Guest rooms include luxurious bathrobes and slippers, complimentary mineral water and full access to the Guoman Club Lounge with complimentary newspapers and refreshments available all day.</p>', '<p>Stunning Executive Double bedrooms provide the perfect setting in the heart of London. Exclusive features you won???t find in Double Cumberland Guest rooms include luxurious bathrobes and slippers, complimentary mineral water and full access to the Guoman Club Lounge with complimentary newspapers and refreshments available all day.</p>\r\n<p>??</p>\r\n<p>As you would expect from Guoman, all our 50 Executive Double bedrooms also benefit from fast, complimentary BT Wi-fi and entertainment at your fingertips with a 32-inch LCD TV. You???ll appreciate extra space to unwind and recharge for the day ahead with beautifully designed bathrooms featuring walk-in power showers and mist-free mirrors. Welcome details that provide an oasis of calm in the centre of London.</p>', 12, 3, 1, 1, 109.00, 50.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 2, 2, 112.0, '5', '0', 4, '[2,4,6,8,7,9,10]', '', '15', '3_icon_executive.jpg', '3_icon_executive_thumb.jpg', '3_view1_executive.jpg', '3_view1_executive_thumb.jpg', '3_view2_executive.jpg', '3_view2_executive_thumb.jpg', '', '', '', '', '', '', 2, 2, 1),
(11, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '4', '0', 2, '[2,4,6,8,7]', '37', '1', '1630758089.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', '1630758090.img1.jpg', 1, 0, 1),
(12, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '4', '0', 2, '[2,4,6,8,7,9,10]', '37', '1', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', '1630759314.img1.jpg', 1, 0, 1),
(13, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '4', '0', 2, '[1,2,4,6,8,7,9,10]', '37', '1', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', '1630759346.img1.jpg', 1, 0, 1),
(14, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '4', '0', 2, '[2,4,6,8,7,9,10]', '37', '1', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', '1630759377.img1.jpg', 1, 0, 1),
(15, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '[\"4\"]', '0', 2, '[2,4,6,8,7,9,10]', '37', '1', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', '1630759892.img1.jpg', 1, 0, 1),
(16, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '[\"4\",\"2\"]', '0', 2, '[2,4,6,8,7,9,10]', '37', '1', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', '1630759922.img1.jpg', 1, 0, 1),
(17, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '\"0.00\"', '0', 2, '[2,4,6,8,7,9,10]', '37', '1', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', '1630908785.img1.jpg', 1, 0, 1),
(18, 2, 'Single', 'test description', 'Single', 15, 1, 0, 0, 55.00, 22.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 0.00, 0.00, 0, 0.00, 1, 1, 1, 20.0, '[\"4\",\"2\"]', '0', 2, '[3,4,6,8,7,9,10]', '37', '1', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', '1630908887.img1.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_rooms_availabilities`
--

CREATE TABLE `uhb_rooms_availabilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `y` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - current year, 1 - next year',
  `m` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `d1` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a1` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d2` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a2` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d3` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a3` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d4` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a4` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d5` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a5` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d6` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a6` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d7` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a7` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d8` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a8` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d9` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a9` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d10` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a10` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d11` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a11` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d12` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a12` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d13` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a13` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d14` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a14` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d15` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a15` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d16` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a16` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d17` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a17` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d18` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a18` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d19` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a19` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d20` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a20` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d21` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a21` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d22` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a22` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d23` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a23` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d24` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a24` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d25` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a25` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d26` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a26` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d27` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a27` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d28` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a28` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d29` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a29` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d30` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a30` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `d31` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `a31` smallint(6) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_rooms_availabilities`
--

INSERT INTO `uhb_rooms_availabilities` (`id`, `room_id`, `y`, `m`, `d1`, `a1`, `d2`, `a2`, `d3`, `a3`, `d4`, `a4`, `d5`, `a5`, `d6`, `a6`, `d7`, `a7`, `d8`, `a8`, `d9`, `a9`, `d10`, `a10`, `d11`, `a11`, `d12`, `a12`, `d13`, `a13`, `d14`, `a14`, `d15`, `a15`, `d16`, `a16`, `d17`, `a17`, `d18`, `a18`, `d19`, `a19`, `d20`, `a20`, `d21`, `a21`, `d22`, `a22`, `d23`, `a23`, `d24`, `a24`, `d25`, `a25`, `d26`, `a26`, `d27`, `a27`, `d28`, `a28`, `d29`, `a29`, `d30`, `a30`, `d31`, `a31`) VALUES
(1, 1, 0, 1, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(2, 1, 0, 2, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 0, 3, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(4, 1, 0, 4, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(5, 1, 0, 5, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(6, 1, 0, 6, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(7, 1, 0, 7, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(8, 1, 0, 8, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(9, 1, 0, 9, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(10, 1, 0, 10, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(11, 1, 0, 11, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(12, 1, 0, 12, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 7, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(13, 1, 1, 1, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(14, 1, 1, 2, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0, 0, 0, 0, 0),
(15, 1, 1, 3, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(16, 1, 1, 4, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(17, 1, 1, 5, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(18, 1, 1, 6, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(19, 1, 1, 7, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(20, 1, 1, 8, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(21, 1, 1, 9, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(22, 1, 1, 10, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(23, 1, 1, 11, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0),
(24, 1, 1, 12, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(25, 2, 0, 1, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(26, 2, 0, 2, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0),
(27, 2, 0, 3, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(28, 2, 0, 4, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(29, 2, 0, 5, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(30, 2, 0, 6, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(31, 2, 0, 7, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(32, 2, 0, 8, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 2, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(33, 2, 0, 9, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(34, 2, 0, 10, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(35, 2, 0, 11, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(36, 2, 0, 12, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(37, 2, 1, 1, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(38, 2, 1, 2, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0),
(39, 2, 1, 3, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(40, 2, 1, 4, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(41, 2, 1, 5, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(42, 2, 1, 6, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(43, 2, 1, 7, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(44, 2, 1, 8, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(45, 2, 1, 9, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(46, 2, 1, 10, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(47, 2, 1, 11, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0),
(48, 2, 1, 12, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0),
(49, 3, 0, 1, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(50, 3, 0, 2, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0),
(51, 3, 0, 3, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(52, 3, 0, 4, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(53, 3, 0, 5, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(54, 3, 0, 6, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(55, 3, 0, 7, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(56, 3, 0, 8, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(57, 3, 0, 9, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(58, 3, 0, 10, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(59, 3, 0, 11, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(60, 3, 0, 12, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(61, 3, 1, 1, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(62, 3, 1, 2, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0, 0, 0, 0, 0),
(63, 3, 1, 3, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(64, 3, 1, 4, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(65, 3, 1, 5, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(66, 3, 1, 6, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(67, 3, 1, 7, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(68, 3, 1, 8, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(69, 3, 1, 9, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(70, 3, 1, 10, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(71, 3, 1, 11, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 0, 0),
(72, 3, 1, 12, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0, 5, 0),
(73, 4, 0, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(74, 4, 0, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0),
(75, 4, 0, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(76, 4, 0, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(77, 4, 0, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(78, 4, 0, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(79, 4, 0, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(80, 4, 0, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(81, 4, 0, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(82, 4, 0, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(83, 4, 0, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(84, 4, 0, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(85, 4, 1, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(86, 4, 1, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(87, 4, 1, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(88, 4, 1, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(89, 4, 1, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(90, 4, 1, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(91, 4, 1, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(92, 4, 1, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(93, 4, 1, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(94, 4, 1, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(95, 4, 1, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(96, 4, 1, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(97, 5, 0, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(98, 5, 0, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0),
(99, 5, 0, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(100, 5, 0, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(101, 5, 0, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(102, 5, 0, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(103, 5, 0, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(104, 5, 0, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(105, 5, 0, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(106, 5, 0, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(107, 5, 0, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(108, 5, 0, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 5, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(109, 5, 1, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(110, 5, 1, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(111, 5, 1, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(112, 5, 1, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(113, 5, 1, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(114, 5, 1, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(115, 5, 1, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(116, 5, 1, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(117, 5, 1, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(118, 5, 1, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(119, 5, 1, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(120, 5, 1, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(121, 6, 0, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(122, 6, 0, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0),
(123, 6, 0, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(124, 6, 0, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(125, 6, 0, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(126, 6, 0, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(127, 6, 0, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(128, 6, 0, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(129, 6, 0, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(130, 6, 0, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(131, 6, 0, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(132, 6, 0, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(133, 6, 1, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(134, 6, 1, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(135, 6, 1, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(136, 6, 1, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(137, 6, 1, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(138, 6, 1, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(139, 6, 1, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(140, 6, 1, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(141, 6, 1, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(142, 6, 1, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(143, 6, 1, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(144, 6, 1, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(145, 7, 0, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(146, 7, 0, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0),
(147, 7, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3),
(148, 7, 0, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(149, 7, 0, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(150, 7, 0, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(151, 7, 0, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(152, 7, 0, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(153, 7, 0, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(154, 7, 0, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(155, 7, 0, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(156, 7, 0, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 4, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(157, 7, 1, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(158, 7, 1, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(159, 7, 1, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(160, 7, 1, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(161, 7, 1, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(162, 7, 1, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(163, 7, 1, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(164, 7, 1, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(165, 7, 1, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(166, 7, 1, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(167, 7, 1, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(168, 7, 1, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(169, 8, 0, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(170, 8, 0, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0),
(171, 8, 0, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(172, 8, 0, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(173, 8, 0, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(174, 8, 0, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(175, 8, 0, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(176, 8, 0, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(177, 8, 0, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(178, 8, 0, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(179, 8, 0, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(180, 8, 0, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(181, 8, 1, 1, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(182, 8, 1, 2, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(183, 8, 1, 3, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(184, 8, 1, 4, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(185, 8, 1, 5, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(186, 8, 1, 6, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(187, 8, 1, 7, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(188, 8, 1, 8, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(189, 8, 1, 9, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(190, 8, 1, 10, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(191, 8, 1, 11, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 0, 0),
(192, 8, 1, 12, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0, 3, 0),
(193, 1, 0, 1, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0, 0, 0, 0, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(194, 4, 0, 1, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0, 0, 0, 0, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0),
(195, 4, 0, 1, 15, 0, 15, 0, 15, 0, 15, 0, 0, 0, 0, 0, 0, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_rooms_description`
--

CREATE TABLE `uhb_rooms_description` (
  `id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL DEFAULT '0',
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL DEFAULT 'en',
  `room_type` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `room_short_description` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `room_long_description` text COLLATE utf8_unicode_ci NOT NULL,
  `single_beds` int(10) DEFAULT NULL,
  `double_beds` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_rooms_description`
--

INSERT INTO `uhb_rooms_description` (`id`, `room_id`, `language_id`, `room_type`, `room_short_description`, `room_long_description`, `single_beds`, `double_beds`) VALUES
(1, 1, 'en', 'Single', '<p>Rooms measuring 15 m?? equipped with all the details expected of a superior 4 star hotel. Services: Wake up call service, Customer service, Laundry service and express laundry, Concierge service, Pillow menu.</p>', '<p><strong>Description:</strong><br />Rooms measuring 15 m?? equipped with all the details expected of a superior 4 star hotel.</p>\r\n<p><strong>Services: </strong>\r\n<ul class=\"services\">\r\n<li>Wake up call service</li>\r\n<li>Customer service</li>\r\n<li>Laundry service and express laundry</li>\r\n<li>Concierge service</li>\r\n<li>Pillow menu</li>\r\n</ul></p>', 0, 0),
(2, 1, 'es', 'Single', '<p>Habitaciones de unos 15 m??, equipada con todos los detalles de un 4 estrellas superior Hotel. Servicios: Servicio despertador servicio, Servicio al cliente, Servicio de lavander??a y lavander??a express.</p>', '<p><strong>Descripci??n:</strong><br /> Habitaciones de unos 15 m??, equipada con todos los detalles de un 4 estrellas superior Hotel.</p>\r\n<p><strong>Servicios:</strong><ul class=\"services\">\r\n<li>Servicio despertador servicio</li>\r\n<li>Servicio al cliente</li>\r\n<li>Servicio de lavander??a y lavander??a express</li>\r\n<li>Conserjer??a de servicios</li>\r\n<li>Carta de almohadas</li>\r\n</ul></p>', 0, 0),
(3, 1, 'de', 'Single', '<p>Zimmer 15 m?? Messung mit allen Details eines 4-Sterne-Superior-Hotel erwartet. Dienstleistungen: Weckdienst, Customer Service, W??sche-Service und Express-W??sche-, Concierge-Service, Auswahl an Kissen.</p>', '<p><strong>Beschreibung:</strong><br /> Zimmer 15 m?? Messung mit allen Details eines 4-Sterne-Superior-Hotel erwartet.</p>\r\n<p><strong>Dienstleistungen:</strong>\r\n<ul class=\"services\">\r\n<li>Weckdienst</li>\r\n<li>Kundendienst</li>\r\n<li>W??scherei-Service und Express-W??sche</li>\r\n<li>Conciergeservice Service</li>\r\n<li>Kissenmen??</li>\r\n</ul></p>', 0, 0),
(4, 2, 'en', 'Double', '<p>Modern and functional rooms measuring approximately 20-25 m?? equipped with all the details expected of the hotel. The rooms have a king or queen size bed or two single beds, in addition to beds measuring 1 by 2.2 metres ideal for sports teams.</p>', '<p><strong>Description</strong>:<br />Modern and functional rooms measuring approximately 20-25 m?? equipped with all the details expected of the hotel. <br /><br />The rooms have a king or queen size bed or two single beds, in addition to beds measuring 1 by 2.2 meters ideal for sports teams and views of the streets of the quiet interior patios (request availability upon arrival at the hotel).<br /><br /><strong>Services</strong>:\r\n<ul class=\"services\">\r\n<li>Wake up call service</li>\r\n<li>Customer service</li>\r\n<li>Laundry service and express laundry</li>\r\n<li>Concierge service</li>\r\n<li>Pillow menu</li>\r\n</ul></p>', 0, 0),
(5, 2, 'es', 'Double', '<p>Habitaciones modernas y funcionales de aproximadamente 20-25 m&sup2; equipadas con todos los detalles del hotel. Las habitaciones tienen una cama king o queen size o dos camas individuales, adem&aacute;s de camas de 1 por 2,2 metros ideal para equipos deportivos.</p>', '<p><strong>Descripci??n </strong>:<br />\r\nHabitaciones modernas y funcionales de aproximadamente 20-25 m?? equipadas con todos los detalles del hotel.\r\n<br /><br />\r\nLas habitaciones tienen una cama king o queen size o dos camas individuales, adem??s de camas de 1 por 2,2 metros ideal para equipos deportivos y puntos de vista de las calles de los patios interiores tranquila (Solicitud de disponibilidad a la llegada al hotel).\r\n<br /><br />\r\n<strong>Servicios</strong>:\r\n<ul class=\"services\">\r\n<li>Servicio despertador servicio</li>\r\n<li>Servicio al cliente</li>\r\n<li>Servicio de lavander??a y lavander??a express</li>\r\n<li>Conserjer??a de servicios</li>\r\n<li>Carta de almohadas</li>\r\n</ul></p>', 0, 0),
(6, 2, 'de', 'Double', '<p>Moderne und funktionale Zimmer Messung ca. 20-25 m&sup2; mit allen Details des Hotel erwartet. Die Zimmer verf&uuml;gen &uuml;ber ein King oder Queen-Size-Bett oder zwei Einzelbetten, zus&auml;tzlich zu Betten Messung ideal f&uuml;r Sport-Teams.</p>', '<p><strong>Beschreibung</strong>:<br />\r\nModerne und funktionale Zimmer Messung ca. 20-25 m?? mit allen Details des Hotel erwartet.\r\n<br /><br />\r\nDie Zimmer verf??gen ??ber ein King oder Queen-Size-Bett oder zwei Einzelbetten, zus??tzlich zu Betten der Gr????e von 1 um 2,2 Meter ideal f??r Sport-Teams und Blick auf den Stra??en der ruhigen Innenh??fen (Anfrage Verf??gbarkeit bei Ankunft im Hotel).\r\n<br /><br />\r\n<strong>Dienstleistungen</strong>:\r\n<ul class=\"services\">\r\n<li>Weckdienst</li>\r\n<li>Kundendienst</li>\r\n<li>W??scherei-Service und Express-W??sche</li>\r\n<li>Conciergeservice Service</li>\r\n<li>Kissenmen??</li>\r\n</ul></p>', 0, 0),
(7, 3, 'en', 'Superior', '<p>Spacious rooms with exquisite decor, measuring approximately 25-30 m&sup2; and equipped with all the details expected of the hotel hotel. The rooms have a king or queen size bed or two single beds, in addition to beds measuring 1 by 2.2 metres.</p>', '<p><strong>Description</strong>:\r\n<br />\r\nSpacious rooms with exquisite decor, measuring approximately 25-30 m?? and equipped with all the details expected of the hotel hotel.\r\n<br /><br />\r\nThe rooms have a king or queen size bed or two single beds, in addition to beds measuring 1 by 2.2 metres ideal for sports teams and views of the streets of the quiet interior patios (request availability upon arrival at the hotel).\r\n<br /><br />\r\n<strong>Services</strong>:\r\n<ul class=\"services\">\r\n<li>24 hour room service</li>\r\n<li>Wake up call service</li>\r\n<li>Serviexpress customer service</li>\r\n<li>Laundry service and express laundry</li>\r\n<li>Concierge service</li>\r\n<li>Pillow menu</li>\r\n</ul>\r\n</p>', 0, 0),
(8, 3, 'es', 'Superior', '<p>Amplias habitaciones con una decoraci&oacute;n exquisita, de 25-30 m&sup2; equipadas con todos los detalles del hotel hotel. Las habitaciones tienen una cama king o queen size o dos camas individuales, adem&aacute;s de camas de 1 por 2,2 metros.</p>', '<p><strong>Descripci??n</strong>:\r\n<br />\r\nAmplias habitaciones con una decoraci??n exquisita, de 25-30 m?? equipadas con todos los detalles del hotel hotel.\r\n<br /><br />\r\nLas habitaciones tienen una cama king o queen size o dos camas individuales, adem??s de camas de 1 por 2,2 metros ideal para equipos deportivos y puntos de vista de las calles de los patios interiores tranquila (Solicitud de disponibilidad a la llegada al hotel).\r\n<br /><br />\r\n<strong>Servicios</strong>:\r\n<ul class=\"services\">\r\n<li>24 horas de servicio sala de</li>\r\n<li>Servicio despertador servicio</li>\r\n<li>\"Serviexpress\" de servicio al cliente</li>\r\n<li>Servicio de lavander??a y lavander??a express</li>\r\n<li>Conserjer??a de servicios</li>\r\n<li>Carta de almohadas</li>\r\n</ul>\r\n</p>', 0, 0),
(9, 3, 'de', 'Superior', '<p>Spacious rooms with exquisite decor, measuring approximately 25-30 m&sup2; and equipped with all the details expected of the hotel hotel. The rooms have a king or queen size bed or two single beds.</p>', '<p><strong>Beschreibung</strong>:\r\n<br />\r\nGer??umige Zimmer mit exquisiter Ausstattung, Mess ca. 25-30 m?? und mit allen Details des Hotels Hotel erwartet.\r\n<br /><br />\r\nDie Zimmer verf??gen ??ber ein King oder Queen-Size-Bett oder zwei Einzelbetten, zus??tzlich zu Betten der Gr????e von 1 um 2,2 Meter ideal f??r Sport-Teams und Blick auf den Stra??en der ruhigen Innenh??fen (Anfrage Verf??gbarkeit bei Ankunft im Hotel).\r\n<br /><br />\r\n<strong>Dienstleistungen</strong>:\r\n<ul class=\"services\">\r\n<li>24 Stunden Zimmer-Service</li>\r\n<li>Weckdienst</li>\r\n<li>\"Serviexpress\" Dienst am Kunden</li>\r\n<li>W??scherei-Service und Express-W??sche</li>\r\n<li>Conciergeservice Service</li>\r\n<li>Kissenmen??</li>\r\n</ul>\r\n</p>', 0, 0),
(10, 4, 'en', 'Luxury', '<p>Spacious rooms with exquisite decor measuring approximately 25-30 m&sup2; and equipped with all the details expected of a superior 4 star Hotel. The rooms have a king or queen size bed or two single beds, and views of the streets.</p>', '<p><strong>Description</strong>:\r\n<br />\r\nSpacious rooms with exquisite decor measuring approximately 25-30 m?? and equipped with all the details expected of a superior 4 star Hotel.\r\n<br /><br />\r\nThe rooms have a king or queen size bed or two single beds, and views of the streets of the quiet interior patios (request availability upon arrival at the hotel).\r\n<br /><br />\r\n<strong>Services</strong>:\r\n<br />\r\n<ul class=\"services\">\r\n<li>Private reception located on the 6th floor</li>\r\n<li>Welcome courtesy replaced daily</li>\r\n<li>Buffet breakfast in private room between 7am and 11am</li>\r\n<li>Free Open Bar available on the Luxury Service floor, from 16:30 to 22:30</li>\r\n<li>24 hour room service</li>\r\n<li>10% discount on lunches and dinners at our Di??bolo restaurant, after consultation and booking at the Royal Service reception and subject to availability</li>\r\n<li>Free 30 minute use per stay of computers in the Business Centre (hall), including printer and 25 photocopies</li>\r\n<li>Free 8 minute Ultra Violet Ray session per stay</li>\r\n<li>Wake up call service</li>\r\n<li>Customer service</li>\r\n<li>Laundry service and express laundry</li>\r\n<li>Concierge service</li>\r\n<li>Pillow menu</li>\r\n<li>Turn down service</li>\r\n</ul>\r\n* The Luxury Service is closed from Friday at 12:00 until Sunday at 15:00.\r\n</p>', 0, 0),
(11, 4, 'es', 'Luxury', '<p>Amplias habitaciones con una decoraci&oacute;n exquisita de 25-30 m&sup2; y est&aacute;n equipadas con todos los detalles de un 4 estrellas superior Hotel. Las habitaciones tienen una cama king o queen size o dos camas individuales.</p>', '<p><strong>Descripci??n</strong>:\r\n<br />\r\nAmplias habitaciones con una decoraci??n exquisita de 25-30 m?? y est??n equipadas con todos los detalles de un 4 estrellas superior Hotel.\r\n<br /><br />\r\nLas habitaciones tienen una cama king o queen size o dos camas individuales, y vistas de las calles de los patios interiores tranquila (Solicitud de disponibilidad a la llegada al hotel).\r\n<br /><br />\r\n<strong>Servicios</strong>:\r\n<br />\r\n<ul class=\"services\">\r\n<li>Recepci??n privada situada en la planta sexta</li>\r\n<li>Bienvenido cortes??a reposici??n diaria</li>\r\n<li>Desayuno Buffet en habitaci??n privada 07 a.m.-11 a.m.</li>\r\n<li>Libre Open Bar se encuentra en la planta noble de servicio, 16:30-22:30</li>\r\n<li>24 horas de servicio sala de</li>\r\n<li>10% de descuento en almuerzos y cenas en nuestro restaurante Di??bolo, previa consulta y reserva en la recepci??n de Servicio Real y sujeto a disponibilidad</li>\r\n<li>Libre uso de 30 minutos por estancia de los ordenadores en el Centro de Negocios (vest??bulo), incluyendo impresoras y fotocopias de los 25</li>\r\n<li>Libre 8 minutos Ultra Violeta Ray per??odo de sesiones por estancia</li>\r\n<li>Servicio despertador servicio</li>\r\n<li>Servicio al cliente</li>\r\n<li>Servicio de lavander??a y lavander??a express</li>\r\n<li>Conserjer??a de servicios</li>\r\n<li>Carta de almohadas</li>\r\n<li>Ponga Servicio de cobertura</li>\r\n</ul>\r\n* El servicio de lujo est?? cerrado desde el viernes hasta el domingo a las 12:00 a las 15:00.\r\n</p>', 0, 0),
(12, 4, 'de', 'Luxury', '<p>Ger&auml;umige Zimmer mit exquisiter Ausstattung messung ca. 25-30 m&sup2; gro&szlig; und mit Allen Details eines 4-Sterne-Superior-Hotel expected. Die Zimmer verf&uuml;gen &Uuml;ber Ein K&ouml;nig Oder Queen-Size-Bett und Blick Auf Die Strassen.</p>', '<p><strong>Beschreibung</strong>:\r\n<br />\r\nGer??umige Zimmer mit exquisiter Ausstattung Messung ca. 25-30 m?? gro?? und mit allen Details eines 4-Sterne-Superior-Hotel Meli?? Hotel erwartet.\r\n<br /><br />\r\nDie Zimmer verf??gen ??ber ein King oder Queen-Size-Bett oder zwei Einzelbetten und Blick auf den Stra??en der ruhigen Innenh??fen (Anfrage Verf??gbarkeit bei Ankunft im Hotel).\r\n<br /><br />\r\n<strong>Dienstleistungen</strong>:\r\n<br />\r\n<ul class=\"services\">\r\n<li>Private Empfang auf der 6. Etage Willkommen H??flichkeit ersetzt t??glich</li>\r\n<li>Buffet Fr??hst??ck im privaten Raum 7.00 bis 11.00 Uhr</li>\r\n<li>Kostenlose Open Bar auf dem Luxus-Service Stock, von 16.30 bis 22.30 Uhr</li>\r\n<li>24 Stunden Zimmer-Service</li>\r\n<li>10% Rabatt auf Mittag-und Abendessen in unserem Restaurant Diabolo, nach Absprache und Reservierung im Royal Service Rezeption und je nach Verf??gbarkeit</li>\r\n<li>Kostenlose 30 Minuten Nutzung pro Aufenthalt von Computern im Business Center (Halle), einschlie??lich Drucker und 25 Kopien</li>\r\n<li>Freie 8 Minuten Ultra Violet Ray-Sitzung pro Aufenthalt</li>\r\n<li>Weckdienst</li>\r\n<li>Kundendienst</li>\r\n<li>W??scherei-Service und Express-W??sche</li>\r\n<li>Conciergeservice Service</li>\r\n<li>Kissenmen??</li>\r\n<li>Schalten Down-Service</li>\r\n</ul>\r\n* El servicio de lujo est?? cerrado desde el viernes hasta el domingo a las 12:00 a las 15:00.\r\n</p>', 0, 0),
(13, 5, 'en', 'Standard Room', '<p>Relax in our standard room, complete with two queen size beds, customized furniture, gel-infused pillow top mattresses topped with luxurious duvets and duvet covers clean for every guest.</p>', '<p>Relax in our standard room, complete with two queen size beds, customized furniture, gel-infused pillow top mattresses topped with luxurious duvets and duvet covers clean for every guest, flat screen TV, mini-fridge, executive desk, wireless internet, all tastefully decorated with climate control at your fingertips. Exercise in our state of the art fitness facility, swim in our heated indoor swimming pool or relax in our sauna, all free of cost for our guests.</p>', 0, 0),
(14, 5, 'es', 'Habitaci??n Est??ndar', '<p>Rel??jese en nuestra habitaci??n est??ndar, con dos camas queen size, muebles a medida, colchones con acolchado de gel con infusi??n cubierto con edredones de lujo y fundas n??rdicas limpia para todos los hu??spedes.</p>', '<p>Rel??jese en nuestra habitaci??n est??ndar, con dos camas queen size, muebles a medida, colchones con acolchado de gel con infusi??n cubierto con edredones de lujo y fundas n??rdicas limpia para todos los hu??spedes, TV pantalla plana, mini-nevera, escritorio ejecutivo, internet inal??mbrico, todo con buen gusto decorado con climatizador a su alcance. Ejercicio en nuestro estado del arte gimnasio, nadar en la piscina cubierta climatizada o relajarse en la sauna, todo sin costo para nuestros hu??spedes.</p>', 0, 0),
(15, 5, 'de', 'Standard Zimmer', '<p>Entspannen Sie in unserem Standard-Zimmer, komplett mit zwei Queen-Size-Betten, individuelle M??bel, gekr??nt Gel-infundiert Matratzen mit Bettdecken und Bettbez??ge sauber f??r jeden Gast.</p>', '<p>Entspannen Sie in unserem Standard-Zimmer, komplett mit zwei Queen-Size-Betten, individuelle M??bel, gekr??nt Gel-infundiert Matratzen mit Bettdecken und Bettbez??ge sauber f??r jeden Gast, Flachbild-TV, Mini-K??hlschrank, Executive Schreibtisch, Wireless Internet, alle geschmackvoll Klimaanlagen an Ihren Fingerspitzen verziert. ??bung in unserem Stand der Technik: Fitnessm??glichkeiten, schwimmen im beheizten Innenpool oder entspannen Sie in unserer Sauna, alle kostenlos f??r unsere G??ste.</p>', 0, 0),
(16, 6, 'en', 'Double Room with Two Double Beds', '<p>A standard hotel room is an elongated hotel room designed for two people, though some standard doubles can accommodate up to four. The standard double hotel room is available at many full-service hotels, with the exclusion of facilities that house only suites or extended-stay guests.</p>', '<p>A standard hotel room is an elongated hotel room designed for two people, though some standard doubles can accommodate up to four. The standard double hotel room is available at many full-service hotels, with the exclusion of facilities that house only suites or extended-stay guests. The standard double room is ideal for a brief stay of up to a few days. It doesn\'t contain a kitchen, so guests can\'t cook their own meals.</p>', 0, 0),
(17, 6, 'es', 'Habitaci??n Doble con dos camas dobles', '<p>Una habitaci??n de hotel est??ndar es una habitaci??n de hotel alargada dise??ada para dos personas, aunque algunas habitaciones dobles est??ndar tienen capacidad para hasta cuatro personas. La habitaci??n de hotel est??ndar doble est?? disponible en muchos hoteles de servicio completo, con la exclusi??n de las instalaciones que albergan s??lo suites o hu??spedes de estad??as prolongadas.</p>', '<p>Una habitaci??n de hotel est??ndar es una habitaci??n de hotel alargada dise??ada para dos personas, aunque algunas habitaciones dobles est??ndar tienen capacidad para hasta cuatro personas. La habitaci??n de hotel est??ndar doble est?? disponible en muchos hoteles de servicio completo, con la exclusi??n de las instalaciones que albergan s??lo suites o hu??spedes de estad??as prolongadas. La habitaci??n doble est??ndar es ideal para una breve estancia de hasta unos pocos d??as. No contiene una cocina, as?? que los hu??spedes no pueden cocinar sus propias comidas.</p>', 0, 0),
(18, 6, 'de', 'Double Room with Two Double BedsDoppelzimmer mit zwei Doppelbetten', '<p>Ein Standard-Hotelzimmer ist eine l??ngliche Hotelzimmer f??r zwei Personen ausgelegt, auch wenn einige Standard-Doppelzimmer f??r bis zu vier Personen. Die Standard-Doppelhotelzimmer ist in vielen Hotels mit umfassendem Service zur Verf??gung, mit Ausnahme von Einrichtungen, die nur Suiten oder l??ngere Aufenthalte G??ste beherbergen.</p>', '<p>Ein Standard-Hotelzimmer ist eine l??ngliche Hotelzimmer f??r zwei Personen ausgelegt, auch wenn einige Standard-Doppelzimmer f??r bis zu vier Personen. Die Standard-Doppelhotelzimmer ist in vielen Hotels mit umfassendem Service zur Verf??gung, mit Ausnahme von Einrichtungen, die nur Suiten oder l??ngere Aufenthalte G??ste beherbergen. Die Standard-Doppelzimmer ist ideal f??r einen kurzen Aufenthalt von bis zu wenigen Tagen. Es enth??lt nicht eine K??che, so k??nnen die G??ste ihre eigenen Mahlzeiten nicht kochen.</p>', 0, 0),
(19, 7, 'en', 'Junior Suite', '<p>Our spacious Junior hotel Suites are 460 square feet (43 square meters) featuring floor-to-ceiling windows overlooking Manhattan from our New York City hotel suites. Junior Suites offer luxurious king beds, 55-inch flat-panel HDTV with Blu-ray player and iPod docking station, marble baths, and a large walk-in closet.</p>', '<p>Our spacious Junior hotel Suites are 460 square feet (43 square meters) featuring floor-to-ceiling windows overlooking Manhattan from our New York City hotel suites. Junior Suites offer luxurious king beds, 55-inch flat-panel HDTV with Blu-ray player and iPod docking station, marble baths, and a large walk-in closet.<br /> For your comfort and convenience, most also include a fully equipped European-style kitchen with appliances by Sub-Zero, and a sitting area with a twin-size sofa bed. All of our New York hotel guests enjoy full access to our health club and spa.</p>', 0, 0),
(20, 7, 'es', 'Junior Suite', '<p>Nuestro hotel espaciosas Junior Suites son de 460 pies cuadrados (43 metros cuadrados) con ventanas de piso a techo y vistas a Manhattan desde nuestras suites de hotel de Nueva York. Las Junior Suites ofrecen lujosas camas king, de 55 pulgadas HDTV de pantalla plana con reproductor de Blu-ray y soporte para iPod, ba??os de m??rmol y un amplio walk-in closet.</p>', '<p>Nuestro hotel espaciosas Junior Suites son de 460 pies cuadrados (43 metros cuadrados) con ventanas de piso a techo y vistas a Manhattan desde nuestras suites de hotel de Nueva York. Las Junior Suites ofrecen lujosas camas king, de 55 pulgadas HDTV de pantalla plana con reproductor de Blu-ray y soporte para iPod, ba??os de m??rmol y un amplio walk-in closet.</p>\r\n<p>Para su comodidad y conveniencia, la mayor??a tambi??n incluyen una cocina de estilo europeo, totalmente equipada con electrodom??sticos de Sub-Zero, y una zona de estar con un sof?? cama doble de tama??o. Todos los hu??spedes del hotel de Nueva York de un acceso completo a nuestro club de salud y spa.</p>', 0, 0),
(21, 7, 'de', 'Junior Suite', '<p>Unsere ger??umigen Junior-Hotel-Suiten sind 460 Quadratmeter (43 qm) mit vom Boden bis zur Decke reichenden Fenster mit Blick auf Manhattan aus unserer Hotelsuiten in New York. Junior Suiten bieten luxuri??se Kingsize-Betten, 55-Zoll-Flachbildfernseher mit Blu-ray-Player und iPod-Dockingstation, Marmorb??der und einen gro??en begehbaren Kleiderschrank.</p>', '<p>Unsere ger??umigen Junior-Hotel-Suiten sind 460 Quadratmeter (43 qm) mit vom Boden bis zur Decke reichenden Fenster mit Blick auf Manhattan aus unserer Hotelsuiten in New York. Junior Suiten bieten luxuri??se Kingsize-Betten, 55-Zoll-Flachbildfernseher mit Blu-ray-Player und iPod-Dockingstation, Marmorb??der und einen gro??en begehbaren Kleiderschrank.</p>\r\n<p>F??r Ihren Komfort und Bequemlichkeit sind die meisten auch eine voll ausgestattete europ??ischen Stil K??che mit Ger??ten von Sub-Zero und einen Sitzbereich mit einem Doppelschlafsofa. Alle unsere Hotelg??ste New York genie??en Sie vollen Zugang zu unserem Health Club und Spa.</p>', 0, 0),
(22, 8, 'en', 'Executive Double Room', '<p>Stunning Executive Double bedrooms provide the perfect setting in the heart of NY. Exclusive features you won???t find in Double Cumberland Guest rooms include luxurious bathrobes and slippers, complimentary mineral water and full access to the Guoman Club Lounge with complimentary newspapers and refreshments available all day.</p>', '<p>Stunning Executive Double bedrooms provide the perfect setting in the heart of??NY. Exclusive features you won???t find in Double Cumberland Guest rooms include luxurious bathrobes and slippers, complimentary mineral water and full access to the Guoman Club Lounge with complimentary newspapers and refreshments available all day.</p>\r\n<p>As you would expect from Guoman, all our 50 Executive Double bedrooms also benefit from fast, complimentary BT Wi-fi and entertainment at your fingertips with a 32-inch LCD TV. You???ll appreciate extra space to unwind and recharge for the day ahead with beautifully designed bathrooms featuring walk-in power showers and mist-free mirrors. Welcome details that provide an oasis of calm in the centre of London.</p>', 0, 0),
(23, 8, 'es', 'Executive Double Room', '<p>Impresionantes habitaciones dobles ejecutivas son el escenario perfecto en el coraz??n de Londres. Las caracter??sticas exclusivas que no encontrar?? en las habitaciones Doble Cumberland habitaciones incluyen albornoces y zapatillas de lujo, agua mineral de cortes??a y acceso completo a la Guoman Club Lounge, con peri??dicos gratuitos y refrescos disponibles durante todo el d??a.</p>', '<p>Impresionantes habitaciones dobles ejecutivas son el escenario perfecto en el coraz??n. Las caracter??sticas exclusivas que no encontrar?? en las habitaciones Doble Cumberland habitaciones incluyen albornoces y zapatillas de lujo, agua mineral de cortes??a y acceso completo a la Guoman Club Lounge, con peri??dicos gratuitos y refrescos disponibles durante todo el d??a.</p>\r\n<p>Como era de esperar de Guoman, todas nuestras 50 habitaciones dobles ejecutivas tambi??n se benefician de la r??pida, conexi??n BT Wi-fi y el entretenimiento a tu alcance con un televisor LCD de 32 pulgadas. Usted apreciar?? el espacio extra para relajarse y recargar para el d??a siguiente, con ba??os de bonito dise??o con duchas a presi??n ras de suelo y espejos antivaho. Detalles de bienvenida que proporcionan un oasis de calma en el centro de Londres.</p>', 0, 0),
(24, 8, 'de', 'Executive Double Room', '<p>Atemberaubende Executive Doppelzimmer bieten die perfekte Lage im Herzen von New York. Exklusive Funktionen, die Sie nicht in Doppel Cumberland Zimmer zu finden sind luxuri??se Badem??ntel und Hausschuhe, Mineralwasser und vollen Zugriff auf die Guoman Club-Lounge mit kostenlosen Zeitungen und Erfrischungen den ganzen Tag.</p>', '<p>Atemberaubende Executive Doppelzimmer bieten die perfekte Lage im Herzen von New York. Exklusive Funktionen, die Sie nicht in Doppel Cumberland Zimmer zu finden sind luxuri??se Badem??ntel und Hausschuhe, Mineralwasser und vollen Zugriff auf die Guoman Club-Lounge mit kostenlosen Zeitungen und Erfrischungen den ganzen Tag.</p>\r\n<p>Wie Sie aus Guoman erwarten, alle unsere 50 Executive Doppelzimmer auch schnelle, kostenlose BT Wi-Fi-und Unterhaltungs an Ihren Fingerspitzen mit einem 32-Zoll-LCD-TV profitieren. Sie werden mehr Platz um sich zu entspannen und neue Kr??fte f??r den kommenden Tag mit wundersch??n gestaltete B??der mit begehbarer Massageduschen und beschlagfreien Spiegel zu sch??tzen wissen. Willkommen Details, die eine Oase der Ruhe im Zentrum von London zu liefern.</p>', 0, 0),
(25, 8, 'es', 'Single', 'Habitaciones de unos 15 m??, equipada con todos los detalles de un 4 estrellas superior Hotel. Servicios: Servicio despertador servicio, Servicio al cliente, Servicio de lavander??a y lavander??a express.', 'Habitaciones', 0, 0),
(26, 1, 'es', 'Single', 'Habitaciones de unos 15 m??, equipada con todos los detalles de un 4 estrellas superior Hotel. Servicios: Servicio despertador servicio, Servicio al cliente, Servicio de lavander??a y lavander??a express.', 'Habitaciones', 2, NULL),
(27, 1, 'es', 'Single', 'Habitaciones de unos 15 m??, equipada con todos los detalles de un 4 estrellas superior Hotel. Servicios: Servicio despertador servicio, Servicio al cliente, Servicio de lavander??a y lavander??a express.', 'Habitaciones', NULL, 2),
(28, 1, 'es', 'Single', 'Habitaciones de unos 15 m??, equipada con todos los detalles de un 4 estrellas superior Hotel. Servicios: Servicio despertador servicio, Servicio al cliente, Servicio de lavander??a y lavander??a express.', 'Habitaciones', 4, 2),
(29, 1, 'es', 'Single', 'Habitaciones de unos 15 m??, equipada con todos los detalles de un 4 estrellas superior Hotel. Servicios: Servicio despertador servicio, Servicio al cliente, Servicio de lavander??a y lavander??a express.', 'Habitaciones', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_rooms_prices`
--

CREATE TABLE `uhb_rooms_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `adults` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `children` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `extra_bed_charge` decimal(10,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `mon` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tue` decimal(10,2) NOT NULL DEFAULT '0.00',
  `wed` decimal(10,2) NOT NULL DEFAULT '0.00',
  `thu` decimal(10,2) NOT NULL DEFAULT '0.00',
  `fri` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sat` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sun` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_rooms_prices`
--

INSERT INTO `uhb_rooms_prices` (`id`, `room_id`, `date_from`, `date_to`, `adults`, `children`, `extra_bed_charge`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `sun`, `is_default`) VALUES
(1, 1, NULL, NULL, 1, 0, 22.00, 55.00, 55.00, 55.00, 55.00, 55.00, 55.00, 55.00, 1),
(2, 2, NULL, NULL, 2, 1, 30.00, 80.00, 80.00, 80.00, 80.00, 80.00, 80.00, 80.00, 1),
(3, 3, NULL, NULL, 3, 1, 50.00, 140.00, 140.00, 140.00, 140.00, 140.00, 140.00, 140.00, 1),
(4, 4, NULL, NULL, 4, 2, 90.00, 190.00, 190.00, 190.00, 190.00, 190.00, 190.00, 190.00, 1),
(5, 5, NULL, NULL, 1, 0, 22.00, 55.00, 55.00, 55.00, 55.00, 55.00, 55.00, 55.00, 1),
(6, 6, NULL, NULL, 2, 1, 30.00, 80.00, 80.00, 80.00, 80.00, 80.00, 80.00, 80.00, 1),
(7, 7, NULL, NULL, 3, 1, 50.00, 140.00, 140.00, 140.00, 140.00, 140.00, 140.00, 140.00, 1),
(8, 8, NULL, NULL, 4, 2, 90.00, 190.00, 190.00, 190.00, 190.00, 190.00, 190.00, 190.00, 1),
(9, 5, '2020-12-25', '2020-12-31', 2, 0, 50.00, 78.00, 78.00, 78.00, 78.00, 78.00, 78.00, 78.00, 0),
(10, 1, '2021-09-06', '2021-09-06', 1, 0, 22.00, 55.00, 55.00, 55.00, 55.00, 55.00, 55.00, 55.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_room_bathrooms`
--

CREATE TABLE `uhb_room_bathrooms` (
  `id` int(11) NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hotel_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_room_bathrooms`
--

INSERT INTO `uhb_room_bathrooms` (`id`, `priority_order`, `code`, `icon_image`, `is_active`, `hotel_id`) VALUES
(1, 1, 'Shared bathroom', '', 1, 0),
(2, 2, 'Private bathroom', '', 1, 0),
(3, 3, 'Telephone', '', 1, 0),
(4, 4, 'Shower', '', 1, 0),
(5, 5, 'Bath with shower', '', 1, 0),
(6, 6, 'Separate bath and shower', '', 1, 0),
(7, 7, 'Hot tub', '', 1, 0),
(8, 8, 'Jacuzzi?? (spa tub)', '', 1, 0),
(9, 9, 'Circular bath', '', 1, 0),
(10, 10, 'Bidet', '', 1, 0),
(11, 11, 'Hairdryer', '', 1, 0),
(12, 12, 'Magnifying mirror', '', 1, 0),
(13, 13, 'Bathrobe', '', 1, 0),
(14, 14, 'Slippers', '', 1, 0),
(15, 15, 'Toilet', '', 1, 0),
(26, 16, 'hairdryer', '1630919996.buildings-header.jpg', 1, 0),
(27, 12, 'bath room fecility name', 'icon image', 1, 2),
(28, 12, 'bath room fecility name', 'icon image', 1, 2),
(29, 12, 'bath room fecility name', 'icon image', 1, 2),
(30, 12, 'bath room fecility name', 'icon image', 1, 2),
(31, 12, 'bath room fecility name', 'icon image', 1, 2),
(32, 12, 'bath room fecility name', 'icon image', 1, 2),
(33, 12, 'bath room fecility name', 'icon image', 1, 2),
(34, 12, 'bath room fecility name', 'icon image', 1, 2),
(35, 1, 'ytfhtf', 'fbgfhf', 1, 2),
(36, 1, 'ytfhtf', NULL, 1, 2),
(37, 1, 'ytfhtf', NULL, 1, 2),
(38, 1, 'test 123', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_room_beds`
--

CREATE TABLE `uhb_room_beds` (
  `id` int(11) NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_room_beds`
--

INSERT INTO `uhb_room_beds` (`id`, `priority_order`, `code`, `icon_image`, `is_active`) VALUES
(1, 1, 'ONE_SINGLE', '', 1),
(2, 2, 'ONE_DOUBLE', '', 1),
(3, 3, 'TWO_SINGLES', '', 1),
(4, 4, 'TWO_DOUBLES', '', 1),
(5, 5, 'ONE_DOUBLE_ONE_SINGLE', '', 1),
(6, 6, 'THREE_SINGLES', '', 1),
(26, 7, 'ONE_SINGLE', '1630918262.buildings-header.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_room_facilities`
--

CREATE TABLE `uhb_room_facilities` (
  `id` int(11) NOT NULL,
  `priority_order` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `code` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hotel_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_room_facilities`
--

INSERT INTO `uhb_room_facilities` (`id`, `priority_order`, `code`, `icon_image`, `is_active`, `hotel_id`) VALUES
(1, 1, 'bar', '', 1, 0),
(2, 2, 'microwave', '', 1, 0),
(3, 3, 'washing', '', 1, 0),
(4, 4, 'pets', '', 1, 0),
(5, 5, 'roomservice', '', 1, 0),
(6, 6, 'fridge', '', 1, 0),
(7, 7, 'tv', '', 1, 0),
(8, 8, 'pool', '', 1, 0),
(9, 9, 'grill', '', 1, 0),
(10, 10, 'garden', '', 1, 0),
(11, 11, 'kitchen', '', 1, 0),
(12, 12, 'internet', '', 1, 0),
(13, 13, 'parking', '', 1, 0),
(14, 14, 'childcare', '', 1, 0),
(15, 15, 'internet', '', 1, 0),
(16, 16, 'hairdryer', '', 1, 0),
(17, 17, 'conferenceroom', '', 1, 0),
(18, 18, 'air', '', 1, 0),
(19, 19, 'playground', '', 1, 0),
(21, 20, 'fitness', '', 1, 0),
(22, 21, 'breakfast', '', 1, 0),
(23, 22, 'spa', '', 1, 0),
(24, 23, 'safe', '', 1, 0),
(25, 24, 'cafe', '', 1, 0),
(26, 25, 'playground', '1630909283.buildings-header.jpg', 1, 0),
(27, 25, 'playground', '1632493486.buildings-header.jpg', 1, 0),
(31, 1, 'code', 'kjj', 1, 2),
(32, 1, 'code', 'icon_image', 1, 2),
(33, 1, 'code', 'icon_image', 1, 2),
(34, 1, 'code', 'icon_image', 1, 2),
(35, 1, 'test', 'icon_image', 1, 1),
(36, 1, 'codooe', 'icon_image', 1, 2),
(37, 1, 'test', 'icon_image', 1, 1),
(38, 1, 'test', 'icon_image', 1, 1),
(39, 1, 'tes', 'icon_image', 1, 1),
(40, 1, 'test', 'icon_image', 1, 1),
(41, 1, 'britto test', 'icon_image', 1, 1),
(42, 1, 'test britto', 'icon_image', 1, 1),
(43, 1, 'tets', 'icon_image', 1, 1),
(44, 1, 'code', 'icon_image', 1, 2),
(45, 1, 'code', 'icon_image', 1, 2),
(46, 1, 'codooe', 'icon_image', 1, 2),
(47, 1, 'codeccc', 'icon_image', 1, 2),
(48, 1, 'codeccc', 'icon_image', 1, 2),
(49, 1, 'codeccc', 'icon_image', 1, 2),
(50, 1, 'ytfhtf', 'icon_image', 1, 2),
(51, 1, 'asdfghj', 'icon_image', 1, 1),
(52, 1, 'ytfhtf', 'icon_image', 1, 2),
(53, 1, 'test test test', 'icon_image', 1, 1),
(54, 1, 'test test', 'icon_image', 1, 1),
(55, 1, 'test fac by britto', 'icon_image', 1, 1),
(56, 1, 'test 1231231232', 'icon_image', 1, 1),
(57, 1, 'tetsste', 'icon_image', 1, 1),
(58, 1, 'testqwertyuiop', 'icon_image', 1, 1),
(59, 1, 'ytfhtf', 'icon_image', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_room_facilities_description`
--

CREATE TABLE `uhb_room_facilities_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_facility_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language_id` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_room_facilities_description`
--

INSERT INTO `uhb_room_facilities_description` (`id`, `room_facility_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'en', 'Bar', ''),
(4, 2, 'en', 'Microwave', ''),
(8, 3, 'en', 'Washing', ''),
(10, 4, 'en', 'Pets allowed', ''),
(13, 5, 'en', 'Room Service', ''),
(16, 6, 'en', 'Fridge', ''),
(19, 7, 'en', 'TV', ''),
(22, 8, 'en', 'Pool', ''),
(25, 9, 'en', 'Grill', ''),
(29, 10, 'en', 'Garden', ''),
(31, 11, 'en', 'Kitchen', ''),
(34, 12, 'en', 'Internet', ''),
(37, 13, 'en', 'Parking Included', ''),
(40, 14, 'en', 'Family/Kid Friendly', ''),
(43, 15, 'en', 'Wireless Internet', ''),
(46, 16, 'en', 'Washer/Dryer', ''),
(49, 17, 'en', 'Suitable for Events', ''),
(52, 18, 'en', 'Air Conditioning', ''),
(55, 19, 'en', 'Playground', ''),
(61, 21, 'en', 'Fitness', ''),
(64, 22, 'en', 'Breakfast', ''),
(67, 23, 'en', 'SPA', ''),
(70, 24, 'en', 'Safe', ''),
(73, 25, 'en', 'Cafe', ''),
(76, 26, 'en', 'Internet', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_search_wordlist`
--

CREATE TABLE `uhb_search_wordlist` (
  `id` int(10) NOT NULL,
  `word_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `word_count` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uhb_settings`
--

CREATE TABLE `uhb_settings` (
  `id` smallint(6) NOT NULL,
  `template` varchar(32) CHARACTER SET latin1 NOT NULL,
  `type_menu` enum('horizontal','vertical') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'vertical',
  `ssl_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 - no, 1 - entire site, 2 - admin, 3 - customer & payment modules',
  `seo_urls` tinyint(1) NOT NULL DEFAULT '1',
  `date_format` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'dd/mm/yyyy',
  `time_zone` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `price_format` enum('european','american') CHARACTER SET latin1 NOT NULL,
  `week_start_day` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `admin_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `google_api` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `mailer` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'php_mail_standard',
  `mailer_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mailer_wysiwyg_type` enum('none','tinymce') CHARACTER SET latin1 NOT NULL DEFAULT 'none',
  `smtp_secure` enum('ssl','tls','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ssl',
  `smtp_host` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `wysiwyg_type` enum('none','tinymce') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'tinymce',
  `rss_feed` tinyint(1) NOT NULL DEFAULT '1',
  `rss_feed_type` enum('rss1','rss2','atom') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'rss1',
  `rss_last_ids` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_offline` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `caching_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `cache_lifetime` tinyint(3) UNSIGNED NOT NULL DEFAULT '5' COMMENT 'in minutes',
  `offline_message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_rank` varchar(2) CHARACTER SET latin1 NOT NULL,
  `alexa_rank` varchar(12) CHARACTER SET latin1 NOT NULL,
  `cron_type` enum('batch','non-batch','stop') CHARACTER SET latin1 NOT NULL DEFAULT 'non-batch',
  `cron_run_last_time` datetime DEFAULT NULL,
  `cron_run_period` enum('minute','hour') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'minute',
  `cron_run_period_value` smallint(6) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_settings`
--

INSERT INTO `uhb_settings` (`id`, `template`, `type_menu`, `ssl_mode`, `seo_urls`, `date_format`, `time_zone`, `price_format`, `week_start_day`, `admin_email`, `google_api`, `mailer`, `mailer_type`, `mailer_wysiwyg_type`, `smtp_secure`, `smtp_host`, `smtp_port`, `smtp_username`, `smtp_password`, `wysiwyg_type`, `rss_feed`, `rss_feed_type`, `rss_last_ids`, `is_offline`, `caching_allowed`, `cache_lifetime`, `offline_message`, `google_rank`, `alexa_rank`, `cron_type`, `cron_run_last_time`, `cron_run_period`, `cron_run_period_value`) VALUES
(0, 'default', 'vertical', 0, 0, 'dd/mm/yyyy', '0', 'american', 1, 'info@yourdomain.com', '', 'php', 'php_mail_standard', 'none', 'ssl', '', '', '', '', 'tinymce', 1, 'rss2', '1', 0, 0, 5, 'Our website is currently offline for maintenance. Please visit us later.', '-1', '0', 'stop', '2013-11-21 16:21:27', 'hour', 24);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_site_description`
--

CREATE TABLE `uhb_site_description` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_id` varchar(2) CHARACTER SET latin1 NOT NULL,
  `header_text` text COLLATE utf8_unicode_ci NOT NULL,
  `slogan_text` text COLLATE utf8_unicode_ci NOT NULL,
  `footer_text` text COLLATE utf8_unicode_ci NOT NULL,
  `tag_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag_description` text COLLATE utf8_unicode_ci NOT NULL,
  `tag_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `geographical_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_site_description`
--

INSERT INTO `uhb_site_description` (`id`, `language_id`, `header_text`, `slogan_text`, `footer_text`, `tag_title`, `tag_description`, `tag_keywords`, `geographical_address`) VALUES
(1, 'en', 'Metahotels', 'Change..where your signature harbours', 'Metahotels?? <a class=\"footer_link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"http://www.metahotels\">Metahotels</a>', 'Metahotels', 'Metahotels', 'hotel booking engine', ''),
(2, 'es', 'uHotelBooking', 'su lema aqu??...', 'uHotelBooking ?? <a class=\"footer_link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"http://www.hotel-booking-script.com/index.php\">ApPHP</a>', 'uHotelBooking', 'uHotelBooking', 'php sitio del hotel, sitio de reserva de hotel en l??nea', ''),
(3, 'de', 'uHotelBooking', 'Ihr Slogan hier ...', 'uHotelBooking ?? <a class=\"footer_link\" target=\"_blank\" rel=\"noopener noreferrer\" href=\"http://www.hotel-booking-script.com/index.php\">ApPHP</a>', 'uHotelBooking', 'uHotelBooking', 'php Hotel Website, Hotel online buchen Website', ''),
(4, 'en', 'Metahotels', 'Change..where your signature harbours', 'Metahotels?? Metahotels', 'Metahotels', 'Metahotels', 'hotel booking engine', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_states`
--

CREATE TABLE `uhb_states` (
  `id` smallint(6) NOT NULL,
  `country_id` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `abbrv` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `priority_order` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_states`
--

INSERT INTO `uhb_states` (`id`, `country_id`, `abbrv`, `name`, `is_active`, `priority_order`) VALUES
(1, 224, 'AL', 'Alabama', 1, 1),
(2, 224, 'AK', 'Alaska', 1, 2),
(3, 224, 'AZ', 'Arizona', 1, 3),
(4, 224, 'AR', 'Arkansas', 1, 4),
(5, 224, 'CA', 'California', 1, 5),
(6, 224, 'CO', 'Colorado', 1, 6),
(7, 224, 'CT', 'Connecticut', 1, 7),
(8, 224, 'DE', 'Delaware', 1, 8),
(9, 224, 'DC', 'District of Columbia', 1, 9),
(10, 224, 'FL', 'Florida', 1, 10),
(11, 224, 'GA', 'Georgia', 1, 11),
(12, 224, 'HI', 'Hawaii', 1, 12),
(13, 224, 'ID', 'Idaho', 1, 13),
(14, 224, 'IL', 'Illinois', 1, 14),
(15, 224, 'IN', 'Indiana', 1, 15),
(16, 224, 'IA', 'Iowa', 1, 16),
(17, 224, 'KS', 'Kansas', 1, 17),
(18, 224, 'KY', 'Kentucky', 1, 18),
(19, 224, 'LA', 'Louisiana', 1, 19),
(20, 224, 'ME', 'Maine', 1, 20),
(21, 224, 'MD', 'Maryland', 1, 21),
(22, 224, 'MA', 'Massachusetts', 1, 22),
(23, 224, 'MI', 'Michigan', 1, 22),
(24, 224, 'MN', 'Minnesota', 1, 23),
(25, 224, 'MS', 'Mississippi', 1, 25),
(26, 224, 'MT', 'Montana', 1, 27),
(27, 224, 'MO', 'Missouri', 1, 26),
(28, 224, 'NE', 'Nebraska', 1, 28),
(29, 224, 'NV', 'Nevada', 1, 29),
(30, 224, 'NH', 'New Hampshire', 1, 30),
(31, 224, 'NJ', 'New Jersey', 1, 31),
(32, 224, 'NM', 'New Mexico', 1, 32),
(33, 224, 'NY', 'New York', 1, 33),
(34, 224, 'NC', 'North Carolina', 1, 34),
(35, 224, 'ND', 'North Dakota', 1, 35),
(36, 224, 'OH', 'Ohio', 1, 36),
(37, 224, 'OK', 'Oklahoma', 1, 37),
(38, 224, 'OR', 'Oregon', 1, 38),
(39, 224, 'PA', 'Pennsylvania', 1, 39),
(40, 224, 'RI', 'Rhode Island', 1, 40),
(41, 224, 'SC', 'South Carolina', 1, 41),
(42, 224, 'SD', 'South Dakota', 1, 42),
(43, 224, 'TN', 'Tennessee', 1, 43),
(44, 224, 'TX', 'Texas', 1, 44),
(45, 224, 'UT', 'Utah', 1, 45),
(46, 224, 'VT', 'Vermont', 1, 46),
(47, 224, 'VA', 'Virginia', 1, 47),
(48, 224, 'WA', 'Washington', 1, 48),
(49, 224, 'WV', 'West Virginia', 1, 49),
(50, 224, 'WI', 'Wisconsin', 1, 50),
(51, 224, 'WY', 'Wyoming', 1, 51),
(52, 13, 'NSW', 'New South Wales', 1, 1),
(53, 13, 'QLD', 'Queensland', 1, 2),
(54, 13, 'SA', 'South Australia', 1, 3),
(55, 13, 'TAS', 'Tasmania', 1, 4),
(56, 13, 'VIC', 'Victoria', 1, 5),
(57, 13, 'WA', 'Western Australia', 1, 6),
(58, 39, 'AB', 'Alberta', 1, 1),
(59, 39, 'BC', 'British Columbia', 1, 2),
(60, 39, 'ON', 'Ontario', 1, 6),
(61, 39, 'QC', 'Quebec', 1, 8),
(62, 39, 'NS', 'Nova Scotia', 1, 5),
(63, 39, 'NB', 'New Brunswick', 1, 4),
(64, 39, 'MB', 'Manitoba', 1, 3),
(65, 39, 'PE', 'Prince Edward Island', 1, 7),
(66, 39, 'SK', 'Saskatchewan', 1, 9),
(67, 39, 'NL', 'Newfoundland and Labrador', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_testimonials`
--

CREATE TABLE `uhb_testimonials` (
  `id` int(11) NOT NULL,
  `author_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_country` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `author_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `testimonial_text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `priority_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uhb_testimonials`
--

INSERT INTO `uhb_testimonials` (`id`, `author_name`, `author_country`, `author_city`, `author_email`, `testimonial_text`, `is_active`, `priority_order`) VALUES
(1, 'Roberto', 'IT', 'Rome', 'roberto@email.com', 'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.', 1, 0),
(2, 'Hantz', 'DE', 'Munich', 'hantz@email.com', 'Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.', 1, 1),
(3, 'Lilian', 'GB', 'London', 'lilian@email.com', 'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', 1, 3),
(4, 'Debora', 'US', '', 'debora@email.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `uhb_vocabulary`
--

CREATE TABLE `uhb_vocabulary` (
  `id` smallint(6) NOT NULL,
  `language_id` varchar(3) CHARACTER SET latin1 NOT NULL,
  `key_value` varchar(50) CHARACTER SET latin1 NOT NULL,
  `key_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_vocabulary`
--

INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(1, 'de', '_2CO_NOTICE', '2CheckOut.com Inc. (Ohio, USA) is an authorized retailer for goods and services.'),
(2, 'en', '_2CO_NOTICE', '2CheckOut.com Inc. (Ohio, USA) is an authorized retailer for goods and services.'),
(3, 'es', '_2CO_NOTICE', '2CheckOut.com Inc. (Ohio, EE.UU.) es un vendedor autorizado de bienes y servicios.'),
(4, 'de', '_2CO_ORDER', '2CO Order'),
(5, 'en', '_2CO_ORDER', '2CO Order'),
(6, 'es', '_2CO_ORDER', '2CO Orden'),
(7, 'de', '_ABBREVIATION', 'Abbreviation'),
(8, 'en', '_ABBREVIATION', 'Abbreviation'),
(9, 'es', '_ABBREVIATION', 'Abreviatura'),
(10, 'de', '_ABOUT_US', 'About Us'),
(11, 'en', '_ABOUT_US', 'About Us'),
(12, 'es', '_ABOUT_US', 'Qui??nes somos'),
(13, 'de', '_ACCESS', 'Access'),
(14, 'en', '_ACCESS', 'Access'),
(15, 'es', '_ACCESS', 'Acceso'),
(16, 'de', '_ACCESSIBLE_BY', 'Erreichbar mit'),
(17, 'en', '_ACCESSIBLE_BY', 'Accessible By'),
(18, 'es', '_ACCESSIBLE_BY', 'Accesible En'),
(19, 'de', '_ACCOUNTS', 'Konten'),
(20, 'en', '_ACCOUNTS', 'Accounts'),
(21, 'es', '_ACCOUNTS', 'Cuentas'),
(22, 'de', '_ACCOUNTS_MANAGEMENT', 'Konten'),
(23, 'en', '_ACCOUNTS_MANAGEMENT', 'Accounts'),
(24, 'es', '_ACCOUNTS_MANAGEMENT', 'Gesti??n de Cuentas'),
(25, 'de', '_ACCOUNT_ALREADY_RESET', 'Ihr Konto wurde bereits zur??ckgesetzt! Bitte ??berpr??fen Sie Ihre E-Mail-Posteingang f??r weitere Informationen.'),
(26, 'en', '_ACCOUNT_ALREADY_RESET', 'Your account is already reset! Please check your email inbox for more information.'),
(27, 'es', '_ACCOUNT_ALREADY_RESET', 'Tu cuenta se ha reiniciado ya! Por favor, revise su buz??n de correo electr??nico para obtener m??s informaci??n.'),
(28, 'de', '_ACCOUNT_BALANCE', 'Kontostand'),
(29, 'en', '_ACCOUNT_BALANCE', 'Account Balance'),
(30, 'es', '_ACCOUNT_BALANCE', 'Saldo de la cuenta'),
(31, 'de', '_ACCOUNT_CREATED_CONF_BY_ADMIN_MSG', 'Ihr Konto wurde erfolgreich erstellt! In wenigen Minuten sollten Sie eine E-Mail mit den Angaben von Ihrem Konto. <br> Nach der Genehmigung Ihrer Registrierung durch den Administrator, werden Sie in der Lage, in Ihrem Konto anmelden.'),
(32, 'en', '_ACCOUNT_CREATED_CONF_BY_ADMIN_MSG', 'Your account has been successfully created! In a few minutes you should receive an email, containing the details of your account. <br><br> After approval your registration by administrator, you will be able to log into your account.'),
(33, 'es', '_ACCOUNT_CREATED_CONF_BY_ADMIN_MSG', 'Su cuenta ha sido creada con ??xito! En pocos minutos, usted debe recibir un correo electr??nico, que contiene los detalles de su cuenta. <br> Despu??s de la aprobaci??n de su registro por el administrador, usted ser?? capaz de acceder a su cuenta.'),
(34, 'de', '_ACCOUNT_CREATED_CONF_BY_EMAIL_MSG', 'Ihr Konto wurde erfolgreich erstellt! In wenigen Minuten sollten Sie eine E-Mail mit den Angaben Ihrer Registrierung. <br><br> f??llen Sie dieses Anmeldeformular mit den Best??tigungs-Code, dass die angegebene E-Mail-Adresse gesendet wurde, und du wirst in der Lage sein in Ihrem Konto anmelden.'),
(35, 'en', '_ACCOUNT_CREATED_CONF_BY_EMAIL_MSG', 'Your account has been successfully created! In a few minutes you should receive an email, containing the details of your registration. <br><br> Complete this registration, using the confirmation code that was sent to the provided email address, and you will be able to log into your account.'),
(36, 'es', '_ACCOUNT_CREATED_CONF_BY_EMAIL_MSG', 'Su cuenta ha sido creada con ??xito! En pocos minutos, usted debe recibir un correo electr??nico, que contiene los detalles de su registro. <br><br> completar este registro, utilizando el c??digo de confirmaci??n que fue enviado a la direcci??n de correo electr??nico proporcionado, y que ser?? capaz de acceder a su cuenta.'),
(37, 'de', '_ACCOUNT_CREATED_CONF_MSG', 'Ihr Konto wurde erfolgreich erstellt. <b>Sie erhalten nun eine Best??tigungsmail</b> mit den Angaben von Ihrem Konto (es kann ein paar Minuten dauern). <br><br> Nach der Best??tigung werden Sie in Ihr Konto einloggen.'),
(38, 'en', '_ACCOUNT_CREATED_CONF_MSG', 'Your account has been successfully created. <b>You will receive now an email</b>, containing the details of your account (it may take a few minutes).<br><br>After approval by an administrator, you will be able to log into your account.'),
(39, 'es', '_ACCOUNT_CREATED_CONF_MSG', 'Su cuenta se ha creado correctamente. <b>recibir??n ahora un correo electr??nico</b>,que contiene los detalles de su cuenta (puede tardar unos minutos).<br><br>Despu??s de la aprobaci??n de un administrador, podr?? acceder a su cuenta .'),
(40, 'de', '_ACCOUNT_CREATED_MSG', 'Ihr Konto wurde erfolgreich erstellt. <b>Sie erhalten nun eine Best??tigungsmail</b> mit den Angaben von Ihrem Konto (es kann ein paar Minuten dauern).<br /><br />Nach der Best??tigung werden Sie in Ihr Konto einloggen.'),
(41, 'en', '_ACCOUNT_CREATED_MSG', 'Your account has been successfully created. <b>You will receive now a confirmation email</b>, containing the details of your account (it may take a few minutes). <br /><br />After completing the confirmation you will be able to log into your account.'),
(42, 'es', '_ACCOUNT_CREATED_MSG', 'Su cuenta se cre?? correctamente. <b>Usted recibir?? ahora una-mail de confirmaci??n </b>, que contiene los detalles de su cuenta (puede tardar unos minutos). <br /> <br /> Despu??s de completar la confirmaci??n que ser?? capaz de acceder a su cuenta.'),
(43, 'de', '_ACCOUNT_CREATED_NON_CONFIRM_LINK', 'Klicken Sie <a href=index.php?customer=login>hier</a>'),
(44, 'en', '_ACCOUNT_CREATED_NON_CONFIRM_LINK', 'Click <a href=index.php?customer=login>here</a> to proceed.'),
(45, 'es', '_ACCOUNT_CREATED_NON_CONFIRM_LINK', 'Haga clic <a href=index.php?customer=login>aqu??</a> para continuar.'),
(46, 'de', '_ACCOUNT_CREATED_NON_CONFIRM_MSG', 'Ihr Konto wurde erfolgreich erstellt! F??r Ihre Bequemlichkeit in wenigen Minuten erhalten Sie eine E-Mail mit den Angaben der Anmeldung (keine Best??tigung erforderlich). <br><br> Sie k??nnen in Ihrem Konto jetzt anmelden.'),
(47, 'en', '_ACCOUNT_CREATED_NON_CONFIRM_MSG', 'Your account has been successfully created! For your convenience in a few minutes you will receive an email, containing the details of your registration (no confirmation required). <br><br>You may log into your account now.'),
(48, 'es', '_ACCOUNT_CREATED_NON_CONFIRM_MSG', 'Su cuenta ha sido creada con ??xito! Para su comodidad, en pocos minutos recibir?? un correo electr??nico, que contiene los datos de su inscripci??n (no se requiere confirmaci??n). <br><br> Usted puede acceder a su cuenta ahora.'),
(49, 'de', '_ACCOUNT_CREATE_MSG', 'Diese Registrierung erfordert eine Best??tigung per E-Mail! <br> Bitte f??llen Sie das untenstehende Formular mit korrekten Informationen.'),
(50, 'en', '_ACCOUNT_CREATE_MSG', 'This registration process requires confirmation via email! <br />Please fill out the form below with correct information.'),
(51, 'es', '_ACCOUNT_CREATE_MSG', 'Este proceso de registro requiere la confirmaci??n por correo electr??nico! <br /> Por favor, rellene el siguiente formulario con la informaci??n correcta.'),
(52, 'de', '_ACCOUNT_DETAILS', 'Kontodetails'),
(53, 'en', '_ACCOUNT_DETAILS', 'Account Details'),
(54, 'es', '_ACCOUNT_DETAILS', 'Detalles de la cuenta'),
(55, 'de', '_ACCOUNT_SUCCESSFULLY_RESET', 'Sie haben erfolgreich zur??ckgesetzt Ihr Konto und Benutzernamen mit tempor??ren Passwort an Ihre E-Mail gesendet wurde.'),
(56, 'en', '_ACCOUNT_SUCCESSFULLY_RESET', 'You have successfully reset your account and username with temporary password have been sent to your email.'),
(57, 'es', '_ACCOUNT_SUCCESSFULLY_RESET', 'Ha restablecer su cuenta y nombre de usuario con una contrase??a temporal se han enviado a su correo electr??nico.'),
(58, 'de', '_ACCOUNT_TYPE', 'Kontotyp'),
(59, 'en', '_ACCOUNT_TYPE', 'Account type'),
(60, 'es', '_ACCOUNT_TYPE', 'Tipo de cuenta'),
(61, 'de', '_ACCOUNT_WAS_CREATED', 'Ihr Konto wurde erstellt'),
(62, 'en', '_ACCOUNT_WAS_CREATED', 'Your account has been created'),
(63, 'es', '_ACCOUNT_WAS_CREATED', 'Tu cuenta ha sido creada'),
(64, 'de', '_ACCOUNT_WAS_DELETED', 'Ihr Konto wurde erfolgreich entfernt! Innerhalb von Sekunden werden Sie automatisch auf die Startseite umgeleitet.'),
(65, 'en', '_ACCOUNT_WAS_DELETED', 'Your account has been successfully removed! In seconds, you will be automatically redirected to the homepage.'),
(66, 'es', '_ACCOUNT_WAS_DELETED', 'Su cuenta se ha eliminado correctamente! En cuesti??n de segundos, se le redirigir?? autom??ticamente a la p??gina principal.'),
(67, 'de', '_ACCOUNT_WAS_UPDATED', 'Ihr Konto wurde erfolgreich aktualisiert!'),
(68, 'en', '_ACCOUNT_WAS_UPDATED', 'Your account has been successfully updated!'),
(69, 'es', '_ACCOUNT_WAS_UPDATED', 'Su cuenta ha sido actualizada con ??xito!'),
(70, 'de', '_ACCOUT_CREATED_CONF_LINK', 'Bereits best??tigt Ihre Registrierung? Klicken Sie <a href=index.php?customer=login>hier</a>'),
(71, 'en', '_ACCOUT_CREATED_CONF_LINK', 'Already confirmed your registration? Click <a href=index.php?customer=login>here</a> to proceed.'),
(72, 'es', '_ACCOUT_CREATED_CONF_LINK', 'Ya confirmaron su registro? Haga clic <a href=index.php?customer=login>aqu??</a> para continuar.'),
(73, 'de', '_ACCOUT_CREATED_CONF_MSG', 'Bereits best??tigt Ihre Registrierung? Klicken Sie <a href=index.php?customer=login>hier</a>, um fortzufahren.'),
(74, 'en', '_ACCOUT_CREATED_CONF_MSG', 'Already confirmed your registration? Click <a href=index.php?customer=login>here</a> to proceed.'),
(75, 'es', '_ACCOUT_CREATED_CONF_MSG', 'Ya confirmaron su registro? Haga clic  <a href=index.php?customer=login>aqu??</a>  para continuar.'),
(76, 'de', '_ACTIONS', 'Aktion'),
(77, 'en', '_ACTIONS', 'Action'),
(78, 'es', '_ACTIONS', 'Acci??n'),
(79, 'de', '_ACTIONS_WORD', 'Aktion'),
(80, 'en', '_ACTIONS_WORD', 'Action'),
(81, 'es', '_ACTIONS_WORD', 'Acci??n'),
(82, 'de', '_ACTION_REQUIRED', 'MASSNAHMEN ERFORDERLICH'),
(83, 'en', '_ACTION_REQUIRED', 'ACTION REQUIRED'),
(84, 'es', '_ACTION_REQUIRED', 'MEDIDAS QUE SE SOLICITAN'),
(85, 'de', '_ACTIVATION_EMAIL_ALREADY_SENT', 'Die Aktivierung per E-Mail wurde bereits auf Ihre E-Mail geschickt. Bitte versuchen Sie es sp??ter erneut.'),
(86, 'en', '_ACTIVATION_EMAIL_ALREADY_SENT', 'The activation email has been already sent to your email. Please try again later.'),
(87, 'es', '_ACTIVATION_EMAIL_ALREADY_SENT', 'El email de activaci??n ya fue enviado a su correo electr??nico. Por favor, int??ntelo de nuevo m??s tarde.'),
(88, 'de', '_ACTIVATION_EMAIL_WAS_SENT', 'Eine Email wurde an _EMAIL_ wurde mit einem Aktivierungsschl??ssel gesendet. Bitte ??berpr??fen Sie Ihre E-Mail um die Registrierung abzuschlie??en.'),
(89, 'en', '_ACTIVATION_EMAIL_WAS_SENT', 'An email has been sent to _EMAIL_ with an activation key. Please check your mail to complete registration.'),
(90, 'es', '_ACTIVATION_EMAIL_WAS_SENT', 'Un correo electr??nico ha sido enviado a _EMAIL_ con una clave de activaci??n. Por favor, revise su correo para completar el registro.'),
(91, 'de', '_ACTIVE', 'Aktiv'),
(92, 'en', '_ACTIVE', 'Active'),
(93, 'es', '_ACTIVE', 'Activo'),
(94, 'de', '_ADD', 'Hinzuf??gen'),
(95, 'en', '_ADD', 'Add'),
(96, 'es', '_ADD', 'A??adir'),
(97, 'de', '_ADDED_BY', 'Hinzugef??gt von'),
(98, 'en', '_ADDED_BY', 'Added By'),
(99, 'es', '_ADDED_BY', 'A??adido por'),
(100, 'de', '_ADDED_TO_WISHLIST', 'Erfolgreich in den Wunschliste!'),
(101, 'en', '_ADDED_TO_WISHLIST', 'Item successfully added to wishlist!'),
(102, 'es', '_ADDED_TO_WISHLIST', '??xito a??adido a la lista de deseos!'),
(103, 'de', '_ADDING_OPERATION_COMPLETED', 'Die Zugabe Vorgang wurde erfolgreich abgeschlossen!'),
(104, 'en', '_ADDING_OPERATION_COMPLETED', 'The adding operation completed successfully!'),
(105, 'es', '_ADDING_OPERATION_COMPLETED', 'La operaci??n termin?? con ??xito agregando!'),
(106, 'de', '_ADDITIONAL_INFO', 'Zus??tzliche Informationen'),
(107, 'en', '_ADDITIONAL_INFO', 'Additional Info'),
(108, 'es', '_ADDITIONAL_INFO', 'Informaci??n Adicional'),
(109, 'de', '_ADDITIONAL_INFO_EMAIL', 'Zus??tzliche Informationen (wird per E-Mail gesendet werden)'),
(110, 'en', '_ADDITIONAL_INFO_EMAIL', 'Additional info (will be sent by email)'),
(111, 'es', '_ADDITIONAL_INFO_EMAIL', 'Otros detalles (ser?? enviado por correo electr??nico)'),
(112, 'de', '_ADDITIONAL_INFO_EMAIL_TOOLTIP', 'Dieses Feld ist f??r die ??bertragung zus??tzlicher Informationen vorgesehen, wenn E-Mail zu senden. Das Feld wird nicht gespeichert und gereinigt, nachdem die Bearbeitung abgeschlossen ist.'),
(113, 'en', '_ADDITIONAL_INFO_EMAIL_TOOLTIP', 'This field is intended for the transmission of additional information when sending email. The field is not saved and purified after the editing is complete.'),
(114, 'es', '_ADDITIONAL_INFO_EMAIL_TOOLTIP', 'Este campo est?? destinado a la transmisi??n de informaci??n adicional al enviar correo electr??nico. El campo no se guarda y se purifica despu??s de la edici??n es completa.'),
(115, 'de', '_ADDITIONAL_MODULES', 'Zus??tzliche Module'),
(116, 'en', '_ADDITIONAL_MODULES', 'Additional Modules'),
(117, 'es', '_ADDITIONAL_MODULES', 'Los m??dulos adicionales'),
(118, 'de', '_ADDITIONAL_PAYMENT', 'Zus??tzliche Zahlung'),
(119, 'en', '_ADDITIONAL_PAYMENT', 'Additional Payment'),
(120, 'es', '_ADDITIONAL_PAYMENT', 'El pago adicional'),
(121, 'de', '_ADDITIONAL_PAYMENT_TOOLTIP', 'Um eine zus??tzliche Zahlung oder admin Rabatt geben in diesem Feld einen entsprechenden Wert (positiv oder negativ) gelten.'),
(122, 'en', '_ADDITIONAL_PAYMENT_TOOLTIP', 'To apply an additional payment or admin discount enter into this field an appropriate value (positive or negative).'),
(123, 'es', '_ADDITIONAL_PAYMENT_TOOLTIP', 'Para solicitar un pago adicional o un descuento de administraci??n entrar en este campo un valor adecuado (positivo o negativo).'),
(124, 'de', '_ADDRESS', 'Adresse'),
(125, 'en', '_ADDRESS', 'Address'),
(126, 'es', '_ADDRESS', 'Direcci??n'),
(127, 'de', '_ADDRESS_2', 'Adresse (Zeile 2)'),
(128, 'en', '_ADDRESS_2', 'Address (line 2)'),
(129, 'es', '_ADDRESS_2', 'Direcci??n (l??nea 2)'),
(130, 'de', '_ADDRESS_EMPTY_ALERT', 'Adresse darf nicht leer sein! Bitte erneut eingeben.'),
(131, 'en', '_ADDRESS_EMPTY_ALERT', 'Address cannot be empty! Please re-enter.'),
(132, 'es', '_ADDRESS_EMPTY_ALERT', 'La direcci??n no puede estar vac??o! Por favor, vuelva a entrar.'),
(133, 'de', '_ADD_DEFAULT_PERIODS', 'In Standard-Perioden'),
(134, 'en', '_ADD_DEFAULT_PERIODS', 'Add Default Periods'),
(135, 'es', '_ADD_DEFAULT_PERIODS', 'A??adir per??odos predeterminados'),
(136, 'de', '_ADD_FUNDS', 'hinzuf??gen Fonds'),
(137, 'en', '_ADD_FUNDS', 'Add Funds'),
(138, 'es', '_ADD_FUNDS', 'A??adir fondos'),
(139, 'de', '_ADD_NEW', 'Neu hinzuf??gen'),
(140, 'en', '_ADD_NEW', 'Add New'),
(141, 'es', '_ADD_NEW', 'Agregar nuevo'),
(142, 'de', '_ADD_NEW_MENU', 'Schreibe Neues Men??'),
(143, 'en', '_ADD_NEW_MENU', 'Add New Menu'),
(144, 'es', '_ADD_NEW_MENU', 'A??adir un nuevo men??'),
(145, 'de', '_ADD_REVIEW', 'Review schreiben'),
(146, 'en', '_ADD_REVIEW', 'Add Review'),
(147, 'es', '_ADD_REVIEW', 'A??adir Comentario'),
(148, 'de', '_ADD_TO_CART', 'In den Warenkorb'),
(149, 'en', '_ADD_TO_CART', 'Add to Cart'),
(150, 'es', '_ADD_TO_CART', 'A??adir a la cesta'),
(151, 'de', '_ADD_TO_MENU', 'Ins Men??'),
(152, 'en', '_ADD_TO_MENU', 'Add To Menu'),
(153, 'es', '_ADD_TO_MENU', 'A??adir al men??'),
(154, 'de', '_ADD_TO_WISHLIST', 'Zur Wunschliste hinzuf??gen'),
(155, 'en', '_ADD_TO_WISHLIST', 'Add to wishlist'),
(156, 'es', '_ADD_TO_WISHLIST', 'A??adir a la lista de deseos'),
(157, 'de', '_ADMIN', 'Admin'),
(158, 'en', '_ADMIN', 'Admin'),
(159, 'es', '_ADMIN', 'Admin'),
(160, 'de', '_ADMINISTRATOR_ONLY', 'Nur Administrator'),
(161, 'en', '_ADMINISTRATOR_ONLY', 'Administrator Only'),
(162, 'es', '_ADMINISTRATOR_ONLY', 'Administrador con permiso de'),
(163, 'de', '_ADMINS', 'Admins'),
(164, 'en', '_ADMINS', 'Admins'),
(165, 'es', '_ADMINS', 'Administradores'),
(166, 'de', '_ADMINS_AND_CUSTOMERS', 'Kunden & Admins'),
(167, 'en', '_ADMINS_AND_CUSTOMERS', 'Customers & Admins'),
(168, 'es', '_ADMINS_AND_CUSTOMERS', 'Clientes y Administradores'),
(169, 'de', '_ADMINS_MANAGEMENT', 'Admins Management'),
(170, 'en', '_ADMINS_MANAGEMENT', 'Admins Management'),
(171, 'es', '_ADMINS_MANAGEMENT', 'Administradores de Gesti??n de'),
(172, 'de', '_ADMINS_OWNERS_MANAGEMENT', 'Admins & Hotel Inhaber Gesch??ftsf??hrung'),
(173, 'en', '_ADMINS_OWNERS_MANAGEMENT', 'Admins & Hotel Owners Management'),
(174, 'es', '_ADMINS_OWNERS_MANAGEMENT', 'Administradores & Hotel Propietario Gesti??n'),
(175, 'de', '_ADMIN_COPY', 'Admin Kopie'),
(176, 'en', '_ADMIN_COPY', 'admin copy'),
(177, 'es', '_ADMIN_COPY', 'copia administrador'),
(178, 'de', '_ADMIN_EMAIL', 'Admin E-Mail'),
(179, 'en', '_ADMIN_EMAIL', 'Admin Email'),
(180, 'es', '_ADMIN_EMAIL', 'Admin Email'),
(181, 'de', '_ADMIN_EMAIL_ALERT', 'Diese E-Mail wird als \"Von\"-Adresse f??r das System E-Mail-Benachrichtigungen verwendet. Stellen Sie sicher, dass Sie hier geben Sie eine g??ltige E-Mail-Adresse auf Domain Ihrer Website basiert'),
(182, 'en', '_ADMIN_EMAIL_ALERT', 'This email is used as \"From\" address for the system email notifications. Make sure, that you write here a valid email address based on domain of your site'),
(183, 'es', '_ADMIN_EMAIL_ALERT', 'Este correo electr??nico se utiliza como direcci??n \"De\" para las notificaciones del sistema de correo electr??nico. Aseg??rese de que usted escribe aqu?? una direcci??n v??lida de correo electr??nico basado en dominio de su sitio'),
(184, 'de', '_ADMIN_EMAIL_EXISTS_ALERT', 'Administrator mit solchen E-Mail ist bereits vorhanden! Bitte w??hlen Sie einen anderen.'),
(185, 'en', '_ADMIN_EMAIL_EXISTS_ALERT', 'Administrator with such email already exists! Please choose another.'),
(186, 'es', '_ADMIN_EMAIL_EXISTS_ALERT', 'Administrador de correo electr??nico ya existe! Por favor, elija otra.'),
(187, 'de', '_ADMIN_EMAIL_IS_EMPTY', 'Admin E-Mail darf nicht leer sein! Bitte erneut eingeben.'),
(188, 'en', '_ADMIN_EMAIL_IS_EMPTY', 'Admin email must not be empty! Please re-enter.'),
(189, 'es', '_ADMIN_EMAIL_IS_EMPTY', 'Administrador de correo electr??nico no debe estar vac??a! Por favor, vuelva a entrar.'),
(190, 'de', '_ADMIN_EMAIL_WRONG', 'Admin E-Mail in falsche Format! Bitte erneut eingeben.'),
(191, 'en', '_ADMIN_EMAIL_WRONG', 'Admin email in wrong format! Please re-enter.'),
(192, 'es', '_ADMIN_EMAIL_WRONG', 'Administrador de correo electr??nico en formato incorrecto! Por favor, vuelva a entrar.'),
(193, 'de', '_ADMIN_FOLDER_CREATION_ERROR', 'Fehler beim Ordner zu diesem Autor in <b>images/upload/</b> Verzeichnis. F??r eine stabile Arbeit des Skripts erstellen Sie bitte diesen Ordner manuell.'),
(194, 'en', '_ADMIN_FOLDER_CREATION_ERROR', 'Failed to create folder for this author in <b>images/upload/</b> directory. For stable work of the script please create this folder manually.'),
(195, 'es', '_ADMIN_FOLDER_CREATION_ERROR', 'No se pudo crear la carpeta para este autor en <b>images/upload/</b> directorio. Para el trabajo estable de la secuencia de comandos por favor crear esta carpeta de forma manual.'),
(196, 'de', '_ADMIN_LOGIN', 'Admin Login'),
(197, 'en', '_ADMIN_LOGIN', 'Admin Login'),
(198, 'es', '_ADMIN_LOGIN', 'Admin Login'),
(199, 'de', '_ADMIN_MAILER_ALERT', 'W??hlen Sie die Mailer Sie f??r die Zustellung von E-Mails vor Ort bevorzugen.'),
(200, 'en', '_ADMIN_MAILER_ALERT', 'Select which mailer you prefer to use for the delivery of site emails.'),
(201, 'es', '_ADMIN_MAILER_ALERT', 'Seleccione el programa de correo que usted prefiere utilizar para la entrega de mensajes de correo electr??nico del sitio.'),
(202, 'de', '_ADMIN_PANEL', 'Admin-Panel'),
(203, 'en', '_ADMIN_PANEL', 'Admin Panel'),
(204, 'es', '_ADMIN_PANEL', 'Panel de Administraci??n'),
(205, 'de', '_ADMIN_RESERVATION', 'Admin Reservierung'),
(206, 'en', '_ADMIN_RESERVATION', 'Admin Reservation'),
(207, 'es', '_ADMIN_RESERVATION', 'Administraci??n de reservas'),
(208, 'de', '_ADMIN_WELCOME_TEXT', '<p>Willkommen Administrator Control Panel, mit dem Sie hinzuf??gen, bearbeiten oder l??schen Website-Content. Mit dieser Administrator Control Panel k??nnen Sie einfach verwalten Kunden, Reservierungen und eine vollst??ndige Hotel Bauleitung.</p><p><b>???</b> Es gibt einige Module f??r Sie: Backup & Restore, News. Installation oder Deinstallation von ihnen ist m??glich aus <a href=\'index.php?admin=modules\'>Module Menu</a>.</p><p><b>???</b> Im <a href=\'index.php?admin=languages\'>Men?? Sprachen</a> Sie k??nnen hinzuf??gen / entfernen oder ??ndern Sprache Sprache ??ndern und bearbeiten Sie Ihren Wortschatz (die W??rter und S??tze, die vom System verwendet).</p><p><b>???</b> <a href=\'index.php?admin=settings\'>Das Men?? Einstellungen</a> k??nnen Sie wichtige Einstellungen f??r die Site zu definieren.</p><p><b>???</b> Im <a href=\'index.php?admin=my_account\'>Ihr Konto</a> gibt es eine M??glichkeit, um Ihre Daten ??ndern.</p><p><b>???</b> <a href=\'index.php?admin=menus\'>Men??s</a> und <a href=\'index.php?admin=pages\'>Seiten-Management</a> sind zur Erstellung und Verwaltung Men??s, Links und Seiten gestaltet.</p><p><b>???</b> So erstellen und bearbeiten Zimmertypen, Verf??gbarkeiten, Preise, Buchungen und weitere Info zum Hotel, verwenden <a href=\'index.php?admin=hotels_info\'>Hotel Management</a>, <a href=\'index.php?admin=mod_rooms_management\'>Zimmer Management</a> und <a href=\'index.php?admin=mod_booking_bookings\'>Buchungen</a> Men??s.</p>'),
(209, 'en', '_ADMIN_WELCOME_TEXT', '<p>Welcome to Administrator Control Panel that allows you to add, edit or delete site content. With this Administrator Control Panel you can easy manage customers, reservations and perform a full hotel site management.</p><p><b>&#8226;</b> There are some modules for you: Backup & Restore, News. Installation or un-installation of them is possible from <a href=\'index.php?admin=modules\'>Modules Menu</a>.</p><p><b>&#8226;</b> In <a href=\'index.php?admin=languages\'>Languages Menu</a> you may add/remove language or change language settings and edit your vocabulary (the words and phrases, used by the system).</p><p><b>&#8226;</b> <a href=\'index.php?admin=settings\'>Settings Menu</a> allows you to define important settings for the site.</p><p><b>&#8226;</b> In <a href=\'index.php?admin=my_account\'>My Account</a> there is a possibility to change your info.</p><p><b>&#8226;</b> <a href=\'index.php?admin=menus\'>Menus</a> and <a href=\'index.php?admin=pages\'>Pages Management</a> are designed for creating and managing menus, links and pages.</p><p><b>&#8226;</b> To create and edit room types, seasons, prices, bookings and other hotel info, use <a href=\'index.php?admin=hotels_info\'>Hotel Management</a>, <a href=\'index.php?admin=mod_rooms_management\'>Rooms Management</a> and <a href=\'index.php?admin=mod_booking_bookings\'>Bookings</a> menus.</p>'),
(210, 'es', '_ADMIN_WELCOME_TEXT', '<p>Bienvenido al Administrador del panel de control que le permite agregar, editar o eliminar contenido del sitio. Con este Panel de Control del Administrador usted puede f??cilmente administrar clientes, reservas y realizar una gesti??n hotelera de todo el sitio.</p>\r\n<p><b>&#8226;</b> Hay algunos m??dulos para usted: Copia de seguridad y restauraci??n, Noticias. La instalaci??n o desinstalaci??n de ellos es posible de <a href=\'index.php?admin=modules\'>m??dulos Men??</a>.</p>\r\n<p><b>&#8226;</b> En <a href=\'index.php?admin=languages\'>Idiomas del men??</a> que puede agregar o quitar idioma o cambiar la configuraci??n de idioma y modificar su vocabulario (las palabras y frases, utilizadas por el sistema).</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?admin=settings\'>men?? de configuraci??n</a> le permite definir opciones importantes para el sitio.</p>\r\n<p><b>&#8226;</b> En <a href=\'index.php?admin=my_account\'>Mi Cuenta</a> hay una posibilidad de cambiar su informaci??n.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?admin=menus\'>men??s</a> y <a href=\'index.php?admin=pages\'>P??ginas de Gesti??n</a> est??n dise??ados para crear y gestionar los men??s, enlaces y p??ginas. </p>\r\n<p><b>&#8226;</b> Para crear y editar tipos de habitaci??n, temporadas, precios, reservas y otros datos del hotel, el uso <a href=\'index.php?admin=hotels_info\'>Hotel Management</a>, <a href=\'index.php?admin=mod_rooms_management\'>Habitaciones Gesti??n</a> y <a href=\'index.php?admin=mod_booking_bookings\'>reservas</a> men??s.</p>'),
(211, 'de', '_ADULT', 'Erwach.'),
(212, 'en', '_ADULT', 'Adult'),
(213, 'es', '_ADULT', 'Adulto'),
(214, 'de', '_ADULTS', 'Erwachsene'),
(215, 'en', '_ADULTS', 'Adults'),
(216, 'es', '_ADULTS', 'Adultos'),
(217, 'de', '_ADVANCED', 'Fortgeschrittene'),
(218, 'en', '_ADVANCED', 'Advanced'),
(219, 'es', '_ADVANCED', 'Avanzada'),
(220, 'de', '_AFFILIATE', 'Affiliate'),
(221, 'en', '_AFFILIATE', 'Affiliate'),
(222, 'es', '_AFFILIATE', 'Affiliate'),
(223, 'de', '_AFFILIATES', 'Affiliates'),
(224, 'en', '_AFFILIATES', 'Affiliates'),
(225, 'es', '_AFFILIATES', 'Affiliates'),
(226, 'de', '_AFFILIATES_MANAGEMENT', 'Mitglieder Management'),
(227, 'en', '_AFFILIATES_MANAGEMENT', 'Affiliates Management'),
(228, 'es', '_AFFILIATES_MANAGEMENT', 'Gesti??n de afiliados'),
(229, 'de', '_AFFILIATES_SETTINGS', 'Affiliates Einstellungen'),
(230, 'en', '_AFFILIATES_SETTINGS', 'Affiliates Settings'),
(231, 'es', '_AFFILIATES_SETTINGS', 'Configuraci??n de afiliados'),
(232, 'en', '_AFFILIATE_ID', 'Affiliate ID'),
(233, 'de', '_AFFILIATION_CODE', 'Partner-ID'),
(234, 'es', '_AFFILIATION_CODE', 'identificaci??n del afiliado'),
(235, 'de', '_AFTER', 'Nach'),
(236, 'en', '_AFTER', 'After'),
(237, 'es', '_AFTER', 'Despu??s'),
(238, 'de', '_AFTER_DISCOUNT', 'nach Rabatt'),
(239, 'en', '_AFTER_DISCOUNT', 'after discount'),
(240, 'es', '_AFTER_DISCOUNT', 'despu??s del descuento'),
(241, 'de', '_AGENCIES', 'Agenturen'),
(242, 'en', '_AGENCIES', 'Agencies'),
(243, 'es', '_AGENCIES', 'Agencias'),
(244, 'de', '_AGENCIES_INFO', 'Agenturen Info'),
(245, 'en', '_AGENCIES_INFO', 'Agencies Info'),
(246, 'es', '_AGENCIES_INFO', 'Agencias de Informaci??n'),
(247, 'de', '_AGENCY', 'Agentur'),
(248, 'en', '_AGENCY', 'Agency'),
(249, 'es', '_AGENCY', 'Agencia'),
(250, 'de', '_AGENCYOWNER_WELCOME_TEXT', '<p>Willkommen bei Auto Agentur Control Panel, die Sie Informationen im Zusammenhang mit Ihrer Transport-Agentur zu verwalten. Mit diesem Control Panel k??nnen Sie einfach Agentur Info, Fahrzeuge, Fahrzeugtypen und f??hren Sie eine vollst??ndige Auto Reservierungen Management verwalten.</p>'),
(251, 'en', '_AGENCYOWNER_WELCOME_TEXT', '<p>Welcome to Car Agency Control Panel that allows you to manage information related to your transportation agency. With this Control Panel you can easy manage agency info, vehicles, vehicle types and perform a full car reservations management.</p>'),
(252, 'es', '_AGENCYOWNER_WELCOME_TEXT', '<p>Bienvenido al panel de control de la Agencia de coche que le permite administrar informaci??n relacionada con su agencia de transporte. Con este panel de control puede gestionar f??cilmente informaci??n sobre la agencia, veh??culos, tipos de veh??culos y realizar una gesti??n completa de reservas de coches.</p>'),
(253, 'de', '_AGENCY_ADMINS', 'Agentur Admins'),
(254, 'en', '_AGENCY_ADMINS', 'Agency Admins'),
(255, 'es', '_AGENCY_ADMINS', 'Los administradores de las agencias'),
(259, 'de', '_AGENCY_DETAILS', 'Anbieter-Detail'),
(260, 'en', '_AGENCY_DETAILS', 'Agency Details'),
(261, 'es', '_AGENCY_DETAILS', 'Agencia Detalles'),
(262, 'de', '_AGENCY_INFO', 'Agentur Info'),
(263, 'en', '_AGENCY_INFO', 'Agency Info'),
(264, 'es', '_AGENCY_INFO', 'Informaci??n de la agencia'),
(265, 'de', '_AGENCY_LOGIN', 'Agentur-Login'),
(266, 'en', '_AGENCY_LOGIN', 'Agency Login'),
(267, 'es', '_AGENCY_LOGIN', 'Agencia Entrar'),
(268, 'de', '_AGENCY_NAME', 'Agenturname'),
(269, 'en', '_AGENCY_NAME', 'Agency Name'),
(270, 'es', '_AGENCY_NAME', 'Nombre de agencia'),
(271, 'de', '_AGENCY_PANEL', 'Agentur-Panel'),
(272, 'en', '_AGENCY_PANEL', 'Agency Panel'),
(273, 'es', '_AGENCY_PANEL', 'Panel Agencia'),
(274, 'de', '_AGENT_COMMISION', 'Hotel Management/Agent Provision'),
(275, 'en', '_AGENT_COMMISION', 'Hotel Owner/Agent Commision'),
(276, 'es', '_AGENT_COMMISION', 'Hotel Propietario/Agente Commision'),
(277, 'de', '_AGES', 'Ewig.'),
(278, 'en', '_AGES', 'Ages'),
(279, 'es', '_AGES', 'Siglos'),
(280, 'de', '_AGO', 'vor'),
(281, 'en', '_AGO', 'ago'),
(282, 'es', '_AGO', 'hace'),
(283, 'de', '_AGREE_CONF_TEXT', 'Ich habe gelesen und akzeptiere AGB'),
(284, 'en', '_AGREE_CONF_TEXT', 'I have read and AGREE with Terms & Conditions'),
(285, 'es', '_AGREE_CONF_TEXT', 'He le??do y de acuerdo con T??rminos y Condiciones'),
(286, 'de', '_ALBUM', 'Album'),
(287, 'en', '_ALBUM', 'Album'),
(288, 'es', '_ALBUM', 'Album'),
(289, 'de', '_ALBUM_CODE', 'Album Code'),
(290, 'en', '_ALBUM_CODE', 'Album Code'),
(291, 'es', '_ALBUM_CODE', 'Album C??digo'),
(292, 'de', '_ALBUM_NAME', 'Albumname'),
(293, 'en', '_ALBUM_NAME', 'Album Name'),
(294, 'es', '_ALBUM_NAME', 'Nombre del ??lbum'),
(295, 'de', '_ALERT_CANCEL_BOOKING', 'Sind Sie sicher, dass Sie diese Buchung stornieren?'),
(296, 'en', '_ALERT_CANCEL_BOOKING', 'Are you sure you want to cancel this booking?'),
(297, 'es', '_ALERT_CANCEL_BOOKING', '??Est?? seguro que desea cancelar esta reserva?'),
(298, 'de', '_ALERT_REMOVE_FUND', 'Sind Sie sicher, dass Sie diese Mittel zu entfernen?'),
(299, 'en', '_ALERT_REMOVE_FUND', 'Are you sure you want to remove these funds?'),
(300, 'es', '_ALERT_REMOVE_FUND', '??Est?? seguro de que desea eliminar estos fondos?'),
(301, 'de', '_ALERT_REQUIRED_FILEDS', 'Felder mit einem Sternchen (*) sind erforderlich'),
(302, 'en', '_ALERT_REQUIRED_FILEDS', 'Items marked with an asterisk (*) are required'),
(303, 'es', '_ALERT_REQUIRED_FILEDS', 'Los elementos marcados con un asterisco (*) son obligatorios'),
(304, 'de', '_ALERT_SAME_HOTEL_ROOMS', 'Sie k??nnen zu dieser Reservierungs Warenkorb legen aus dem gleichen Hotel hinzuf??gen nur Zimmer!'),
(305, 'en', '_ALERT_SAME_HOTEL_ROOMS', 'You may add to this reservation cart only rooms from the same hotel!'),
(306, 'es', '_ALERT_SAME_HOTEL_ROOMS', 'Usted puede a??adir a este carro de reservas ??nicas habitaciones desde el mismo hotel!'),
(307, 'de', '_ALL', 'Alle'),
(308, 'en', '_ALL', 'All'),
(309, 'es', '_ALL', 'Todo'),
(310, 'de', '_ALLOW', 'Erlauben'),
(311, 'en', '_ALLOW', 'Allow'),
(312, 'es', '_ALLOW', 'Permitir'),
(313, 'de', '_ALLOW_COMMENTS', 'Kommentare zulassen'),
(314, 'en', '_ALLOW_COMMENTS', 'Allow comments'),
(315, 'es', '_ALLOW_COMMENTS', 'Permitir comentarios'),
(316, 'de', '_ALL_AVAILABLE', 'Alle verf??gbaren'),
(317, 'en', '_ALL_AVAILABLE', 'All Available'),
(318, 'es', '_ALL_AVAILABLE', 'Todos los disponibles'),
(319, 'de', '_ALL_NEWS', 'Alle Nachrichten'),
(320, 'en', '_ALL_NEWS', 'All News'),
(321, 'es', '_ALL_NEWS', 'Todas las noticias'),
(322, 'de', '_ALL_REVIEWS', 'Alle Bewertungen'),
(323, 'en', '_ALL_REVIEWS', 'All Reviews'),
(324, 'es', '_ALL_REVIEWS', 'Todos Los Comentarios'),
(325, 'de', '_ALL_RIGHTS_RESERVED', 'Alle Rechte vorbehalten'),
(326, 'en', '_ALL_RIGHTS_RESERVED', 'All rights reserved'),
(327, 'es', '_ALL_RIGHTS_RESERVED', 'Reservados todos los derechos'),
(328, 'de', '_ALREADY_HAVE_ACCOUNT', 'Sie haben bereits ein Konto? <a href=\'index.php?customer=login\'>Melden Sie sich hier</a>'),
(329, 'en', '_ALREADY_HAVE_ACCOUNT', 'Already have an account? <a href=\'index.php?customer=login\'>Login here</a>'),
(330, 'es', '_ALREADY_HAVE_ACCOUNT', '??Ya tienes una cuenta? <a href=\'index.php?customer=login\'>Entre aqu??</a>'),
(331, 'de', '_ALREADY_LOGGED', 'Sie sind bereits angemeldet!'),
(332, 'en', '_ALREADY_LOGGED', 'You are already logged in!'),
(333, 'es', '_ALREADY_LOGGED', 'Usted ya est?? registrado!'),
(334, 'de', '_AMOUNT', 'Amount'),
(335, 'en', '_AMOUNT', 'Amount'),
(336, 'es', '_AMOUNT', 'Cantidad'),
(337, 'de', '_ANSWER', 'Antwort'),
(338, 'en', '_ANSWER', 'Answer'),
(339, 'es', '_ANSWER', 'Respuesta'),
(340, 'de', '_ANY', 'keine'),
(341, 'en', '_ANY', 'Any'),
(342, 'es', '_ANY', 'Cualquier'),
(343, 'de', '_AN_INDIVIDUAL', 'Ein Individuum'),
(344, 'en', '_AN_INDIVIDUAL', 'An individual'),
(345, 'es', '_AN_INDIVIDUAL', 'Un individuo'),
(346, 'de', '_AN_OLD_COUPLE', 'Ein altes Paar'),
(347, 'en', '_AN_OLD_COUPLE', 'An old couple'),
(348, 'es', '_AN_OLD_COUPLE', 'Una pareja de ancianos'),
(349, 'de', '_API_DETAILS', 'API-Anmeldeinformationen '),
(350, 'en', '_API_DETAILS', 'API Credentials'),
(351, 'es', '_API_DETAILS', 'Las credenciales de API'),
(352, 'de', '_API_DOMAIN', 'Autorisierte Domain'),
(353, 'en', '_API_DOMAIN', 'Authorized Domain'),
(354, 'es', '_API_DOMAIN', 'Dominio Autorizado'),
(355, 'de', '_API_KEY', 'API-Schl??ssel'),
(356, 'en', '_API_KEY', 'API Key'),
(357, 'es', '_API_KEY', 'Clave API'),
(358, 'de', '_API_LOGIN', 'API Anmeldung'),
(359, 'en', '_API_LOGIN', 'API Login'),
(360, 'es', '_API_LOGIN', 'API Login'),
(361, 'de', '_API_SECRET', 'API Geheimnis'),
(362, 'en', '_API_SECRET', 'API Secret'),
(363, 'es', '_API_SECRET', 'API secreto'),
(364, 'de', '_APPLY', 'zutreffen'),
(365, 'en', '_APPLY', 'Apply'),
(366, 'es', '_APPLY', 'Aplicar'),
(367, 'de', '_APPLY_CHANGES', '??nderungen ??bernehmen'),
(368, 'en', '_APPLY_CHANGES', 'Apply changes'),
(369, 'es', '_APPLY_CHANGES', 'Aplicar cambios'),
(370, 'de', '_APPLY_TO_ALL_LANGUAGES', 'Gelten f??r alle Sprachen'),
(371, 'en', '_APPLY_TO_ALL_LANGUAGES', 'Apply to all languages'),
(372, 'es', '_APPLY_TO_ALL_LANGUAGES', 'Se aplican a todos los idiomas'),
(373, 'de', '_APPLY_TO_ALL_PAGES', '??nderungen f??r alle Seiten'),
(374, 'en', '_APPLY_TO_ALL_PAGES', 'Apply changes to all pages'),
(375, 'es', '_APPLY_TO_ALL_PAGES', 'Aplicar cambios a todas las p??ginas'),
(376, 'de', '_APPROVE', 'Genehmigen'),
(377, 'en', '_APPROVE', 'Approve'),
(378, 'es', '_APPROVE', 'Aprobar'),
(379, 'de', '_APPROVED', 'Genehmigt'),
(380, 'en', '_APPROVED', 'Approved'),
(381, 'es', '_APPROVED', 'Aprobado'),
(382, 'de', '_APRIL', 'April'),
(383, 'en', '_APRIL', 'April'),
(384, 'es', '_APRIL', 'Abril'),
(385, 'de', '_ARTICLE', 'Artikel'),
(386, 'en', '_ARTICLE', 'Article'),
(387, 'es', '_ARTICLE', 'Art??culo'),
(388, 'de', '_ARTICLE_ID', 'Artikel-ID'),
(389, 'en', '_ARTICLE_ID', 'Article ID'),
(390, 'es', '_ARTICLE_ID', 'Id. de art??culo'),
(391, 'de', '_ASCENDING', 'Aufsteigend'),
(392, 'en', '_ASCENDING', 'Ascending'),
(393, 'es', '_ASCENDING', 'ascendente'),
(394, 'de', '_AUGUST', 'August'),
(395, 'en', '_AUGUST', 'August'),
(396, 'es', '_AUGUST', 'Agosto'),
(397, 'de', '_AUTHENTICATION', 'Authentifizierung'),
(398, 'en', '_AUTHENTICATION', 'Authentication'),
(399, 'es', '_AUTHENTICATION', 'Autenticaci??n'),
(400, 'de', '_AUTHORIZE_NET_NOTICE', 'Die Authorize.Net Payment Gateway Service Provider.'),
(401, 'en', '_AUTHORIZE_NET_NOTICE', 'The Authorize.Net payment gateway service provider.'),
(402, 'es', '_AUTHORIZE_NET_NOTICE', 'El pago Authorize.Net portal de proveedores de servicios.'),
(403, 'de', '_AUTHORIZE_NET_ORDER', 'Authorize.Net Auftrag'),
(404, 'en', '_AUTHORIZE_NET_ORDER', 'Authorize.Net Order'),
(405, 'es', '_AUTHORIZE_NET_ORDER', 'Authorize.Net Orden'),
(406, 'de', '_AUTH_TOKEN', 'auth-Token'),
(407, 'en', '_AUTH_TOKEN', 'Auth Token'),
(408, 'es', '_AUTH_TOKEN', 'token de autenticaci??n'),
(409, 'de', '_AUTOMATIC', 'Automatisch'),
(410, 'en', '_AUTOMATIC', 'Automatic'),
(411, 'es', '_AUTOMATIC', 'Autom??tico'),
(412, 'de', '_AVAILABILITY', 'Verf??gbarkeit'),
(413, 'en', '_AVAILABILITY', 'Availability'),
(414, 'es', '_AVAILABILITY', 'Disponibilidad'),
(415, 'de', '_AVAILABILITY_ROOMS_NOTE', 'Definieren Sie eine maximale Anzahl von Zimmern zur Verf??gung f??r die Buchung f??r einen bestimmten Tag oder den Zeitraum (maximale Verf??gbarkeit _MAX_ Zimmer)<br>Um die Verf??gbarkeit zu bearbeiten ??ndern Sie einfach den Wert in einer Zelle Tag und klicken Sie dann auf \"??nderungen speichern\"-Taste<br>Um mehr Rauminformationen zu sehen, setzen Sie den Mauszeiger ??ber das Datum'),
(416, 'en', '_AVAILABILITY_ROOMS_NOTE', 'Define a maximum number of rooms available for booking for a specified day or date range (maximum availability _MAX_ rooms)<br>To edit room availability simply change the value in a day cell and then click \'Save Changes\' button<br>To see additional room information put mouse pointer over the date'),
(417, 'es', '_AVAILABILITY_ROOMS_NOTE', 'Definir un n??mero m??ximo de habitaciones disponibles para la reserva de un d??a espec??fico o rango de fechas (m??ximo habitaciones _MAX_ disponibilidad)<br>Para modificar la disponibilidad de habitaciones basta con cambiar el valor de una celda d??a y luego haga clic en \'Guardar cambios\'<br>Para ver m??s informaci??n de la sala, coloque el puntero del mouse sobre la fecha.'),
(418, 'de', '_AVAILABLE', 'verf??gbar'),
(419, 'en', '_AVAILABLE', 'available'),
(420, 'es', '_AVAILABLE', 'disponible'),
(424, 'de', '_AVAILABLE_ROOMS', 'Freie Zimmer'),
(425, 'en', '_AVAILABLE_ROOMS', 'Available Rooms'),
(426, 'es', '_AVAILABLE_ROOMS', 'Habitaciones disponibles'),
(427, 'de', '_AVERAGE_RATINGS', 'Durchschnittliche Bewertungen'),
(428, 'en', '_AVERAGE_RATINGS', 'Average Ratings'),
(429, 'es', '_AVERAGE_RATINGS', 'Promedio de Calificaciones'),
(430, 'de', '_A_YOUNG_COUPLE', 'Ein junges Paar'),
(431, 'en', '_A_YOUNG_COUPLE', 'A young couple'),
(432, 'es', '_A_YOUNG_COUPLE', 'Una joven pareja'),
(433, 'de', '_A_Z', 'A bis Z'),
(434, 'en', '_A_Z', 'A to Z'),
(435, 'es', '_A_Z', 'De A a Z'),
(436, 'de', '_BACKUP', 'Backup'),
(437, 'en', '_BACKUP', 'Backup'),
(438, 'es', '_BACKUP', 'Reserva'),
(439, 'de', '_BACKUPS_EXISTING', 'Vorhandene Backups'),
(440, 'en', '_BACKUPS_EXISTING', 'Existing Backups'),
(441, 'es', '_BACKUPS_EXISTING', 'Copias de seguridad existentes'),
(442, 'de', '_BACKUP_AND_RESTORE', 'Backup &amp; Restore'),
(443, 'en', '_BACKUP_AND_RESTORE', 'Backup & Restore'),
(444, 'es', '_BACKUP_AND_RESTORE', 'Backup & Restore'),
(445, 'de', '_BACKUP_CHOOSE_MSG', 'W??hlen Sie ein Backup von der Liste unten'),
(446, 'en', '_BACKUP_CHOOSE_MSG', 'Choose a backup from the list below'),
(447, 'es', '_BACKUP_CHOOSE_MSG', 'Elija una copia de seguridad de la siguiente lista'),
(448, 'de', '_BACKUP_DELETE_ALERT', 'Sind Sie sicher'),
(449, 'en', '_BACKUP_DELETE_ALERT', 'Are you sure you want to delete this backup?'),
(450, 'es', '_BACKUP_DELETE_ALERT', '??Est??s seguro de que quieres eliminar esta copia de seguridad?'),
(451, 'de', '_BACKUP_EMPTY_MSG', 'Keine vorhandenen Backups gefunden.'),
(452, 'en', '_BACKUP_EMPTY_MSG', 'No existing backups found.'),
(453, 'es', '_BACKUP_EMPTY_MSG', 'No hay copias de seguridad todav??a.'),
(454, 'de', '_BACKUP_EMPTY_NAME_ALERT', 'Namen der Backup-Datei darf nicht leer sein! Bitte geben Sie erneut.'),
(455, 'en', '_BACKUP_EMPTY_NAME_ALERT', 'Name of backup file cannot be empty! Please re-enter.'),
(456, 'es', '_BACKUP_EMPTY_NAME_ALERT', 'Nombre del archivo de copia de seguridad no puede estar vac??o! Por favor, vuelva a entrar.'),
(457, 'de', '_BACKUP_EXECUTING_ERROR', 'Fehler beim Backup des Systems. Bitte versuchen Sie es sp??ter erneut.'),
(458, 'en', '_BACKUP_EXECUTING_ERROR', 'An error occurred while backup the system! Please check write permissions to backup folder or try again later.'),
(459, 'es', '_BACKUP_EXECUTING_ERROR', 'Se produjo un error mientras copia de seguridad del sistema! Por favor, compruebe los permisos de escritura a la carpeta de copia de seguridad o vuelva a intentarlo m??s tarde.'),
(460, 'de', '_BACKUP_INSTALLATION', 'Backup-Installation'),
(461, 'en', '_BACKUP_INSTALLATION', 'Backup Installation'),
(462, 'es', '_BACKUP_INSTALLATION', 'Instalaci??n de copia de seguridad'),
(463, 'de', '_BACKUP_RESTORE', 'Backup wiederherstellen'),
(464, 'en', '_BACKUP_RESTORE', 'Backup Restore'),
(465, 'es', '_BACKUP_RESTORE', 'Restaurar copia de seguridad'),
(466, 'de', '_BACKUP_RESTORE_ALERT', 'Sind Sie sicher'),
(467, 'en', '_BACKUP_RESTORE_ALERT', 'Are you sure you want to restore this backup'),
(468, 'es', '_BACKUP_RESTORE_ALERT', '??Est??s seguro de que desea restaurar esta copia de seguridad'),
(469, 'de', '_BACKUP_RESTORE_NOTE', 'Wiederherstellen einer fr??heren Backup. <b>Hinweis: Dies wird die Einstellungen l??schen Sie alle aktuellen.</b>'),
(470, 'en', '_BACKUP_RESTORE_NOTE', 'Remember: this action will rewrite all your current settings!'),
(471, 'es', '_BACKUP_RESTORE_NOTE', 'Recuerde: esta acci??n se volver?? a escribir toda la configuraci??n actual!'),
(472, 'de', '_BACKUP_RESTORING_ERROR', 'Fehler beim Wiederherstellen-Datei! Bitte versuchen Sie es sp??ter erneut.'),
(473, 'en', '_BACKUP_RESTORING_ERROR', 'An error occurred while restoring file! Please try again later.'),
(474, 'es', '_BACKUP_RESTORING_ERROR', 'Se produjo un error mientras se restaura el archivo! Por favor, int??ntelo de nuevo m??s tarde.'),
(475, 'de', '_BACKUP_WAS_CREATED', 'Backup _FILE_NAME_ wurde erfolgreich erstellt.'),
(476, 'en', '_BACKUP_WAS_CREATED', 'Backup _FILE_NAME_ has been successfully created.'),
(477, 'es', '_BACKUP_WAS_CREATED', '_FILE_NAME_ De copia de seguridad se ha creado correctamente.'),
(478, 'de', '_BACKUP_WAS_DELETED', 'Backup _FILE_NAME_ wurde erfolgreich gel??scht.'),
(479, 'en', '_BACKUP_WAS_DELETED', 'Backup _FILE_NAME_ has been successfully deleted.'),
(480, 'es', '_BACKUP_WAS_DELETED', '_FILE_NAME_ De copia de seguridad ha sido borrado.'),
(481, 'de', '_BACKUP_WAS_RESTORED', 'Backup _FILE_NAME_ wurde erfolgreich wiederhergestellt.'),
(482, 'en', '_BACKUP_WAS_RESTORED', 'Backup _FILE_NAME_ has been successfully restored.'),
(483, 'es', '_BACKUP_WAS_RESTORED', '_FILE_NAME_ De copia de seguridad fue restaurado con ??xito.'),
(484, 'de', '_BACKUP_YOUR_INSTALLATION', 'Sichern Sie Ihre aktuelle Installation'),
(485, 'en', '_BACKUP_YOUR_INSTALLATION', 'Backup your current Installation'),
(486, 'es', '_BACKUP_YOUR_INSTALLATION', 'Copia de seguridad de la instalaci??n actual'),
(487, 'de', '_BACK_TO_ADMIN_PANEL', 'Zur??ck zu Admin Panel'),
(488, 'en', '_BACK_TO_ADMIN_PANEL', 'Back to Admin Panel'),
(489, 'es', '_BACK_TO_ADMIN_PANEL', 'Volver al Panel de Administraci??n'),
(490, 'de', '_BAGGAGE', 'Gep??ck'),
(491, 'en', '_BAGGAGE', 'Baggage'),
(492, 'es', '_BAGGAGE', 'Equipaje'),
(493, 'de', '_BALANCE', 'Balance'),
(494, 'en', '_BALANCE', 'Balance'),
(495, 'es', '_BALANCE', 'Equilibrar'),
(496, 'de', '_BANK_PAYMENT_INFO', 'Bank Zahlungsinformationen'),
(497, 'en', '_BANK_PAYMENT_INFO', 'Bank Payment Information'),
(498, 'es', '_BANK_PAYMENT_INFO', 'Banco de Informaci??n sobre el pago'),
(499, 'de', '_BANK_TRANSFER', 'Bank??berweisung'),
(500, 'en', '_BANK_TRANSFER', 'Bank Transfer'),
(501, 'es', '_BANK_TRANSFER', 'Transferencia bancaria'),
(502, 'de', '_BANNERS', 'Banner'),
(503, 'en', '_BANNERS', 'Banners'),
(504, 'es', '_BANNERS', 'Banderas'),
(505, 'de', '_BANNERS_MANAGEMENT', 'Banner-Management'),
(506, 'en', '_BANNERS_MANAGEMENT', 'Banners Management'),
(507, 'es', '_BANNERS_MANAGEMENT', 'Banners de Gesti??n'),
(508, 'de', '_BANNERS_SETTINGS', 'Banner-Einstellungen'),
(509, 'en', '_BANNERS_SETTINGS', 'Banners Settings'),
(510, 'es', '_BANNERS_SETTINGS', 'Banners Configuraci??n'),
(511, 'de', '_BANNER_IMAGE', 'Banner Image'),
(512, 'en', '_BANNER_IMAGE', 'Banner Image'),
(513, 'es', '_BANNER_IMAGE', 'Banner Image'),
(514, 'de', '_BAN_ITEM', 'Ban Posten'),
(515, 'en', '_BAN_ITEM', 'Ban Item'),
(516, 'es', '_BAN_ITEM', 'Venta de art??culo'),
(517, 'de', '_BAN_LIST', 'Ban Liste'),
(518, 'en', '_BAN_LIST', 'Ban List'),
(519, 'es', '_BAN_LIST', 'Lista de prohibici??n'),
(520, 'de', '_BATHROOMS', 'Badezimmer'),
(521, 'en', '_BATHROOMS', 'Bathrooms'),
(522, 'es', '_BATHROOMS', 'Ba??os'),
(523, 'de', '_BEDS', 'Betten'),
(524, 'en', '_BEDS', 'Beds'),
(525, 'es', '_BEDS', 'Camas'),
(526, 'de', '_BEFORE', 'Vorher'),
(527, 'en', '_BEFORE', 'Before'),
(528, 'es', '_BEFORE', 'Antes'),
(529, 'de', '_BILLING_ADDRESS', 'Rechnungsadresse'),
(530, 'en', '_BILLING_ADDRESS', 'Billing Address'),
(531, 'es', '_BILLING_ADDRESS', 'Direcci??n de facturaci??n'),
(532, 'de', '_BILLING_DETAILS', 'Rechnungsdetails'),
(533, 'en', '_BILLING_DETAILS', 'Billing Details'),
(534, 'es', '_BILLING_DETAILS', 'Informaci??n sobre facturaci??n'),
(535, 'en', '_BILLING_DETAILS_UPDATED', 'Your Billing Details has been updated.'),
(536, 'de', '_BIODIESEL', 'Biodiesel'),
(537, 'en', '_BIODIESEL', 'Biodiesel'),
(538, 'es', '_BIODIESEL', 'El biodiesel'),
(539, 'de', '_BIRTH_DATE', 'Geburtsdatum'),
(540, 'en', '_BIRTH_DATE', 'Birth Date'),
(541, 'es', '_BIRTH_DATE', 'Fecha de nacimiento'),
(542, 'de', '_BIRTH_DATE_VALID_ALERT', 'Geburtsdatum war im falschen Format eingegeben! Bitte erneut eingeben.'),
(543, 'en', '_BIRTH_DATE_VALID_ALERT', 'Birth date has been entered in wrong format! Please re-enter.'),
(544, 'es', '_BIRTH_DATE_VALID_ALERT', 'Fecha de nacimiento fue inscrita en un formato incorrecto! Por favor, vuelva a entrar.'),
(545, 'de', '_BOOK', 'Buch'),
(546, 'en', '_BOOK', 'Book'),
(547, 'es', '_BOOK', 'Reservar'),
(548, 'de', '_BOOKED', 'gebucht'),
(549, 'en', '_BOOKED', 'booked'),
(550, 'es', '_BOOKED', 'reservado'),
(551, 'de', '_BOOKING', 'Buchung'),
(552, 'en', '_BOOKING', 'Booking'),
(553, 'es', '_BOOKING', 'Reserva'),
(554, 'de', '_BOOKINGS', 'Buchungen'),
(555, 'en', '_BOOKINGS', 'Bookings'),
(556, 'es', '_BOOKINGS', 'Reservas'),
(557, 'de', '_BOOKINGS_MANAGEMENT', 'Reservierungen Management'),
(558, 'en', '_BOOKINGS_MANAGEMENT', 'Bookings Management'),
(559, 'es', '_BOOKINGS_MANAGEMENT', 'Gesti??n de Reservas'),
(560, 'de', '_BOOKINGS_SETTINGS', 'Buchung Einstellungen'),
(561, 'en', '_BOOKINGS_SETTINGS', 'Booking Settings'),
(562, 'es', '_BOOKINGS_SETTINGS', 'Reservas Configuraci??n'),
(563, 'de', '_BOOKING_CANCELED', 'Buchung storniert'),
(564, 'en', '_BOOKING_CANCELED', 'Booking Canceled'),
(565, 'es', '_BOOKING_CANCELED', 'Reserva cancelada'),
(566, 'de', '_BOOKING_CANCELED_SUCCESS', 'Die Buchung _BOOKING_ wurde erfolgreich aus dem System gel??scht!'),
(567, 'en', '_BOOKING_CANCELED_SUCCESS', 'The booking _BOOKING_ has been successfully canceled from the system!'),
(568, 'es', '_BOOKING_CANCELED_SUCCESS', 'El _BOOKING_ reserva ha sido cancelado correctamente en el sistema!'),
(569, 'de', '_BOOKING_COMPLETED', 'Buchung abgeschlossen'),
(570, 'en', '_BOOKING_COMPLETED', 'Booking Completed'),
(571, 'es', '_BOOKING_COMPLETED', 'Reserva Completo'),
(572, 'de', '_BOOKING_DATE', 'Reservierungsdatum'),
(573, 'en', '_BOOKING_DATE', 'Booking Date'),
(574, 'es', '_BOOKING_DATE', 'Reservas Fecha'),
(575, 'de', '_BOOKING_DESCRIPTION', 'Reservieren Beschreibung'),
(576, 'en', '_BOOKING_DESCRIPTION', 'Booking Description'),
(577, 'es', '_BOOKING_DESCRIPTION', 'Reservas Descripci??n'),
(578, 'de', '_BOOKING_DETAILS', 'Buchung Details'),
(579, 'en', '_BOOKING_DETAILS', 'Booking Details'),
(580, 'es', '_BOOKING_DETAILS', 'Datos de la Reserva'),
(581, 'de', '_BOOKING_NUMBER', 'Buchungsnummer'),
(582, 'en', '_BOOKING_NUMBER', 'Booking Number'),
(583, 'es', '_BOOKING_NUMBER', 'N??mero de reserva'),
(584, 'de', '_BOOKING_PRICE', 'Buchung Preis'),
(585, 'en', '_BOOKING_PRICE', 'Booking Price'),
(586, 'es', '_BOOKING_PRICE', 'Precio de reserva'),
(587, 'de', '_BOOKING_SETTINGS', 'Buchung Einstellungen'),
(588, 'en', '_BOOKING_SETTINGS', 'Booking Settings'),
(589, 'es', '_BOOKING_SETTINGS', 'Ajustes de reservas'),
(590, 'de', '_BOOKING_STATUS', 'Buchungsstand'),
(591, 'en', '_BOOKING_STATUS', 'Booking Status'),
(592, 'es', '_BOOKING_STATUS', 'Estado de la reservaci??n'),
(593, 'de', '_BOOKING_SUBTOTAL', 'Buchung Zwischensumme'),
(594, 'en', '_BOOKING_SUBTOTAL', 'Booking Subtotal'),
(595, 'es', '_BOOKING_SUBTOTAL', 'Reservas Subtotal'),
(596, 'de', '_BOOKING_WAS_CANCELED_MSG', 'Ihre Buchung wurde storniert.'),
(597, 'en', '_BOOKING_WAS_CANCELED_MSG', 'Your booking has been canceled.'),
(598, 'es', '_BOOKING_WAS_CANCELED_MSG', 'Su reserva ha sido cancelada.'),
(599, 'de', '_BOOKING_WAS_COMPLETED_MSG', 'Vielen Dank f??r die Reservierung Zimmer in unserem Hotel! Ihre Buchung ist abgeschlossen.'),
(600, 'en', '_BOOKING_WAS_COMPLETED_MSG', 'Thank you! Your booking has been successfully completed.'),
(601, 'es', '_BOOKING_WAS_COMPLETED_MSG', 'Gracias por habitaciones reserva en nuestro hotel! Su reserva se ha completado.'),
(602, 'de', '_BOOK_NOW', 'Buchen Sie jetzt'),
(603, 'en', '_BOOK_NOW', 'Book Now'),
(604, 'es', '_BOOK_NOW', 'Reserve ahora'),
(605, 'de', '_BOOK_ONE_NIGHT_ALERT', 'Sorry, aber Sie werden muss mindestens eine Nacht.'),
(606, 'en', '_BOOK_ONE_NIGHT_ALERT', 'Sorry, but you must book at least one night.'),
(607, 'es', '_BOOK_ONE_NIGHT_ALERT', 'Lo sentimos, pero hay que reservar al menos una noche.'),
(608, 'de', '_BOTTOM', 'Boden'),
(609, 'en', '_BOTTOM', 'Bottom'),
(610, 'es', '_BOTTOM', 'Inferior'),
(611, 'de', '_BUTTON_BACK', 'Zur??ck'),
(612, 'en', '_BUTTON_BACK', 'Back'),
(613, 'es', '_BUTTON_BACK', 'Espalda'),
(614, 'de', '_BUTTON_CANCEL', 'Abbrechen'),
(615, 'en', '_BUTTON_CANCEL', 'Cancel'),
(616, 'es', '_BUTTON_CANCEL', 'Cancelar'),
(617, 'de', '_BUTTON_CHANGE', '??ndern'),
(618, 'en', '_BUTTON_CHANGE', 'Change'),
(619, 'es', '_BUTTON_CHANGE', 'Cambiar'),
(620, 'de', '_BUTTON_CHANGE_PASSWORD', 'Passwort ??ndern'),
(621, 'en', '_BUTTON_CHANGE_PASSWORD', 'Change Password'),
(622, 'es', '_BUTTON_CHANGE_PASSWORD', 'Cambiar Contrase??a'),
(623, 'de', '_BUTTON_CREATE', 'Erstellen'),
(624, 'en', '_BUTTON_CREATE', 'Create'),
(625, 'es', '_BUTTON_CREATE', 'Crear'),
(626, 'de', '_BUTTON_LOGIN', 'Login'),
(627, 'en', '_BUTTON_LOGIN', 'Login'),
(628, 'es', '_BUTTON_LOGIN', 'Login'),
(629, 'de', '_BUTTON_LOGOUT', 'Abmelden'),
(630, 'en', '_BUTTON_LOGOUT', 'Logout'),
(631, 'es', '_BUTTON_LOGOUT', 'Cerrar sesi??n'),
(632, 'de', '_BUTTON_RESET', 'Reset'),
(633, 'en', '_BUTTON_RESET', 'Reset'),
(634, 'es', '_BUTTON_RESET', 'Perd??'),
(635, 'de', '_BUTTON_REWRITE', 'Rewrite Wortschatz'),
(636, 'en', '_BUTTON_REWRITE', 'Rewrite Vocabulary'),
(637, 'es', '_BUTTON_REWRITE', 'Vuelva a escribir Vocabulario'),
(638, 'de', '_BUTTON_SAVE_CHANGES', '??nderungen speichern'),
(639, 'en', '_BUTTON_SAVE_CHANGES', 'Save Changes'),
(640, 'es', '_BUTTON_SAVE_CHANGES', 'Guardar cambios'),
(641, 'de', '_BUTTON_UPDATE', 'Update'),
(642, 'en', '_BUTTON_UPDATE', 'Update'),
(643, 'es', '_BUTTON_UPDATE', 'Actualizar'),
(644, 'de', '_BY', 'durch'),
(645, 'en', '_BY', 'by'),
(646, 'es', '_BY', 'por'),
(647, 'de', '_CACHE_LIFETIME', 'Cache Lifetime'),
(648, 'en', '_CACHE_LIFETIME', 'Cache Lifetime'),
(649, 'es', '_CACHE_LIFETIME', 'Cache de por vida'),
(650, 'de', '_CACHING', 'Caching'),
(651, 'en', '_CACHING', 'Caching'),
(652, 'es', '_CACHING', 'Cach??'),
(653, 'de', '_CAMPAIGNS', 'Kampagnen'),
(654, 'en', '_CAMPAIGNS', 'Campaigns'),
(655, 'es', '_CAMPAIGNS', 'Campa??as'),
(656, 'de', '_CAMPAIGNS_MANAGEMENT', 'Kampagnen-Management'),
(657, 'en', '_CAMPAIGNS_MANAGEMENT', 'Campaigns Management'),
(658, 'es', '_CAMPAIGNS_MANAGEMENT', 'Campa??as Gesti??n'),
(659, 'de', '_CAMPAIGNS_TOOLTIP', 'Global - erm??glicht die Buchung f??r ein beliebiges Datum und l??uft (sichtbar) innerhalb eines definierten Zeitraums nur \r\n--------\r\n Gezielt - erm??glicht den Kauf von Produkten / Dienstleistungen in bestimmten Zeitraum nur und l??uft (sichtbar), bis dieser Termin beginnt'),
(660, 'en', '_CAMPAIGNS_TOOLTIP', 'Global - allows booking for any date and runs (visible) within a defined period of time only\r\n--------\r\nTargeted - allows booking in a specified period of time only and runs (visible) till the first date is beginning');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(661, 'es', '_CAMPAIGNS_TOOLTIP', 'Global - permite reservar para cualquier fecha y corre (visible) en un plazo de tiempo definido, s??lo se \r\n--------\r\n Dirigido - permite la compra de productos y servicios en el per??odo de tiempo determinado y s??lo se ejecuta (visible), hasta esta fecha se inicia'),
(662, 'de', '_CANCELED', 'Storniert'),
(663, 'en', '_CANCELED', 'Canceled'),
(664, 'es', '_CANCELED', 'Cancelado'),
(665, 'de', '_CANCELED_BY_ADMIN', 'Diese Buchung wurde durch den Administrator erfolgen.'),
(666, 'en', '_CANCELED_BY_ADMIN', 'This booking is canceled by administrator.'),
(667, 'es', '_CANCELED_BY_ADMIN', 'Esta reserva fue cancelada por el administrador.'),
(668, 'de', '_CANCELED_BY_CUSTOMER', 'Diese Buchung wurde vom Kunden abgebrochen.'),
(669, 'en', '_CANCELED_BY_CUSTOMER', 'This booking has been canceled by customer.'),
(670, 'es', '_CANCELED_BY_CUSTOMER', 'Esta reserva fue cancelada por el cliente.'),
(671, 'de', '_CANCELLATION_POLICY', 'Stornierungsbedingungen'),
(672, 'en', '_CANCELLATION_POLICY', 'Cancellation Policy'),
(673, 'es', '_CANCELLATION_POLICY', 'pol??tica de cancelaci??n'),
(674, 'de', '_CANNOT_REMOVE_FUNDS_ALERT', 'Sie k??nnen diese Mittel nicht entfernt werden, da es f??r diesen Kunden zu negativen Bilanz f??hren kann.'),
(675, 'en', '_CANNOT_REMOVE_FUNDS_ALERT', 'You cannot remove these funds because it may lead to negative balance for this customer.'),
(676, 'es', '_CANNOT_REMOVE_FUNDS_ALERT', 'No se puede quitar estos fondos, ya que puede conducir a saldo negativo para este cliente.'),
(677, 'de', '_CAN_USE_TAGS_MSG', 'Sie k??nnen einige HTML-Tags wie'),
(678, 'en', '_CAN_USE_TAGS_MSG', 'You can use some HTML tags, such as'),
(679, 'es', '_CAN_USE_TAGS_MSG', 'Puede utilizar las etiquetas HTML, como'),
(680, 'de', '_CAPACITY', 'Kapazit??t'),
(681, 'en', '_CAPACITY', 'Capacity'),
(682, 'es', '_CAPACITY', 'Capacidad'),
(752, 'de', '_CATEGORIES', 'Kategorien'),
(753, 'en', '_CATEGORIES', 'Categories'),
(754, 'es', '_CATEGORIES', 'Categor??as'),
(755, 'de', '_CATEGORIES_MANAGEMENT', 'Kategorien Management'),
(756, 'en', '_CATEGORIES_MANAGEMENT', 'Categories Management'),
(757, 'es', '_CATEGORIES_MANAGEMENT', 'Categor??as de Manejo'),
(758, 'de', '_CATEGORY', 'Kategorie'),
(759, 'en', '_CATEGORY', 'Category'),
(760, 'es', '_CATEGORY', 'Categor??a'),
(761, 'de', '_CATEGORY_DESCRIPTION', 'Kategorie Beschreibung'),
(762, 'en', '_CATEGORY_DESCRIPTION', 'Category Description'),
(763, 'es', '_CATEGORY_DESCRIPTION', 'Categor??a Descripci??n'),
(764, 'de', '_CC_CARD_HOLDER_NAME_EMPTY', 'No Name des Karteninhabers versehen! Bitte erneut eingeben.'),
(765, 'en', '_CC_CARD_HOLDER_NAME_EMPTY', 'No card holder\'s name provided! Please re-enter.'),
(766, 'es', '_CC_CARD_HOLDER_NAME_EMPTY', 'No Nombre del titular de la tarjeta siempre! Por favor, vuelva a introducir.'),
(767, 'de', '_CC_CARD_INVALID_FORMAT', 'Kreditkarten-Nummer hat ung??ltiges Format! Bitte erneut eingeben.'),
(768, 'en', '_CC_CARD_INVALID_FORMAT', 'Credit card number has invalid format! Please re-enter.'),
(769, 'es', '_CC_CARD_INVALID_FORMAT', 'N??mero de tarjeta de cr??dito tiene un formato v??lido! Por favor, vuelva a entrar.'),
(770, 'de', '_CC_CARD_INVALID_NUMBER', 'Kreditkarten-Nummer ist ung??ltig! Bitte erneut eingeben.'),
(771, 'en', '_CC_CARD_INVALID_NUMBER', 'Credit card number is invalid! Please re-enter.'),
(772, 'es', '_CC_CARD_INVALID_NUMBER', 'N??mero de tarjeta de cr??dito no es v??lido! Por favor, vuelva a entrar.'),
(773, 'de', '_CC_CARD_NO_CVV_NUMBER', 'Keine CVV Code zur Verf??gung gestellt! Bitte erneut eingeben.'),
(774, 'en', '_CC_CARD_NO_CVV_NUMBER', 'No CVV Code provided! Please re-enter.'),
(775, 'es', '_CC_CARD_NO_CVV_NUMBER', 'No C??digo CVV siempre! Por favor, vuelva a entrar.'),
(776, 'de', '_CC_CARD_WRONG_EXPIRE_DATE', 'Kreditkarten Ablaufdatum ist falsch! Bitte erneut eingeben.'),
(777, 'en', '_CC_CARD_WRONG_EXPIRE_DATE', 'Credit card expiry date is wrong! Please re-enter.'),
(778, 'es', '_CC_CARD_WRONG_EXPIRE_DATE', 'Tarjeta de cr??dito fecha de caducidad est?? mal! Por favor, vuelva a entrar.'),
(779, 'de', '_CC_CARD_WRONG_LENGTH', 'Kreditkarten-Nummer falsch ist lang! Bitte erneut eingeben.'),
(780, 'en', '_CC_CARD_WRONG_LENGTH', 'Credit card number has a wrong length! Please re-enter.'),
(781, 'es', '_CC_CARD_WRONG_LENGTH', 'N??mero de tarjeta de cr??dito es la longitud del mal! Por favor, vuelva a entrar.'),
(782, 'de', '_CC_NO_CARD_NUMBER_PROVIDED', 'Keine Karte Nummer versehen! Bitte erneut eingeben.'),
(783, 'en', '_CC_NO_CARD_NUMBER_PROVIDED', 'No card number provided! Please re-enter.'),
(784, 'es', '_CC_NO_CARD_NUMBER_PROVIDED', 'No hay n??mero de tarjeta de siempre! Por favor, vuelva a entrar.'),
(785, 'de', '_CC_NUMBER_INVALID', 'Kreditkarten-Nummer ist ung??ltig! Bitte erneut eingeben.'),
(786, 'en', '_CC_NUMBER_INVALID', 'Credit card number is invalid! Please re-enter.'),
(787, 'es', '_CC_NUMBER_INVALID', 'N??mero de tarjeta de cr??dito no es v??lido! Por favor, vuelva a entrar.'),
(788, 'de', '_CC_UNKNOWN_CARD_TYPE', 'Unbekannte Karte Typ! Bitte erneut eingeben.'),
(789, 'en', '_CC_UNKNOWN_CARD_TYPE', 'Unknown card type! Please re-enter.'),
(790, 'es', '_CC_UNKNOWN_CARD_TYPE', 'Tipo de tarjeta desconocido! Por favor, vuelva a entrar.'),
(791, 'de', '_CENTRAL_POINT_LATITUDE', 'Central Point Latitude'),
(792, 'en', '_CENTRAL_POINT_LATITUDE', 'Central Point Latitude'),
(793, 'es', '_CENTRAL_POINT_LATITUDE', 'Punto central Latitud'),
(794, 'de', '_CENTRAL_POINT_LONGITUDE', 'Central Point L??nge'),
(795, 'en', '_CENTRAL_POINT_LONGITUDE', 'Central Point Longitude'),
(796, 'es', '_CENTRAL_POINT_LONGITUDE', 'Punto central Longitud'),
(797, 'de', '_CHANGES_SAVED', '??nderungen wurden gespeichert.'),
(798, 'en', '_CHANGES_SAVED', 'Changes were saved.'),
(799, 'es', '_CHANGES_SAVED', 'Los cambios se salvaron.'),
(800, 'de', '_CHANGES_WERE_SAVED', '??nderungen wurden erfolgreich gespeichert!'),
(801, 'en', '_CHANGES_WERE_SAVED', 'Changes were successfully saved! Please refresh the <a href=index.php>Home Page</a> to see the results.'),
(802, 'es', '_CHANGES_WERE_SAVED', 'Los cambios se han guardado correctamente! Por favor, actualice la <a href=index.php>Home Page</a> para ver los resultados.'),
(803, 'de', '_CHANGE_CUSTOMER', '??ndern Sie Kunde'),
(804, 'en', '_CHANGE_CUSTOMER', 'Change Customer'),
(805, 'es', '_CHANGE_CUSTOMER', 'Cambiar al Cliente'),
(806, 'de', '_CHANGE_ORDER', 'Auftrag ??ndern'),
(807, 'en', '_CHANGE_ORDER', 'Change Order'),
(808, 'es', '_CHANGE_ORDER', 'Cambiar el orden de'),
(809, 'de', '_CHANGE_YOUR_PASSWORD', '??ndern Sie Ihr Passwort'),
(810, 'en', '_CHANGE_YOUR_PASSWORD', 'Change your password'),
(811, 'es', '_CHANGE_YOUR_PASSWORD', 'Cambie su contrase??a'),
(812, 'de', '_CHARGE_TYPE', 'Ladungstyp'),
(813, 'en', '_CHARGE_TYPE', 'Charge Type'),
(814, 'es', '_CHARGE_TYPE', 'Tipo Carga'),
(815, 'de', '_CHECKOUT', 'Kasse'),
(816, 'en', '_CHECKOUT', 'Checkout'),
(817, 'es', '_CHECKOUT', 'Caja'),
(818, 'de', '_CHECK_AVAILABILITY', '??berpr??fen Zimmer'),
(819, 'en', '_CHECK_AVAILABILITY', 'Check Availability'),
(820, 'es', '_CHECK_AVAILABILITY', 'Obtener la disponibilidad'),
(821, 'de', '_CHECK_HOTELS', '??berpr??fen Hotels'),
(822, 'en', '_CHECK_HOTELS', 'Check Hotels'),
(823, 'es', '_CHECK_HOTELS', 'Verifique Hoteles'),
(824, 'de', '_CHECK_IN', 'Check In'),
(825, 'en', '_CHECK_IN', 'Check In'),
(826, 'es', '_CHECK_IN', 'Registrarse'),
(827, 'de', '_CHECK_NOW', 'Jetzt pr??fen'),
(828, 'en', '_CHECK_NOW', 'Check Now'),
(829, 'es', '_CHECK_NOW', 'Comprobar ahora'),
(830, 'de', '_CHECK_OUT', 'Check Out'),
(831, 'en', '_CHECK_OUT', 'Check Out'),
(832, 'es', '_CHECK_OUT', 'Hora de salida'),
(833, 'de', '_CHECK_STATUS', 'Status pr??fen'),
(834, 'en', '_CHECK_STATUS', 'Check Status'),
(835, 'es', '_CHECK_STATUS', 'Compruebe el estado de'),
(836, 'de', '_CHECK_VILLAS', '??berpr??fen Villas'),
(837, 'en', '_CHECK_VILLAS', 'Check Villas'),
(838, 'es', '_CHECK_VILLAS', 'Verifique Villas'),
(839, 'de', '_CHILD', 'Kind'),
(840, 'en', '_CHILD', 'Child'),
(841, 'es', '_CHILD', 'Ni??o'),
(842, 'de', '_CHILDREN', 'Kinder'),
(843, 'en', '_CHILDREN', 'Children'),
(844, 'es', '_CHILDREN', 'Ni??os'),
(845, 'de', '_CITY', 'Stadt'),
(846, 'en', '_CITY', 'City'),
(847, 'es', '_CITY', 'Ciudad'),
(848, 'de', '_CITY_EMPTY_ALERT', 'Stadt Darf Nicht Sein leer! Bitte erneut eingeben.'),
(849, 'en', '_CITY_EMPTY_ALERT', 'City cannot be empty! Please re-enter.'),
(850, 'es', '_CITY_EMPTY_ALERT', 'Ciudad no puede estar vac??o! Por favor, vuelva a entrar.'),
(851, 'de', '_CLEANED', 'gereinigt'),
(852, 'en', '_CLEANED', 'Cleaned'),
(853, 'es', '_CLEANED', 'Limpiar'),
(854, 'de', '_CLEANLINESS', 'Sauberkeit'),
(855, 'en', '_CLEANLINESS', 'Cleanliness'),
(856, 'es', '_CLEANLINESS', 'Limpieza'),
(857, 'de', '_CLEANUP', 'Aufr??umarbeiten'),
(858, 'en', '_CLEANUP', 'Cleanup'),
(859, 'es', '_CLEANUP', 'limpieza'),
(860, 'de', '_CLEANUP_TOOLTIP', 'Die Bereinigung Funktion wird verwendet, um ausstehende (tempor??ren) Vorbehalte von Ihrer Website zu entfernen. Eine ausstehende Reservierung ist eine, wo das System wartet auf das Payment-Gateway mit der Transaktion wird auf Status-Callback.'),
(861, 'en', '_CLEANUP_TOOLTIP', 'The cleanup feature is used to remove pending (temporary) reservations from your web site. A pending reservation is one where the system is waiting for the payment gateway to callback with the transaction status.'),
(862, 'es', '_CLEANUP_TOOLTIP', 'La caracter??stica de limpieza se utiliza para eliminar pendientes (temporal) de las reservas de su sitio web. Una reserva en espera es aquel en el que el sistema est?? a la espera de la pasarela de pago de devoluci??n de llamada con el estado de la transacci??n.'),
(863, 'de', '_CLEAN_CACHE', 'Cache l??schen'),
(864, 'en', '_CLEAN_CACHE', 'Clean Cache'),
(865, 'es', '_CLEAN_CACHE', 'Borrar cach??'),
(866, 'de', '_CLICK_FOR_MORE_INFO', 'Klicken Sie f??r weitere Informationen'),
(867, 'en', '_CLICK_FOR_MORE_INFO', 'Click for more information'),
(868, 'es', '_CLICK_FOR_MORE_INFO', 'Haga clic para m??s informaci??n'),
(869, 'de', '_CLICK_TO_CHANGE_STATUS', 'Klicken Sie auf Status ??ndern'),
(870, 'en', '_CLICK_TO_CHANGE_STATUS', 'Click to change status'),
(871, 'es', '_CLICK_TO_CHANGE_STATUS', 'Haga clic para cambiar el estado'),
(872, 'de', '_CLICK_TO_COPY', 'Klicken Sie zum Kopieren'),
(873, 'en', '_CLICK_TO_COPY', 'Click to copy'),
(874, 'es', '_CLICK_TO_COPY', 'Haga clic para copiar'),
(875, 'de', '_CLICK_TO_EDIT', 'Klicken Sie zum Bearbeiten'),
(876, 'en', '_CLICK_TO_EDIT', 'Click to edit'),
(877, 'es', '_CLICK_TO_EDIT', 'Haga clic para editar'),
(878, 'de', '_CLICK_TO_INCREASE', 'Klicken zum Vergr????ern'),
(879, 'en', '_CLICK_TO_INCREASE', 'Click to enlarge'),
(880, 'es', '_CLICK_TO_INCREASE', 'Haga clic para aumentar'),
(881, 'de', '_CLICK_TO_MANAGE', 'Klicken Sie auf die Verwaltung'),
(882, 'en', '_CLICK_TO_MANAGE', 'Click to manage'),
(883, 'es', '_CLICK_TO_MANAGE', 'Haga clic para gestionar'),
(884, 'de', '_CLICK_TO_PAY', 'Klick zu zahlen'),
(885, 'en', '_CLICK_TO_PAY', 'Click To Pay'),
(886, 'es', '_CLICK_TO_PAY', 'Haga clic para pagar'),
(887, 'de', '_CLICK_TO_SEE_DESCR', 'Hier klicken Beschreibung siehe'),
(888, 'en', '_CLICK_TO_SEE_DESCR', 'Click to see description'),
(889, 'es', '_CLICK_TO_SEE_DESCR', 'Haz clic aqu?? para ver la descripci??n'),
(890, 'de', '_CLICK_TO_SEE_PRICES', 'Hier klicken f??r Preisanzeige'),
(891, 'en', '_CLICK_TO_SEE_PRICES', 'Click to see prices'),
(892, 'es', '_CLICK_TO_SEE_PRICES', 'Haz clic aqu?? para ver los precios'),
(893, 'de', '_CLICK_TO_VIEW', 'Klicken Sie zur Ansicht'),
(894, 'en', '_CLICK_TO_VIEW', 'Click to view'),
(895, 'es', '_CLICK_TO_VIEW', 'Haga clic para ver'),
(896, 'de', '_CLOSE', 'Schlie??en'),
(897, 'en', '_CLOSE', 'Close'),
(898, 'es', '_CLOSE', 'Cerrar'),
(899, 'de', '_CLOSE_META_TAGS', 'Schlie??en Sie META-Tags'),
(900, 'en', '_CLOSE_META_TAGS', 'Close META tags'),
(901, 'es', '_CLOSE_META_TAGS', 'Cerrar etiquetas META'),
(902, 'de', '_CNG', 'CNG'),
(903, 'en', '_CNG', 'CNG'),
(904, 'es', '_CNG', 'GNC'),
(905, 'de', '_CODE', 'Code'),
(906, 'en', '_CODE', 'Code'),
(907, 'es', '_CODE', 'C??digo'),
(908, 'de', '_COLLAPSE_PANEL', 'Collapse Navigationsleiste'),
(909, 'en', '_COLLAPSE_PANEL', 'Collapse navigation panel'),
(910, 'es', '_COLLAPSE_PANEL', 'Colapso del panel de navegaci??n'),
(911, 'de', '_COMMENTS', 'Kommentare'),
(912, 'en', '_COMMENTS', 'Comments'),
(913, 'es', '_COMMENTS', 'Comentarios'),
(914, 'de', '_COMMENTS_AWAITING_MODERATION_ALERT', 'Es gibt _COUNT_ Kommentar/s warten auf Ihren Ma??en. Klicken Sie <a href=\'index.php?admin=mod_comments_management\'>hier</a> f??r eine Bewertung.'),
(915, 'en', '_COMMENTS_AWAITING_MODERATION_ALERT', 'There are _COUNT_ comment/s awaiting your moderation. Click <a href=\'index.php?admin=mod_comments_management\'>here</a> for review.'),
(916, 'es', '_COMMENTS_AWAITING_MODERATION_ALERT', 'Hay comentarios _COUNT_ en espera de su moderaci??n. Haga clic <a href=\'index.php?admin=mod_comments_management\'>aqu??</a> para su revisi??n.'),
(917, 'de', '_COMMENTS_LINK', 'Kommentare (_COUNT_)'),
(918, 'en', '_COMMENTS_LINK', 'Comments (_COUNT_)'),
(919, 'es', '_COMMENTS_LINK', 'Comentarios (_COUNT_)'),
(920, 'de', '_COMMENTS_MANAGEMENT', 'Kommentare Management'),
(921, 'en', '_COMMENTS_MANAGEMENT', 'Comments Management'),
(922, 'es', '_COMMENTS_MANAGEMENT', 'Observaciones de la Administraci??n'),
(923, 'de', '_COMMENTS_REMOVAL', 'Kommentare Entfernung'),
(924, 'en', '_COMMENTS_REMOVAL', 'Comments removal'),
(925, 'es', '_COMMENTS_REMOVAL', 'eliminaci??n de los comentarios'),
(926, 'de', '_COMMENTS_SETTINGS', 'Kommentare Einstellungen'),
(927, 'en', '_COMMENTS_SETTINGS', 'Comments Settings'),
(928, 'es', '_COMMENTS_SETTINGS', 'Comentarios Configuraci??n'),
(929, 'de', '_COMMENT_DELETED_SUCCESS', 'Dein Kommentar wurde erfolgreich gel??scht.'),
(930, 'en', '_COMMENT_DELETED_SUCCESS', 'Your comment has been successfully deleted.'),
(931, 'es', '_COMMENT_DELETED_SUCCESS', 'Su comentario ha sido borrado.'),
(932, 'de', '_COMMENT_LENGTH_ALERT', 'Die L??nge der Kommentar muss kleiner sein als _LENGTH_ Zeichen!'),
(933, 'en', '_COMMENT_LENGTH_ALERT', 'The length of comment must be less than _LENGTH_ characters!'),
(934, 'es', '_COMMENT_LENGTH_ALERT', 'La longitud de los comentarios debe ser inferior a _LENGTH_ personajes!'),
(935, 'de', '_COMMENT_POSTED_SUCCESS', 'Dein Kommentar wurde erfolgreich auf dem Laufenden!'),
(936, 'en', '_COMMENT_POSTED_SUCCESS', 'Your comment has been successfully posted!'),
(937, 'es', '_COMMENT_POSTED_SUCCESS', 'Tu comentario ha sido enviado con ??xito!'),
(938, 'de', '_COMMENT_SUBMITTED_SUCCESS', 'Dein Kommentar wurde Erfolgreich ??bermittelt und WIRD nach Administrator-Beitrag gepostet Werden!'),
(939, 'en', '_COMMENT_SUBMITTED_SUCCESS', 'Your comment has been successfully submitted and will be posted after administrator\'s review!'),
(940, 'es', '_COMMENT_SUBMITTED_SUCCESS', 'Tu comentario ha sido enviado correctamente y ser?? publicado despu??s de la revisi??n del administrador!'),
(941, 'de', '_COMMENT_TEXT', 'Kommentieren Text'),
(942, 'en', '_COMMENT_TEXT', 'Comment text'),
(943, 'es', '_COMMENT_TEXT', 'Comentario de texto'),
(944, 'de', '_COMPANY', 'Gesellschaft'),
(945, 'en', '_COMPANY', 'Company'),
(946, 'es', '_COMPANY', 'Compa????a'),
(947, 'de', '_COMPLETED', 'Fertiggestellt (gegen Entgelt)'),
(948, 'en', '_COMPLETED', 'Completed (Paid)'),
(949, 'es', '_COMPLETED', 'Terminado (pagado)'),
(950, 'de', '_CONFIRMATION', 'Best??tigung'),
(951, 'en', '_CONFIRMATION', 'Confirmation'),
(952, 'es', '_CONFIRMATION', 'Confirmaci??n'),
(953, 'de', '_CONFIRMATION_CODE', 'Best??tigungs-Code'),
(954, 'en', '_CONFIRMATION_CODE', 'Confirmation Code'),
(955, 'es', '_CONFIRMATION_CODE', 'C??digo de confirmaci??n'),
(956, 'de', '_CONFIRMED_ALREADY_MSG', 'Ihr Konto wurde bereits best??tigt! <br /><br />Klicken Sie <a href=\'index.php?customer=login\'>hier</a>, um fortzufahren.'),
(957, 'en', '_CONFIRMED_ALREADY_MSG', 'Your account has already been confirmed! <br /><br />Click <a href=\'index.php?customer=login\'>here</a> to continue.'),
(958, 'es', '_CONFIRMED_ALREADY_MSG', 'Su cuenta ha sido ya confirmado!<br /><br />Haga clic <a href=\'index.php?customer=login\'>aqu??</a> para continuar.'),
(959, 'de', '_CONFIRMED_SUCCESS_MSG', 'Vielen Dank f??r Ihre Anmeldung best??tigt! <br /><br /> Sie k??nnen jetzt in Ihr Konto einloggen. Klicken Sie <a href=\'index.php?customer=login\'>hier</a>, um fortzufahren.'),
(960, 'en', '_CONFIRMED_SUCCESS_MSG', 'Thank you for confirming your registration! <br /><br />You may now log into your account. Click <a href=\'index.php?customer=login\'>here</a> to proceed.'),
(961, 'es', '_CONFIRMED_SUCCESS_MSG', 'Gracias por confirmar su inscripci??n! <br /><br />Ahora puede acceder a su cuenta. Haga clic <a href=\'index.php?customer=login\'>aqu??</a> para continuar.'),
(962, 'de', '_CONFIRM_PASSWORD', 'Kennwort best??tigen'),
(963, 'en', '_CONFIRM_PASSWORD', 'Confirm Password'),
(964, 'es', '_CONFIRM_PASSWORD', 'confirmar contrase??a'),
(965, 'de', '_CONFIRM_TERMS_CONDITIONS', 'Sie m??ssen best??tigen, stimmen Sie unseren AGB!'),
(966, 'en', '_CONFIRM_TERMS_CONDITIONS', 'You must confirm you agree to our Terms & Conditions!'),
(967, 'es', '_CONFIRM_TERMS_CONDITIONS', 'Usted debe confirmar que est?? de acuerdo con nuestros t??rminos y condiciones!'),
(968, 'de', '_CONF_PASSWORD_IS_EMPTY', 'Kennwort best??tigen k??nnen nicht leer sein!'),
(969, 'en', '_CONF_PASSWORD_IS_EMPTY', 'Confirm Password cannot be empty!'),
(970, 'es', '_CONF_PASSWORD_IS_EMPTY', 'Confirmar contrase??a no puede estar vac??o!'),
(971, 'de', '_CONF_PASSWORD_MATCH', 'Das Passwort muss ??bereinstimmen mit Kennwort best??tigen werden'),
(972, 'en', '_CONF_PASSWORD_MATCH', 'Password must be match with Confirm Password'),
(973, 'es', '_CONF_PASSWORD_MATCH', 'La contrase??a debe tener partido con Confirmar contrase??a'),
(974, 'de', '_CONTACTUS_DEFAULT_EMAIL_ALERT', 'Sie haben zum urspr??nglichen E-Mail-Adresse f??r Kontakt-Modul ??ndern. Klicken Sie <a href=\'index.php?admin=mod_contact_us_settings\'>hier</a>, um fortzufahren.'),
(975, 'en', '_CONTACTUS_DEFAULT_EMAIL_ALERT', 'You have to change default email address for Contact Us module. Click <a href=\'index.php?admin=mod_contact_us_settings\'>here</a> to proceed.'),
(976, 'es', '_CONTACTUS_DEFAULT_EMAIL_ALERT', 'Tienes que cambiar la direcci??n de correo electr??nico predeterminado para Cont??ctenos m??dulo. Haga clic <a href=\'index.php?admin=mod_contact_us_settings\'>aqu??</a> para continuar.'),
(977, 'de', '_CONTACT_INFORMATION', 'Kontakt Information'),
(978, 'en', '_CONTACT_INFORMATION', 'Contact Information'),
(979, 'es', '_CONTACT_INFORMATION', 'Informaci??n de contacto'),
(980, 'de', '_CONTACT_US', 'Kontaktieren Sie uns'),
(981, 'en', '_CONTACT_US', 'Contact us'),
(982, 'es', '_CONTACT_US', 'Cont??ctenos'),
(983, 'de', '_CONTACT_US_ALREADY_SENT', 'Ihre Nachricht wurde bereits gesendet. Bitte versuchen Sie es sp??ter noch einmal oder warten _WAIT_ Sekunden.'),
(984, 'en', '_CONTACT_US_ALREADY_SENT', 'Your message has been already sent. Please try again later or wait _WAIT_ seconds.'),
(985, 'es', '_CONTACT_US_ALREADY_SENT', 'Tu mensaje ha sido enviado ya. Por favor, int??ntelo de nuevo m??s tarde o esperar _WAIT_ segundos.'),
(986, 'de', '_CONTACT_US_EMAIL_SENT', 'Vielen Dank f??r Ihre Kontaktaufnahme! Ihre Nachricht wurde erfolgreich versendet.'),
(987, 'en', '_CONTACT_US_EMAIL_SENT', 'Thank you for contacting us! Your message has been successfully sent.'),
(988, 'es', '_CONTACT_US_EMAIL_SENT', 'Gracias por contactar con nosotros! Su mensaje ha sido enviado con ??xito.'),
(989, 'de', '_CONTACT_US_SETTINGS', 'Kontakt Einstellungen'),
(990, 'en', '_CONTACT_US_SETTINGS', 'Contact Us Settings'),
(991, 'es', '_CONTACT_US_SETTINGS', 'Contacte con nosotros ajustes'),
(992, 'de', '_CONTENT_TYPE', 'Content-Typ'),
(993, 'en', '_CONTENT_TYPE', 'Content Type'),
(994, 'es', '_CONTENT_TYPE', 'Tipo de contenido'),
(995, 'de', '_CONTINUE_RESERVATION', 'Weiter Reservierung'),
(996, 'en', '_CONTINUE_RESERVATION', 'Continue Reservation'),
(997, 'es', '_CONTINUE_RESERVATION', 'Continuar reservaci??n'),
(998, 'de', '_COORDINATES_CENTER_POINT', 'Koordinaten des Mittelpunktes'),
(999, 'en', '_COORDINATES_CENTER_POINT', 'Coordinates of Center Point'),
(1000, 'es', '_COORDINATES_CENTER_POINT', 'Coordenadas del centro de Punto'),
(1001, 'de', '_COPYRIGHT', 'Urheberrecht'),
(1002, 'en', '_COPYRIGHT', 'Copyright'),
(1003, 'es', '_COPYRIGHT', 'Derechos de autor'),
(1004, 'de', '_COPY_TO_OTHERS', 'Copy to others'),
(1005, 'en', '_COPY_TO_OTHERS', 'Copy to others'),
(1006, 'es', '_COPY_TO_OTHERS', 'Copy to others'),
(1007, 'de', '_COPY_TO_OTHER_LANGS', 'Kopieren in andere Sprachen'),
(1008, 'en', '_COPY_TO_OTHER_LANGS', 'Copy to other languages'),
(1009, 'es', '_COPY_TO_OTHER_LANGS', 'Copiar a otros idiomas'),
(1010, 'de', '_COUNT', 'Z??HLEN'),
(1011, 'en', '_COUNT', 'Count'),
(1012, 'es', '_COUNT', 'Contar'),
(1013, 'de', '_COUNTRIES', 'L??nder'),
(1014, 'en', '_COUNTRIES', 'Countries'),
(1015, 'es', '_COUNTRIES', 'Pa??ses'),
(1016, 'de', '_COUNTRIES_MANAGEMENT', 'L??nder Management'),
(1017, 'en', '_COUNTRIES_MANAGEMENT', 'Countries Management'),
(1018, 'es', '_COUNTRIES_MANAGEMENT', 'Los pa??ses de Gesti??n'),
(1019, 'de', '_COUNTRY', 'Land'),
(1020, 'en', '_COUNTRY', 'Country'),
(1021, 'es', '_COUNTRY', 'Pa??s'),
(1022, 'de', '_COUNTRY_EMPTY_ALERT', 'Land darf nicht leer sein! Bitte erneut eingeben.'),
(1023, 'en', '_COUNTRY_EMPTY_ALERT', 'Country cannot be empty! Please re-enter.'),
(1024, 'es', '_COUNTRY_EMPTY_ALERT', 'Pa??s no puede estar vac??o! Por favor, vuelva a entrar.'),
(1025, 'de', '_COUPONS', 'Coupons'),
(1026, 'en', '_COUPONS', 'Coupons'),
(1027, 'es', '_COUPONS', 'Cupones'),
(1028, 'de', '_COUPONS_MANAGEMENT', 'Coupons-Management'),
(1029, 'en', '_COUPONS_MANAGEMENT', 'Coupons Management'),
(1030, 'es', '_COUPONS_MANAGEMENT', 'Gesti??n de cupones'),
(1031, 'de', '_COUPON_CODE', 'Code coupon'),
(1032, 'en', '_COUPON_CODE', 'Coupon Code'),
(1033, 'es', '_COUPON_CODE', 'C??digo de cup??n'),
(1034, 'de', '_COUPON_FOR_SINGLE_HOTEL_ALERT', 'Dieser Rabatt Gutschein kann nur f??r einzelne Hotel angewendet werden!'),
(1035, 'en', '_COUPON_FOR_SINGLE_HOTEL_ALERT', 'This discount coupon can be applied only for single hotel!'),
(1036, 'es', '_COUPON_FOR_SINGLE_HOTEL_ALERT', 'Este cup??n de descuento se puede aplicar solamente para solo hotel!'),
(1037, 'de', '_COUPON_WAS_APPLIED', 'Der Coupon _COUPON_CODE_ wurde erfolgreich angewendet!'),
(1038, 'en', '_COUPON_WAS_APPLIED', 'The coupon _COUPON_CODE_ has been successfully applied!'),
(1039, 'es', '_COUPON_WAS_APPLIED', 'El _COUPON_CODE_ cup??n ha sido aplicado con ??xito!'),
(1040, 'de', '_COUPON_WAS_REMOVED', 'Der Gutschein wurde erfolgreich entfernt!'),
(1041, 'en', '_COUPON_WAS_REMOVED', 'The coupon has been successfully removed!'),
(1042, 'es', '_COUPON_WAS_REMOVED', 'El cup??n ha sido eliminado con ??xito!'),
(1043, 'de', '_CREATED_DATE', 'Erstellungsdatum'),
(1044, 'en', '_CREATED_DATE', 'Date Created'),
(1045, 'es', '_CREATED_DATE', 'Fecha de creaci??n'),
(1046, 'de', '_CREATE_ACCOUNT', 'Konto erstellen'),
(1047, 'en', '_CREATE_ACCOUNT', 'Create account'),
(1048, 'es', '_CREATE_ACCOUNT', 'Crear cuenta'),
(1049, 'de', '_CREATE_ACCOUNT_NOTE', 'Hinweis: <br>Wir empfehlen'),
(1050, 'en', '_CREATE_ACCOUNT_NOTE', 'NOTE: <br>We recommend that your password should be at least 6 characters long and should be different from your username.<br><br>Your e-mail address must be valid. We use e-mail for communication purposes (order notifications, etc). Therefore, it is essential to provide a valid e-mail address to be able to use our services correctly.<br><br>All your private data is confidential. We will never sell, exchange or market it in any way. For further information on the responsibilities of both parts, you may refer to us.'),
(1051, 'es', '_CREATE_ACCOUNT_NOTE', 'NOTA: MedlinePlus Le recomendamos que su contrase??a debe tener al menos 6 caracteres de longitud y debe ser diferente de su nombre de usuario. <br>Su direcci??n de correo electr??nico debe ser v??lida. Usamos el correo electr??nico con fines de comunicaci??n (notificaciones de pedido, etc.) Por lo tanto, es esencial para proporcionar una direcci??n v??lida de correo electr??nico para poder utilizar nuestros servicios correctamente. <br>Todos sus datos personales son confidenciales. Nunca vamos a vender, intercambiar o comercializar de ninguna manera. Para m??s informaci??n sobre las responsabilidades de ambas partes, usted puede referirse a nosotros.'),
(1052, 'de', '_CREATING_ACCOUNT_ERROR', 'Fehler beim Erstellen Ihres Kontos! Bitte versuchen Sie es sp??ter noch einmal oder senden Sie Informationen zu diesem Fehler zur Verwaltung der Website.'),
(1053, 'en', '_CREATING_ACCOUNT_ERROR', 'An error occurred while creating your account! Please try again later or send information about this error to administration of the site.'),
(1054, 'es', '_CREATING_ACCOUNT_ERROR', 'Se produjo un error al crear su cuenta! Por favor, int??ntelo de nuevo m??s tarde o enviar informaci??n sobre este error a la administraci??n del sitio.'),
(1055, 'de', '_CREATING_NEW_ACCOUNT', 'Erstellen neues Konto'),
(1056, 'en', '_CREATING_NEW_ACCOUNT', 'Creating new account'),
(1057, 'es', '_CREATING_NEW_ACCOUNT', 'Crear cuenta nueva'),
(1058, 'de', '_CREDIT_CARD', 'Kreditkarte'),
(1059, 'en', '_CREDIT_CARD', 'Credit Card'),
(1060, 'es', '_CREDIT_CARD', 'Tarjeta de Cr??dito'),
(1061, 'de', '_CREDIT_CARD_EXPIRES', 'Ablauf'),
(1062, 'en', '_CREDIT_CARD_EXPIRES', 'Expires'),
(1063, 'es', '_CREDIT_CARD_EXPIRES', 'Expira'),
(1064, 'de', '_CREDIT_CARD_HOLDER_NAME', 'Name des Karteninhabers'),
(1065, 'en', '_CREDIT_CARD_HOLDER_NAME', 'Card Holder\'s Name'),
(1066, 'es', '_CREDIT_CARD_HOLDER_NAME', 'Nombre del titular'),
(1067, 'de', '_CREDIT_CARD_NUMBER', 'Nummer der Kreditkarte'),
(1068, 'en', '_CREDIT_CARD_NUMBER', 'Credit Card Number'),
(1069, 'es', '_CREDIT_CARD_NUMBER', 'N??mero de tarjeta'),
(1070, 'de', '_CREDIT_CARD_TYPE', 'Art der Kreditkarte'),
(1071, 'en', '_CREDIT_CARD_TYPE', 'Credit Card Type'),
(1072, 'es', '_CREDIT_CARD_TYPE', 'Tarjeta de Cr??dito'),
(1073, 'de', '_CRONJOB_HTACCESS_BLOCK', 'So blockieren Sie den Remotezugriff auf cron.php'),
(1074, 'en', '_CRONJOB_HTACCESS_BLOCK', 'To block remote access to cron.php, in the server&#039;s .htaccess file or vhost configuration file add this section:'),
(1075, 'es', '_CRONJOB_HTACCESS_BLOCK', 'Para bloquear el acceso remoto a cron.php, en el archivo del servidor htaccess o archivo de configuraci??n de host virtual agregar esta secci??n.:'),
(1076, 'de', '_CRONJOB_NOTICE', 'Cron-Jobs k??nnen Sie bestimmte Befehle oder Skripte auf Ihrer Website zu automatisieren.<br /><br />uHotelBooking m??ssen regelm????ig ausgef??hrt cron.php einige wichtige Operationen durchf??hren. Die empfohlene Methode'),
(1077, 'en', '_CRONJOB_NOTICE', 'Cron jobs allow you to automate certain commands or scripts on your site.<br /><br />uHotelBooking needs to periodically run cron.php to close expired discount campaigns or perform another important operations. The recommended way to run cron.php is to set up a cronjob if you run a Unix/Linux server. If for any reason you can&#039;t run a cronjob on your server, you can choose the Non-batch option below to have cron.php run by uHotelBooking itself: in this case cron.php will be run each time someone access your home page. <br /><br />Example of Batch Cron job command: <b>php &#36;HOME/public_html/cron.php >/dev/null 2>&1</b>'),
(1078, 'es', '_CRONJOB_NOTICE', 'Puestos de trabajo de cron le permiten automatizar ciertos comandos o scripts en su sitio.<br /><br />uHotelBooking debe ejecutar peri??dicamente cron.php para cerrar expirado campa??as de descuento o realizar otra las operaciones de importantes eventos. La manera recomendada de ejecutar cron.php es la creaci??n de un cronjob si ejecuta un servidor Unix/Linux. Si por alguna raz??n usted no puede ejecutar una tarea programada en el servidor, usted puede elegir la opci??n para no tener lotes a continuaci??n ejecutar cron.php por uHotelBooking en s??: en este caso cron.php se ejecuta cada vez que alguien de su acceso p??gina de inicio. <br /><br />Ejemplo de comando de proceso por lotes Cron: <b>php &#36;HOME/public_html/cron.php >/dev/null 2>&1</b>'),
(1079, 'de', '_CRON_JOBS', 'Cron Jobs'),
(1080, 'en', '_CRON_JOBS', 'Cron Jobs'),
(1081, 'es', '_CRON_JOBS', 'Cron Jobs'),
(1082, 'de', '_CURRENCIES', 'W??hrungen'),
(1083, 'en', '_CURRENCIES', 'Currencies'),
(1084, 'es', '_CURRENCIES', 'Monedas'),
(1085, 'de', '_CURRENCIES_DEFAULT_ALERT', 'Denken Sie daran! Nachdem Sie die Standardw??hrung: <br> - Edit Wechselkurs jeder W??hrung manuell (relativ zum neuen Standard-W??hrung) <br> - Definieren Sie die Preise f??r alle Zimmer in der neuen W??hrung.'),
(1086, 'en', '_CURRENCIES_DEFAULT_ALERT', 'Remember! After you change the default currency:<br>- Edit exchange rate to each currency manually (relatively to the new default currency)<br>- Redefine prices for all rooms in the new currency.'),
(1087, 'es', '_CURRENCIES_DEFAULT_ALERT', '??Recuerde! Despu??s de cambiar la moneda por defecto: <br> - Editar tipo de cambio de cada moneda de forma manual (relativamente a la moneda por defecto nuevo) <br> - Redefinir los precios de todas las habitaciones en la nueva moneda.'),
(1088, 'de', '_CURRENCIES_MANAGEMENT', 'W??hrungen Management'),
(1089, 'en', '_CURRENCIES_MANAGEMENT', 'Currencies Management'),
(1090, 'es', '_CURRENCIES_MANAGEMENT', 'Monedas de Gesti??n'),
(1091, 'de', '_CURRENCY', 'W??hrung'),
(1092, 'en', '_CURRENCY', 'Currency'),
(1093, 'es', '_CURRENCY', 'Moneda'),
(1094, 'de', '_CURRENT_NEXT_YEARS', 'zum aktuellen/n??chsten Jahr'),
(1095, 'en', '_CURRENT_NEXT_YEARS', 'for current/next years'),
(1096, 'es', '_CURRENT_NEXT_YEARS', 'para los a??os corrientes/siguiente'),
(1097, 'de', '_CUSTOMER', 'Kunde'),
(1098, 'en', '_CUSTOMER', 'Customer'),
(1099, 'es', '_CUSTOMER', 'Cliente'),
(1100, 'de', '_CUSTOMERS', 'Kunden'),
(1101, 'en', '_CUSTOMERS', 'Customers'),
(1102, 'es', '_CUSTOMERS', 'Clientes'),
(1103, 'de', '_CUSTOMERS_AWAITING_MODERATION_ALERT', 'Es gibt _COUNT_ Kunde/n Erwartung Ihrer Zustimmung. Klicken Sie <a href=\'index.php?admin=mod_customers_management\'>hier</a> f??r die ??berpr??fung.'),
(1104, 'en', '_CUSTOMERS_AWAITING_MODERATION_ALERT', 'There are _COUNT_ customer/s awaiting your approval. Click <a href=\'index.php?admin=mod_customers_management\'>here</a> for review.'),
(1105, 'es', '_CUSTOMERS_AWAITING_MODERATION_ALERT', 'Hay _COUNT_ cliente/s en espera de su aprobaci??n. Haga clic <a href=\'index.php?admin=mod_customers_management\'>aqu??</a> para su revisi??n.'),
(1106, 'de', '_CUSTOMERS_MANAGEMENT', 'Kunden-Management'),
(1107, 'en', '_CUSTOMERS_MANAGEMENT', 'Customers Management'),
(1108, 'es', '_CUSTOMERS_MANAGEMENT', 'Gesti??n de Clientes'),
(1109, 'de', '_CUSTOMERS_SETTINGS', 'Kunden, die Einstellungen'),
(1110, 'en', '_CUSTOMERS_SETTINGS', 'Customers Settings'),
(1111, 'es', '_CUSTOMERS_SETTINGS', 'Configuraci??n de los clientes de'),
(1112, 'de', '_CUSTOMER_DETAILS', 'Angaben zum Kunden'),
(1113, 'en', '_CUSTOMER_DETAILS', 'Customer Details'),
(1114, 'es', '_CUSTOMER_DETAILS', 'Detalles del cliente'),
(1115, 'de', '_CUSTOMER_GROUP', 'Kundengruppe'),
(1116, 'en', '_CUSTOMER_GROUP', 'Customer Group'),
(1117, 'es', '_CUSTOMER_GROUP', 'Grupo de Clientes'),
(1118, 'de', '_CUSTOMER_GROUPS', 'Kundengruppen'),
(1119, 'en', '_CUSTOMER_GROUPS', 'Customer Groups'),
(1120, 'es', '_CUSTOMER_GROUPS', 'Grupos de clientes'),
(1121, 'de', '_CUSTOMER_LOGIN', 'Kunden-Login'),
(1122, 'en', '_CUSTOMER_LOGIN', 'Customer Login'),
(1123, 'es', '_CUSTOMER_LOGIN', 'Login Cliente'),
(1124, 'de', '_CUSTOMER_NAME', 'Name des Kunden'),
(1125, 'en', '_CUSTOMER_NAME', 'Customer Name'),
(1126, 'es', '_CUSTOMER_NAME', 'Nombre del cliente'),
(1127, 'de', '_CUSTOMER_PANEL', 'Kunden-Panel'),
(1128, 'en', '_CUSTOMER_PANEL', 'Customer Panel'),
(1129, 'es', '_CUSTOMER_PANEL', 'Panel del cliente'),
(1130, 'de', '_CUSTOMER_PAYMENT_MODULES', 'Kunde & Payment Module'),
(1131, 'en', '_CUSTOMER_PAYMENT_MODULES', 'Customer & Payment Modules'),
(1132, 'es', '_CUSTOMER_PAYMENT_MODULES', 'Clientes y Pago M??dulos'),
(1133, 'de', '_CUSTOMER_SUPPORT', 'Kundendienst'),
(1134, 'en', '_CUSTOMER_SUPPORT', 'Customer support'),
(1135, 'es', '_CUSTOMER_SUPPORT', 'Atenci??n al cliente'),
(1136, 'de', '_CVV_CODE', 'CVV Code'),
(1137, 'en', '_CVV_CODE', 'CVV Code'),
(1138, 'es', '_CVV_CODE', 'CVV C??digo'),
(1139, 'de', '_DASHBOARD', 'Armaturenbrett'),
(1140, 'en', '_DASHBOARD', 'Dashboard'),
(1141, 'es', '_DASHBOARD', 'Salpicadero'),
(1142, 'de', '_DATE', 'Datum'),
(1143, 'en', '_DATE', 'Date'),
(1144, 'es', '_DATE', 'Fecha'),
(1145, 'de', '_DATETIME_PRICE_FORMAT', 'Datetime & Preis-Einstellungen'),
(1146, 'en', '_DATETIME_PRICE_FORMAT', 'Datetime & Price Settings'),
(1147, 'es', '_DATETIME_PRICE_FORMAT', 'Fecha y hora y Configuraci??n de Precio'),
(1148, 'de', '_DATE_ADDED', 'Datum hinzugef??gt'),
(1149, 'en', '_DATE_ADDED', 'Date Added'),
(1150, 'es', '_DATE_ADDED', 'Fecha agregada'),
(1151, 'de', '_DATE_AND_TIME_SETTINGS', 'Datum & Zeit-Einstellungen'),
(1152, 'en', '_DATE_AND_TIME_SETTINGS', 'Date & Time Settings'),
(1153, 'es', '_DATE_AND_TIME_SETTINGS', 'De fecha y hora'),
(1154, 'de', '_DATE_CREATED', 'Erstellungsdatum'),
(1155, 'en', '_DATE_CREATED', 'Date Created'),
(1156, 'es', '_DATE_CREATED', 'Fecha de creaci??n'),
(1157, 'de', '_DATE_EMPTY_ALERT', 'Date fields cannot be empty! Please re-enter.'),
(1158, 'en', '_DATE_EMPTY_ALERT', 'Date fields cannot be empty! Please re-enter.'),
(1159, 'es', '_DATE_EMPTY_ALERT', 'Los campos de fecha no puede estar vac??o! Por favor, vuelva a entrar.'),
(1160, 'de', '_DATE_FORMAT', 'Datumsformat'),
(1161, 'en', '_DATE_FORMAT', 'Date Format'),
(1162, 'es', '_DATE_FORMAT', 'Formato de fecha'),
(1163, 'de', '_DATE_MODIFIED', '??nderungsdatum'),
(1164, 'en', '_DATE_MODIFIED', 'Date Modified'),
(1165, 'es', '_DATE_MODIFIED', 'Fecha de modificaci??n'),
(1166, 'de', '_DATE_PAYMENT', 'Datum der Zahlung'),
(1167, 'en', '_DATE_PAYMENT', 'Date of Payment'),
(1168, 'es', '_DATE_PAYMENT', 'Fecha de Pago'),
(1169, 'de', '_DATE_PUBLISHED', 'Ver??ffentlichungsdatum'),
(1170, 'en', '_DATE_PUBLISHED', 'Date Published'),
(1171, 'es', '_DATE_PUBLISHED', 'Fecha de publicaci??n'),
(1172, 'de', '_DATE_SUBSCRIBED', 'Datum Gezeichnetes'),
(1173, 'en', '_DATE_SUBSCRIBED', 'Date Subscribed'),
(1174, 'es', '_DATE_SUBSCRIBED', 'Fecha de suscripci??n'),
(1175, 'de', '_DAY', 'Tag'),
(1176, 'en', '_DAY', 'Day'),
(1177, 'es', '_DAY', 'D??a'),
(1178, 'de', '_DAYS', 'Tage'),
(1179, 'en', '_DAYS', 'Days'),
(1180, 'es', '_DAYS', 'D??as'),
(1181, 'de', '_DAYS_LC', 'tage'),
(1182, 'en', '_DAYS_LC', 'days'),
(1183, 'es', '_DAYS_LC', 'd??as'),
(1184, 'de', '_DAYS_TO_CANCEL', 'Tage zu stornieren Reservierung GRATIS'),
(1185, 'en', '_DAYS_TO_CANCEL', 'Days to cancel reservation for FREE'),
(1186, 'es', '_DAYS_TO_CANCEL', 'D??as para cancelar la reserva GRATIS'),
(1187, 'de', '_DAYS_TO_CANCEL_TOOLTIP', 'Gibt die Anzahl der Tage, bevor die Kunden eine kostenlose Reservierung stornieren'),
(1188, 'en', '_DAYS_TO_CANCEL_TOOLTIP', 'Specifies the number of days before customers may cancel a reservation for FREE'),
(1189, 'es', '_DAYS_TO_CANCEL_TOOLTIP', 'Especifica el n??mero de d??as antes de que los clientes pueden cancelar una reserva GRATIS'),
(1190, 'de', '_DECEMBER', 'Dezember'),
(1191, 'en', '_DECEMBER', 'December'),
(1192, 'es', '_DECEMBER', 'Diciembre'),
(1193, 'de', '_DECIMALS', 'Dezimalstellen'),
(1194, 'en', '_DECIMALS', 'Decimals'),
(1195, 'es', '_DECIMALS', 'Decimales'),
(1196, 'de', '_DEFAULT', 'Standardm????ig'),
(1197, 'en', '_DEFAULT', 'Default'),
(1198, 'es', '_DEFAULT', 'Predeterminado'),
(1199, 'de', '_DEFAULT_AVAILABILITY', 'Default Verf??gbarkeit'),
(1200, 'en', '_DEFAULT_AVAILABILITY', 'Default Availability'),
(1201, 'es', '_DEFAULT_AVAILABILITY', 'Default Availability'),
(1202, 'de', '_DEFAULT_CURRENCY_DELETE_ALERT', 'Sie k??nnen nicht l??schen Standardw??hrung!'),
(1203, 'en', '_DEFAULT_CURRENCY_DELETE_ALERT', 'You cannot delete default currency!'),
(1204, 'es', '_DEFAULT_CURRENCY_DELETE_ALERT', 'No se puede eliminar la moneda por defecto!'),
(1205, 'de', '_DEFAULT_DISTANCE', 'Standard Entfernung'),
(1206, 'en', '_DEFAULT_DISTANCE', 'Default Distance'),
(1207, 'es', '_DEFAULT_DISTANCE', 'De distancia por omisi??n'),
(1208, 'de', '_DEFAULT_EMAIL_ALERT', 'Sie haben zum urspr??nglichen E-Mail-Adresse f??r Site-Administrator ge??ndert werden. Klicken Sie <a href=\'index.php?admin=settings&tabid=1_4\'>hier</a>, um fortzufahren.'),
(1209, 'en', '_DEFAULT_EMAIL_ALERT', 'You have to change default email address for site administrator. Click <a href=\'index.php?admin=settings&tabid=1_4\'>here</a> to proceed.'),
(1210, 'es', '_DEFAULT_EMAIL_ALERT', 'Tienes que cambiar la direcci??n de correo electr??nico predeterminado para el administrador. Haga clic <a href=\'index.php?admin=settings&tabid=1_4\'>aqu??</a> para continuar.'),
(1211, 'de', '_DEFAULT_HOTEL_DELETE_ALERT', 'K??nnen nicht gel??scht werden standardm????ig hotel!'),
(1212, 'en', '_DEFAULT_HOTEL_DELETE_ALERT', 'You cannot delete default hotel!'),
(1213, 'es', '_DEFAULT_HOTEL_DELETE_ALERT', 'No se pueden eliminar del hotel defecto!'),
(1214, 'de', '_DEFAULT_OWN_EMAIL_ALERT', 'Sie m??ssen Ihre eigene E-Mail-Adresse ??ndern. Klicken Sie <a href=\'index.php?admin=my_account\'>hier</a>, um fortzufahren.'),
(1215, 'en', '_DEFAULT_OWN_EMAIL_ALERT', 'You have to change your own email address. Click <a href=\'index.php?admin=my_account\'>here</a> to proceed.'),
(1216, 'es', '_DEFAULT_OWN_EMAIL_ALERT', 'Usted tiene que cambiar su direcci??n de correo electr??nico propia. Haga clic <a href=\'index.php?admin=my_account\'>aqu??</a> para continuar.'),
(1217, 'de', '_DEFAULT_PERIODS_ALERT', 'Standard Perioden verwendet werden, um Zeit, die durch leicht mit Standard-Preise f??r jedes Zimmer auf der Zimmerpreise Seite (mit nur einem Klick) konnte erf??llt angeben.'),
(1218, 'en', '_DEFAULT_PERIODS_ALERT', 'Default Periods are used to specify periods of time that could by easily fulfilled with default prices for each room on the Room Prices page (with just a single click).'),
(1219, 'es', '_DEFAULT_PERIODS_ALERT', 'Per??odos predeterminados se utilizan para especificar los periodos de tiempo que podr??a f??cilmente cumplidas por los precios predeterminados para cada habitaci??n en la p??gina de precios de habitaciones (con un solo clic).'),
(1220, 'de', '_DEFAULT_PERIODS_WERE_ADDED', 'Standard Perioden wurden erfolgreich hinzugef??gt!'),
(1221, 'en', '_DEFAULT_PERIODS_WERE_ADDED', 'Default periods have been successfully added!'),
(1222, 'es', '_DEFAULT_PERIODS_WERE_ADDED', 'Per??odos predeterminados se han a??adido correctamente!'),
(1223, 'de', '_DEFAULT_PRICE', 'Standard Preis'),
(1224, 'en', '_DEFAULT_PRICE', 'Default Price'),
(1225, 'es', '_DEFAULT_PRICE', 'Precio por defecto'),
(1226, 'de', '_DEFAULT_TEMPLATE', 'Standardvorlage'),
(1227, 'en', '_DEFAULT_TEMPLATE', 'Default Template'),
(1228, 'es', '_DEFAULT_TEMPLATE', 'Plantilla predeterminada'),
(1229, 'de', '_DEFINE', 'Definieren'),
(1230, 'en', '_DEFINE', 'Define'),
(1231, 'es', '_DEFINE', 'Definir'),
(1232, 'de', '_DELETE_WARNING', 'Sie sind sicher, dass Sie diesen Datensatz wirklich l??schen?'),
(1233, 'en', '_DELETE_WARNING', 'Are you sure you want to delete this record?'),
(1234, 'es', '_DELETE_WARNING', '??Est??s seguro de que desea eliminar este registro?'),
(1235, 'de', '_DELETE_WARNING_COMMON', 'Sie sind sicher'),
(1236, 'en', '_DELETE_WARNING_COMMON', 'Are you sure you want to delete this record?'),
(1237, 'es', '_DELETE_WARNING_COMMON', '??Est??s seguro de que desea eliminar este registro?'),
(1238, 'de', '_DELETE_WORD', 'L??schen'),
(1239, 'en', '_DELETE_WORD', 'Delete'),
(1240, 'es', '_DELETE_WORD', 'Borrar'),
(1241, 'de', '_DELETING_ACCOUNT_ERROR', 'Ein Fehler beim L??schen Sie ver??ndern! Bitte versuchen Sie es sp??ter noch einmal oder schicken Sie zu diesem Thema zur Verwaltung der Website.'),
(1242, 'en', '_DELETING_ACCOUNT_ERROR', 'An error occurred while deleting your account! Please try again later or send email about this issue to administration of the site.'),
(1243, 'es', '_DELETING_ACCOUNT_ERROR', 'Se produjo un error al eliminar su cuenta! Por favor, int??ntelo de nuevo m??s tarde o env??e un correo electr??nico acerca de este problema a la administraci??n del sitio.'),
(1244, 'de', '_DELETING_OPERATION_COMPLETED', 'L??schen ist erfolgreich abgeschlossen!'),
(1245, 'en', '_DELETING_OPERATION_COMPLETED', 'Deleting operation has been successfully completed!'),
(1246, 'es', '_DELETING_OPERATION_COMPLETED', 'Eliminaci??n de la operaci??n se complet?? con ??xito!'),
(1247, 'de', '_DESCENDING', 'Absteigend'),
(1248, 'en', '_DESCENDING', 'Descending'),
(1249, 'es', '_DESCENDING', 'descendente'),
(1250, 'de', '_DESCRIPTION', 'Beschreibung'),
(1251, 'en', '_DESCRIPTION', 'Description'),
(1252, 'es', '_DESCRIPTION', 'Descripci??n'),
(1253, 'de', '_DETAILS', 'Details'),
(1254, 'en', '_DETAILS', 'Details'),
(1255, 'es', '_DETAILS', 'Detalles'),
(1256, 'de', '_DIESEL', 'Diesel'),
(1257, 'en', '_DIESEL', 'Diesel'),
(1258, 'es', '_DIESEL', 'Diesel'),
(1259, 'de', '_DISABLED', 'behindert'),
(1260, 'en', '_DISABLED', 'disabled'),
(1261, 'es', '_DISABLED', 'discapacitado'),
(1262, 'de', '_DISCOUNT', 'Rabatt'),
(1263, 'en', '_DISCOUNT', 'Discount'),
(1264, 'es', '_DISCOUNT', 'Descuento'),
(1265, 'de', '_DISCOUNTS', 'Rabatte'),
(1266, 'en', '_DISCOUNTS', 'Discounts'),
(1267, 'es', '_DISCOUNTS', 'Descuentos'),
(1268, 'de', '_DISCOUNT_BY_ADMIN', 'Rabatt von Administrator'),
(1269, 'en', '_DISCOUNT_BY_ADMIN', 'Discount By Administrator'),
(1270, 'es', '_DISCOUNT_BY_ADMIN', 'Descuento por Administrator'),
(1271, 'de', '_DISCOUNT_CAMPAIGN', 'Discount-Kampagne'),
(1272, 'en', '_DISCOUNT_CAMPAIGN', 'Discount Campaign'),
(1273, 'es', '_DISCOUNT_CAMPAIGN', 'Descuento Campa??a'),
(1274, 'de', '_DISCOUNT_CAMPAIGNS', 'Rabattaktionen'),
(1275, 'en', '_DISCOUNT_CAMPAIGNS', 'Discount Campaigns'),
(1276, 'es', '_DISCOUNT_CAMPAIGNS', 'Descuento Campa??as'),
(1277, 'de', '_DISCOUNT_CAMPAIGN_TEXT', '<span class=campaign_header>Super Rabattaktion!</span> <br /><br />Genie??en Sie besondere Preissenkungen jetzt <br />_FROM_ _TO_: <br /> <b>_PERCENT_</b> Auf jedem Zimmer Reservierung in unserem Hotel!'),
(1278, 'en', '_DISCOUNT_CAMPAIGN_TEXT', '<span class=campaign_header>Super discount campaign!</span><br /><br />\r\nEnjoy special price cuts right now<br />_FROM_ _TO_:<br /> \r\n<b>_PERCENT_</b> on every room reservation in our Hotel!'),
(1279, 'es', '_DISCOUNT_CAMPAIGN_TEXT', '<span class=campaign_header>Super campa??a de descuento!</span><br /><br />\r\nDisfrute de los recortes de precios especiales en este momento <br />_FROM_ _TO_:<br /><b>_PERCENT_</b> en cada reserva de habitaci??n en nuestro hotel!'),
(1280, 'de', '_DISCOUNT_FOR_3RD_NIGHT', 'Rabatt f??r 3. Nacht'),
(1281, 'en', '_DISCOUNT_FOR_3RD_NIGHT', 'Discount for 3rd night'),
(1282, 'es', '_DISCOUNT_FOR_3RD_NIGHT', 'Descuento 3?? noche'),
(1283, 'de', '_DISCOUNT_FOR_4TH_NIGHT', 'Rabatt f??r 4. Nacht'),
(1284, 'en', '_DISCOUNT_FOR_4TH_NIGHT', 'Discount for 4th night'),
(1285, 'es', '_DISCOUNT_FOR_4TH_NIGHT', 'Descuento 4?? noche'),
(1286, 'de', '_DISCOUNT_FOR_5TH_OR_MORE_NIGHTS', 'Rabatt f??r 5. + N??chte'),
(1287, 'en', '_DISCOUNT_FOR_5TH_OR_MORE_NIGHTS', 'Discount for 5th+ nights'),
(1288, 'es', '_DISCOUNT_FOR_5TH_OR_MORE_NIGHTS', 'De descuento para el 5 + noches'),
(1289, 'de', '_DISCOUNT_FOR_FIVE_OR_MORE_GUESTS', 'Rabatt f??r 5. + G??ste'),
(1290, 'en', '_DISCOUNT_FOR_FIVE_OR_MORE_GUESTS', 'Discount for 5th+ guests'),
(1291, 'es', '_DISCOUNT_FOR_FIVE_OR_MORE_GUESTS', 'De descuento para 5 + o m??s hu??spedes'),
(1292, 'de', '_DISCOUNT_FOR_FOUR_GUESTS', 'Rabatt f??r 4. Personen'),
(1293, 'en', '_DISCOUNT_FOR_FOUR_GUESTS', 'Discount for 4th guests'),
(1294, 'es', '_DISCOUNT_FOR_FOUR_GUESTS', 'Descuento 4?? personas'),
(1295, 'de', '_DISCOUNT_FOR_THREE_GUESTS', 'Rabatt f??r 3. G??ste'),
(1296, 'en', '_DISCOUNT_FOR_THREE_GUESTS', 'Discount for 3rd guests'),
(1297, 'es', '_DISCOUNT_FOR_THREE_GUESTS', 'Descuento 3?? personas'),
(1298, 'de', '_DISCOUNT_STD_CAMPAIGN_TEXT', '<span class=campaign_header>Super-Rabatt-Aktion!</span><br><br>Genie??en Sie besondere Preissenkungen in _HOTEL_ in den angegebenen Zeitr??umen unten!'),
(1299, 'en', '_DISCOUNT_STD_CAMPAIGN_TEXT', '<span class=campaign_header>Super discount campaign!</span><br><br>Enjoy special price cuts in _HOTEL_ for the specified periods of time below!'),
(1300, 'es', '_DISCOUNT_STD_CAMPAIGN_TEXT', '<span class=campaign_header>La campa??a de descuento Super!</span><br><br>Disfrute de recortes de precios especiales en _HOTEL_ en los per??odos de tiempo especificados a continuaci??n!'),
(1301, 'de', '_DISCOUNT_TYPE', 'Rabatt-Art'),
(1302, 'en', '_DISCOUNT_TYPE', 'Discount Type'),
(1303, 'es', '_DISCOUNT_TYPE', 'Tipo de descuento'),
(1304, 'de', '_DISPLAY_ON', 'Anzeige'),
(1305, 'en', '_DISPLAY_ON', 'Display on'),
(1306, 'es', '_DISPLAY_ON', 'Pantalla en la'),
(1307, 'de', '_DISTANCE_EXTRA_PRICE', 'Die Entfernung Extra-Preis'),
(1308, 'en', '_DISTANCE_EXTRA_PRICE', 'Distance Extra Price'),
(1309, 'es', '_DISTANCE_EXTRA_PRICE', 'Distancia Precio extra'),
(1310, 'de', '_DISTANCE_OF_HOTEL_FROM_CENTER_POINT', 'Die Entfernung des Hotels vom {name_center_point} ist {distance_center_point}'),
(1311, 'en', '_DISTANCE_OF_HOTEL_FROM_CENTER_POINT', 'Distance of the hotel form the {name_center_point} is {distance_center_point}'),
(1312, 'es', '_DISTANCE_OF_HOTEL_FROM_CENTER_POINT', 'Distancia del hotel de la {name_center_point} es {distance_center_point}'),
(1313, 'de', '_DISTANCE_TO_CENTER_POINT', 'Abstand zum Mittelpunkt'),
(1314, 'en', '_DISTANCE_TO_CENTER_POINT', 'Distance to Center Point'),
(1315, 'es', '_DISTANCE_TO_CENTER_POINT', 'Distancia de Center Point'),
(1316, 'de', '_DISTANCE_UNITS', 'Km'),
(1317, 'en', '_DISTANCE_UNITS', 'km'),
(1318, 'es', '_DISTANCE_UNITS', 'Km'),
(1319, 'de', '_DOORS', 'T??ren'),
(1320, 'en', '_DOORS', 'Doors'),
(1321, 'es', '_DOORS', 'Puertas'),
(1322, 'de', '_DOWN', 'Nach unten'),
(1323, 'en', '_DOWN', 'Down'),
(1324, 'es', '_DOWN', 'Abajo'),
(1325, 'de', '_DOWNLOAD', 'Herunterladen'),
(1326, 'en', '_DOWNLOAD', 'Download'),
(1327, 'es', '_DOWNLOAD', 'Descargar'),
(1328, 'de', '_DOWNLOAD_INVOICE', 'Download Rechnung'),
(1329, 'en', '_DOWNLOAD_INVOICE', 'Download Invoice'),
(1330, 'es', '_DOWNLOAD_INVOICE', 'Descarga de facturas'),
(1331, 'de', '_DROPPING_OFF', 'Absetzen'),
(1332, 'en', '_DROPPING_OFF', 'Dropping off'),
(1333, 'es', '_DROPPING_OFF', 'Dejar a'),
(1334, 'de', '_DROP_OFF_DATE', 'R??ckgabedatum '),
(1335, 'en', '_DROP_OFF_DATE', 'Drop off date'),
(1336, 'es', '_DROP_OFF_DATE', 'Fecha de dejada'),
(1337, 'de', '_EARLY_BOOKING', 'Fr??hbucher'),
(1338, 'en', '_EARLY_BOOKING', 'Early Booking'),
(1339, 'es', '_EARLY_BOOKING', 'Reserva Anticipada'),
(1340, 'de', '_ECHECK', 'E-Check'),
(1341, 'en', '_ECHECK', 'E-Check'),
(1342, 'es', '_ECHECK', 'E-Check'),
(1343, 'de', '_EDIT_MENUS', 'Bearbeiten-Men??s'),
(1344, 'en', '_EDIT_MENUS', 'Edit Menus'),
(1345, 'es', '_EDIT_MENUS', 'Editar los men??s'),
(1346, 'de', '_EDIT_MY_ACCOUNT', 'Mein Konto bearbeiten'),
(1347, 'en', '_EDIT_MY_ACCOUNT', 'Edit My Account'),
(1348, 'es', '_EDIT_MY_ACCOUNT', 'Editar mi cuenta'),
(1349, 'de', '_EDIT_PAGE', 'Seite bearbeiten'),
(1350, 'en', '_EDIT_PAGE', 'Edit Page'),
(1351, 'es', '_EDIT_PAGE', 'Editar p??gina'),
(1352, 'de', '_EDIT_WORD', 'Bearbeiten'),
(1353, 'en', '_EDIT_WORD', 'Edit'),
(1354, 'es', '_EDIT_WORD', 'Editar'),
(1355, 'de', '_ELECTRIC', 'elektrisch'),
(1356, 'en', '_ELECTRIC', 'Electric'),
(1357, 'es', '_ELECTRIC', 'El??ctrico'),
(1358, 'de', '_EMAIL', 'E-Mail'),
(1359, 'en', '_EMAIL', 'Email'),
(1360, 'es', '_EMAIL', 'E-mail'),
(1361, 'de', '_EMAILS_SENT_ERROR', 'Fehler beim Versenden von Emails oder es sind keine E-Mails gesendet werden! Bitte versuchen Sie es sp??ter erneut.'),
(1362, 'en', '_EMAILS_SENT_ERROR', 'An error occurred while sending emails or there are no emails to be sent! Please try again later.'),
(1363, 'es', '_EMAILS_SENT_ERROR', 'Se produjo un error al enviar correos electr??nicos o no hay mensajes de correo electr??nico para ser enviados! Por favor, int??ntelo de nuevo m??s tarde.'),
(1364, 'de', '_EMAILS_SUCCESSFULLY_SENT', 'Status: _SENT_ E-Mails von _TOTAL_ waren erfolgreich verschickt!'),
(1365, 'en', '_EMAILS_SUCCESSFULLY_SENT', 'Status: _SENT_ emails from _TOTAL_ were successfully sent!'),
(1366, 'es', '_EMAILS_SUCCESSFULLY_SENT', 'Estado: mensajes de correo electr??nico _SENT_ de _TOTAL_ fueron enviados con ??xito!'),
(1367, 'de', '_EMAIL_ADDRESS', 'E-Mail-Adresse'),
(1368, 'en', '_EMAIL_ADDRESS', 'E-mail address'),
(1369, 'es', '_EMAIL_ADDRESS', 'E-mail address'),
(1370, 'de', '_EMAIL_BLOCKED', 'Ihre E-Mail wurde gesperrt! um dieses Problem zu beheben'),
(1371, 'en', '_EMAIL_BLOCKED', 'Your email is blocked! To resolve this problem, please contact the site administrator.'),
(1372, 'es', '_EMAIL_BLOCKED', 'Tu email fue bloqueado! Para resolver este problema, p??ngase en contacto con el administrador del sitio.'),
(1373, 'de', '_EMAIL_EMPTY_ALERT', 'E-Mail darf nicht leer sein! Bitte neu eingeben.'),
(1374, 'en', '_EMAIL_EMPTY_ALERT', 'Email cannot be empty! Please re-enter.'),
(1375, 'es', '_EMAIL_EMPTY_ALERT', 'El correo electr??nico no puede estar vac??a! Por favor, vuelva a entrar.'),
(1376, 'de', '_EMAIL_FROM', 'E-Mail Adresse (Von)'),
(1377, 'en', '_EMAIL_FROM', 'Email Address (From)'),
(1378, 'es', '_EMAIL_FROM', 'Direcci??n de correo electr??nico (De)'),
(1379, 'de', '_EMAIL_IS_EMPTY', 'E-Mail darf nicht leer sein! Bitte erneut eingeben.'),
(1380, 'en', '_EMAIL_IS_EMPTY', 'Email must not be empty! Please re-enter.'),
(1381, 'es', '_EMAIL_IS_EMPTY', 'El correo electr??nico no debe estar vac??a! Por favor, vuelva a entrar.'),
(1382, 'de', '_EMAIL_IS_WRONG', 'Bitte geben Sie eine g??ltige Email-Adresse.'),
(1383, 'en', '_EMAIL_IS_WRONG', 'Please enter a valid email address.'),
(1384, 'es', '_EMAIL_IS_WRONG', 'Por favor, introduzca una direcci??n de correo electr??nico v??lida.'),
(1385, 'de', '_EMAIL_NOTIFICATIONS', 'Senden Sie E-Mail Benachrichtigungen'),
(1386, 'en', '_EMAIL_NOTIFICATIONS', 'Send email notifications'),
(1387, 'es', '_EMAIL_NOTIFICATIONS', 'Enviar notificaciones por correo electr??nico'),
(1388, 'de', '_EMAIL_NOT_EXISTS', 'Diese E-Mail-Konto nicht im System vorhanden! Bitte neu eingeben.'),
(1389, 'en', '_EMAIL_NOT_EXISTS', 'This e-mail account does not exist in the system! Please re-enter.'),
(1390, 'es', '_EMAIL_NOT_EXISTS', 'Esta cuenta de correo electr??nico no existe en el sistema! Por favor, vuelva a entrar.'),
(1391, 'de', '_EMAIL_SEND_ERROR', 'Fehler beim Versenden per E-Mail. Bitte ??berpr??fen Sie Ihre E-Mail-Einstellungen und die Empf??nger der Nachricht, dann versuchen Sie es erneut.'),
(1392, 'en', '_EMAIL_SEND_ERROR', 'An error occurred while sending email. Please check your email settings and message recipients, then try again.'),
(1393, 'es', '_EMAIL_SEND_ERROR', 'Se produjo un error al enviar correo electr??nico. Verifica la configuraci??n de correo electr??nico y los destinatarios del mensaje y vuelva a intentarlo.'),
(1394, 'de', '_EMAIL_SETTINGS', 'E-Mail-Einstellungen'),
(1395, 'en', '_EMAIL_SETTINGS', 'Email Settings'),
(1396, 'es', '_EMAIL_SETTINGS', 'Configuraci??n del correo electr??nico');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(1397, 'de', '_EMAIL_SUCCESSFULLY_SENT', 'E-Mail wurde erfolgreich gesendet!'),
(1398, 'en', '_EMAIL_SUCCESSFULLY_SENT', 'Email has been successfully sent!'),
(1399, 'es', '_EMAIL_SUCCESSFULLY_SENT', 'El correo electr??nico fue enviado con ??xito!'),
(1400, 'de', '_EMAIL_TEMPLATES', 'E-Mail-Vorlagen'),
(1401, 'en', '_EMAIL_TEMPLATES', 'Email Templates'),
(1402, 'es', '_EMAIL_TEMPLATES', 'Plantillas de correo'),
(1403, 'de', '_EMAIL_TEMPLATES_EDITOR', 'E-Mail-Editor'),
(1404, 'en', '_EMAIL_TEMPLATES_EDITOR', 'Email Templates Editor'),
(1405, 'es', '_EMAIL_TEMPLATES_EDITOR', 'Plantillas de correo electr??nico del editor'),
(1406, 'de', '_EMAIL_TO', 'E-Mail Adresse (To)'),
(1407, 'en', '_EMAIL_TO', 'Email Address (To)'),
(1408, 'es', '_EMAIL_TO', 'Correo electr??nico (Para)'),
(1409, 'de', '_EMAIL_VALID_ALERT', 'Bitte geben Sie eine g??ltige E-Mail Adresse!'),
(1410, 'en', '_EMAIL_VALID_ALERT', 'Please enter a valid email address!'),
(1411, 'es', '_EMAIL_VALID_ALERT', 'Por favor, introduzca una direcci??n v??lida de correo electr??nico!'),
(1412, 'de', '_EMPTY', 'Leere'),
(1413, 'en', '_EMPTY', 'Empty'),
(1414, 'es', '_EMPTY', 'Vaciar'),
(1415, 'de', '_ENTER_BOOKING_NUMBER', 'Geben Sie Ihre Buchungsnummer'),
(1416, 'en', '_ENTER_BOOKING_NUMBER', 'Enter your booking number'),
(1417, 'es', '_ENTER_BOOKING_NUMBER', 'Ingrese su n??mero de reserva'),
(1418, 'de', '_ENTER_CONFIRMATION_CODE', 'Geben Sie Best??tigungs-Code'),
(1419, 'en', '_ENTER_CONFIRMATION_CODE', 'Enter Confirmation Code'),
(1420, 'es', '_ENTER_CONFIRMATION_CODE', 'Ingrese el c??digo de confirmaci??n'),
(1421, 'de', '_ENTER_EMAIL_ADDRESS', '(Bitte geben Sie <i>nur echte</i> E-Mail-Adresse)'),
(1422, 'en', '_ENTER_EMAIL_ADDRESS', '(Please enter ONLY real email address)'),
(1423, 'es', '_ENTER_EMAIL_ADDRESS', '(Por favor, introduzca s??lo real direcci??n de correo electr??nico)'),
(1424, 'de', '_ENTIRE_SITE', 'Die ganze Site'),
(1425, 'en', '_ENTIRE_SITE', 'Entire Site'),
(1426, 'es', '_ENTIRE_SITE', 'Todo el sitio web'),
(1427, 'de', '_ETHANOL_FFV', 'Ethanol FFV'),
(1428, 'en', '_ETHANOL_FFV', 'Ethanol FFV'),
(1429, 'es', '_ETHANOL_FFV', 'El etanol FFV'),
(1430, 'de', '_EVALUATION', 'Auswertung'),
(1431, 'en', '_EVALUATION', 'Evaluation'),
(1432, 'es', '_EVALUATION', 'Evaluaci??n'),
(1433, 'de', '_EVENTS', 'Veranstaltungen'),
(1434, 'en', '_EVENTS', 'Events'),
(1435, 'es', '_EVENTS', 'Eventos'),
(1436, 'de', '_EVENTS_NEW_USER_REGISTERED', 'Events - neuen Benutzer registriert wurde'),
(1437, 'en', '_EVENTS_NEW_USER_REGISTERED', 'Events - new user has been registered'),
(1438, 'es', '_EVENTS_NEW_USER_REGISTERED', 'Eventos - nuevo usuario se ha registrado'),
(1439, 'de', '_EVENT_REGISTRATION_COMPLETED', 'Vielen Dank f??r Ihr Interesse! Sie haben gerade erfolgreich auf dieses Ereignis registriert.'),
(1440, 'en', '_EVENT_REGISTRATION_COMPLETED', 'Thank you for your interest! You have just successfully registered to this event.'),
(1441, 'es', '_EVENT_REGISTRATION_COMPLETED', 'Gracias por tu inter??s! Usted acaba de ??xito registrado para este evento.'),
(1442, 'de', '_EVENT_USER_ALREADY_REGISTERED', 'Mitglied mit solchen E-Mail wurde bereits auf dieses Ereignis registriert! Bitte erneut eingeben.'),
(1443, 'en', '_EVENT_USER_ALREADY_REGISTERED', 'Member with such email is already registered to this event! Please re-enter.'),
(1444, 'es', '_EVENT_USER_ALREADY_REGISTERED', 'Miembro con el correo electr??nico como ya estaba registrado a este evento! Por favor, vuelva a introducir.'),
(1445, 'de', '_EXPAND_PANEL', 'Erweitern Navigationsleiste'),
(1446, 'en', '_EXPAND_PANEL', 'Expand navigation panel'),
(1447, 'es', '_EXPAND_PANEL', 'Ampliar el panel de navegaci??n'),
(1448, 'de', '_EXPIRED', 'Abgelaufen'),
(1449, 'en', '_EXPIRED', 'Expired'),
(1450, 'es', '_EXPIRED', 'Caducado'),
(1451, 'de', '_EXPORT', 'Export'),
(1452, 'en', '_EXPORT', 'Export'),
(1453, 'es', '_EXPORT', 'Exportaci??n'),
(1454, 'de', '_EXTRAS', 'Extras'),
(1455, 'en', '_EXTRAS', 'Extras'),
(1456, 'es', '_EXTRAS', 'Extras'),
(1457, 'de', '_EXTRAS_MANAGEMENT', 'Extras Management'),
(1458, 'en', '_EXTRAS_MANAGEMENT', 'Extras Management'),
(1459, 'es', '_EXTRAS_MANAGEMENT', 'Extras de Gesti??n'),
(1460, 'de', '_EXTRAS_SUBTOTAL', 'Extras Teilsumme'),
(1461, 'en', '_EXTRAS_SUBTOTAL', 'Extras Subtotal'),
(1462, 'es', '_EXTRAS_SUBTOTAL', 'Extras Subtotal'),
(1463, 'de', '_EXTRA_BED', 'Zustellbett'),
(1464, 'en', '_EXTRA_BED', 'Extra Bed'),
(1465, 'es', '_EXTRA_BED', 'Cama adicional'),
(1466, 'de', '_EXTRA_BEDS', 'Zustellbetten'),
(1467, 'en', '_EXTRA_BEDS', 'Extra Beds'),
(1468, 'es', '_EXTRA_BEDS', 'Las camas supletorias'),
(1469, 'de', '_EXTRA_BED_CHARGE', 'Extrabettgeb??hr'),
(1470, 'en', '_EXTRA_BED_CHARGE', 'Extra Bed Charge'),
(1471, 'es', '_EXTRA_BED_CHARGE', 'Cama supletoria'),
(1472, 'de', '_EX_HOTEL_OR_LOCATION', 'z.B. Hotel, Sehensw??rdigkeit oder Lage'),
(1473, 'en', '_EX_HOTEL_OR_LOCATION', 'e.g. hotel, landmark or location'),
(1474, 'es', '_EX_HOTEL_OR_LOCATION', 'por ejemplo hotel, sitio destacado o localizaci??n'),
(1475, 'de', '_EX_OTELS_VILLAS_OR_APARTMENTS', 'Bsp .: Hotels, Villen oder Wohnungen'),
(1476, 'en', '_EX_OTELS_VILLAS_OR_APARTMENTS', 'Ex.: hotels, villas or apartments'),
(1477, 'es', '_EX_OTELS_VILLAS_OR_APARTMENTS', 'Ej .: hoteles, villas o apartamentos'),
(1478, 'de', '_EX_TRAVEL_AGENCY', 'z.B. Reiseb??ro oder Ort'),
(1479, 'en', '_EX_TRAVEL_AGENCY', 'e.g. travel agency full name, email or username'),
(1480, 'es', '_EX_TRAVEL_AGENCY', 'p.ej. agencia de viajes o localizaci??n'),
(1481, 'de', '_FACILITIES', 'Anlagen'),
(1482, 'en', '_FACILITIES', 'Facilities'),
(1483, 'es', '_FACILITIES', 'Instalaciones'),
(1484, 'de', '_FACILITIES_HOTEL', 'Hoteleinrichtungen'),
(1485, 'en', '_FACILITIES_HOTEL', 'Hotel Facilities'),
(1486, 'es', '_FACILITIES_HOTEL', 'Comodidades de hotel'),
(1487, 'de', '_FACILITIES_MANAGEMENT', 'Anlagen-Management'),
(1488, 'en', '_FACILITIES_MANAGEMENT', 'Facilities Management'),
(1489, 'es', '_FACILITIES_MANAGEMENT', 'Gesti??n de Instalaciones'),
(1490, 'de', '_FAMILY_OLD_CHILDREN', 'Familie mit ??lteren Kindern'),
(1491, 'en', '_FAMILY_OLD_CHILDREN', 'Family with older children'),
(1492, 'es', '_FAMILY_OLD_CHILDREN', 'Familia con ni??os mayores'),
(1493, 'de', '_FAMILY_YOUNG_CHILDREN', 'Familie mit kleinen Kindern'),
(1494, 'en', '_FAMILY_YOUNG_CHILDREN', 'Family with young children'),
(1495, 'es', '_FAMILY_YOUNG_CHILDREN', 'Familia con ni??os peque??os'),
(1496, 'de', '_FAQ', 'H??ufig gestellte Fragen'),
(1497, 'en', '_FAQ', 'FAQ'),
(1498, 'es', '_FAQ', 'Preguntas frecuentes'),
(1499, 'de', '_FAQ_MANAGEMENT', 'FAQ-Management'),
(1500, 'en', '_FAQ_MANAGEMENT', 'FAQ Management'),
(1501, 'es', '_FAQ_MANAGEMENT', 'Preguntas de Gesti??n'),
(1502, 'de', '_FAQ_SETTINGS', 'FAQ Einstellungen'),
(1503, 'en', '_FAQ_SETTINGS', 'FAQ Settings'),
(1504, 'es', '_FAQ_SETTINGS', 'Configuraci??n del FAQ'),
(1505, 'de', '_FAX', 'Fax'),
(1506, 'en', '_FAX', 'Fax'),
(1507, 'es', '_FAX', 'Fax'),
(1508, 'de', '_FEATURED_OFFERS', 'Besondere Angebote'),
(1509, 'en', '_FEATURED_OFFERS', 'Featured Offers'),
(1510, 'es', '_FEATURED_OFFERS', 'Ofertas destacadas'),
(1511, 'de', '_FEATURED_OFFERS_TEXT', 'Beginnen Sie Ihre Suche mit einem Blick auf die besten Preise auf unserer Website.'),
(1512, 'en', '_FEATURED_OFFERS_TEXT', 'Start your search with a look at the best rates on our site.'),
(1513, 'es', '_FEATURED_OFFERS_TEXT', 'Comience su b??squeda con una mirada a las mejores tarifas en nuestro sitio.'),
(1514, 'de', '_FEATURED_OFFERS_WITH_BR', 'Besondere<br>Angebote'),
(1515, 'en', '_FEATURED_OFFERS_WITH_BR', 'Featured<br>Offers'),
(1516, 'es', '_FEATURED_OFFERS_WITH_BR', 'Ofertas<br>destacadas'),
(1517, 'de', '_FEBRUARY', 'Februar'),
(1518, 'en', '_FEBRUARY', 'February'),
(1519, 'es', '_FEBRUARY', 'Febrero'),
(1520, 'de', '_FIELD_CANNOT_BE_EMPTY', 'Feld _FIELD_ darf nicht leer sein! Bitte neu eingeben.'),
(1521, 'en', '_FIELD_CANNOT_BE_EMPTY', 'Field _FIELD_ cannot be empty! Please re-enter.'),
(1522, 'es', '_FIELD_CANNOT_BE_EMPTY', 'Campo _FIELD_ no puede estar vac??a! Por favor, vuelva a entrar.'),
(1523, 'de', '_FIELD_CANNOT_BE_EMPTY_DESTINATION', 'Bitte geben Sie eine Zielsuche zu starten.'),
(1524, 'en', '_FIELD_CANNOT_BE_EMPTY_DESTINATION', 'Enter a destination to start searching.'),
(1525, 'es', '_FIELD_CANNOT_BE_EMPTY_DESTINATION', 'Por favor, introduzca un destino para iniciar la b??squeda.'),
(1526, 'de', '_FIELD_LENGTH_ALERT', 'Die l??nge des feldes _FIELD_ muss kleiner sein als _LENGTH_ zeichen! Bitte erneut eingeben.'),
(1527, 'en', '_FIELD_LENGTH_ALERT', 'The length of the field _FIELD_ must be less than _LENGTH_ characters! Please re-enter.'),
(1528, 'es', '_FIELD_LENGTH_ALERT', 'La longitud de la _FIELD_ campo debe ser inferior a _LENGTH_ personajes! Por favor, vuelva a entrar.'),
(1529, 'de', '_FIELD_LENGTH_EXCEEDED', '_SIZE_ Zeichen: _LENGTH_ hat die maximal zul??ssige Gr????e ??berschritten! Bitte erneut eingeben.'),
(1530, 'en', '_FIELD_LENGTH_EXCEEDED', '_FIELD_ has exceeded the maximum allowed size: _LENGTH_ characters! Please re-enter. '),
(1531, 'es', '_FIELD_LENGTH_EXCEEDED', '_FIELD_ ha superado el tama??o m??ximo permitido: _LENGTH_ personajes! Por favor, vuelva a entrar.'),
(1532, 'de', '_FIELD_MIN_LENGTH_ALERT', 'Die L??nge des Feldes _FIELD_ kann nicht kleiner sein als _LENGTH_ Zeichen! Bitte erneut eingeben.'),
(1533, 'en', '_FIELD_MIN_LENGTH_ALERT', 'The length of the field _FIELD_ cannot  be less than _LENGTH_ characters! Please re-enter.'),
(1534, 'es', '_FIELD_MIN_LENGTH_ALERT', 'La longitud de la _FIELD_ campo no puede ser inferior a _LENGTH_ personajes! Por favor, vuelva a entrar.'),
(1535, 'de', '_FIELD_MUST_BE_ALPHA', '_FIELD_ muss alphabetische wert sein! Bitte erneut eingeben.'),
(1536, 'en', '_FIELD_MUST_BE_ALPHA', '_FIELD_ must be an alphabetic value! Please re-enter.'),
(1537, 'es', '_FIELD_MUST_BE_ALPHA', 'Valor _FIELD_ debe ser alfab??tico! Por favor, vuelva a entrar.'),
(1538, 'de', '_FIELD_MUST_BE_ALPHA_NUMERIC', '_FIELD_ muss alphanumerischen wert sein! Bitte erneut eingeben.'),
(1539, 'en', '_FIELD_MUST_BE_ALPHA_NUMERIC', '_FIELD_ must be an alphanumeric value! Please re-enter.'),
(1540, 'es', '_FIELD_MUST_BE_ALPHA_NUMERIC', 'Valor _FIELD_ debe ser alfanum??rico! Por favor, vuelva a entrar.'),
(1541, 'de', '_FIELD_MUST_BE_BOOLEAN', 'Field _FIELD_ Wert muss Ja oder Nein! Bitte erneut eingeben.'),
(1542, 'en', '_FIELD_MUST_BE_BOOLEAN', 'Field _FIELD_ value must be \'yes\' or \'no\'! Please re-enter.'),
(1543, 'es', '_FIELD_MUST_BE_BOOLEAN', 'Campo de valor _FIELD_ debe ser \'yes\' o \'no\'! Por favor, vuelva a entrar.'),
(1544, 'de', '_FIELD_MUST_BE_EMAIL', '_FIELD_ m??ssen g??ltige E-Mail-Format sein! Bitte erneut eingeben.'),
(1545, 'en', '_FIELD_MUST_BE_EMAIL', '_FIELD_ must be in valid email format! Please re-enter.'),
(1546, 'es', '_FIELD_MUST_BE_EMAIL', '_FIELD_ debe estar en formato de correo electr??nico v??lida! Por favor, vuelva a entrar.'),
(1547, 'de', '_FIELD_MUST_BE_FLOAT', 'Field _FIELD_ muss floatzahl wert! Bitte erneut eingeben.'),
(1548, 'en', '_FIELD_MUST_BE_FLOAT', 'Field _FIELD_ must be a float number value! Please re-enter.'),
(1549, 'es', '_FIELD_MUST_BE_FLOAT', 'Campo _FIELD_ debe ser el valor flotante n??mero! Por favor, vuelva a entrar.'),
(1550, 'de', '_FIELD_MUST_BE_FLOAT_POSITIVE', 'Field _FIELD_ m??ssen positive flie??kommazahl wert sein! Bitte erneut eingeben.'),
(1551, 'en', '_FIELD_MUST_BE_FLOAT_POSITIVE', 'Field _FIELD_ must be a positive float number value! Please re-enter.'),
(1552, 'es', '_FIELD_MUST_BE_FLOAT_POSITIVE', 'Campo _FIELD_ debe ser un valor positivo n??mero flotan! Por favor, vuelva a entrar.'),
(1553, 'es', '_FIELD_MUST_BE_INTEGER', 'Campo _FIELD_ debe ser n??mero entero positivo!'),
(1554, 'de', '_FIELD_MUST_BE_IP_ADDRESS', '_FIELD_ muss eine g??ltige IP-Adresse! Bitte erneut eingeben.'),
(1555, 'en', '_FIELD_MUST_BE_IP_ADDRESS', '_FIELD_ must be a valid IP Address! Please re-enter.'),
(1556, 'es', '_FIELD_MUST_BE_IP_ADDRESS', '_FIELD_ Debe ser una direcci??n IP v??lida! Por favor, vuelva a entrar.'),
(1557, 'de', '_FIELD_MUST_BE_NUMERIC', 'Field _FIELD_ muss numerischer Wert sein! Bitte erneut eingeben.'),
(1558, 'en', '_FIELD_MUST_BE_NUMERIC', 'Field _FIELD_ must be a numeric value! Please re-enter.'),
(1559, 'es', '_FIELD_MUST_BE_NUMERIC', 'Campo _FIELD_ valor debe ser num??rico! Por favor, vuelva a entrar.'),
(1560, 'de', '_FIELD_MUST_BE_NUMERIC_POSITIVE', 'Field _FIELD_ m??ssen positive numerischer wert sein! Bitte erneut eingeben.'),
(1561, 'en', '_FIELD_MUST_BE_NUMERIC_POSITIVE', 'Field _FIELD_ must be a positive numeric value! Please re-enter.'),
(1562, 'es', '_FIELD_MUST_BE_NUMERIC_POSITIVE', 'Campo _FIELD_ debe ser el valor num??rico positivo! Por favor, vuelva a entrar.'),
(1563, 'de', '_FIELD_MUST_BE_PASSWORD', '_FIELD_ muss 6 zeichen lang sein und mindestens bestehen aus buchstaben und ziffern! Bitte erneut eingeben.'),
(1564, 'en', '_FIELD_MUST_BE_PASSWORD', '_FIELD_ must be 6 characters at least and consist of letters and digits! Please re-enter.'),
(1565, 'es', '_FIELD_MUST_BE_PASSWORD', '_FIELD_ Debe ser de 6 caracteres como m??nimo y se componen de letras y d??gitos! Por favor, vuelva a entrar.'),
(1566, 'de', '_FIELD_MUST_BE_POSITIVE_INT', 'Field _FIELD_ m??ssen positive ganze zahl sein! Bitte erneut eingeben.'),
(1567, 'en', '_FIELD_MUST_BE_POSITIVE_INT', 'Field _FIELD_ must be a positive integer value! Please re-enter.'),
(1568, 'es', '_FIELD_MUST_BE_POSITIVE_INT', 'Campo _FIELD_ debe ser un valor entero positivo! Por favor, vuelva a entrar.'),
(1569, 'de', '_FIELD_MUST_BE_POSITIVE_INTEGER', 'Field _FIELD_ m??ssen positive ganze Zahl sein!'),
(1570, 'en', '_FIELD_MUST_BE_POSITIVE_INTEGER', 'Field _FIELD_ must be a positive integer number!'),
(1571, 'de', '_FIELD_MUST_BE_SIZE_VALUE', 'Feld _FIELD_ muss ein g??ltiger HTML size-Eigenschaft in \'px\', \'pt\', \'em\' oder \'%\' -Einheiten werden! Bitte erneut eingeben.'),
(1572, 'en', '_FIELD_MUST_BE_SIZE_VALUE', 'Field _FIELD_ must be a valid HTML size property in \'px\', \'pt\', \'em\' or \'%\' units! Please re-enter.'),
(1573, 'es', '_FIELD_MUST_BE_SIZE_VALUE', '_FIELD_ Campo debe ser una propiedad v??lida tama??o HTML en \'px\', \'pt\', \'em\' o \'%\' unidades! Por favor, vuelva a introducir.'),
(1574, 'de', '_FIELD_MUST_BE_TEXT', '_FIELD_ Warst Muss Ein Text seins! Bitte erneut eingeben.'),
(1575, 'en', '_FIELD_MUST_BE_TEXT', '_FIELD_ value must be a text! Please re-enter.'),
(1576, 'es', '_FIELD_MUST_BE_TEXT', '_FIELD_ Valor debe ser un texto! Por favor, vuelva a entrar.'),
(1577, 'de', '_FIELD_MUST_BE_UNSIGNED_FLOAT', 'Field _FIELD_ muss unsigned Float-Wert sein! Bitte erneut eingeben.'),
(1578, 'en', '_FIELD_MUST_BE_UNSIGNED_FLOAT', 'Field _FIELD_ must be an unsigned float value! Please re-enter.'),
(1579, 'es', '_FIELD_MUST_BE_UNSIGNED_FLOAT', 'Campo _FIELD_ debe ser valor flotante sin firmar! Por favor, vuelva a entrar.'),
(1580, 'de', '_FIELD_MUST_BE_UNSIGNED_INT', 'Feld _FIELD_ muss unsigned Integer-Wert sein! Bitte erneut eingeben.'),
(1581, 'en', '_FIELD_MUST_BE_UNSIGNED_INT', 'Field _FIELD_ must be an unsigned integer value! Please re-enter.'),
(1582, 'es', '_FIELD_MUST_BE_UNSIGNED_INT', '_FIELD_ Campo debe ser un valor entero sin signo! Por favor, vuelva a entrar.'),
(1583, 'de', '_FIELD_MUST_BE_URL', '_FIELDS_ Muss eine g??ltige URL sein! Bitte erneut eingeben.'),
(1584, 'en', '_FIELD_MUST_BE_URL', '_FIELD_ must be a valid URL! Please re-enter.'),
(1585, 'es', '_FIELD_MUST_BE_URL', '_FIELDS_ Debe ser una direcci??n URL v??lida! Por favor, vuelva a introducir.'),
(1586, 'de', '_FIELD_VALUE_EXCEEDED', '_FIELD_ Hat die maximal zul??ssige Wert ??berschritten _MAX_!'),
(1587, 'en', '_FIELD_VALUE_EXCEEDED', '_FIELD_ has exceeded the maximum allowed value _MAX_!'),
(1588, 'es', '_FIELD_VALUE_EXCEEDED', '_FIELD_ ha superado el valor m??ximo permitido _MAX_!'),
(1589, 'de', '_FIELD_VALUE_MINIMUM', '_FIELD_ Wert sollte nicht weniger als _MIN_! Bitte erneut eingeben.'),
(1590, 'en', '_FIELD_VALUE_MINIMUM', '_FIELD_ value should not be less then _MIN_! Please re-enter.'),
(1591, 'es', '_FIELD_VALUE_MINIMUM', '_FIELD_ valor no debe ser inferior a _MIN_! Por favor, vuelva a entrar.'),
(1592, 'de', '_FILED_UNIQUE_VALUE_ALERT', 'Das feld _FIELD_ akzeptiert nur eindeutige werte - bitte erneut eingeben!'),
(1593, 'en', '_FILED_UNIQUE_VALUE_ALERT', 'The field _FIELD_ accepts only unique values - please re-enter!'),
(1594, 'es', '_FILED_UNIQUE_VALUE_ALERT', 'El _FIELD_ campo s??lo acepta valores ??nicos - por favor vuelva a entrar!'),
(1595, 'de', '_FILE_DELETING_ERROR', 'Fehler beim l??schen der datei! Bitte versuchen sie es sp??ter erneut.'),
(1596, 'en', '_FILE_DELETING_ERROR', 'An error occurred while deleting file! Please try again later.'),
(1597, 'es', '_FILE_DELETING_ERROR', 'Se produjo un error al eliminar el archivo! Por favor, int??ntelo de nuevo m??s tarde.'),
(1598, 'de', '_FILTER_BY', 'Filtern nach'),
(1599, 'en', '_FILTER_BY', 'Filter by'),
(1600, 'es', '_FILTER_BY', 'Filtrar por'),
(1601, 'de', '_FINISH_DATE', 'Endtermin'),
(1602, 'en', '_FINISH_DATE', 'Finish Date'),
(1603, 'es', '_FINISH_DATE', 'Fecha de entrega'),
(1604, 'de', '_FINISH_PUBLISHING', 'Finish Publishing'),
(1605, 'en', '_FINISH_PUBLISHING', 'Finish Publishing'),
(1606, 'es', '_FINISH_PUBLISHING', 'Finalizar publicaci??n'),
(1607, 'de', '_FIRST_NAME', 'Vorname'),
(1608, 'en', '_FIRST_NAME', 'First Name'),
(1609, 'es', '_FIRST_NAME', 'Nombre'),
(1610, 'de', '_FIRST_NAME_EMPTY_ALERT', 'Vorname darf nicht leer sein! Bitte erneut eingeben.'),
(1611, 'en', '_FIRST_NAME_EMPTY_ALERT', 'First Name cannot be empty! Please re-enter.'),
(1612, 'es', '_FIRST_NAME_EMPTY_ALERT', 'Nombre no puede estar vac??o! Por favor, vuelva a entrar.'),
(1613, 'de', '_FIRST_NIGHT', 'First Night'),
(1614, 'en', '_FIRST_NIGHT', 'First Night'),
(1615, 'es', '_FIRST_NIGHT', 'Primera Noche'),
(1616, 'de', '_FIXED_PRICE', 'Festpreis'),
(1617, 'en', '_FIXED_PRICE', 'Fixed Price'),
(1618, 'es', '_FIXED_PRICE', 'Precio fijo'),
(1619, 'de', '_FIXED_SUM', 'Festbetrag'),
(1620, 'en', '_FIXED_SUM', 'Fixed Sum'),
(1621, 'es', '_FIXED_SUM', 'Suma fija'),
(1622, 'de', '_FOLLOW_US', 'Folgen Sie uns'),
(1623, 'en', '_FOLLOW_US', 'Follow Us'),
(1624, 'es', '_FOLLOW_US', 'Siga con nosotros'),
(1625, 'de', '_FOOTER_IS_EMPTY', 'Footer darf nicht leer sein! Bitte erneut eingeben.'),
(1626, 'en', '_FOOTER_IS_EMPTY', 'Footer cannot be empty! Please re-enter.'),
(1627, 'es', '_FOOTER_IS_EMPTY', 'Pie de p??gina no puede estar vac??a! Por favor, vuelva a entrar.'),
(1628, 'de', '_FORCE_SSL', 'Force-SSL'),
(1629, 'en', '_FORCE_SSL', 'Force SSL'),
(1630, 'es', '_FORCE_SSL', 'Fuerza SSL'),
(1631, 'de', '_FORCE_SSL_ALERT', 'Force-Website Zugriff auf immer unter SSL (https) treten f??r ausgew??hlte Bereiche. Sie oder Website-Besucher nicht in der Lage zu ausgew??hlten Bereichen unter Nicht-SSL-Zugang. Beachten Sie, m??ssen Sie SSL-f??higen auf Ihrem Server haben, damit diese Option funktioniert.'),
(1632, 'en', '_FORCE_SSL_ALERT', 'Force site access to always occur under SSL (https) for selected areas. You or site visitors will not be able to access selected areas under non-ssl. Note, you must have SSL enabled on your server to make this option works.'),
(1633, 'es', '_FORCE_SSL_ALERT', 'Acceso Fuerza del sitio que se produzca siempre bajo SSL (https) para las ??reas seleccionadas. Usted o visitantes del sitio no ser?? capaz de acceder a las ??reas seleccionadas en virtud de que no sea SSL. Tenga en cuenta, debe tener habilitado SSL en el servidor para que esta opci??n funcione.'),
(1634, 'de', '_FORGOT_PASSWORD', 'Passwort vergessen?'),
(1635, 'en', '_FORGOT_PASSWORD', 'Forgot your password?'),
(1636, 'es', '_FORGOT_PASSWORD', '??Olvidaste tu contrase??a?'),
(1637, 'de', '_FORM', 'Formular'),
(1638, 'en', '_FORM', 'Form'),
(1639, 'es', '_FORM', 'Forma'),
(1640, 'de', '_FOR_BOOKING', 'Buchung f??r #'),
(1641, 'en', '_FOR_BOOKING', 'for booking #'),
(1642, 'es', '_FOR_BOOKING', 'de reserva #'),
(1643, 'de', '_FOUND_AGENCIES', 'gefunden Agenturen'),
(1644, 'en', '_FOUND_AGENCIES', 'Found Agencies'),
(1645, 'es', '_FOUND_AGENCIES', 'Las agencias que se encuentran'),
(1646, 'de', '_FOUND_HOTELS', 'Gefunden Hotels'),
(1647, 'en', '_FOUND_HOTELS', 'Found Hotels'),
(1648, 'es', '_FOUND_HOTELS', 'Hoteles encontrados'),
(1649, 'de', '_FOUND_PROPERTIES', 'Immobilien gefunden'),
(1650, 'en', '_FOUND_PROPERTIES', 'Found Properties'),
(1651, 'es', '_FOUND_PROPERTIES', 'Propiedades encontradas'),
(1652, 'de', '_FOUND_ROOMS', 'Gefunden Zimmer'),
(1653, 'en', '_FOUND_ROOMS', 'Found Rooms'),
(1654, 'es', '_FOUND_ROOMS', 'Habitaciones disponibles'),
(1655, 'de', '_FOUND_VILLAS', 'Gefunden Villas'),
(1656, 'en', '_FOUND_VILLAS', 'Found Villas'),
(1657, 'es', '_FOUND_VILLAS', 'Villas encontrados'),
(1658, 'de', '_FR', 'Fr'),
(1659, 'en', '_FR', 'Fr'),
(1660, 'es', '_FR', 'Vi'),
(1661, 'de', '_FREE_OF_CHARGE', 'kostenlos'),
(1662, 'en', '_FREE_OF_CHARGE', 'free of charge'),
(1663, 'es', '_FREE_OF_CHARGE', 'gratis'),
(1664, 'de', '_FRI', 'Fri'),
(1665, 'en', '_FRI', 'Fri'),
(1666, 'es', '_FRI', 'Vie'),
(1667, 'de', '_FRIDAY', 'Freitag'),
(1668, 'en', '_FRIDAY', 'Friday'),
(1669, 'es', '_FRIDAY', 'viernes'),
(1670, 'de', '_FROM', 'von'),
(1671, 'en', '_FROM', 'From'),
(1672, 'es', '_FROM', 'De'),
(1673, 'de', '_FROM_BEST_TO_WORST', 'Vom besten zum schlechtesten'),
(1674, 'en', '_FROM_BEST_TO_WORST', 'From best to worst'),
(1675, 'es', '_FROM_BEST_TO_WORST', 'De mejor a peor'),
(1676, 'de', '_FROM_PER_NIGHT', 'from per night'),
(1677, 'en', '_FROM_PER_NIGHT', 'from per night'),
(1678, 'es', '_FROM_PER_NIGHT', 'from per night'),
(1679, 'de', '_FROM_TO_DATE_ALERT', 'Datum An muss gleich oder h??her als Datum Von! Bitte erneut eingeben.'),
(1680, 'en', '_FROM_TO_DATE_ALERT', 'Date \'To\' must be the same or later than date \'From\'! Please re-enter.'),
(1681, 'es', '_FROM_TO_DATE_ALERT', 'Fecha \'A\' debe ser igual o posterior a la fecha \"De: \"! Por favor, vuelva a entrar.'),
(1682, 'de', '_FROM_WORST_TO_BEST', 'Von Schlimmste am besten'),
(1683, 'en', '_FROM_WORST_TO_BEST', 'From worst to best'),
(1684, 'es', '_FROM_WORST_TO_BEST', 'De peor a mejor'),
(1685, 'de', '_FUEL_TYPE', 'Treibstoffart'),
(1686, 'en', '_FUEL_TYPE', 'Fuel Type'),
(1687, 'es', '_FUEL_TYPE', 'Tipo de combustible'),
(1688, 'de', '_FULLY_BOOKED', 'ausgebucht/unavailable'),
(1689, 'en', '_FULLY_BOOKED', 'fully booked/unavailable'),
(1690, 'es', '_FULLY_BOOKED', 'totalmente reservado/no disponible'),
(1691, 'de', '_FULL_PRICE', 'Voller Preis'),
(1692, 'en', '_FULL_PRICE', 'Full Price'),
(1693, 'es', '_FULL_PRICE', 'De precios completa'),
(1694, 'de', '_FUNDS', 'Mittel'),
(1695, 'en', '_FUNDS', 'Funds'),
(1696, 'es', '_FUNDS', 'Fondos'),
(1697, 'de', '_FUNDS_INFORMATION', 'Fonds Informationen'),
(1698, 'en', '_FUNDS_INFORMATION', 'Funds Information'),
(1699, 'es', '_FUNDS_INFORMATION', 'Fondos de Informaci??n'),
(1700, 'de', '_FUND_REMOVE_SUCCESS', 'Die Mittel wurden aus dem System erfolgreich entfernt!'),
(1701, 'en', '_FUND_REMOVE_SUCCESS', 'The funds have been successfully removed from the system!'),
(1702, 'es', '_FUND_REMOVE_SUCCESS', 'Los fondos se han eliminado con ??xito del sistema!'),
(1703, 'de', '_GALLERY', 'Galerie'),
(1704, 'en', '_GALLERY', 'Gallery'),
(1705, 'es', '_GALLERY', 'Galer??a'),
(1706, 'de', '_GALLERY_MANAGEMENT', 'Galerie Verwaltung'),
(1707, 'en', '_GALLERY_MANAGEMENT', 'Gallery Management'),
(1708, 'es', '_GALLERY_MANAGEMENT', 'Galer??a de Gesti??n'),
(1709, 'de', '_GALLERY_SETTINGS', 'Galerie-Einstellungen'),
(1710, 'en', '_GALLERY_SETTINGS', 'Gallery Settings'),
(1711, 'es', '_GALLERY_SETTINGS', 'Configuraci??n de la Galer??a'),
(1712, 'de', '_GASOLINE', 'Benzin'),
(1713, 'en', '_GASOLINE', 'Gasoline'),
(1714, 'es', '_GASOLINE', 'Gasolina'),
(1715, 'de', '_GEAR', 'Gang'),
(1716, 'en', '_GEAR', 'Gear'),
(1717, 'es', '_GEAR', 'Engranaje'),
(1718, 'de', '_GENERAL', 'Generell'),
(1719, 'en', '_GENERAL', 'General'),
(1720, 'es', '_GENERAL', 'General'),
(1721, 'de', '_GENERAL_INFO', 'Allgemeine Infos'),
(1722, 'en', '_GENERAL_INFO', 'General Info'),
(1723, 'es', '_GENERAL_INFO', 'Informaci??n General'),
(1724, 'de', '_GENERAL_SETTINGS', 'Allgemeine Einstellungen'),
(1725, 'en', '_GENERAL_SETTINGS', 'General Settings'),
(1726, 'es', '_GENERAL_SETTINGS', 'Configuraci??n general'),
(1727, 'de', '_GENERATE', 'Erzeugen'),
(1728, 'en', '_GENERATE', 'Generate'),
(1729, 'es', '_GENERATE', 'Generar'),
(1730, 'de', '_GET_DISTANCE', 'Holen Entfernung'),
(1731, 'en', '_GET_DISTANCE', 'Get Distance'),
(1732, 'es', '_GET_DISTANCE', 'Obtener Distancia'),
(1733, 'de', '_GLOBAL', 'Globalen'),
(1734, 'en', '_GLOBAL', 'Global'),
(1735, 'es', '_GLOBAL', 'Mundial'),
(1736, 'de', '_GOOD', 'Gut'),
(1737, 'en', '_GOOD', 'Good'),
(1738, 'es', '_GOOD', 'Bueno'),
(1739, 'de', '_GOOGLE_MAPS_API', 'Googel Maps API'),
(1740, 'en', '_GOOGLE_MAPS_API', 'Google Maps API'),
(1741, 'es', '_GOOGLE_MAPS_API', 'Googel Maps API'),
(1742, 'de', '_GROUP', 'Gruppe'),
(1743, 'en', '_GROUP', 'Group'),
(1744, 'es', '_GROUP', 'Grupo'),
(1745, 'de', '_GROUP_NAME', 'Name der Gruppe'),
(1746, 'en', '_GROUP_NAME', 'Group Name'),
(1747, 'es', '_GROUP_NAME', 'Nombre del grupo'),
(1748, 'de', '_GROUP_OF_FRIENDS', 'Gruppe von Freunden'),
(1749, 'en', '_GROUP_OF_FRIENDS', 'Group of Friends'),
(1750, 'es', '_GROUP_OF_FRIENDS', 'Grupo de amigos'),
(1751, 'de', '_GROUP_TIME_OVERLAPPING_ALERT', 'Dieser Zeitraum (vollst??ndig oder teilweise) wurde bereits f??r ausgew??hlte Gruppe gew??hlt! Bitte erneut eingeben.'),
(1752, 'en', '_GROUP_TIME_OVERLAPPING_ALERT', 'This period of time (fully or partially) is already chosen for selected group! Please re-enter.'),
(1753, 'es', '_GROUP_TIME_OVERLAPPING_ALERT', 'Este per??odo de tiempo (total o parcialmente) fue elegido ya para el grupo seleccionado! Por favor, vuelva a introducir.'),
(1754, 'de', '_GUESTS', 'G??ste'),
(1755, 'en', '_GUESTS', 'Guests'),
(1756, 'es', '_GUESTS', 'Los hu??spedes'),
(1757, 'de', '_GUESTS_3', 'drei G??ste'),
(1758, 'en', '_GUESTS_3', 'three guests'),
(1759, 'es', '_GUESTS_3', 'tres invitados'),
(1760, 'de', '_GUESTS_4', 'vier G??ste'),
(1761, 'en', '_GUESTS_4', 'four guests'),
(1762, 'es', '_GUESTS_4', 'cuatro personas'),
(1763, 'de', '_GUESTS_5', 'f??nf G??ste'),
(1764, 'en', '_GUESTS_5', 'five guests'),
(1765, 'es', '_GUESTS_5', 'cinco invitados'),
(1766, 'de', '_GUESTS_DISCOUNT', 'G??ste Rabatt'),
(1767, 'en', '_GUESTS_DISCOUNT', 'Guests Discount'),
(1768, 'es', '_GUESTS_DISCOUNT', 'los hu??spedes de descuento'),
(1769, 'de', '_GUESTS_DISCOUNT_IF_YOU_BOOK_ROOM', 'Wenn Sie das Zimmer f??r ein paar G??ste buchen Sie bekommen:'),
(1770, 'en', '_GUESTS_DISCOUNT_IF_YOU_BOOK_ROOM', 'If you book this room for a few guests you get:'),
(1771, 'es', '_GUESTS_DISCOUNT_IF_YOU_BOOK_ROOM', 'Si vas a reservar este espacio para unos pocos hu??spedes que se obtiene:'),
(1772, 'de', '_GUEST_RATINGS', 'Bewertungen'),
(1773, 'en', '_GUEST_RATINGS', 'guest ratings'),
(1774, 'es', '_GUEST_RATINGS', 'clasificaciones de los hu??spedes'),
(1775, 'de', '_GUEST_TAX', 'Guest Tax'),
(1776, 'en', '_GUEST_TAX', 'Guest Tax'),
(1777, 'es', '_GUEST_TAX', 'Guest Tax'),
(1778, 'de', '_HDR_FOOTER_TEXT', 'Fu??zeilentext'),
(1779, 'en', '_HDR_FOOTER_TEXT', 'Footer Text'),
(1780, 'es', '_HDR_FOOTER_TEXT', 'Pie de p??gina de texto'),
(1781, 'de', '_HDR_HEADER_TEXT', 'Kopftext'),
(1782, 'en', '_HDR_HEADER_TEXT', 'Header Text'),
(1783, 'es', '_HDR_HEADER_TEXT', 'Texto de la cabecera'),
(1784, 'de', '_HDR_SLOGAN_TEXT', 'Slogan'),
(1785, 'en', '_HDR_SLOGAN_TEXT', 'Slogan'),
(1786, 'es', '_HDR_SLOGAN_TEXT', 'Eslogan'),
(1787, 'de', '_HDR_TEMPLATE', 'Vorlage'),
(1788, 'en', '_HDR_TEMPLATE', 'Template'),
(1789, 'es', '_HDR_TEMPLATE', 'Plantilla'),
(1790, 'de', '_HDR_TEXT_DIRECTION', 'Textrichtung'),
(1791, 'en', '_HDR_TEXT_DIRECTION', 'Text Direction'),
(1792, 'es', '_HDR_TEXT_DIRECTION', 'Direcci??n del texto'),
(1793, 'de', '_HEADER', 'Kopfzeile'),
(1794, 'en', '_HEADER', 'Header'),
(1795, 'es', '_HEADER', 'Encabezado'),
(1796, 'de', '_HEADERS_AND_FOOTERS', 'Kopf-und Fu??zeilen'),
(1797, 'en', '_HEADERS_AND_FOOTERS', 'Headers & Footers'),
(1798, 'es', '_HEADERS_AND_FOOTERS', 'Encabezados y pies de p??gina'),
(1799, 'de', '_HEADER_IS_EMPTY', 'Header k??nnen nicht leer sein! Bitte erneut eingeben.'),
(1800, 'en', '_HEADER_IS_EMPTY', 'Header cannot be empty! Please re-enter.'),
(1801, 'es', '_HEADER_IS_EMPTY', 'Encabezado no puede estar vac??a! Por favor, vuelva a entrar.'),
(1802, 'de', '_HELP', 'Hilfe'),
(1803, 'en', '_HELP', 'Help'),
(1804, 'es', '_HELP', 'Ayudar'),
(1805, 'de', '_HIDDEN', 'Versteckt'),
(1806, 'en', '_HIDDEN', 'Hidden'),
(1807, 'es', '_HIDDEN', 'Oculto'),
(1808, 'de', '_HIDE', 'Verbergen'),
(1809, 'en', '_HIDE', 'Hide'),
(1810, 'es', '_HIDE', 'Ocultar'),
(1811, 'de', '_HIGHEST_LOWEST', 'Niedrigste Preise'),
(1812, 'en', '_HIGHEST_LOWEST', 'Highest to Lowest'),
(1813, 'es', '_HIGHEST_LOWEST', 'De mayor a menor'),
(1814, 'de', '_HOME', 'Startseite'),
(1815, 'en', '_HOME', 'Home'),
(1816, 'es', '_HOME', 'Inicio'),
(1817, 'de', '_HORIZONTAL', 'Horizontal'),
(1818, 'en', '_HORIZONTAL', 'Horizontal'),
(1819, 'es', '_HORIZONTAL', 'Orizzontale'),
(1820, 'de', '_HOTEL', 'Hotel'),
(1821, 'en', '_HOTEL', 'Hotel'),
(1822, 'es', '_HOTEL', 'Hotel'),
(1823, 'de', '_HOTELOWNER_WELCOME_TEXT', 'Willkommen im Hotel Besitzer Control Panel! Mit diesem Control Panel k??nnen Sie ganz einfach Ihre Hotels, Kunden, Reservierungen und f??hren Sie eine vollst??ndige Hotel-Website-Management.'),
(1824, 'en', '_HOTELOWNER_WELCOME_TEXT', 'Welcome to Hotel Owner Control Panel! With this Control Panel you can easily manage your hotels, customers, reservations and perform a full hotel site management.'),
(1825, 'es', '_HOTELOWNER_WELCOME_TEXT', 'Bienvenido al panel de control del propietario de Hotel! Con este panel de control se pueden manejar f??cilmente sus hoteles, los clientes, reservas y realizar una gesti??n hotelera completa del sitio.'),
(1826, 'de', '_HOTELS', 'Hotels'),
(1827, 'en', '_HOTELS', 'Hotels'),
(1828, 'es', '_HOTELS', 'Hoteles'),
(1829, 'de', '_HOTELS_AND_ROOMS', 'Hotels und Zimmer'),
(1830, 'en', '_HOTELS_AND_ROOMS', 'Hotels and Rooms'),
(1831, 'es', '_HOTELS_AND_ROOMS', 'Hoteles y Habitaciones'),
(1832, 'de', '_HOTELS_INFO', 'Infos ??ber Hotels'),
(1833, 'en', '_HOTELS_INFO', 'Hotels Info'),
(1834, 'es', '_HOTELS_INFO', 'Hoteles Informaci??n'),
(1835, 'de', '_HOTELS_MANAGEMENT', 'Hotels-Management'),
(1836, 'en', '_HOTELS_MANAGEMENT', 'Hotels Management'),
(1837, 'es', '_HOTELS_MANAGEMENT', 'Hoteles de gesti??n'),
(1838, 'de', '_HOTEL_DELETE_ALERT', 'Sind Sie sicher, dass Sie dieses Hotel wirklich l??schen? Denken Sie daran: nach Abschluss dieser Aktion alle Daten in diesem Hotel konnte nicht wiederhergestellt werden!'),
(1839, 'en', '_HOTEL_DELETE_ALERT', 'Are you sure you want to delete this hotel? Remember: after completing this action all related data to this hotel could not be restored!'),
(1840, 'es', '_HOTEL_DELETE_ALERT', '??Est?? seguro que desea eliminar este hotel? Recuerde: despu??s de completar esta acci??n no se podr??an restaurar todos los datos relacionados con este hotel!'),
(1841, 'de', '_HOTEL_DESCRIPTION', 'Beschreibung des Hotels'),
(1842, 'en', '_HOTEL_DESCRIPTION', 'Hotel Description'),
(1843, 'es', '_HOTEL_DESCRIPTION', 'Descripci??n del hotel'),
(1844, 'de', '_HOTEL_FACILITIES', 'Hotelausstattung'),
(1845, 'en', '_HOTEL_FACILITIES', 'Hotel Facilities'),
(1846, 'es', '_HOTEL_FACILITIES', 'Instalaciones del hotel'),
(1847, 'de', '_HOTEL_INFO', 'Hotel-Infos'),
(1848, 'en', '_HOTEL_INFO', 'Hotel Info'),
(1849, 'es', '_HOTEL_INFO', 'Informaci??n del Hotel'),
(1850, 'de', '_HOTEL_MANAGEMENT', 'Hotel Management'),
(1851, 'en', '_HOTEL_MANAGEMENT', 'Hotel Management'),
(1852, 'es', '_HOTEL_MANAGEMENT', 'Direcci??n Hotelera'),
(1853, 'de', '_HOTEL_OWNER', 'Kostenlos anmelden'),
(1854, 'en', '_HOTEL_OWNER', 'Hotel Owner'),
(1855, 'es', '_HOTEL_OWNER', 'Propietario de Hotel'),
(1856, 'de', '_HOTEL_OWNERS', 'Hotelinhaber'),
(1857, 'en', '_HOTEL_OWNERS', 'Hotel Owners'),
(1858, 'es', '_HOTEL_OWNERS', 'Los propietarios del hotel'),
(1859, 'de', '_HOTEL_PAYMENT_GATEWAYS', 'Hotel Zahlungs-Gateways'),
(1860, 'en', '_HOTEL_PAYMENT_GATEWAYS', 'Hotel Payment Gateways'),
(1861, 'es', '_HOTEL_PAYMENT_GATEWAYS', 'Pasarelas de pago del hotel'),
(1862, 'de', '_HOTEL_RESERVATION_ID', 'Hotelreservierung ID'),
(1863, 'en', '_HOTEL_RESERVATION_ID', 'Hotel Reservation ID'),
(1864, 'es', '_HOTEL_RESERVATION_ID', 'Hotel ID reserva'),
(1865, 'de', '_HOT_DEALS', 'Hei??e Angebote'),
(1866, 'en', '_HOT_DEALS', 'Hot Deals'),
(1867, 'es', '_HOT_DEALS', 'Ofertas Especiales'),
(1868, 'de', '_HOUR', 'Stunde'),
(1869, 'en', '_HOUR', 'Hour'),
(1870, 'es', '_HOUR', 'Horas'),
(1871, 'de', '_HOURS', 'Stunden'),
(1872, 'en', '_HOURS', 'hours'),
(1873, 'es', '_HOURS', 'horas'),
(1874, 'de', '_HOW_GOOGLE_MAPS_API_KEY', 'Wie Google Maps-API-Schl??ssel zu erhalten:'),
(1875, 'en', '_HOW_GOOGLE_MAPS_API_KEY', 'How to obtain Google Maps API key:'),
(1876, 'es', '_HOW_GOOGLE_MAPS_API_KEY', 'C??mo obtener la clave Google Maps API:'),
(1877, 'de', '_HOW_GOOGLE_MAPS_STEP_1', 'Folgen Sie <a href=https://developers.google.com/maps/documentation/javascript/get-api-key#get-an-api-key target=_blank rel=\"noopener noreferrer\">diesem Link</a> und klicken Sie auf den Schl??ssel zu bekommen.'),
(1878, 'en', '_HOW_GOOGLE_MAPS_STEP_1', 'Follow this <a href=https://developers.google.com/maps/documentation/javascript/get-api-key#get-an-api-key target=_blank rel=\"noopener noreferrer\">this link</a>  and click on Get a key.'),
(1879, 'es', '_HOW_GOOGLE_MAPS_STEP_1', 'Siga este <a href=https://developers.google.com/maps/documentation/javascript/get-api-key#get-an-api-key target=_blank rel=\"noopener noreferrer\">enlace</a> y haga clic en Obtener una clave.'),
(1880, 'de', '_HOW_GOOGLE_MAPS_STEP_2', 'Vereinbaren Sie mit den Service-Nutzungsbedingungen.'),
(1881, 'en', '_HOW_GOOGLE_MAPS_STEP_2', 'Agree with the service Terms of Service.'),
(1882, 'es', '_HOW_GOOGLE_MAPS_STEP_2', 'De acuerdo con los T??rminos de servicio de uso.'),
(1883, 'de', '_HOW_GOOGLE_MAPS_STEP_3', 'W??hlen Sie einen Namen f??r den neuen Schl??ssel und geben Sie die Websites, auf denen die Schl??sselverwendung erlaubt wird.<br/> Wenn Sie keine Website Beschr??nkung ben??tigen, nur ein * setzen in diesem Bereich (aber lassen Sie es nicht leer,<br/> es sei denn, Sie Probleme mit * haben! Siehe Anmerkungen f??r weitere Informationen). Klicken Sie dann auf Erstellen.'),
(1884, 'en', '_HOW_GOOGLE_MAPS_STEP_3', 'Choose a name for your new key and specify the websites on which the key usage will be allowed.<br /> If you don\'t need any website restriction, just put an * in that field (but don\'t leave it blank,<br/> unless you are having issues with *! See comments for further information). Then click on Create button.'),
(1885, 'es', '_HOW_GOOGLE_MAPS_STEP_3', 'Elegir un nombre para su nueva clave y especificar los sitios web en los que se permitir?? el uso de la clave.<br/> Si usted no necesita ning??n tipo de restricci??n sitio web, s??lo hay que poner un * en ese campo (pero no lo deje en blanco,<br/> a menos que usted est?? teniendo problemas con *! Ver comentarios para m??s informaci??n). A continuaci??n, haga clic en el bot??n Crear.'),
(1886, 'de', '_HOW_GOOGLE_MAPS_STEP_4', 'Schreiben Sie eine brandneue API-Taste gedr??ckt und klicken Sie auf OK.'),
(1887, 'en', '_HOW_GOOGLE_MAPS_STEP_4', 'Write down your brand new API key, and click OK.'),
(1888, 'es', '_HOW_GOOGLE_MAPS_STEP_4', 'Anote su nueva clave de API, y haga clic en OK.'),
(1889, 'de', '_HOW_GOOGLE_MAPS_STEP_5', 'Geben Sie Ihren API-Schl??ssel.'),
(1890, 'en', '_HOW_GOOGLE_MAPS_STEP_5', 'Enter your API key.'),
(1891, 'es', '_HOW_GOOGLE_MAPS_STEP_5', 'Ingrese su clave de API.'),
(1892, 'de', '_HOW_GOOGLE_MAPS_STEP_6', 'Ihre API-Schl??ssel sollte laufen innerhalb von 5 Minuten. Genie??en!'),
(1893, 'en', '_HOW_GOOGLE_MAPS_STEP_6', 'Your API key should be up and running within 5 minutes. Enjoy!'),
(1894, 'es', '_HOW_GOOGLE_MAPS_STEP_6', 'Su clave de API debe estar en funcionamiento dentro de los 5 minutos. Disfruta!'),
(1895, 'de', '_HYBRID_ELECTRIC', 'Hybrid-Elektro'),
(1896, 'en', '_HYBRID_ELECTRIC', 'Hybrid Electric'),
(1897, 'es', '_HYBRID_ELECTRIC', 'H??brido el??ctrico'),
(1898, 'de', '_ICON', 'Symbol'),
(1899, 'en', '_ICON', 'Icon'),
(1900, 'es', '_ICON', 'Icono'),
(1901, 'de', '_ICON_IMAGE', 'Icon Bild'),
(1902, 'en', '_ICON_IMAGE', 'Icon image'),
(1903, 'es', '_ICON_IMAGE', 'Imagen de icono'),
(1904, 'de', '_IMAGE', 'Bild'),
(1905, 'en', '_IMAGE', 'Image'),
(1906, 'es', '_IMAGE', 'Imagen'),
(1907, 'de', '_IMAGES', 'Bilder'),
(1908, 'en', '_IMAGES', 'Images'),
(1909, 'es', '_IMAGES', 'Im??genes'),
(1910, 'de', '_IMAGE_VERIFICATION', 'Bild??berpr??fung'),
(1911, 'en', '_IMAGE_VERIFICATION', 'Image verification'),
(1912, 'es', '_IMAGE_VERIFICATION', 'Imagen de verificaci??n'),
(1913, 'de', '_IMAGE_VERIFY_EMPTY', 'Sie m??ssen bild verifizierungscode!'),
(1914, 'en', '_IMAGE_VERIFY_EMPTY', 'You must enter image verification code!'),
(1915, 'es', '_IMAGE_VERIFY_EMPTY', 'Debe introducir el c??digo de verificaci??n de la imagen!'),
(1916, 'de', '_INCOME', 'einkommen'),
(1917, 'en', '_INCOME', 'Income'),
(1918, 'es', '_INCOME', 'Ingresos'),
(1919, 'de', '_INFO', 'Infos'),
(1920, 'en', '_INFO', 'Info'),
(1921, 'es', '_INFO', 'Info'),
(1922, 'de', '_INFORMATION', 'Informationen'),
(1923, 'en', '_INFORMATION', 'Information'),
(1924, 'es', '_INFORMATION', 'Informaci??n'),
(1925, 'de', '_INFO_AND_STATISTICS', 'Informationen und Statistiken'),
(1926, 'en', '_INFO_AND_STATISTICS', 'Information and Statistics'),
(1927, 'es', '_INFO_AND_STATISTICS', 'Informaci??n y Estad??stica'),
(1928, 'de', '_INITIAL_FEE', 'Ausgabeaufschlag'),
(1929, 'en', '_INITIAL_FEE', 'Initial Fee'),
(1930, 'es', '_INITIAL_FEE', 'Cuota inicial'),
(1931, 'de', '_INSTALL', 'Installieren'),
(1932, 'en', '_INSTALL', 'Install'),
(1933, 'es', '_INSTALL', 'Instale'),
(1934, 'de', '_INSTALLED', 'Installierte'),
(1935, 'en', '_INSTALLED', 'Installed'),
(1936, 'es', '_INSTALLED', 'Instalado'),
(1937, 'de', '_INSTALL_PHP_EXISTS', 'Datei <b>install.php</b> und/oder direkt <b>installieren</b> noch existieren. Aus Sicherheitsgr??nden ziehen Sie bitte sofort!'),
(1938, 'en', '_INSTALL_PHP_EXISTS', 'File <b>install.php</b> and/or directory <b>install/</b> still exists. For security reasons please remove them immediately!'),
(1939, 'es', '_INSTALL_PHP_EXISTS', 'Archivo <b>install.php</b> y/o directorio <b>instalar/</b> siguen existiendo. Por razones de seguridad por favor, elimine de inmediato!'),
(1940, 'de', '_INTEGRATION', 'Integration'),
(1941, 'en', '_INTEGRATION', 'Integration'),
(1942, 'es', '_INTEGRATION', 'Integraci??n'),
(1943, 'de', '_INTEGRATION_MESSAGE', 'Kopieren Sie den Code unten ein und legte es an der entsprechenden Stelle Ihrer Website, um eine <b>Suche Verf??gbarkeit</b>-Block zu bekommen.'),
(1944, 'en', '_INTEGRATION_MESSAGE', 'Copy the code below and put it in the appropriate place of your web site to get a <b>Search Availability</b> block.'),
(1945, 'es', '_INTEGRATION_MESSAGE', 'Copie el c??digo abajo y lo puso en el lugar correspondiente de su sitio web para obtener una disponibilidad <b>Buscar</b> bloque.'),
(1946, 'de', '_INTERNAL_USE_TOOLTIP', 'Nur f??r internen Gebrauch'),
(1947, 'en', '_INTERNAL_USE_TOOLTIP', 'For internal use only'),
(1948, 'es', '_INTERNAL_USE_TOOLTIP', 'S??lo para uso interno'),
(1949, 'de', '_INVALID_FILE_SIZE', 'Ung??ltige Dateigr????e: _FILE_SIZE_ (max. erlaubt: _MAX_ALLOWED_)'),
(1950, 'en', '_INVALID_FILE_SIZE', 'Invalid file size: _FILE_SIZE_ (max. allowed: _MAX_ALLOWED_)'),
(1951, 'es', '_INVALID_FILE_SIZE', 'Tama??o de archivo no v??lido: _FILE_SIZE_ (m??ximo permitido: _MAX_ALLOWED_)'),
(1952, 'de', '_INVALID_IMAGE_FILE_TYPE', 'Hochgeladene Datei ist kein g??ltiges Bild! Bitte geben Sie erneut.'),
(1953, 'en', '_INVALID_IMAGE_FILE_TYPE', 'Uploaded file is not a valid image! Please re-enter.'),
(1954, 'es', '_INVALID_IMAGE_FILE_TYPE', 'El archivo cargado no es una imagen v??lida! Por favor, vuelva a entrar.'),
(1955, 'de', '_INVOICE', 'Rechnung'),
(1956, 'en', '_INVOICE', 'Invoice'),
(1957, 'es', '_INVOICE', 'Factura'),
(1958, 'de', '_INVOICE_DISCLAIMER_LINE', 'Diese Mitteilung ist f??r die ausschlie??liche Verwendung des Empf??ngers und kann propriet??re, vertrauliche oder rechtlich gesch??tzte Informationen. <br /> Wenn Sie eine Anwendung nicht der beabsichtigte Empf??nger sind, Vervielf??ltigung, Ver??ffentlichung, Verbreitung oder Verteilung ist streng verboten.'),
(1959, 'en', '_INVOICE_DISCLAIMER_LINE', 'This communication is for the exclusive use of the addressee and may contain proprietary, confidential or privileged information. <br />If you are not the intended recipient any use, copying, disclosure, dissemination or distribution is strictly prohibited.'),
(1960, 'es', '_INVOICE_DISCLAIMER_LINE', 'Esta comunicaci??n es para el uso exclusivo del destinatario y puede contener informaci??n propietaria y confidencial o privilegiada. <br /> Si usted no es el destinatario previsto ning??n uso, copia, divulgaci??n, difusi??n o distribuci??n est?? estrictamente prohibida.'),
(1961, 'de', '_INVOICE_HAVE_QUESTIONS_LINE', 'Wenn Sie Fragen haben, z??gern Sie nicht uns zu kontaktieren, um <a href=mailto:_ADMIN_EMAIL_>_ADMIN_EMAIL_</a>.'),
(1962, 'en', '_INVOICE_HAVE_QUESTIONS_LINE', 'If you have any questions, please feel free to contact us at <a href=mailto:_ADMIN_EMAIL_>_ADMIN_EMAIL_</a>.'),
(1963, 'es', '_INVOICE_HAVE_QUESTIONS_LINE', 'Si usted tiene alguna pregunta, por favor no dude en ponerse en contacto con nosotros en <a href=mailto:_ADMIN_EMAIL_>_ADMIN_EMAIL_</a>.'),
(1964, 'de', '_INVOICE_SENT_SUCCESS', 'Die Rechnung wurde erfolgreich an den Kunden versendet!'),
(1965, 'en', '_INVOICE_SENT_SUCCESS', 'The invoice has been successfully sent to the customer!'),
(1966, 'es', '_INVOICE_SENT_SUCCESS', 'La factura se envi?? con ??xito al cliente!'),
(1967, 'de', '_INVOICE_THANK_YOU_LINE', 'Vielen Dank f??r Ihre Bestellung! Diese Transaktion wird auf Ihrem Kontoauszug erscheinen als _YOUR_COMPANY_NAME_.'),
(1968, 'en', '_INVOICE_THANK_YOU_LINE', 'Thank you for your order! This transaction will appear on your billing statement as _YOUR_COMPANY_NAME_.'),
(1969, 'es', '_INVOICE_THANK_YOU_LINE', '??Gracias por su orden! Esta transacci??n aparecer?? en su estado de cuenta como _YOUR_COMPANY_NAME_.'),
(1970, 'de', '_IN_PRODUCTS', 'In Produkte'),
(1971, 'en', '_IN_PRODUCTS', 'In Products'),
(1972, 'es', '_IN_PRODUCTS', 'En Productos'),
(1973, 'de', '_IP_ADDRESS', 'IP-Adresse'),
(1974, 'en', '_IP_ADDRESS', 'IP Address'),
(1975, 'es', '_IP_ADDRESS', 'Direcci??n IP'),
(1976, 'de', '_IP_ADDRESS_BLOCKED', 'Diese IP-Adresse wurde gesperrt! Um dieses Problem zu beheben'),
(1977, 'en', '_IP_ADDRESS_BLOCKED', 'Your IP Address is blocked! To resolve this problem, please contact the site administrator.'),
(1978, 'es', '_IP_ADDRESS_BLOCKED', 'Su direcci??n IP est?? bloqueada! Para resolver este problema, p??ngase en contacto con el administrador del sitio.'),
(1979, 'de', '_IS_DEFAULT', 'Ist standardm????ig'),
(1980, 'en', '_IS_DEFAULT', 'Is default'),
(1981, 'es', '_IS_DEFAULT', 'Es la opci??n predeterminada'),
(1982, 'de', '_ITEMS', 'Artikel'),
(1983, 'en', '_ITEMS', 'Items'),
(1984, 'es', '_ITEMS', 'Art??culos'),
(1985, 'de', '_ITEMS_LC', 'begriffe'),
(1986, 'en', '_ITEMS_LC', 'items'),
(1987, 'es', '_ITEMS_LC', 'art??culos'),
(1988, 'de', '_ITEM_NAME', 'Einzelteil-Name'),
(1989, 'en', '_ITEM_NAME', 'Item Name'),
(1990, 'es', '_ITEM_NAME', 'Nombre del art??culo'),
(1991, 'de', '_JANUARY', 'Januar'),
(1992, 'en', '_JANUARY', 'January'),
(1993, 'es', '_JANUARY', 'Enero'),
(1994, 'de', '_JULY', 'Juli'),
(1995, 'en', '_JULY', 'July'),
(1996, 'es', '_JULY', 'Julio'),
(1997, 'de', '_JUNE', 'Juni'),
(1998, 'en', '_JUNE', 'June'),
(1999, 'es', '_JUNE', 'Junio'),
(2000, 'de', '_JUST_BOOKED', 'nur gebucht'),
(2001, 'en', '_JUST_BOOKED', 'just booked'),
(2002, 'es', '_JUST_BOOKED', 'hecho una reserva'),
(2003, 'de', '_KEY', 'Schl??ssel'),
(2004, 'en', '_KEY', 'Key'),
(2005, 'es', '_KEY', 'Llave'),
(2006, 'de', '_KEYWORDS', 'Stichwort'),
(2007, 'en', '_KEYWORDS', 'Keywords'),
(2008, 'es', '_KEYWORDS', 'Palabras clave'),
(2009, 'de', '_KEY_DISPLAY_TYPE', 'Key Display-Typ'),
(2010, 'en', '_KEY_DISPLAY_TYPE', 'Key display type'),
(2011, 'es', '_KEY_DISPLAY_TYPE', 'Tipo de pantalla Key'),
(2012, 'de', '_KILOMETERS_SHORTENED', 'km.'),
(2013, 'en', '_KILOMETERS_SHORTENED', 'km.'),
(2014, 'es', '_KILOMETERS_SHORTENED', 'km.'),
(2015, 'de', '_LANGUAGE', 'Sprache'),
(2016, 'en', '_LANGUAGE', 'Language'),
(2017, 'es', '_LANGUAGE', 'Habla'),
(2018, 'de', '_LANGUAGES', 'Sprachen'),
(2019, 'en', '_LANGUAGES', 'Languages'),
(2020, 'es', '_LANGUAGES', 'Idiomas'),
(2021, 'de', '_LANGUAGES_SETTINGS', 'Sprachen-Einstellungen'),
(2022, 'en', '_LANGUAGES_SETTINGS', 'Languages Settings'),
(2023, 'es', '_LANGUAGES_SETTINGS', 'Configuraci??n de Idiomas'),
(2024, 'de', '_LANGUAGE_ADDED', 'Neue Sprache wurde hinzugef??gt!'),
(2025, 'en', '_LANGUAGE_ADDED', 'New language has been successfully added!'),
(2026, 'es', '_LANGUAGE_ADDED', 'Un nuevo lenguaje se ha a??adido!'),
(2027, 'de', '_LANGUAGE_ADD_NEW', 'Neue Sprache hinzuf??gen'),
(2028, 'en', '_LANGUAGE_ADD_NEW', 'Add New Language'),
(2029, 'es', '_LANGUAGE_ADD_NEW', 'A??adir un nuevo idioma'),
(2030, 'de', '_LANGUAGE_EDIT', 'Bearbeiten Sprache'),
(2031, 'en', '_LANGUAGE_EDIT', 'Edit Language'),
(2032, 'es', '_LANGUAGE_EDIT', 'Editar Idioma'),
(2033, 'de', '_LANGUAGE_EDITED', 'Language Daten wurden erfolgreich aktualisiert!'),
(2034, 'en', '_LANGUAGE_EDITED', 'Language data has been successfully updated!'),
(2035, 'es', '_LANGUAGE_EDITED', 'Idioma de datos se ha actualizado correctamente!'),
(2036, 'de', '_LANGUAGE_NAME', 'Sprache Name'),
(2037, 'en', '_LANGUAGE_NAME', 'Language Name'),
(2038, 'es', '_LANGUAGE_NAME', 'Idioma Nombre'),
(2039, 'de', '_LANG_ABBREV_EMPTY', 'Sprachk??rzel darf nicht leer sein!'),
(2040, 'en', '_LANG_ABBREV_EMPTY', 'Language abbreviation cannot be empty!'),
(2041, 'es', '_LANG_ABBREV_EMPTY', 'Abreviatura del idioma no puede estar vac??a!'),
(2042, 'de', '_LANG_DELETED', 'Sprache wurde erfolgreich gel??scht!'),
(2043, 'en', '_LANG_DELETED', 'Language has been successfully deleted!'),
(2044, 'es', '_LANG_DELETED', 'Idioma ha sido borrado!'),
(2045, 'de', '_LANG_DELETE_LAST_ERROR', 'Sie k??nnen nicht l??schen letzten Sprache!'),
(2046, 'en', '_LANG_DELETE_LAST_ERROR', 'You cannot delete last language!'),
(2047, 'es', '_LANG_DELETE_LAST_ERROR', 'No se puede eliminar Lengua!'),
(2048, 'de', '_LANG_DELETE_WARNING', 'Sind Sie sicher'),
(2049, 'en', '_LANG_DELETE_WARNING', 'Are you sure you want to remove this language? This operation will delete all language vocabulary!'),
(2050, 'es', '_LANG_DELETE_WARNING', '??Est??s seguro de que deseas eliminar este idioma? Esta operaci??n eliminar?? todos vocabulario del idioma!'),
(2051, 'de', '_LANG_MISSED', 'Verpasste Sprache zu aktualisieren! Bitte versuchen Sie es erneut.'),
(2052, 'en', '_LANG_MISSED', 'Missed language to update! Please, try again.'),
(2053, 'es', '_LANG_MISSED', 'El lenguaje perdido de actualizar! Por favor, int??ntelo de nuevo.'),
(2054, 'de', '_LANG_NAME_EMPTY', 'Name der Sprache darf nicht leer sein!'),
(2055, 'en', '_LANG_NAME_EMPTY', 'Language name cannot be empty!'),
(2056, 'es', '_LANG_NAME_EMPTY', 'Nombre de idioma no puede estar vac??a!'),
(2057, 'de', '_LANG_NAME_EXISTS', 'Sprache mit solchen Namen existiert bereits! Bitte w??hlen Sie einen anderen.'),
(2058, 'en', '_LANG_NAME_EXISTS', 'Language with such name already exists! Please choose another.'),
(2059, 'es', '_LANG_NAME_EXISTS', 'De idiomas con ese nombre ya existe! Por favor, elija otro.'),
(2060, 'de', '_LANG_NOT_DELETED', 'Sprache wurde nicht gel??scht!'),
(2061, 'en', '_LANG_NOT_DELETED', 'Language has not been deleted!'),
(2062, 'es', '_LANG_NOT_DELETED', 'El idioma no fue eliminado!'),
(2063, 'de', '_LANG_ORDER_CHANGED', 'Sprache Bestellung wurde erfolgreich ge??ndert!'),
(2064, 'en', '_LANG_ORDER_CHANGED', 'Language order has been successfully changed!'),
(2065, 'es', '_LANG_ORDER_CHANGED', 'Orden de los idiomas se ha cambiado!'),
(2066, 'de', '_LAST_BOOKINGS', 'Letzte Buchungen'),
(2067, 'en', '_LAST_BOOKINGS', 'Last Bookings'),
(2068, 'es', '_LAST_BOOKINGS', '??ltimos Reservas'),
(2069, 'de', '_LAST_BOOKINGS_MESSAGE', 'Ein Besucher aus {user_location} {type_booking} {count_rooms} auf {hotel_name} in {hotel_location}'),
(2070, 'en', '_LAST_BOOKINGS_MESSAGE', 'A visitor from {user_location} {type_booking} {count_rooms} at {hotel_name} in {hotel_location}'),
(2071, 'es', '_LAST_BOOKINGS_MESSAGE', 'Un visitante de la {user_location} {count_rooms} {type_booking} en el {hotel_name} en {hotel_location}'),
(2072, 'de', '_LAST_BOOKING_HOTEL_WAS', 'Die letzte Buchung f??r dieses Hotel war {type_booking}'),
(2073, 'en', '_LAST_BOOKING_HOTEL_WAS', 'Last booking for this hotel was {type_booking}'),
(2074, 'es', '_LAST_BOOKING_HOTEL_WAS', '??ltima reserva para este hotel se {type_booking}'),
(2075, 'de', '_LAST_BOOKING_ROOM_WAS', 'Die letzte Buchung f??r dieses Zimmer war {type_booking}'),
(2076, 'en', '_LAST_BOOKING_ROOM_WAS', 'Last booking for this room was {type_booking}'),
(2077, 'es', '_LAST_BOOKING_ROOM_WAS', '??ltima reserva para esta habitaci??n estaba {type_booking}'),
(2078, 'de', '_LAST_CURRENCY_ALERT', 'Sie k??nnen nicht l??schen letzten aktiven W??hrung!'),
(2079, 'en', '_LAST_CURRENCY_ALERT', 'You cannot delete last active currency!'),
(2080, 'es', '_LAST_CURRENCY_ALERT', 'No se puede eliminar la moneda activo de ??ltimo!'),
(2081, 'de', '_LAST_HOTEL_ALERT', 'Sie k??nnen nicht l??schen letzten aktiven hotel Rekord!'),
(2082, 'en', '_LAST_HOTEL_ALERT', 'You cannot delete last active hotel record!'),
(2083, 'es', '_LAST_HOTEL_ALERT', 'No se puede eliminar el ??ltimo registro activo de hoteles!'),
(2084, 'de', '_LAST_HOTEL_PROPERTY_ALERT', 'Diese Eigenschaft Typ kann nicht gel??scht werden, weil sie in einer Eigenschaft zumindest beteiligt.'),
(2085, 'en', '_LAST_HOTEL_PROPERTY_ALERT', 'This property type cannot be deleted, because it is participating in one property at least.'),
(2086, 'es', '_LAST_HOTEL_PROPERTY_ALERT', 'Este tipo de propiedad no puede ser eliminado, ya que est?? participando en un establecimiento al menos.'),
(2087, 'de', '_LAST_LOGGED_IP', 'Zuletzt eingeloggt IP'),
(2088, 'en', '_LAST_LOGGED_IP', 'Last logged IP'),
(2089, 'es', '_LAST_LOGGED_IP', '??ltima sesi??n de IP'),
(2090, 'de', '_LAST_LOGIN', 'Letzter Login'),
(2091, 'en', '_LAST_LOGIN', 'Last Login'),
(2092, 'es', '_LAST_LOGIN', '??ltimo inicio de sesi??n'),
(2093, 'de', '_LAST_MINUTE', 'Last-Minute'),
(2094, 'en', '_LAST_MINUTE', 'Last Minute'),
(2095, 'es', '_LAST_MINUTE', '??ltima Hora'),
(2096, 'de', '_LAST_NAME', 'Nachname'),
(2097, 'en', '_LAST_NAME', 'Last Name'),
(2098, 'es', '_LAST_NAME', 'Apellido'),
(2099, 'de', '_LAST_NAME_EMPTY_ALERT', 'Nachname darf nicht leer sein!'),
(2100, 'en', '_LAST_NAME_EMPTY_ALERT', 'Last Name cannot be empty!'),
(2101, 'es', '_LAST_NAME_EMPTY_ALERT', 'Apellido no puede estar vac??o! Por favor, vuelva a entrar.'),
(2102, 'de', '_LAST_RUN', 'Letzter Lauf'),
(2103, 'en', '_LAST_RUN', 'Last run'),
(2104, 'es', '_LAST_RUN', 'La ??ltima ejecuci??n'),
(2105, 'de', '_LATITUDE', 'Breite'),
(2106, 'en', '_LATITUDE', 'Latitude'),
(2107, 'es', '_LATITUDE', 'Latitud'),
(2108, 'de', '_LAYOUT', 'Layout'),
(2109, 'en', '_LAYOUT', 'Layout'),
(2110, 'es', '_LAYOUT', 'Dise??o');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(2111, 'de', '_LEAVE_YOUR_COMMENT', 'Lassen Sie Ihren Kommentar'),
(2112, 'en', '_LEAVE_YOUR_COMMENT', 'Leave your comment'),
(2113, 'es', '_LEAVE_YOUR_COMMENT', 'Deja tu comentario'),
(2114, 'de', '_LEFT', 'Links'),
(2115, 'en', '_LEFT', 'Left'),
(2116, 'es', '_LEFT', 'Izquierdo'),
(2117, 'de', '_LEFT_TO_RIGHT', 'LTR (von links nach rechts)'),
(2118, 'en', '_LEFT_TO_RIGHT', 'LTR (left-to-right)'),
(2119, 'es', '_LEFT_TO_RIGHT', 'LTR (de izquierda a derecha)'),
(2120, 'de', '_LEGEND', 'Legende'),
(2121, 'en', '_LEGEND', 'Legend'),
(2122, 'es', '_LEGEND', 'Leyenda'),
(2123, 'de', '_LEGEND_CANCELED', 'Auftrag wurde von admin abgesagt und den Raum wieder verf??gbar ist auf der Suche'),
(2124, 'en', '_LEGEND_CANCELED', 'Order is canceled by admin and the room is available again in search'),
(2125, 'es', '_LEGEND_CANCELED', 'Orden fue cancelada por correo-e y la habitaci??n est?? disponible de nuevo en busca'),
(2138, 'de', '_LEGEND_COMPLETED', 'Geld bezahlt wurde (ganz oder teilweise) und damit abgeschlossen'),
(2139, 'en', '_LEGEND_COMPLETED', 'Money is paid (fully or partially) and order completed'),
(2140, 'es', '_LEGEND_COMPLETED', 'El dinero fue pagado (total o parcialmente) y para completar'),
(2141, 'de', '_LEGEND_PAYMENT_ERROR', 'Ein Fehler beim Verarbeiten Kundenzahlungen'),
(2142, 'en', '_LEGEND_PAYMENT_ERROR', 'An error occurred while processing customer payments'),
(2143, 'es', '_LEGEND_PAYMENT_ERROR', 'Se produjo un error durante el procesamiento de pagos de los clientes'),
(2144, 'de', '_LEGEND_PENDING', 'Die Buchung erstellt wurde noch nicht best??tigt und reserviert'),
(2145, 'en', '_LEGEND_PENDING', 'The booking has been created, but not yet been confirmed and reserved'),
(2146, 'es', '_LEGEND_PENDING', 'La reserva ha sido creada todav??a no ha sido confirmado y reservado'),
(2147, 'de', '_LEGEND_PREBOOKING', 'Dies ist ein System-Status f??r eine Buchung, die im Gange ist, oder wurde nicht abgeschlossen (Raum wurde in der Reservation Warenkorb hinzugef??gt worden, aber noch nicht reserviert)'),
(2148, 'en', '_LEGEND_PREBOOKING', 'This is a system status for a booking that is in progress, or was not completed (room has been added to Reservation Cart, but still not reserved)'),
(2149, 'es', '_LEGEND_PREBOOKING', 'Este es un estado del sistema de reserva que est?? en curso, o no se complet?? (habitaci??n ha sido a??adido a la cesta de reserva, pero todav??a no reservados)'),
(2150, 'de', '_LEGEND_PREORDERING', 'Dies ist ein Systemstatus f??r eine Reservierung, die im Gange ist, oder nicht abgeschlossen wurde (Auto Reservierung Warenkorb hinzugef??gt wurde, aber reserviert noch nicht)'),
(2151, 'en', '_LEGEND_PREORDERING', 'This is a system status for a reservation that is in progress, or was not completed (car has been added to Reservation Cart, but still not reserved)'),
(2152, 'es', '_LEGEND_PREORDERING', 'Este es un estado del sistema de una reserva que est?? en curso, o no se complet?? (coche ha sido a??adido a la cesta de reserva, pero a??n no reservado)'),
(2153, 'de', '_LEGEND_REFUNDED', 'Bestellen Sie erstattet wurde und das Zimmer wieder verf??gbar ist auf der Suche'),
(2154, 'en', '_LEGEND_REFUNDED', 'Order has been refunded and the room is available again in search'),
(2155, 'es', '_LEGEND_REFUNDED', 'Orden fue devuelto y la habitaci??n est?? disponible de nuevo en la b??squeda'),
(2156, 'de', '_LEGEND_RESERVED', 'Das Zimmer ist reserviert, aber um war noch nicht bezahlt (in Vorbereitung)'),
(2157, 'en', '_LEGEND_RESERVED', 'Room is reserved, but order is not paid yet (pending)'),
(2158, 'es', '_LEGEND_RESERVED', 'Habitaci??n est?? reservada, pero para que no se pag?? a??n (pendiente)'),
(2159, 'de', '_LETS_SOCIALIZE', 'Lassen Sie uns zu kn??pfen'),
(2160, 'en', '_LETS_SOCIALIZE', 'Let\'s socialize'),
(2161, 'es', '_LETS_SOCIALIZE', 'Vamos a Socializar'),
(2162, 'de', '_LICENSE', 'Lizenz'),
(2163, 'en', '_LICENSE', 'License'),
(2164, 'es', '_LICENSE', 'Licencia'),
(2165, 'de', '_LINK', 'Link'),
(2166, 'en', '_LINK', 'Link'),
(2167, 'es', '_LINK', 'Link'),
(2168, 'de', '_LINK_PARAMETER', 'Link-Parameter'),
(2169, 'en', '_LINK_PARAMETER', 'Link Parameter'),
(2170, 'es', '_LINK_PARAMETER', 'Enlace de par??metros'),
(2171, 'de', '_LOADING', 'laden'),
(2172, 'en', '_LOADING', 'loading'),
(2173, 'es', '_LOADING', 'de carga'),
(2174, 'de', '_LOCAL_TIME', 'Ortszeit'),
(2175, 'en', '_LOCAL_TIME', 'Local Time'),
(2176, 'es', '_LOCAL_TIME', 'Hora Local'),
(2177, 'de', '_LOCATION', 'Lage'),
(2178, 'en', '_LOCATION', 'Location'),
(2179, 'es', '_LOCATION', 'Ubicaci??n'),
(2180, 'de', '_LOCATIONS', 'Standorte'),
(2181, 'en', '_LOCATIONS', 'Locations'),
(2182, 'es', '_LOCATIONS', 'Ubicaciones'),
(2183, 'de', '_LOCATION_NAME', 'Ort Name'),
(2184, 'en', '_LOCATION_NAME', 'Location Name'),
(2185, 'es', '_LOCATION_NAME', 'Nombre Ubicaci??n'),
(2186, 'de', '_LOGIN', 'Login'),
(2187, 'en', '_LOGIN', 'Login'),
(2188, 'es', '_LOGIN', 'Login'),
(2189, 'de', '_LOGINS', 'Login'),
(2190, 'en', '_LOGINS', 'Logins'),
(2191, 'es', '_LOGINS', 'Iniciar sesi??n'),
(2192, 'de', '_LOGIN_PAGE_MSG', 'Verwenden Sie einen g??ltigen Administrator-Benutzernamen und das Passwort f??r den Zugriff auf das Administrator-Back-End zu bekommen. <br><br>Zur??ck zur Seite <a href=\'index.php\'>Home Page</a> <br><br><img align=\'center\' src=\'images/lock.png\' alt=\'\' width=\'92px\'>'),
(2193, 'en', '_LOGIN_PAGE_MSG', 'Use a valid administrator username and password to get access to the Administrator Back-End.<br><br>Return to site <a href=\'index.php\'>Home Page</a><br><br><img align=\'center\' src=\'images/lock.png\' alt=\'\' width=\'92px\'>'),
(2194, 'es', '_LOGIN_PAGE_MSG', 'Utilice un nombre de usuario administrador y contrase??a v??lidos para acceder al Administrador de servicios de fondo.<br><br>Volver a la p??gina <a href=\'index.php\'>Home Page</a> <br><br><img align=\'center\' src=\'images/lock.png\' alt =\'92px\'>'),
(2195, 'de', '_LOGO', 'Logo'),
(2196, 'en', '_LOGO', 'Logo'),
(2197, 'es', '_LOGO', 'Logo'),
(2198, 'de', '_LONGITUDE', 'L??nge'),
(2199, 'en', '_LONGITUDE', 'Longitude'),
(2200, 'es', '_LONGITUDE', 'Longitud'),
(2201, 'de', '_LONG_DESCRIPTION', 'Lange Beschreibung'),
(2202, 'en', '_LONG_DESCRIPTION', 'Long Description'),
(2203, 'es', '_LONG_DESCRIPTION', 'Descripci??n completa'),
(2204, 'de', '_LONG_TERM_IF_YOU_BOOK_ROOM', 'Wenn Sie das Zimmer f??r l??ngere Aufenthalte buchen Sie bekommen'),
(2205, 'en', '_LONG_TERM_IF_YOU_BOOK_ROOM', 'If you book this room for long stay you get'),
(2206, 'es', '_LONG_TERM_IF_YOU_BOOK_ROOM', 'If you book this room for long stay you get'),
(2207, 'de', '_LONG_TERM_STAY_DISCOUNT', 'Langzeitaufenthalt -Rabatt'),
(2208, 'en', '_LONG_TERM_STAY_DISCOUNT', 'Long-Term Stay Discount'),
(2209, 'es', '_LONG_TERM_STAY_DISCOUNT', 'Largo tiempo estancia Descuento'),
(2210, 'de', '_LOOK_IN', 'Suchen in'),
(2211, 'en', '_LOOK_IN', 'Look in'),
(2212, 'es', '_LOOK_IN', 'Buscar en'),
(2213, 'de', '_LOWEST_HIGHEST', 'Die niedrigste'),
(2214, 'en', '_LOWEST_HIGHEST', 'Lowest to Highest'),
(2215, 'es', '_LOWEST_HIGHEST', 'Los m??s bajos'),
(2216, 'de', '_LOW_BALANCE', 'niedrige Balance'),
(2217, 'en', '_LOW_BALANCE', 'low balance'),
(2218, 'es', '_LOW_BALANCE', 'saldo bajo'),
(2219, 'de', '_LUGGAGES', 'Gep??cks'),
(2220, 'en', '_LUGGAGES', 'Luggages'),
(2221, 'es', '_LUGGAGES', 'Equipaje'),
(2222, 'de', '_MAILER', 'Mailer'),
(2223, 'en', '_MAILER', 'Mailer'),
(2224, 'es', '_MAILER', 'Mailer'),
(2225, 'de', '_MAIN', 'Haupt'),
(2226, 'en', '_MAIN', 'Main'),
(2227, 'es', '_MAIN', 'Principal'),
(2228, 'de', '_MAIN_ADMIN', 'Haupt-Admin'),
(2229, 'en', '_MAIN_ADMIN', 'Main Admin'),
(2230, 'es', '_MAIN_ADMIN', 'Administrador principal'),
(2231, 'de', '_MAKE', 'Machen'),
(2232, 'en', '_MAKE', 'Make'),
(2233, 'es', '_MAKE', 'Hacer'),
(2234, 'de', '_MAKES', 'Macht'),
(2235, 'en', '_MAKES', 'Makes'),
(2236, 'es', '_MAKES', 'Hace'),
(2237, 'de', '_MAKE_RESERVATION', 'Machen ?? Reservierung'),
(2238, 'en', '_MAKE_RESERVATION', 'Make ?? Reservation'),
(2239, 'es', '_MAKE_RESERVATION', 'Haga ?? Reserva'),
(2240, 'de', '_MANAGE_TEMPLATES', 'Vorlagen verwalten'),
(2241, 'en', '_MANAGE_TEMPLATES', 'Manage Templates'),
(2242, 'es', '_MANAGE_TEMPLATES', 'Administrar plantillas'),
(2243, 'de', '_MANUAL', 'Handbuch'),
(2244, 'en', '_MANUAL', 'Manual'),
(2245, 'es', '_MANUAL', 'Manual'),
(2246, 'de', '_MANUFACTURER', 'Hersteller'),
(2247, 'en', '_MANUFACTURER', 'Manufacturer'),
(2248, 'es', '_MANUFACTURER', 'Fabricante'),
(2249, 'de', '_MAPPING_API_KEY', 'Mapping-API-Key'),
(2250, 'en', '_MAPPING_API_KEY', 'Mapping API Key'),
(2251, 'es', '_MAPPING_API_KEY', 'Asignaci??n de clave API'),
(2252, 'de', '_MAPS', 'Karten'),
(2253, 'en', '_MAPS', 'Maps'),
(2254, 'es', '_MAPS', 'Mapas'),
(2255, 'de', '_MAP_CODE', 'Karte Code'),
(2256, 'en', '_MAP_CODE', 'Map Code'),
(2257, 'es', '_MAP_CODE', 'Map Code'),
(2258, 'de', '_MAP_CODE_TOOLTIP', 'Wird nur verwendet, wenn L??nge und Breite nicht definiert sind'),
(2259, 'en', '_MAP_CODE_TOOLTIP', 'Used only if longitude and latitude are not defined'),
(2260, 'es', '_MAP_CODE_TOOLTIP', 'Utilizar s??lo si longitud y latitud no se definen'),
(2261, 'de', '_MAP_OVERLAY', 'Landkarten-Overlay'),
(2262, 'en', '_MAP_OVERLAY', 'Map Overlay'),
(2263, 'es', '_MAP_OVERLAY', 'Map Overlay'),
(2264, 'de', '_MARCH', 'M??rz'),
(2265, 'en', '_MARCH', 'March'),
(2266, 'es', '_MARCH', 'Marzo'),
(2267, 'de', '_MASS_MAIL', 'Masse Mail'),
(2268, 'en', '_MASS_MAIL', 'Mass Mail'),
(2269, 'es', '_MASS_MAIL', 'Misa Mail'),
(2270, 'de', '_MASS_MAIL_ALERT', 'Achtung: gew??hnlich ??ffentlichen Hostings haben ein Limit von 200 Mails pro Stunde'),
(2271, 'en', '_MASS_MAIL_ALERT', 'Attention: shared hosting services usually have a limit of 200 emails per hour'),
(2272, 'es', '_MASS_MAIL_ALERT', 'Atenci??n: servicios de alojamiento compartido por lo general tienen un l??mite de 200 correos electr??nicos por hora'),
(2273, 'de', '_MASS_MAIL_AND_TEMPLATES', 'Masse Mail & Vorlagen'),
(2274, 'en', '_MASS_MAIL_AND_TEMPLATES', 'Mass Mail & Templates'),
(2275, 'es', '_MASS_MAIL_AND_TEMPLATES', 'Misa de correo y plantillas'),
(2276, 'de', '_MAIL_LOG', 'Mail-Protokoll'),
(2277, 'en', '_MAIL_LOG', 'Mass Log'),
(2278, 'es', '_MAIL_LOG', 'Registro Electr??nico'),
(2279, 'de', '_MAX', 'max'),
(2280, 'en', '_MAX', 'Max'),
(2281, 'es', '_MAX', 'Max'),
(2282, 'de', '_MAXIMUM_NIGHTS', 'Maximale Nights'),
(2283, 'en', '_MAXIMUM_NIGHTS', 'Maximum Nights'),
(2284, 'es', '_MAXIMUM_NIGHTS', 'Noches M??ximo'),
(2285, 'de', '_MAXIMUM_NIGHTS_ALERT', '_IN_HOTEL_Die maximal zul??ssige Aufenthalt f??r diesen Zeitraum von _FROM_ um _TO_ ist _NIGHTS_ ??bernachtungen pro Buchung. Bitte geben Sie erneut.'),
(2286, 'en', '_MAXIMUM_NIGHTS_ALERT', '_IN_HOTEL_The maximum allowed stay for this period of time from _FROM_ to _TO_ is _NIGHTS_ nights per booking. Please re-enter.'),
(2287, 'es', '_MAXIMUM_NIGHTS_ALERT', '_IN_HOTEL_La estancia m??xima permitida para este per??odo de tiempo desde _FROM_ a _TO_ es _NIGHTS_ noches por reserva. Por favor, vuelva a entrar.'),
(2288, 'de', '_MAXIMUM_NUM_OF_USES_ALERT', 'Dieser Gutschein hat die maximalen f??rderf??higen Tilgungen erreicht. Bitte verwenden Sie einen anderen Coupon oder gehen Sie zu.'),
(2289, 'en', '_MAXIMUM_NUM_OF_USES_ALERT', 'This coupon has reached the maximum eligible redemptions. Please use a different coupon or proceed to.'),
(2290, 'es', '_MAXIMUM_NUM_OF_USES_ALERT', 'Este cup??n ha alcanzado los reembolsos m??ximos admisibles. Por favor, use un cup??n diferente o proceder a.'),
(2291, 'de', '_MAXIMUM_PERIOD_ALERT', 'Die maximal erlaubte Zeit f??r die Suche ist _DAYS_ Tage. Bitte erneut eingeben.'),
(2292, 'en', '_MAXIMUM_PERIOD_ALERT', 'The maximum allowed period for search is _DAYS_ days. Please re-enter.'),
(2293, 'es', '_MAXIMUM_PERIOD_ALERT', 'El plazo m??ximo para la b??squeda es _DAYS_ d??as. Por favor, vuelva a introducir.'),
(2294, 'de', '_MAXIMUM_ROOMS', 'Die maximale Anzahl der Zimmer'),
(2295, 'en', '_MAXIMUM_ROOMS', 'Maximum number of rooms'),
(2296, 'es', '_MAXIMUM_ROOMS', 'N??mero maximo de habitaciones'),
(2297, 'de', '_MAX_ADULTS', 'Max Erwachsene'),
(2298, 'en', '_MAX_ADULTS', 'Max Adults'),
(2299, 'es', '_MAX_ADULTS', 'N??mero m??ximo de Adultos'),
(2300, 'de', '_MAX_ADULTS_ACCOMMODATE', 'Maximalanzahl Erwachsene Dieses Zimmer bietet Platz'),
(2301, 'en', '_MAX_ADULTS_ACCOMMODATE', 'Maximum number of adults this room can accommodate'),
(2302, 'es', '_MAX_ADULTS_ACCOMMODATE', 'N??mero m??ximo de adultos Esta habitaci??n tiene capacidad'),
(2303, 'de', '_MAX_CHARS', '(max: _MAX_CHARS_ Zeichen)'),
(2304, 'en', '_MAX_CHARS', '(max: _MAX_CHARS_ chars)'),
(2305, 'es', '_MAX_CHARS', '(max: _MAX_CHARS_ caracteres)'),
(2306, 'de', '_MAX_CHILDREN', 'Max Kinder'),
(2307, 'en', '_MAX_CHILDREN', 'Max Children'),
(2308, 'es', '_MAX_CHILDREN', 'N??mero m??ximo de ni??os'),
(2309, 'de', '_MAX_CHILDREN_ACCOMMODATE', 'Maximale Anzahl der Kinder in diesem Zimmer bietet Platz f??r'),
(2310, 'en', '_MAX_CHILDREN_ACCOMMODATE', 'Maximum number of children this room can accommodate'),
(2311, 'es', '_MAX_CHILDREN_ACCOMMODATE', 'El n??mero m??ximo de ni??os de esta habitaci??n se pueden alojar'),
(2312, 'de', '_MAX_EXTRA_BEDS', 'Maximale Zustellbetten'),
(2313, 'en', '_MAX_EXTRA_BEDS', 'Maximum Extra Beds'),
(2314, 'es', '_MAX_EXTRA_BEDS', 'M??ximo camas supletorias'),
(2315, 'de', '_MAX_NUMBER_OF_USES', 'Max. Anzahl der Verwendungen'),
(2316, 'en', '_MAX_NUMBER_OF_USES', 'Max. Number of Uses'),
(2317, 'es', '_MAX_NUMBER_OF_USES', 'Max. N??mero de usos'),
(2318, 'de', '_MAX_OCCUPANCY', 'Max. Belegung'),
(2319, 'en', '_MAX_OCCUPANCY', 'Max. Occupancy'),
(2320, 'es', '_MAX_OCCUPANCY', 'Max. ocupaci??n'),
(2321, 'de', '_MAX_RESERVATIONS_ERROR', 'Sie haben die maximale Anzahl von erlaubten Zimmerreservierungen erreicht, dass Sie noch nicht fertig! Bitte f??llen Sie mindestens eine von ihnen auf die Reservierung von neuen R??umen fort.'),
(2322, 'en', '_MAX_RESERVATIONS_ERROR', 'You have reached the maximum number of permitted room reservations, that you have not yet finished! Please complete at least one of them to proceed reservation of new rooms.'),
(2323, 'es', '_MAX_RESERVATIONS_ERROR', 'Usted ha alcanzado el n??mero m??ximo de reservas de habitaciones permitidas, que a??n no ha terminado! Por favor, complete al menos uno de ellos para continuar la reserva de habitaciones nuevas.'),
(2324, 'de', '_MAY', 'Mai'),
(2325, 'en', '_MAY', 'May'),
(2326, 'es', '_MAY', 'Mayo'),
(2327, 'de', '_MD_AFFILIATES', 'Dieses Modul erm??glicht es Website-Betreiber zu erteilen, verfolgen und Affiliate-Links zu ihren Partnern zu verwalten.'),
(2328, 'en', '_MD_AFFILIATES', 'This module allows site owners to issue, track and manage affiliate links to their partners.'),
(2329, 'es', '_MD_AFFILIATES', 'Este m??dulo permite a los propietarios de sitios para expedir, rastrear y administrar enlaces de afiliados a sus parejas.'),
(2330, 'de', '_MD_BACKUP_AND_RESTORE', 'Mit Backup and Restore-Modul k??nnen Sie alle Ihre Datenbanktabellen, eine Datei herunterzuladen Dump speichern oder in eine Datei auf dem Server, und von einer hochgeladenen oder zuvor gespeicherte Datenbank-Dump wiederherstellen.'),
(2331, 'en', '_MD_BACKUP_AND_RESTORE', 'With Backup and Restore module you can dump all of your database tables to a file download or save to a file on the server, and to restore from an uploaded or previously saved database dump.'),
(2332, 'es', '_MD_BACKUP_AND_RESTORE', 'Con el m??dulo de seguridad y restauraci??n para volcar todas las tablas de su base de datos de descarga de un archivo o guardarlo en un archivo en el servidor, y restaurar a partir de un dep??sito de base de datos de subida o guardado previamente.'),
(2333, 'de', '_MD_BANNERS', 'Die Banner-Modul erlaubt dem Administrator, Bilder auf der Site in zuf??lliger oder Rotation Stil angezeigt.'),
(2334, 'en', '_MD_BANNERS', 'The Banners module allows administrator to display images on the site in random or rotation style.'),
(2335, 'es', '_MD_BANNERS', 'El m??dulo de Banners que permite al administrador visualizar las im??genes en el sitio en el estilo de azar o de la rotaci??n.'),
(2336, 'de', '_MD_BOOKINGS', 'Das Modul erm??glicht die Buchung der Eigent??mer der Website, um Buchungen f??r alle R??ume definieren, dann Preis sie auf einer individuellen Basis von Unterkunft und Datum. Es erm??glicht auch Buchungen von Kunden aufgenommen und verwaltet werden, ??ber Administrator-Panel.'),
(2337, 'en', '_MD_BOOKINGS', 'The Bookings module allows the site owner to define bookings for all rooms, then price them on an individual basis by accommodation and date. It also permits bookings to be taken from customers and managed via administrator panel.'),
(2338, 'es', '_MD_BOOKINGS', 'El m??dulo de reservas le permite al propietario del sitio para definir las reservas para todas las habitaciones, y luego los precios sobre una base individual por el alojamiento y la fecha. Tambi??n permite las reservas que se tomar??n de los clientes y gestionados a trav??s del panel de administrador.'),
(2342, 'de', '_MD_COMMENTS', 'Die Kommentare Modul erm??glicht es den Besuchern, um Kommentare zu Artikeln und Administrator der Website zu verlassen, um sie zu m????igen.'),
(2343, 'en', '_MD_COMMENTS', 'The Comments module allows visitors to leave comments on articles and administrator of the site to moderate them.'),
(2344, 'es', '_MD_COMMENTS', 'El m??dulo de Comentarios permite a los visitantes dejar comentarios en los art??culos y administrador del sitio a moderada.'),
(2345, 'de', '_MD_CONTACT_US', 'Kontakt Modul erm??glicht die einfache Erstellung und am Online-Kontaktformular auf Seiten der Website, unter Verwendung vordefinierter Code, wie: {module:contact_us}.'),
(2346, 'en', '_MD_CONTACT_US', 'Contact Us module allows easy create and place on-line contact form on site pages, using predefined code, like: {module:contact_us}.'),
(2347, 'es', '_MD_CONTACT_US', 'Cont??ctenos m??dulo permite una f??cil crear y colocar en l??nea el formulario de contacto en las p??ginas del sitio, utilizando el c??digo predefinidas, como: {module: contactenos}.'),
(2348, 'de', '_MD_CUSTOMERS', 'Die Kunden-Modul erm??glicht die einfache Kunden-Management auf Ihrer Website. Administrator k??nnte erstellen, bearbeiten oder l??schen Kundenkonten. Die Kunden k??nnten auf der Website und loggen Sie sich in ihr Konto zu registrieren.'),
(2349, 'en', '_MD_CUSTOMERS', 'The Customers module allows easy customers management on your site. Administrator could create, edit or delete customer accounts. Customers could register on the site and log into their accounts.'),
(2350, 'es', '_MD_CUSTOMERS', 'El m??dulo permite a los clientes la gesti??n de clientes, desde tu sitio. Administrador puede crear, editar o eliminar las cuentas de clientes. Los clientes pueden registrarse en el sitio y acceder a sus cuentas.'),
(2351, 'de', '_MD_FAQ', 'Die Frequently Asked Questions (FAQ)-Modul erm??glicht admin Benutzer Frage und Antwort-Paare, die sie auf der &#034;FAQ&#034;-Seite angezeigt werden sollen erstellen.'),
(2352, 'en', '_MD_FAQ', 'The Frequently Asked Questions (faq) module allows admin users to create question and answer pairs which they want displayed on the \'faq\' page.'),
(2353, 'es', '_MD_FAQ', 'Las Preguntas Frecuentes (FAQ) del m??dulo permite a los usuarios de administraci??n para crear pares de preguntas y respuestas que desea mostrar en la p??gina \'preguntas frecuentes\'.'),
(2354, 'de', '_MD_GALLERY', 'Die Galerie-Modul erlaubt dem Administrator, Bild oder Video Alben zu erstellen, hochzuladen Album Inhalte und display diese Inhalte durch Besucher der Website eingesehen werden.'),
(2355, 'en', '_MD_GALLERY', 'The Gallery module allows administrator to create image or video albums, upload album content and display this content to be viewed by visitor of the site.'),
(2356, 'es', '_MD_GALLERY', 'El m??dulo permite al administrador de la Galer??a para crear ??lbumes de im??genes o de v??deo, subir contenido del ??lbum y display este contenido para ser visto por los visitantes del sitio.'),
(2357, 'de', '_MD_NEWS', 'Das News und Events-Modul erlaubt dem Administrator, Neuigkeiten und Veranstaltungen auf der Website zu ver??ffentlichen, zeigen neueste von ihnen an der Seite zu blockieren.'),
(2358, 'en', '_MD_NEWS', 'The News and Events module allows administrator to post news and events on the site, display latest of them at the side block.'),
(2359, 'es', '_MD_NEWS', 'El m??dulo de Noticias y Eventos permite al administrador para publicar noticias y eventos en el sitio, muestra m??s reciente de ellas en el bloque lateral.'),
(2360, 'de', '_MD_PAGES', 'Seiten-Modul erm??glicht Administratoren die einfache Erstellung und Pflege Inhalt der Seite.'),
(2361, 'en', '_MD_PAGES', 'Pages module allows administrator to easily create and maintain page content.'),
(2362, 'es', '_MD_PAGES', 'M??dulo de p??ginas permite al administrador crear y mantener f??cilmente contenido de la p??gina.'),
(2363, 'de', '_MD_RATINGS', 'Die Ratings Modul erm??glicht Benutzern, um die Hotels zu bewerten. Die Zahl der Stimmen und der durchschnittlichen Bewertung werden auf der geeigneten Hotel vorgelegt werden.'),
(2364, 'en', '_MD_RATINGS', 'The Ratings module allows your users to rate the hotels. The number of votes and average rating will be shown at the appropriate hotel.'),
(2365, 'es', '_MD_RATINGS', 'El m??dulo Valoraciones permite a sus usuarios valorar los hoteles. El n??mero de votos y la calificaci??n media se mostrar?? en el hotel adecuado.'),
(2366, 'de', '_MD_REVIEWS', 'Die Bewertungen Modul erm??glicht es dem Administrator der Website bearbeiten / Besucher-Rezensionen zu schreiben, verwalten sie und zeigen auf der Hotel-Site-Frontend.'),
(2367, 'en', '_MD_REVIEWS', 'The Reviews Module allows the administrator of the site to add/edit visitor reviews, manage them and show on the Hotel Site frontend.'),
(2368, 'es', '_MD_REVIEWS', 'El m??dulo de comentarios permite que el administrador del sitio para a??adir / editar los comentarios de los visitantes, as?? como gestionarlos y mostrar en la interfaz de comentarios de los clientes.'),
(2369, 'de', '_MD_ROOMS', 'Die Zimmer-Modul erm??glicht den Webseiten-Inhaber einfach verwalten Zimmer in Ihrem Hotel: Erstellen, bearbeiten oder entfernen Sie sie, geben Zimmerausstattung, definieren Preise und Verf??gbarkeit f??r bestimmte Zeit, etc.'),
(2370, 'en', '_MD_ROOMS', 'The Rooms module allows the site owner easily manage rooms in your hotel: create, edit or remove them, specify room facilities, define prices and availability for certain period of time, etc.'),
(2371, 'es', '_MD_ROOMS', 'El m??dulo de habitaciones permite que el propietario del sitio gestionar f??cilmente habitaciones de su hotel: crear, editar o eliminarlos, especifique sala de instalaciones, definir los precios y la disponibilidad de cierto per??odo de tiempo, etc'),
(2372, 'de', '_MD_TESTIMONIALS', 'Die Testimonials Modul erlaubt dem Administrator der Seite, auf Hinzuf??gen / Bearbeiten Kundenaussagen, verwalten Sie sie und zeigen auf der Website des Hotels Frontend.'),
(2373, 'en', '_MD_TESTIMONIALS', 'The Testimonials Module allows the administrator of the site to add/edit customer testimonials, manage them and show on the Hotel Site frontend.'),
(2374, 'es', '_MD_TESTIMONIALS', 'El m??dulo de Testimonios permite al administrador del sitio para a??adir/editar testimonios de clientes, gesti??n de ellos y mostrar en la interfaz web del hotel.'),
(2375, 'de', '_MEAL_PLANS', 'Mahlzeit Pl??ne'),
(2376, 'en', '_MEAL_PLANS', 'Meal Plans'),
(2377, 'es', '_MEAL_PLANS', 'Planes de alimentaci??n'),
(2378, 'de', '_MEAL_PLANS_MANAGEMENT', 'Essen plant das Management'),
(2379, 'en', '_MEAL_PLANS_MANAGEMENT', 'Meal Plans Management'),
(2380, 'es', '_MEAL_PLANS_MANAGEMENT', 'Harina de Planes de Gesti??n'),
(2381, 'de', '_MENUS', 'Men??s'),
(2382, 'en', '_MENUS', 'Menus'),
(2383, 'es', '_MENUS', 'Men??s'),
(2384, 'de', '_MENUS_AND_PAGES', 'Men??s und Seiten'),
(2385, 'en', '_MENUS_AND_PAGES', 'Menus and Pages'),
(2386, 'es', '_MENUS_AND_PAGES', 'Los men??s y p??ginas'),
(2387, 'de', '_MENUS_DISABLED_ALERT', 'Nehmen Sie in Rechnung, dass einige Men??s f??r diese Vorlage kann deaktiviert werden.'),
(2388, 'en', '_MENUS_DISABLED_ALERT', 'Take in account that some menus may be disabled for this template.'),
(2389, 'es', '_MENUS_DISABLED_ALERT', 'Tome en cuenta que algunos men??s pueden ser deshabilitados para esta plantilla.'),
(2390, 'de', '_MENU_ADD', 'Men?? hinzuf??gen'),
(2391, 'en', '_MENU_ADD', 'Add Menu'),
(2392, 'es', '_MENU_ADD', 'A??adir Men??'),
(2393, 'de', '_MENU_CREATED', 'Menu wurde erfolgreich erstellt'),
(2394, 'en', '_MENU_CREATED', 'Menu has been successfully created'),
(2395, 'es', '_MENU_CREATED', 'Menu fue creado con ??xito'),
(2396, 'de', '_MENU_DELETED', 'Menu wurde erfolgreich gel??scht'),
(2397, 'en', '_MENU_DELETED', 'Menu has been successfully deleted'),
(2398, 'es', '_MENU_DELETED', 'Men?? ha sido borrado'),
(2399, 'de', '_MENU_DELETE_WARNING', 'Sie sind sicher'),
(2400, 'en', '_MENU_DELETE_WARNING', 'Are you sure you want to delete this menu? Note: this will make all its menu links invisible to your site visitors!'),
(2401, 'es', '_MENU_DELETE_WARNING', '??Est??s seguro de que deseas eliminar este men??? Nota: esto har?? que todo su men?? de enlaces invisibles a sus visitantes!'),
(2402, 'de', '_MENU_EDIT', 'Men?? Bearbeiten'),
(2403, 'en', '_MENU_EDIT', 'Edit Menu'),
(2404, 'es', '_MENU_EDIT', 'Men?? Edici??n'),
(2405, 'de', '_MENU_LINK', 'Men??-Link'),
(2406, 'en', '_MENU_LINK', 'Menu Link'),
(2407, 'es', '_MENU_LINK', 'Enlace del men??'),
(2408, 'de', '_MENU_LINK_TEXT', 'Men??-Link (max. 40 Zeichen)'),
(2409, 'en', '_MENU_LINK_TEXT', 'Menu Link (max. 40 chars)'),
(2410, 'es', '_MENU_LINK_TEXT', 'Enlace del men?? (m??x. 40 caracteres)'),
(2411, 'de', '_MENU_MANAGEMENT', 'Men??s Management'),
(2412, 'en', '_MENU_MANAGEMENT', 'Menus Management'),
(2413, 'es', '_MENU_MANAGEMENT', 'Men??s de Gesti??n'),
(2414, 'de', '_MENU_MISSED', 'Verpasste Men?? zu aktualisieren! Bitte versuchen Sie es erneut.'),
(2415, 'en', '_MENU_MISSED', 'Missed menu to update! Please, try again.'),
(2416, 'es', '_MENU_MISSED', 'Men?? perdidas para actualizar! Por favor, int??ntelo de nuevo.'),
(2417, 'de', '_MENU_NAME', 'Men??name'),
(2418, 'en', '_MENU_NAME', 'Menu Name'),
(2419, 'es', '_MENU_NAME', 'Nombre de men??'),
(2420, 'de', '_MENU_NAME_EMPTY', 'Men??-Name darf nicht leer sein!'),
(2421, 'en', '_MENU_NAME_EMPTY', 'Menu name cannot be empty!'),
(2422, 'es', '_MENU_NAME_EMPTY', 'Nombre del men?? no puede estar vac??a!'),
(2423, 'de', '_MENU_NOT_CREATED', 'Men?? wurde nicht erstellt!'),
(2424, 'en', '_MENU_NOT_CREATED', 'Menu has not been created!'),
(2425, 'es', '_MENU_NOT_CREATED', 'Men?? no se ha creado!'),
(2426, 'de', '_MENU_NOT_DELETED', 'Men?? wurde nicht gel??scht!'),
(2427, 'en', '_MENU_NOT_DELETED', 'Menu has not been deleted!'),
(2428, 'es', '_MENU_NOT_DELETED', 'Men?? no se ha eliminado!'),
(2429, 'de', '_MENU_NOT_FOUND', 'Keine Men??s gefunden'),
(2430, 'en', '_MENU_NOT_FOUND', 'No Menus Found'),
(2431, 'es', '_MENU_NOT_FOUND', 'No se han encontrado los men??s'),
(2432, 'de', '_MENU_NOT_SAVED', 'Men?? wurde nicht gespart!'),
(2433, 'en', '_MENU_NOT_SAVED', 'Menu has not been saved!'),
(2434, 'es', '_MENU_NOT_SAVED', 'Men?? no se salv??!'),
(2435, 'de', '_MENU_ORDER', 'Men?? Auftrag'),
(2436, 'en', '_MENU_ORDER', 'Menu Order'),
(2437, 'es', '_MENU_ORDER', 'Orden del men??'),
(2438, 'de', '_MENU_ORDER_CHANGED', 'Men?? Auftrag wurde erfolgreich ge??ndert'),
(2439, 'en', '_MENU_ORDER_CHANGED', 'Menu order has been successfully changed'),
(2440, 'es', '_MENU_ORDER_CHANGED', 'Orden del men?? se ha cambiado correctamente'),
(2441, 'de', '_MENU_SAVED', 'Menu wurde erfolgreich gespeichert'),
(2442, 'en', '_MENU_SAVED', 'Menu has been successfully saved'),
(2443, 'es', '_MENU_SAVED', 'Men?? se ha guardado correctamente'),
(2444, 'de', '_MENU_TITLE', 'Men?? Titel'),
(2445, 'en', '_MENU_TITLE', 'Menu Title'),
(2446, 'es', '_MENU_TITLE', 'Menu TitleT??tulo del men??'),
(2447, 'de', '_MENU_WORD', 'Men??'),
(2448, 'en', '_MENU_WORD', 'Menu'),
(2449, 'es', '_MENU_WORD', 'Men??'),
(2450, 'de', '_MESSAGE', 'Nachricht'),
(2451, 'en', '_MESSAGE', 'Message'),
(2452, 'es', '_MESSAGE', 'Mensaje'),
(2453, 'de', '_MESSAGE_EMPTY_ALERT', 'Nachricht kann nicht leer sein! Bitte erneut eingeben.'),
(2454, 'en', '_MESSAGE_EMPTY_ALERT', 'Message cannot be empty! Please re-enter.'),
(2455, 'es', '_MESSAGE_EMPTY_ALERT', 'El mensaje no puede estar vac??o! Por favor, vuelva a entrar.'),
(2456, 'de', '_META_TAG', 'Meta-Tag'),
(2457, 'en', '_META_TAG', 'Meta Tag'),
(2458, 'es', '_META_TAG', 'Meta Tag'),
(2459, 'de', '_META_TAGS', 'META-Tags'),
(2460, 'en', '_META_TAGS', 'META Tags'),
(2461, 'es', '_META_TAGS', 'Etiquetas META'),
(2462, 'de', '_METERS_SHORTENED', 'm.'),
(2463, 'en', '_METERS_SHORTENED', 'm.'),
(2464, 'es', '_METERS_SHORTENED', 'm.'),
(2465, 'de', '_METHOD', 'Methode'),
(2466, 'en', '_METHOD', 'Method'),
(2467, 'es', '_METHOD', 'M??todo'),
(2468, 'de', '_MILEAGE', 'Kilometerstand'),
(2469, 'en', '_MILEAGE', 'Mileage'),
(2470, 'es', '_MILEAGE', 'Kilometraje'),
(2471, 'de', '_MIN', 'min'),
(2472, 'en', '_MIN', 'Min'),
(2473, 'es', '_MIN', 'Min'),
(2474, 'de', '_MINIMUM_BEDS', 'Mindestanzahl der Betten'),
(2475, 'en', '_MINIMUM_BEDS', 'Minimum Number of Beds'),
(2476, 'es', '_MINIMUM_BEDS', 'N??mero m??nimo de camas'),
(2477, 'de', '_MINIMUM_NIGHTS', 'Minimum N??chte'),
(2478, 'en', '_MINIMUM_NIGHTS', 'Minimum Nights'),
(2479, 'es', '_MINIMUM_NIGHTS', 'Noches m??nimo'),
(2480, 'de', '_MINIMUM_NIGHTS_ALERT', '_IN_HOTEL_Der kleinste zul??ssige Aufenthalt f??r den Zeitraum von _FROM_ bis _TO_ ist _NIGHTS_ ??bernachtungen pro Buchung (Paket _PACKAGE_NAME_). Bitte geben Sie erneut.'),
(2481, 'en', '_MINIMUM_NIGHTS_ALERT', '_IN_HOTEL_The minimum allowed stay for the period of time from _FROM_ to _TO_ is _NIGHTS_ nights per booking (package _PACKAGE_NAME_). Please re-enter.'),
(2482, 'es', '_MINIMUM_NIGHTS_ALERT', '_IN_HOTEL_La estancia m??nima permitida para el per??odo de tiempo a partir de _FROM_ a _TO_ es _NIGHTS_ noches por reserva (paquete _PACKAGE_NAME_). Por favor, vuelva a entrar.'),
(2483, 'de', '_MINIMUM_PERIOD_ALERT', 'Der zul??ssige Mindestzeitraum f??r die Suche ist _DAYS_ Tage. Bitte erneut eingeben.'),
(2484, 'en', '_MINIMUM_PERIOD_ALERT', 'The minimum allowed period for search is _DAYS_ days. Please re-enter.'),
(2485, 'es', '_MINIMUM_PERIOD_ALERT', 'El periodo m??nimo permitido para la b??squeda es. Por favor, vuelva a introducir.'),
(2486, 'de', '_MINIMUM_ROOMS', 'Mindestzahl der Zimmer'),
(2487, 'en', '_MINIMUM_ROOMS', 'Minimum number of rooms'),
(2488, 'es', '_MINIMUM_ROOMS', 'N??mero m??nimo de habitaciones'),
(2489, 'de', '_MINUTES', 'Minuten'),
(2490, 'en', '_MINUTES', 'minutes'),
(2491, 'es', '_MINUTES', 'acta'),
(2492, 'de', '_MIN_MAX_NIGHTS_ALERT', '_IN_HOTEL_Der kleinste zul??ssige Aufenthalt f??r den Zeitraum von _FROM_ bis _TO_ ist _NIGHTS_ ??bernachtungen pro Buchung (Paket _PACKAGE_NAME_). Bitte geben Sie erneut.'),
(2493, 'en', '_MIN_MAX_NIGHTS_ALERT', 'The minimum and maximum allowed stay for the period of time from _FROM_ to _TO_ is _NIGHTS_ nights per booking (package _PACKAGE_NAME_). Please re-enter.'),
(2494, 'es', '_MIN_MAX_NIGHTS_ALERT', '_IN_HOTEL_La estancia m??nima permitida para el per??odo de tiempo a partir de _FROM_ a _TO_ es _NIGHTS_ noches por reserva (paquete _PACKAGE_NAME_). Por favor, vuelva a entrar.'),
(2495, 'de', '_MN_ROOMS_ALLOW_MINIMUM_BEDS', 'Gibt an, ob das Feld Mindestanzahl der Betten f??r die Suche zu erm??glichen'),
(2496, 'en', '_MN_ROOMS_ALLOW_MINIMUM_BEDS', 'Specifies whether to allow the field minimum numbers of beds for search'),
(2497, 'es', '_MN_ROOMS_ALLOW_MINIMUM_BEDS', 'Especifica si se debe permitir el campo n??mero m??nimo de camas para la b??squeda'),
(2498, 'de', '_MO', 'Mo'),
(2499, 'en', '_MO', 'Mo'),
(2500, 'es', '_MO', 'Lu'),
(2501, 'de', '_MODEL', 'Modell'),
(2502, 'en', '_MODEL', 'Model'),
(2503, 'es', '_MODEL', 'Modelo'),
(2504, 'de', '_MODULES', 'Modul'),
(2505, 'en', '_MODULES', 'Modules'),
(2506, 'es', '_MODULES', 'M??dulos'),
(2507, 'de', '_MODULES_MANAGEMENT', 'Modul-Management'),
(2508, 'en', '_MODULES_MANAGEMENT', 'Modules Management'),
(2509, 'es', '_MODULES_MANAGEMENT', 'M??dulos de Gesti??n'),
(2510, 'de', '_MODULES_NOT_FOUND', 'Keine Module gefunden!'),
(2511, 'en', '_MODULES_NOT_FOUND', 'No modules found!'),
(2512, 'es', '_MODULES_NOT_FOUND', 'N m??dulos encontrado!'),
(2513, 'de', '_MODULE_INSTALLED', 'Modul wurde erfolgreich installiert!'),
(2514, 'en', '_MODULE_INSTALLED', 'Module has been successfully installed!'),
(2515, 'es', '_MODULE_INSTALLED', 'M??dulo fue instalado con ??xito!'),
(2516, 'de', '_MODULE_INSTALL_ALERT', 'Sie sind sicher'),
(2517, 'en', '_MODULE_INSTALL_ALERT', 'Are you sure you want to install this module?'),
(2518, 'es', '_MODULE_INSTALL_ALERT', '??Est??s seguro de que desea instalar este m??dulo?'),
(2519, 'de', '_MODULE_UNINSTALLED', 'Modul wurde erfolgreich in nicht eingebautem Zustand!'),
(2520, 'en', '_MODULE_UNINSTALLED', 'Module has been successfully un-installed!'),
(2521, 'es', '_MODULE_UNINSTALLED', 'M??dulo ??xito sin instalar!'),
(2522, 'de', '_MODULE_UNINSTALL_ALERT', 'Sie sind sicher'),
(2523, 'en', '_MODULE_UNINSTALL_ALERT', 'Are you sure you want to un-install this module? All data, related to this module will be permanently deleted form the system!'),
(2524, 'es', '_MODULE_UNINSTALL_ALERT', '??Est??s seguro de que desea desinstalar este m??dulo? Todos los datos, relacionados con este m??dulo se borran definitivamente forman el sistema!'),
(2525, 'de', '_MON', 'Mon'),
(2526, 'en', '_MON', 'Mon'),
(2527, 'es', '_MON', 'Lun'),
(2528, 'de', '_MONDAY', 'Montag'),
(2529, 'en', '_MONDAY', 'Monday'),
(2530, 'es', '_MONDAY', 'dlunes'),
(2531, 'de', '_MONTH', 'Monat'),
(2532, 'en', '_MONTH', 'Month'),
(2533, 'es', '_MONTH', 'Mes'),
(2534, 'de', '_MONTHS', 'Monate'),
(2535, 'en', '_MONTHS', 'Months'),
(2536, 'es', '_MONTHS', 'Meses'),
(2537, 'de', '_MORE', 'Mehr'),
(2538, 'en', '_MORE', 'more'),
(2539, 'es', '_MORE', 'm??s'),
(2540, 'de', '_MORE_YEAR_AGO', 'Mehr als ein Jahr vor'),
(2541, 'en', '_MORE_YEAR_AGO', 'more than a one year ago'),
(2542, 'es', '_MORE_YEAR_AGO', 'hace m??s de un a??o de'),
(2543, 'de', '_MOST_POPULAR_HOTELS', 'Die beliebtesten Hotels'),
(2544, 'en', '_MOST_POPULAR_HOTELS', 'Most Popular Hotels'),
(2545, 'es', '_MOST_POPULAR_HOTELS', 'Hoteles m??s populares'),
(2546, 'de', '_MSN_ACTIVATE_BOOKINGS', 'Aktivieren Buchungen'),
(2547, 'en', '_MSN_ACTIVATE_BOOKINGS', 'Activate Bookings'),
(2548, 'es', '_MSN_ACTIVATE_BOOKINGS', 'Activar reservas'),
(2552, 'de', '_MSN_ADD_WATERMARK', 'Wasserzeichen hinzuf??gen, um Bilder'),
(2553, 'en', '_MSN_ADD_WATERMARK', 'Add Watermark to Images'),
(2554, 'es', '_MSN_ADD_WATERMARK', 'A??adir marca de agua a las im??genes'),
(2555, 'de', '_MSN_ADMIN_BOOKING_IN_PAST', 'Lassen Sie Buchung in der Vergangenheit'),
(2556, 'en', '_MSN_ADMIN_BOOKING_IN_PAST', 'Allow Booking in the Past'),
(2557, 'es', '_MSN_ADMIN_BOOKING_IN_PAST', 'Permitir reserva en el Pasado'),
(2558, 'de', '_MSN_ADMIN_CHANGE_CUSTOMER_PASSWORD', 'Admin-Passwort ??ndert Customers'),
(2559, 'en', '_MSN_ADMIN_CHANGE_CUSTOMER_PASSWORD', 'Admin Changes Customers Password'),
(2560, 'es', '_MSN_ADMIN_CHANGE_CUSTOMER_PASSWORD', 'Administrador cambia la contrase??a del Customers'),
(2561, 'de', '_MSN_AFFILIATES_EXPIRATION_DATE', 'Verfolgen Sie Verweise G??ltigkeit.'),
(2562, 'en', '_MSN_AFFILIATES_EXPIRATION_DATE', 'Track Referrals Validity'),
(2563, 'es', '_MSN_AFFILIATES_EXPIRATION_DATE', 'Seguimiento de las referencias validez.'),
(2564, 'de', '_MSN_AFFILIATES_NUMBER_ORDERS', 'Tracking-Bestellungen Anzahl'),
(2565, 'en', '_MSN_AFFILIATES_NUMBER_ORDERS', 'Tracking Orders Number'),
(2566, 'es', '_MSN_AFFILIATES_NUMBER_ORDERS', 'N??mero de seguimiento de pedidos'),
(2567, 'de', '_MSN_AFFILIATES_URL_PARAM', 'Partner der Link Parameter'),
(2568, 'en', '_MSN_AFFILIATES_URL_PARAM', 'Affiliate\'s Link Parameter'),
(2569, 'es', '_MSN_AFFILIATES_URL_PARAM', 'Afiliado de Enlace de par??metros'),
(2570, 'de', '_MSN_AGENCY_IN_SEARCH_RESULT', 'Agenturname in Suchergebnis'),
(2571, 'en', '_MSN_AGENCY_IN_SEARCH_RESULT', 'Agency Name in Search Result'),
(2572, 'es', '_MSN_AGENCY_IN_SEARCH_RESULT', 'Agencia de resultados de la b??squeda'),
(2573, 'de', '_MSN_ALBUMS_PER_LINE', 'Alben pro Zeile'),
(2574, 'en', '_MSN_ALBUMS_PER_LINE', 'Albums Per Line'),
(2575, 'es', '_MSN_ALBUMS_PER_LINE', '??lbumes por l??nea'),
(2576, 'de', '_MSN_ALBUM_ICON_HEIGHT', 'Album Icon H??he'),
(2577, 'en', '_MSN_ALBUM_ICON_HEIGHT', 'Album Icon Height'),
(2578, 'es', '_MSN_ALBUM_ICON_HEIGHT', 'Icono ??lbum Altura'),
(2579, 'de', '_MSN_ALBUM_ICON_WIDTH', 'Album Ikone Breite'),
(2580, 'en', '_MSN_ALBUM_ICON_WIDTH', 'Album Icon Width'),
(2581, 'es', '_MSN_ALBUM_ICON_WIDTH', '??lbum Icono Ancho'),
(2582, 'de', '_MSN_ALBUM_ITEMS_NUMERATION', 'Artikel anzeigen Nummerierung in Album'),
(2583, 'en', '_MSN_ALBUM_ITEMS_NUMERATION', 'Show Items Numeration in Album'),
(2584, 'es', '_MSN_ALBUM_ITEMS_NUMERATION', 'Mostrar elementos Numeraci??n en ??lbum'),
(2585, 'de', '_MSN_ALBUM_KEY', 'Album Schl??ssel'),
(2586, 'en', '_MSN_ALBUM_KEY', 'Album Key'),
(2587, 'es', '_MSN_ALBUM_KEY', 'Clave ??lbum'),
(2588, 'de', '_MSN_ALERT_ADMIN_NEW_REGISTRATION', 'Alert-Admin ??ber Neu Registrierung'),
(2589, 'en', '_MSN_ALERT_ADMIN_NEW_REGISTRATION', 'Alert Admin On New Registration'),
(2590, 'es', '_MSN_ALERT_ADMIN_NEW_REGISTRATION', 'Administrador Alerta en Nuevo Registro'),
(2591, 'de', '_MSN_ALLOW_ADDING_BY_ADMIN', 'Admin Erstellt Customers'),
(2592, 'en', '_MSN_ALLOW_ADDING_BY_ADMIN', 'Admin Creates customers'),
(2593, 'es', '_MSN_ALLOW_ADDING_BY_ADMIN', 'Administraci??n Crea Customers'),
(2594, 'de', '_MSN_ALLOW_AGENCIES', 'Allow Agencies'),
(2595, 'en', '_MSN_ALLOW_AGENCIES', 'Allow Agencies'),
(2596, 'es', '_MSN_ALLOW_AGENCIES', 'Allow Agencies'),
(2597, 'de', '_MSN_ALLOW_BOOKING_WITHOUT_ACCOUNT', 'Erlauben Buchen ohne Konto'),
(2598, 'en', '_MSN_ALLOW_BOOKING_WITHOUT_ACCOUNT', 'Allow Booking Without Account'),
(2599, 'es', '_MSN_ALLOW_BOOKING_WITHOUT_ACCOUNT', 'Permitir Reserva Sin Cuenta'),
(2600, 'de', '_MSN_ALLOW_CHILDREN_IN_ROOM', 'Details Zimmer auf der Suche'),
(2601, 'en', '_MSN_ALLOW_CHILDREN_IN_ROOM', 'Allow Children in Room'),
(2602, 'es', '_MSN_ALLOW_CHILDREN_IN_ROOM', 'Mostrar la habitaci??n In Search'),
(2603, 'de', '_MSN_ALLOW_CUSTOMERS_LOGIN', 'Customers erm??glichen, sich in'),
(2604, 'en', '_MSN_ALLOW_CUSTOMERS_LOGIN', 'Allow Customers to Login'),
(2605, 'es', '_MSN_ALLOW_CUSTOMERS_LOGIN', 'Permitir que los customers Login'),
(2606, 'de', '_MSN_ALLOW_CUSTOMERS_REGISTRATION', 'Allow customers to Login'),
(2607, 'en', '_MSN_ALLOW_CUSTOMERS_REGISTRATION', 'Allow Customers to Register'),
(2608, 'es', '_MSN_ALLOW_CUSTOMERS_REGISTRATION', 'Permiten a los customers Registro'),
(2609, 'de', '_MSN_ALLOW_CUST_RESET_PASSWORDS', 'Lassen Passw??rter zur??cksetzen'),
(2610, 'en', '_MSN_ALLOW_CUST_RESET_PASSWORDS', 'Allow Reset Passwords'),
(2611, 'es', '_MSN_ALLOW_CUST_RESET_PASSWORDS', 'Permitir restablecer las contrase??as'),
(2612, 'de', '_MSN_ALLOW_DEFAULT_PERIODS', 'Lassen Sie Standardzeiten'),
(2613, 'en', '_MSN_ALLOW_DEFAULT_PERIODS', 'Allow Default Periods'),
(2614, 'es', '_MSN_ALLOW_DEFAULT_PERIODS', 'Permitir per??odos predeterminados'),
(2615, 'de', '_MSN_ALLOW_EXTRA_BEDS', 'Lassen Sie Zustellbetten im Zimmer'),
(2616, 'en', '_MSN_ALLOW_EXTRA_BEDS', 'Allow Extra Beds in Rooms'),
(2617, 'es', '_MSN_ALLOW_EXTRA_BEDS', 'Permitir camas supletorias en las habitaciones'),
(2618, 'de', '_MSN_ALLOW_PAYMENT_WITH_BALANCE', 'Lassen Agenturen mit ihr Gleichgewicht zu zahlen'),
(2619, 'en', '_MSN_ALLOW_PAYMENT_WITH_BALANCE', 'Allow Agencies to pay with their balance'),
(2620, 'es', '_MSN_ALLOW_PAYMENT_WITH_BALANCE', 'Permitir a las agencias que pagan con su equilibrio'),
(2621, 'de', '_MSN_ALLOW_RESERVATION_WITHOUT_ACCOUNT', 'Lassen Buchung ohne Konto'),
(2622, 'en', '_MSN_ALLOW_RESERVATION_WITHOUT_ACCOUNT', 'Allow Reservation Without Account'),
(2623, 'es', '_MSN_ALLOW_RESERVATION_WITHOUT_ACCOUNT', 'Permitir reserva sin cuenta'),
(2624, 'de', '_MSN_ALLOW_SYSTEM_SUGGESTION', 'Lassen Sie System-Vorschlag'),
(2625, 'en', '_MSN_ALLOW_SYSTEM_SUGGESTION', 'Allow System Suggestion'),
(2626, 'es', '_MSN_ALLOW_SYSTEM_SUGGESTION', 'Permitir Sistema de Sugerencias'),
(2627, 'de', '_MSN_AUTHORIZE_LOGIN_ID', '&nbsp; Authorize.Net Login-ID'),
(2628, 'en', '_MSN_AUTHORIZE_LOGIN_ID', '&nbsp; Authorize.Net Login ID'),
(2629, 'es', '_MSN_AUTHORIZE_LOGIN_ID', '&nbsp; Authorize.Net usuario ID'),
(2630, 'de', '_MSN_AUTHORIZE_TRANSACTION_KEY', '&nbsp; Authorize.Net Transaktionsschl??ssel'),
(2631, 'en', '_MSN_AUTHORIZE_TRANSACTION_KEY', '&nbsp; Authorize.Net Transaction Key'),
(2632, 'es', '_MSN_AUTHORIZE_TRANSACTION_KEY', '&nbsp; Authorize.Net Transacci??n Clave'),
(2633, 'de', '_MSN_AVAILABLE_UNTIL_APPROVAL', 'Verf??gbar bis zur Zulassung'),
(2634, 'en', '_MSN_AVAILABLE_UNTIL_APPROVAL', 'Available Until Approval'),
(2635, 'es', '_MSN_AVAILABLE_UNTIL_APPROVAL', 'Disponible hasta Aprobaci??n'),
(2636, 'de', '_MSN_BANK_TRANSFER_INFO', '&#8226; \'Bank??berweisung\' Info'),
(2637, 'en', '_MSN_BANK_TRANSFER_INFO', '&#8226; \'Bank Transfer\' Info'),
(2638, 'es', '_MSN_BANK_TRANSFER_INFO', '&#8226; \'Transferencia bancaria\' info'),
(2639, 'de', '_MSN_BANNERS_CAPTION_HTML', 'HTML-Beschriftungs im Diashow'),
(2640, 'en', '_MSN_BANNERS_CAPTION_HTML', 'HTML in Slideshow Caption'),
(2641, 'es', '_MSN_BANNERS_CAPTION_HTML', 'HTML caption in slideshow'),
(2642, 'de', '_MSN_BANNERS_IS_ACTIVE', 'Banner zu aktivieren'),
(2643, 'en', '_MSN_BANNERS_IS_ACTIVE', 'Activate Banners'),
(2644, 'es', '_MSN_BANNERS_IS_ACTIVE', 'Activar Banners'),
(2645, 'de', '_MSN_BOOKING_MODE', 'Zahlungsmodus'),
(2646, 'en', '_MSN_BOOKING_MODE', 'Payment Mode'),
(2647, 'es', '_MSN_BOOKING_MODE', 'Modo de Pago'),
(2648, 'de', '_MSN_BOOKING_NUMBER_TYPE', 'Art der Buchungsnummern'),
(2649, 'en', '_MSN_BOOKING_NUMBER_TYPE', 'Type of Booking Numbers'),
(2650, 'es', '_MSN_BOOKING_NUMBER_TYPE', 'Tipo de N??meros de reservaci??n'),
(2651, 'de', '_MSN_CHECK_PARTIALLY_OVERLAPPING', '??berpr??fen Sie teilweise ??berlappend'),
(2652, 'en', '_MSN_CHECK_PARTIALLY_OVERLAPPING', 'Check Partially Overlapping'),
(2653, 'es', '_MSN_CHECK_PARTIALLY_OVERLAPPING', 'Compruebe que se superponen parcialmente'),
(2654, 'de', '_MSN_COMMENTS_ALLOW', 'Kommentare zulassen'),
(2655, 'en', '_MSN_COMMENTS_ALLOW', 'Allow Comments'),
(2656, 'es', '_MSN_COMMENTS_ALLOW', 'Permitir comentarios'),
(2657, 'de', '_MSN_COMMENTS_LENGTH', 'Kommentar L??nge'),
(2658, 'en', '_MSN_COMMENTS_LENGTH', 'Comment Length'),
(2659, 'es', '_MSN_COMMENTS_LENGTH', 'Comentario Largo'),
(2660, 'de', '_MSN_COMMENTS_PAGE_SIZE', 'Kommentare pro Seite'),
(2661, 'en', '_MSN_COMMENTS_PAGE_SIZE', 'Comments Per Page'),
(2662, 'es', '_MSN_COMMENTS_PAGE_SIZE', 'Comentarios Por Pagina'),
(2663, 'de', '_MSN_CONTACT_US_KEY', 'Kontakt Schl??ssel'),
(2664, 'en', '_MSN_CONTACT_US_KEY', 'Contact Key'),
(2665, 'es', '_MSN_CONTACT_US_KEY', 'Contacto Llave'),
(2666, 'de', '_MSN_CUSTOMERS_CANCEL_RESERVATION', 'Kunden k??nnen Reservierung stornieren'),
(2667, 'en', '_MSN_CUSTOMERS_CANCEL_RESERVATION', 'Customers May Cancel Reservation'),
(2668, 'es', '_MSN_CUSTOMERS_CANCEL_RESERVATION', 'Los clientes pueden cancelar reservaci??n'),
(2669, 'de', '_MSN_CUSTOMERS_IMAGE_VERIFICATION', 'Bild Verifikation'),
(2670, 'en', '_MSN_CUSTOMERS_IMAGE_VERIFICATION', 'Image Verification'),
(2671, 'es', '_MSN_CUSTOMERS_IMAGE_VERIFICATION', 'Verificaci??n de la imagen'),
(2672, 'de', '_MSN_DEFAULT_PAYMENT_SYSTEM', '&nbsp; Standard-Zahlungssystem'),
(2673, 'en', '_MSN_DEFAULT_PAYMENT_SYSTEM', '&nbsp; Default Payment System'),
(2674, 'es', '_MSN_DEFAULT_PAYMENT_SYSTEM', '&nbsp; Por defecto del sistema de pago'),
(2675, 'de', '_MSN_DELAY_LENGTH', 'Delay-L??nge'),
(2676, 'en', '_MSN_DELAY_LENGTH', 'Delay Length'),
(2677, 'es', '_MSN_DELAY_LENGTH', 'Retardo Largo'),
(2678, 'de', '_MSN_DELETE_PENDING_TIME', 'Bis Zeit'),
(2679, 'en', '_MSN_DELETE_PENDING_TIME', 'Pending Time'),
(2680, 'es', '_MSN_DELETE_PENDING_TIME', 'Tiempo de espera'),
(2681, 'de', '_MSN_EMAIL', 'Kontakt E-Mail'),
(2682, 'en', '_MSN_EMAIL', 'Contact Email'),
(2683, 'es', '_MSN_EMAIL', 'Correo electr??nico de contacto'),
(2684, 'de', '_MSN_FAQ_IS_ACTIVE', 'Aktivieren FAQ'),
(2685, 'en', '_MSN_FAQ_IS_ACTIVE', 'Activate FAQ'),
(2686, 'es', '_MSN_FAQ_IS_ACTIVE', 'Activar FAQ'),
(2687, 'de', '_MSN_FIRST_NIGHT_CALCULATING_TYPE', 'First Night Rechnen Typ'),
(2688, 'en', '_MSN_FIRST_NIGHT_CALCULATING_TYPE', 'First Night Calculating Type'),
(2689, 'es', '_MSN_FIRST_NIGHT_CALCULATING_TYPE', 'Primera Noche Tipo de C??lculo'),
(2690, 'de', '_MSN_GALLERY_KEY', 'Galerie Key'),
(2691, 'en', '_MSN_GALLERY_KEY', 'Gallery Key'),
(2692, 'es', '_MSN_GALLERY_KEY', 'Galer??a clave'),
(2693, 'de', '_MSN_GALLERY_WRAPPER', 'HTML-Wrapping-Tag'),
(2694, 'en', '_MSN_GALLERY_WRAPPER', 'HTML Wrapping Tag'),
(2695, 'es', '_MSN_GALLERY_WRAPPER', 'Envolver HTML Tag'),
(2696, 'de', '_MSN_GUESTS_STAY_DISCOUNT', 'Rabatt auf den Aufenthalt von G??sten'),
(2697, 'en', '_MSN_GUESTS_STAY_DISCOUNT', 'Discount on Stay of Guests'),
(2698, 'es', '_MSN_GUESTS_STAY_DISCOUNT', 'De descuento en la estancia de los hu??spedes'),
(2699, 'de', '_MSN_HOTEL_DEFAULT_CONTACT_EMAIL', 'Standard Kontakt E-Mail'),
(2700, 'en', '_MSN_HOTEL_DEFAULT_CONTACT_EMAIL', 'Default Contact Email'),
(2701, 'es', '_MSN_HOTEL_DEFAULT_CONTACT_EMAIL', 'Correo electr??nico de contacto predeterminado'),
(2702, 'de', '_MSN_HOTEL_DEFAULT_CONTACT_PHONE', 'Standard-Kontakt Telefon'),
(2703, 'en', '_MSN_HOTEL_DEFAULT_CONTACT_PHONE', 'Default Contact Phone'),
(2704, 'es', '_MSN_HOTEL_DEFAULT_CONTACT_PHONE', 'Tel??fono de contacto predeterminada'),
(2705, 'de', '_MSN_HOTEL_IN_SEARCH_RESULT', 'Hotel Kontakt in Suchergebnis '),
(2706, 'en', '_MSN_HOTEL_IN_SEARCH_RESULT', 'Hotel Contact in Search Result'),
(2707, 'es', '_MSN_HOTEL_IN_SEARCH_RESULT', 'Hotel Datos de contacto de resultados de la b??squeda'),
(2708, 'de', '_MSN_IMAGE_GALLERY_TYPE', 'Bildergalerie Art'),
(2709, 'en', '_MSN_IMAGE_GALLERY_TYPE', 'Image Gallery Type'),
(2710, 'es', '_MSN_IMAGE_GALLERY_TYPE', 'Galer??a de im??genes Tipo'),
(2711, 'de', '_MSN_IMAGE_VERIFICATION_ALLOW', 'Bild Verifikation'),
(2712, 'en', '_MSN_IMAGE_VERIFICATION_ALLOW', 'Image Verification'),
(2713, 'es', '_MSN_IMAGE_VERIFICATION_ALLOW', 'Verificaci??n de la imagen'),
(2714, 'de', '_MSN_IS_SEND_DELAY', 'Senden Verz??gerung'),
(2715, 'en', '_MSN_IS_SEND_DELAY', 'Sending Delay'),
(2716, 'es', '_MSN_IS_SEND_DELAY', 'El env??o de Delay'),
(2717, 'de', '_MSN_ITEMS_COUNT_IN_ALBUM', 'Alle Artikel anzeigen Graf in Album'),
(2718, 'en', '_MSN_ITEMS_COUNT_IN_ALBUM', 'Show Items Count in Album'),
(2719, 'es', '_MSN_ITEMS_COUNT_IN_ALBUM', 'Mostrar elementos Count en ??lbum'),
(2720, 'de', '_MSN_LONG_TERM_STAY_DISCOUNT', 'Rabatt auf Langzeitaufenthalt '),
(2721, 'en', '_MSN_LONG_TERM_STAY_DISCOUNT', 'Discount on Long-Term Stay'),
(2722, 'es', '_MSN_LONG_TERM_STAY_DISCOUNT', 'De descuento en Long Term-Stay'),
(2723, 'de', '_MSN_MAXIMUM_ALLOWED_RESERVATIONS', 'Maximal erlaubt Reservierung'),
(2724, 'en', '_MSN_MAXIMUM_ALLOWED_RESERVATIONS', 'Maximum Allowed Reservations'),
(2725, 'es', '_MSN_MAXIMUM_ALLOWED_RESERVATIONS', 'M??ximo Reservas mascotas'),
(2726, 'de', '_MSN_MAXIMUM_NIGHTS', 'Maximale N??chte Aufenthalt'),
(2727, 'en', '_MSN_MAXIMUM_NIGHTS', 'Maximum Nights Stay'),
(2728, 'es', '_MSN_MAXIMUM_NIGHTS', 'M??ximo Noches de Alojamiento'),
(2729, 'de', '_MSN_MAX_ADULTS_IN_SEARCH', 'Maximale Erwachsene im Suchfeld'),
(2730, 'en', '_MSN_MAX_ADULTS_IN_SEARCH', 'Maximum Adults in Search Box'),
(2731, 'es', '_MSN_MAX_ADULTS_IN_SEARCH', 'M??ximo Adultos en el cuadro de b??squeda'),
(2732, 'de', '_MSN_MAX_CHILDREN_IN_SEARCH', 'Maximale Erwachsene im Suchfeld'),
(2733, 'en', '_MSN_MAX_CHILDREN_IN_SEARCH', 'Maximum Adults in Search Box'),
(2734, 'es', '_MSN_MAX_CHILDREN_IN_SEARCH', 'M??ximo Adultos en el cuadro de b??squeda'),
(2735, 'de', '_MSN_MINIMUM_NIGHTS', 'Minimale N??chte Aufenthalt'),
(2736, 'en', '_MSN_MINIMUM_NIGHTS', 'Minimum Nights Stay'),
(2737, 'es', '_MSN_MINIMUM_NIGHTS', 'Estancia M??nima'),
(2738, 'de', '_MSN_MULTIPLE_ITEMS_PER_DAY', 'Mehrere Artikel pro Tag'),
(2739, 'en', '_MSN_MULTIPLE_ITEMS_PER_DAY', 'Multiple Items per Day'),
(2740, 'es', '_MSN_MULTIPLE_ITEMS_PER_DAY', 'Varios elementos por D??a'),
(2741, 'de', '_MSN_NEWS_COUNT', 'Nachrichten Graf'),
(2742, 'en', '_MSN_NEWS_COUNT', 'News Count'),
(2743, 'es', '_MSN_NEWS_COUNT', 'Conde Noticias'),
(2744, 'de', '_MSN_NEWS_HEADER_LENGTH', 'Nachrichten-Header-L??nge'),
(2745, 'en', '_MSN_NEWS_HEADER_LENGTH', 'News Header Length'),
(2746, 'es', '_MSN_NEWS_HEADER_LENGTH', 'Longitud de la cabecera Noticias'),
(2747, 'de', '_MSN_NEWS_RSS', 'RSS-News'),
(2748, 'en', '_MSN_NEWS_RSS', 'News RSS'),
(2749, 'es', '_MSN_NEWS_RSS', 'RSS de las Noticias'),
(2750, 'de', '_MSN_ONLINE_CREDIT_CARD_REQUIRED', '&#8226; Kreditkarten f??r \'Online-Bestellungen\''),
(2751, 'en', '_MSN_ONLINE_CREDIT_CARD_REQUIRED', '&#8226; Credit Cards for \'On-line Orders\''),
(2752, 'es', '_MSN_ONLINE_CREDIT_CARD_REQUIRED', '&#8226; Tarjetas de cr??dito para \'Pedidos on-line\''),
(2753, 'de', '_MSN_PAYMENT_TYPE_2CO', '&#8226; 2CO Zahlungsart'),
(2754, 'en', '_MSN_PAYMENT_TYPE_2CO', '&#8226; 2CO Payment Type	'),
(2755, 'es', '_MSN_PAYMENT_TYPE_2CO', '&#8226; 2CO Tipo de Pago'),
(2756, 'de', '_MSN_PAYMENT_TYPE_AUTHORIZE', '&#8226; Authorize.Net Zahlungsart'),
(2757, 'en', '_MSN_PAYMENT_TYPE_AUTHORIZE', '&#8226; Authorize.Net Payment Type'),
(2758, 'es', '_MSN_PAYMENT_TYPE_AUTHORIZE', '&#8226; Authorize,Net Tipo de Pago'),
(2759, 'de', '_MSN_PAYMENT_TYPE_BANK_TRANSFER', '&#8226; \'Bank??berweisung\' Zahlungsart'),
(2760, 'en', '_MSN_PAYMENT_TYPE_BANK_TRANSFER', '&#8226; \'Bank Transfer\' Payment Type'),
(2761, 'es', '_MSN_PAYMENT_TYPE_BANK_TRANSFER', '&#8226; \'Transferencia bancaria\' Tipo de Pago'),
(2762, 'de', '_MSN_PAYMENT_TYPE_ONLINE', '&#8226; \'On-line Bestell\' Zahlungsart'),
(2763, 'en', '_MSN_PAYMENT_TYPE_ONLINE', '&#8226; \'On-line Order\' Payment Type'),
(2764, 'es', '_MSN_PAYMENT_TYPE_ONLINE', '&#8226; Tipo \'On-line Orden\' Pago'),
(2765, 'de', '_MSN_PAYMENT_TYPE_PAYPAL', '&#8226; PayPal-Zahlungstyp'),
(2766, 'en', '_MSN_PAYMENT_TYPE_PAYPAL', '&#8226; PayPal Payment Type'),
(2767, 'es', '_MSN_PAYMENT_TYPE_PAYPAL', '&#8226; PayPal Tipo de Pago'),
(2768, 'de', '_MSN_PAYMENT_TYPE_POA', '&#8226; \'POA\' Zahlungsart'),
(2769, 'en', '_MSN_PAYMENT_TYPE_POA', '&#8226; \'POA\' Payment Type'),
(2770, 'es', '_MSN_PAYMENT_TYPE_POA', '&#8226; Tipo \'POA\' Pago'),
(2771, 'de', '_MSN_PAYPAL_EMAIL', '&nbsp; PayPal Email'),
(2772, 'en', '_MSN_PAYPAL_EMAIL', '&nbsp; PayPal Email'),
(2773, 'es', '_MSN_PAYPAL_EMAIL', '&nbsp; PayPal Email'),
(2774, 'de', '_MSN_PREBOOKING_ORDERS_TIMEOUT', '\'Vorl??ufige Buchung\' Orders Timeout'),
(2775, 'en', '_MSN_PREBOOKING_ORDERS_TIMEOUT', '\'Prebooking\' Orders Timeout'),
(2776, 'es', '_MSN_PREBOOKING_ORDERS_TIMEOUT', '\'??rdenes Pre Reserva\' Tiempo de espera'),
(2777, 'de', '_MSN_PRE_MODERATION_ALLOW', 'Kommentare Pre-Moderation'),
(2778, 'en', '_MSN_PRE_MODERATION_ALLOW', 'Comments Pre-Moderation'),
(2779, 'es', '_MSN_PRE_MODERATION_ALLOW', 'Comentarios Moderaci??n Pre'),
(2780, 'de', '_MSN_PRE_PAYMENT_TYPE', 'Vorauszahlung Typ'),
(2781, 'en', '_MSN_PRE_PAYMENT_TYPE', 'Pre-Payment Type');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(2782, 'es', '_MSN_PRE_PAYMENT_TYPE', 'Tipo Prepago'),
(2783, 'de', '_MSN_PRE_PAYMENT_VALUE', 'Vorauszahlung Wert'),
(2784, 'en', '_MSN_PRE_PAYMENT_VALUE', 'Pre-Payment Value'),
(2785, 'es', '_MSN_PRE_PAYMENT_VALUE', 'Valor de prepago'),
(2786, 'de', '_MSN_RATINGS_USER_TYPE', 'Benutzertyp'),
(2787, 'en', '_MSN_RATINGS_USER_TYPE', 'User Type'),
(2788, 'es', '_MSN_RATINGS_USER_TYPE', 'Tipo de usuario'),
(2789, 'de', '_MSN_REFUND_MONEY', 'R??ckerstattung f??r einen Geld'),
(2790, 'en', '_MSN_REFUND_MONEY', 'Refund a money'),
(2791, 'es', '_MSN_REFUND_MONEY', 'Reembolsar un dinero'),
(2792, 'de', '_MSN_REG_CONFIRMATION', 'Best??tigung Typ'),
(2793, 'en', '_MSN_REG_CONFIRMATION', 'Confirmation Type'),
(2794, 'es', '_MSN_REG_CONFIRMATION', 'Tipo de confirmaci??n'),
(2795, 'de', '_MSN_REMEMBER_ME', 'Angemeldet bleiben'),
(2796, 'en', '_MSN_REMEMBER_ME', 'Remember Me'),
(2797, 'es', '_MSN_REMEMBER_ME', 'Recordarme'),
(2798, 'de', '_MSN_RESERVATION_EXPIRED_ALERT', 'Reservierung Abgelaufen Benachrichtigung'),
(2799, 'en', '_MSN_RESERVATION_EXPIRED_ALERT', 'Reservation Expired Alert'),
(2800, 'es', '_MSN_RESERVATION_EXPIRED_ALERT', 'Reserva Expirado Alerta'),
(2801, 'de', '_MSN_RESERVATION_INITIAL_FEE', 'Booking Ausgangsgeb??hr'),
(2802, 'en', '_MSN_RESERVATION_INITIAL_FEE', 'Booking Initial Fee'),
(2803, 'es', '_MSN_RESERVATION_INITIAL_FEE', 'Cargo inicial de Reservas'),
(2804, 'de', '_MSN_RESERVATION_NUMBER_TYPE', 'Art der Reservierungsnummern '),
(2805, 'en', '_MSN_RESERVATION_NUMBER_TYPE', 'Type of Reservation Numbers'),
(2806, 'es', '_MSN_RESERVATION_NUMBER_TYPE', 'Tipo de n??meros de reservas'),
(2807, 'de', '_MSN_REVIEWS_KEY', 'Reviews Key'),
(2808, 'en', '_MSN_REVIEWS_KEY', 'Reviews Key'),
(2809, 'es', '_MSN_REVIEWS_KEY', 'Opiniones clave'),
(2810, 'de', '_MSN_ROOMS_ALLOW_MINIMUM_BEDS', 'Lassen Mindestbettenzahl'),
(2811, 'en', '_MSN_ROOMS_ALLOW_MINIMUM_BEDS', 'Allow Minimum Number of Beds'),
(2812, 'es', '_MSN_ROOMS_ALLOW_MINIMUM_BEDS', 'Permitir N??mero M??nimo de Camas'),
(2813, 'de', '_MSN_ROOMS_IN_SEARCH', 'Details Zimmer auf der Suche'),
(2814, 'en', '_MSN_ROOMS_IN_SEARCH', 'Show Rooms In Search'),
(2815, 'es', '_MSN_ROOMS_IN_SEARCH', 'Mostrar la habitaci??n In Search'),
(2816, 'de', '_MSN_ROTATE_DELAY', 'Rotation Verz??gerung'),
(2817, 'en', '_MSN_ROTATE_DELAY', 'Rotation Delay'),
(2818, 'es', '_MSN_ROTATE_DELAY', 'Rotaci??n de retardo'),
(2819, 'de', '_MSN_ROTATION_TYPE', 'Rotationstyp'),
(2820, 'en', '_MSN_ROTATION_TYPE', 'Rotation Type'),
(2821, 'es', '_MSN_ROTATION_TYPE', 'Tipo de rotaci??n'),
(2822, 'de', '_MSN_SEARCH_AVAILABILITY_PAGE_SIZE', 'Suche Verf??gbarkeit Seitenformat'),
(2823, 'en', '_MSN_SEARCH_AVAILABILITY_PAGE_SIZE', 'Search Availability Page Size'),
(2824, 'es', '_MSN_SEARCH_AVAILABILITY_PAGE_SIZE', 'Buscar disponibilidad Tama??o de p??gina'),
(2825, 'de', '_MSN_SEARCH_AVAILABILITY_PERIOD', 'Maximal zul??ssige Suchperiode '),
(2826, 'en', '_MSN_SEARCH_AVAILABILITY_PERIOD', 'Maximum Allowed Search Period'),
(2827, 'es', '_MSN_SEARCH_AVAILABILITY_PERIOD', 'M??ximo periodo de B??squeda'),
(2828, 'de', '_MSN_SEND_ORDER_COPY_TO_ADMIN', 'Bestellung abschicken Kopie an Admin'),
(2829, 'en', '_MSN_SEND_ORDER_COPY_TO_ADMIN', 'Send Order Copy To Admin'),
(2830, 'es', '_MSN_SEND_ORDER_COPY_TO_ADMIN', 'Enviar copia a fin de administrador'),
(2831, 'de', '_MSN_SEPARATE_GATEWAYS', 'Hotelbesitzern separate Gateways'),
(2832, 'en', '_MSN_SEPARATE_GATEWAYS', 'Hotel Owners Separate Gateways'),
(2833, 'es', '_MSN_SEPARATE_GATEWAYS', 'Propietarios de hotel Gateways separados'),
(2834, 'de', '_MSN_SHOW_BOOKING_STATUS_FORM', 'Zeige Buchungsstand Formular'),
(2835, 'en', '_MSN_SHOW_BOOKING_STATUS_FORM', 'Show Booking Status Form'),
(2836, 'es', '_MSN_SHOW_BOOKING_STATUS_FORM', 'Mostrar Formulario de Estado de la reservaci??n'),
(2837, 'de', '_MSN_SHOW_DEFAULT_PRICES', 'Preise anzeigen Standard'),
(2838, 'en', '_MSN_SHOW_DEFAULT_PRICES', 'Show Default Prices'),
(2839, 'es', '_MSN_SHOW_DEFAULT_PRICES', 'Mostrar Defecto precios'),
(2840, 'de', '_MSN_SHOW_FULLY_BOOKED_ROOMS', 'Zeigen Vollbelegung Zimmer'),
(2841, 'en', '_MSN_SHOW_FULLY_BOOKED_ROOMS', 'Show Fully Booked Rooms'),
(2842, 'es', '_MSN_SHOW_FULLY_BOOKED_ROOMS', 'Mostrar Habitaciones totalmente Reservados'),
(2843, 'de', '_MSN_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', 'Newsletter Abonnement'),
(2844, 'en', '_MSN_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', 'Newsletter Subscription'),
(2845, 'es', '_MSN_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', 'Suscripci??n bolet??n'),
(2846, 'de', '_MSN_SHOW_NEWS_BLOCK', 'Nachrichten blockieren'),
(2847, 'en', '_MSN_SHOW_NEWS_BLOCK', 'News Block'),
(2848, 'es', '_MSN_SHOW_NEWS_BLOCK', 'Bloque de noticias'),
(2849, 'de', '_MSN_SHOW_RESERVATION_FORM', 'Buchungsformular anzeigen'),
(2850, 'en', '_MSN_SHOW_RESERVATION_FORM', 'Show Reservation Form'),
(2851, 'es', '_MSN_SHOW_RESERVATION_FORM', 'Mostrar Formulario de Reserva'),
(2852, 'de', '_MSN_SHOW_ROOMS_OCCUPANCY', 'Belegung Zimmer einblenden'),
(2853, 'en', '_MSN_SHOW_ROOMS_OCCUPANCY', 'Show Rooms Occupancy'),
(2854, 'es', '_MSN_SHOW_ROOMS_OCCUPANCY', 'Showrooms Ocupaci??n'),
(2855, 'de', '_MSN_SHOW_ROOMS_OCCUPANCY_MONTHS', 'Zimmer Belegung Monate'),
(2856, 'en', '_MSN_SHOW_ROOMS_OCCUPANCY_MONTHS', 'Rooms Occupancy Months'),
(2857, 'es', '_MSN_SHOW_ROOMS_OCCUPANCY_MONTHS', 'Meses habitaciones de ocupaci??n'),
(2858, 'de', '_MSN_SPECIAL_TAX', 'Sonderabgaben pro Gast'),
(2859, 'en', '_MSN_SPECIAL_TAX', 'Special Tax per Guest'),
(2860, 'es', '_MSN_SPECIAL_TAX', 'Impuesto Especial por hu??sped'),
(2861, 'de', '_MSN_TC_DEFAULT_CONTACT_EMAIL', 'Standard Kontakt E-Mail'),
(2862, 'en', '_MSN_TC_DEFAULT_CONTACT_EMAIL', 'Default Contact Email'),
(2863, 'es', '_MSN_TC_DEFAULT_CONTACT_EMAIL', 'Correo electr??nico de contacto predeterminado'),
(2864, 'de', '_MSN_TC_DEFAULT_CONTACT_PHONE', 'Standard-Kontakt Telefon'),
(2865, 'en', '_MSN_TC_DEFAULT_CONTACT_PHONE', 'Default Contact Phone'),
(2866, 'es', '_MSN_TC_DEFAULT_CONTACT_PHONE', 'Tel??fono de contacto predeterminada'),
(2867, 'de', '_MSN_TC_SEPARATE_GATEWAYS', 'Auto Agenturen Separate Gateways'),
(2868, 'en', '_MSN_TC_SEPARATE_GATEWAYS', 'Car Agencies Separate Gateways'),
(2869, 'es', '_MSN_TC_SEPARATE_GATEWAYS', 'Agencias de autos separados Gateways'),
(2870, 'de', '_MSN_TESTIMONIALS_KEY', 'Testimonials Key'),
(2871, 'en', '_MSN_TESTIMONIALS_KEY', 'Testimonials Key'),
(2872, 'es', '_MSN_TESTIMONIALS_KEY', 'Testimonios Key'),
(2873, 'de', '_MSN_TWO_CHECKOUT_VENDOR', '&#8226; 2CO Vendor ID'),
(2874, 'en', '_MSN_TWO_CHECKOUT_VENDOR', '&#8226; 2CO Vendor ID'),
(2875, 'es', '_MSN_TWO_CHECKOUT_VENDOR', '&#8226; 2CO Vendor ID'),
(2876, 'de', '_MSN_USER_TYPE', 'Benutzertyp'),
(2877, 'en', '_MSN_USER_TYPE', 'User Type'),
(2878, 'es', '_MSN_USER_TYPE', 'Tipo de usuario'),
(2879, 'de', '_MSN_VAT_INCLUDED_IN_PRICE', 'Enthalten die gesetzliche Mehrwertsteuer in Preis'),
(2880, 'en', '_MSN_VAT_INCLUDED_IN_PRICE', 'Include VAT in Price'),
(2881, 'es', '_MSN_VAT_INCLUDED_IN_PRICE', 'IVA Precio Incluye'),
(2882, 'de', '_MSN_VAT_VALUE', 'MwSt Standardwert'),
(2883, 'en', '_MSN_VAT_VALUE', 'VAT Default Value'),
(2884, 'es', '_MSN_VAT_VALUE', 'IVA Valor predeterminado'),
(2885, 'de', '_MSN_VIDEO_GALLERY_TYPE', 'Videogalerie Art'),
(2886, 'en', '_MSN_VIDEO_GALLERY_TYPE', 'Video Gallery Type'),
(2887, 'es', '_MSN_VIDEO_GALLERY_TYPE', 'La galer??a de video Tipo'),
(2888, 'de', '_MSN_WATERMARK_TEXT', 'Wasserzeichentext'),
(2889, 'en', '_MSN_WATERMARK_TEXT', 'Watermark Text'),
(2890, 'es', '_MSN_WATERMARK_TEXT', 'Estampilla de texto'),
(2891, 'de', '_MS_ACTIVATE_BOOKINGS', 'Legt fest, ob Buchung Modul aktiv ist auf einem Ganze Web-Site, Front-End/Back-End-L??sung oder nur inaktiv'),
(2892, 'en', '_MS_ACTIVATE_BOOKINGS', 'Specifies whether booking module is active on a Whole Site, Front-End/Back-End only or inactive'),
(2893, 'es', '_MS_ACTIVATE_BOOKINGS', 'Define si el m??dulo de reserva est?? activa en todo el sitio, Front-End/Back-End solo o inactivo'),
(2897, 'de', '_MS_ADD_WATERMARK', 'Gibt an, ob Wasserzeichen zur Zimmer Bilder oder nicht hinzuf??gen'),
(2898, 'en', '_MS_ADD_WATERMARK', 'Specifies whether to add watermark to rooms images or not'),
(2899, 'es', '_MS_ADD_WATERMARK', 'Especifica si se debe a??adir marcas de agua a las im??genes o no habitaciones'),
(2900, 'de', '_MS_ADMIN_BOOKING_IN_PAST', 'Gibt an, ob der Buchung in der Vergangenheit f??r Administratoren und Besitzer des Hotels (ab Beginn des laufenden Monats)'),
(2901, 'en', '_MS_ADMIN_BOOKING_IN_PAST', 'Specifies whether to allow booking in the past for admins and hotel owners (from the beginning of current month)'),
(2902, 'es', '_MS_ADMIN_BOOKING_IN_PAST', 'Especifica si se permite la reserva en el pasado para los administradores y propietarios de hoteles (desde el principio del mes actual)'),
(2903, 'de', '_MS_ADMIN_CHANGE_CUSTOMER_PASSWORD', 'Gibt an, ob ??ndernden Kunden-Passwort von Admin'),
(2904, 'en', '_MS_ADMIN_CHANGE_CUSTOMER_PASSWORD', 'Specifies whether to allow changing customer password by Admin'),
(2905, 'es', '_MS_ADMIN_CHANGE_CUSTOMER_PASSWORD', 'Especifica si se permite cambiar la contrase??a de cliente de administraci??n'),
(2906, 'de', '_MS_ADMIN_CHANGE_USER_PASSWORD', 'Gibt an, ob sich ??ndernde Benutzer-Passwort vom Admin erlaubt'),
(2907, 'en', '_MS_ADMIN_CHANGE_USER_PASSWORD', 'Specifies whether to allow changing user password by Admin'),
(2908, 'es', '_MS_ADMIN_CHANGE_USER_PASSWORD', 'Especifica si se permite el cambio de contrase??as de usuario de Admin'),
(2909, 'de', '_MS_AFFILIATES_EXPIRATION_DATE', 'Definiert eine maximale Anzahl von Tagen der Partner-ID zu verfolgen'),
(2910, 'en', '_MS_AFFILIATES_EXPIRATION_DATE', 'Defines a maximum number of days to track affiliate ID'),
(2911, 'es', '_MS_AFFILIATES_EXPIRATION_DATE', 'Define un n??mero m??ximo de d??as para realizar el seguimiento de Identificaci??n de socio'),
(2912, 'de', '_MS_AFFILIATES_NUMBER_ORDERS', 'Verfolgt werden Gibt die Anzahl der Auftr??ge durch das System: nur oder alle Auftr??ge innerhalb der vordefinierten Tracking-Periode erster Ordnung.'),
(2913, 'en', '_MS_AFFILIATES_NUMBER_ORDERS', 'Specifies number of orders to be tracked by system: first only or all orders within pre-defined tracking period.'),
(2914, 'es', '_MS_AFFILIATES_NUMBER_ORDERS', 'Especifica el n??mero de pedidos para ser rastreado por el sistema: s??lo el primer orden o todas las ??rdenes dentro del per??odo de seguimiento predefinido.'),
(2915, 'de', '_MS_AFFILIATES_URL_PARAM', 'Gibt die URL-Parameter f??r Affiliate-Link'),
(2916, 'en', '_MS_AFFILIATES_URL_PARAM', 'Specifies the URL parameter for affiliate\'s link'),
(2917, 'es', '_MS_AFFILIATES_URL_PARAM', 'Especifica el par??metro URL de enlace de afiliado'),
(2918, 'de', '_MS_AGENCY_IN_SEARCH_RESULT', 'Gibt an, ob Agenturname in den Suchergebnissen angezeigt'),
(2919, 'en', '_MS_AGENCY_IN_SEARCH_RESULT', 'Specifies whether to show agency name in search results'),
(2920, 'es', '_MS_AGENCY_IN_SEARCH_RESULT', 'Especifica si se debe mostrar el nombre del organismo en los resultados de b??squeda'),
(2921, 'de', '_MS_ALBUMS_PER_LINE', 'Anzahl der Album Symbole pro Zeile'),
(2922, 'en', '_MS_ALBUMS_PER_LINE', 'Number of album icons per line'),
(2923, 'es', '_MS_ALBUMS_PER_LINE', 'N??mero de iconos de disco por l??nea'),
(2924, 'de', '_MS_ALBUM_ICON_HEIGHT', 'Album-Symbol H??he'),
(2925, 'en', '_MS_ALBUM_ICON_HEIGHT', 'Album icon height'),
(2926, 'es', '_MS_ALBUM_ICON_HEIGHT', 'Album altura icono'),
(2927, 'de', '_MS_ALBUM_ICON_WIDTH', 'Album-Symbol Breite'),
(2928, 'en', '_MS_ALBUM_ICON_WIDTH', 'Album icon width'),
(2929, 'es', '_MS_ALBUM_ICON_WIDTH', 'Album ancho icono'),
(2930, 'de', '_MS_ALBUM_ITEMS_NUMERATION', 'Gibt an, ob Elemente Nummerierung in Alben zeigen'),
(2931, 'en', '_MS_ALBUM_ITEMS_NUMERATION', 'Specifies whether to show items numeration in albums'),
(2932, 'es', '_MS_ALBUM_ITEMS_NUMERATION', 'Especifica si se deben mostrar los elementos de numeraci??n en ??lbumes'),
(2933, 'de', '_MS_ALBUM_KEY', 'Das Schl??sselwort, das mit einem bestimmten Album Bilder ersetzt werden (Kopieren und f??gen Sie ihn auf der Seite)'),
(2934, 'en', '_MS_ALBUM_KEY', 'The keyword that will be replaced with a certain album images (copy and paste it into the page)'),
(2935, 'es', '_MS_ALBUM_KEY', 'La palabra clave que ser?? reemplazado con un ??lbum de im??genes de algunos (copiar y pegarlo en la p??gina)'),
(2936, 'de', '_MS_ALERT_ADMIN_NEW_REGISTRATION', 'Gibt an, ob alarmieren auf neue Kunden-Registrierung Admin'),
(2937, 'en', '_MS_ALERT_ADMIN_NEW_REGISTRATION', 'Specifies whether to alert admin on new customer registration'),
(2938, 'es', '_MS_ALERT_ADMIN_NEW_REGISTRATION', 'Especifica si se debe alertar a los admin el registro de nuevo cliente'),
(2939, 'de', '_MS_ALLOW_ADDING_BY_ADMIN', 'Gibt an, ob das Hinzuf??gen neuer Kunden durch Admin'),
(2940, 'en', '_MS_ALLOW_ADDING_BY_ADMIN', 'Specifies whether to allow adding new customers by Admin'),
(2941, 'es', '_MS_ALLOW_ADDING_BY_ADMIN', 'Especifica si se permite la adici??n de nuevos clientes por Admin'),
(2942, 'de', '_MS_ALLOW_AGENCIES', 'Lassen Sie besondere Art von Kunden - Agenturen'),
(2943, 'en', '_MS_ALLOW_AGENCIES', 'Allow special type of customers - agencies'),
(2944, 'es', '_MS_ALLOW_AGENCIES', 'Permitir tipo especial de los clientes - agencias'),
(2945, 'de', '_MS_ALLOW_BOOKING_WITHOUT_ACCOUNT', 'Gibt an, ob die Buchung f??r den Kunden, ohne Ber??cksichtigung erlauben'),
(2946, 'en', '_MS_ALLOW_BOOKING_WITHOUT_ACCOUNT', 'Specifies whether to allow booking for customer without creating account'),
(2947, 'es', '_MS_ALLOW_BOOKING_WITHOUT_ACCOUNT', 'Especifica si se permite reservar para el cliente sin necesidad de crear la cuenta'),
(2948, 'de', '_MS_ALLOW_CHILDREN_IN_ROOM', 'Gibt an, ob Kinder im Zimmer erlaubt'),
(2949, 'en', '_MS_ALLOW_CHILDREN_IN_ROOM', 'Specifies whether to allow children in the room'),
(2950, 'es', '_MS_ALLOW_CHILDREN_IN_ROOM', 'Especifica si se debe permitir a los ni??os en la sala de'),
(2951, 'de', '_MS_ALLOW_CUSTOMERS_LOGIN', 'Gibt an, ob bestehende Kunden Login'),
(2952, 'en', '_MS_ALLOW_CUSTOMERS_LOGIN', 'Specifies whether to allow existing customers to login'),
(2953, 'es', '_MS_ALLOW_CUSTOMERS_LOGIN', 'Especifica si se debe permitir a los clientes existentes para acceder'),
(2954, 'de', '_MS_ALLOW_CUSTOMERS_REGISTRATION', 'Gibt an, ob die Registrierung neuer Kunden erm??glichen'),
(2955, 'en', '_MS_ALLOW_CUSTOMERS_REGISTRATION', 'Specifies whether to allow registration of new customers'),
(2956, 'es', '_MS_ALLOW_CUSTOMERS_REGISTRATION', 'Especifica si se permite el registro de nuevos clientes'),
(2957, 'de', '_MS_ALLOW_CUST_RESET_PASSWORDS', 'Gibt an, ob Kunden wieder ihre Passw??rter'),
(2958, 'en', '_MS_ALLOW_CUST_RESET_PASSWORDS', 'Specifies whether to allow customers to restore their passwords'),
(2959, 'es', '_MS_ALLOW_CUST_RESET_PASSWORDS', 'Especifica si se permite a los clientes para restablecer sus contrase??as'),
(2960, 'de', '_MS_ALLOW_DEFAULT_PERIODS', 'Gibt an, ob das Hinzuf??gen und das Management von Standard-Zeitr??ume f??r R??ume'),
(2961, 'en', '_MS_ALLOW_DEFAULT_PERIODS', 'Specifies whether to allow adding and management of default periods for rooms '),
(2962, 'es', '_MS_ALLOW_DEFAULT_PERIODS', 'Especifica si se permite la adici??n y la gesti??n de los per??odos por defecto para los cuartos'),
(2963, 'de', '_MS_ALLOW_EXTRA_BEDS', 'Gibt an, ob zus??tzliche Betten in den Zimmern erm??glichen'),
(2964, 'en', '_MS_ALLOW_EXTRA_BEDS', 'Specifies whether to allow extra beds in the rooms'),
(2965, 'es', '_MS_ALLOW_EXTRA_BEDS', 'Especifica si se pueden a??adir camas supletorias en las habitaciones'),
(2966, 'de', '_MS_ALLOW_PAYMENT_WITH_BALANCE', 'Lassen Agenturen f??r Buchungen mit dem Gleichgewicht zu zahlen'),
(2967, 'en', '_MS_ALLOW_PAYMENT_WITH_BALANCE', 'Specifies whether to allow agencies to pay for bookings with their balance'),
(2968, 'es', '_MS_ALLOW_PAYMENT_WITH_BALANCE', 'Permitir que los organismos que pagan para reservas con su equilibrio'),
(2969, 'de', '_MS_ALLOW_RESERVATION_WITHOUT_ACCOUNT', 'Gibt an, ob f??r den Kunden zu erm??glichen, Buchung ohne Konto einrichten'),
(2970, 'en', '_MS_ALLOW_RESERVATION_WITHOUT_ACCOUNT', 'Specifies whether to allow reservation for customer without creating account'),
(2971, 'es', '_MS_ALLOW_RESERVATION_WITHOUT_ACCOUNT', 'Especifica si se permite la reserva para el cliente sin crear cuenta'),
(2972, 'de', '_MS_ALLOW_SYSTEM_SUGGESTION', 'Gibt an, ob System-Funktion auf Vorschlag leer Suchergebnisse zeigen'),
(2973, 'en', '_MS_ALLOW_SYSTEM_SUGGESTION', 'Specifies whether to show system suggestion feature on empty search results'),
(2974, 'es', '_MS_ALLOW_SYSTEM_SUGGESTION', 'Especifica si se muestra caracter??stica del sistema de sugerencia sobre los resultados de b??squeda vac??as'),
(2975, 'de', '_MS_AUTHORIZE_LOGIN_ID', 'Gibt Authorize.Net API Login ID'),
(2976, 'en', '_MS_AUTHORIZE_LOGIN_ID', 'Specifies Authorize.Net API Login ID'),
(2977, 'es', '_MS_AUTHORIZE_LOGIN_ID', 'Especifica Authorize.Net API Login ID'),
(2978, 'de', '_MS_AUTHORIZE_TRANSACTION_KEY', 'Authorize.Net Transaction Key gibt'),
(2979, 'en', '_MS_AUTHORIZE_TRANSACTION_KEY', 'Specifies Authorize.Net Transaction Key'),
(2980, 'es', '_MS_AUTHORIZE_TRANSACTION_KEY', 'Especificador Authorize.Net Transaction Key'),
(2981, 'de', '_MS_AVAILABLE_UNTIL_APPROVAL', 'Gibt an, ob \"reservierten\" Zimmer in den Suchergebnissen angezeigt, bis Buchung abgeschlossen'),
(2982, 'en', '_MS_AVAILABLE_UNTIL_APPROVAL', 'Specifies whether to show \'reserved\' rooms in search results until booking is complete'),
(2983, 'es', '_MS_AVAILABLE_UNTIL_APPROVAL', 'Especifica si se mostrar??n los reservadas las habitaciones de los resultados de b??squeda hasta la reserva se ha completado'),
(2984, 'de', '_MS_BANK_TRANSFER_INFO', 'Gibt einen erforderlichen Bankdaten: Name der Bank, Filiale, Kontonummer usw.'),
(2985, 'en', '_MS_BANK_TRANSFER_INFO', 'Specifies a required banking information: name of the bank, branch, account number etc.'),
(2986, 'es', '_MS_BANK_TRANSFER_INFO', 'Especifica una informaci??n bancaria requerida: nombre del banco, sucursal, n??mero de cuenta, etc'),
(2987, 'de', '_MS_BANNERS_CAPTION_HTML', 'Gibt an, ob mit Hilfe von HTML-Diashow in Bildunterschriften oder nicht'),
(2988, 'en', '_MS_BANNERS_CAPTION_HTML', 'Specifies whether to allow using of HTML in slideshow captions or not'),
(2989, 'es', '_MS_BANNERS_CAPTION_HTML', 'Especifica si se debe permitir el uso de HTML en los textos de presentaci??n de diapositivas o no'),
(2990, 'de', '_MS_BANNERS_IS_ACTIVE', 'Legt fest, ob Banner-Modul aktiv ist oder nicht'),
(2991, 'en', '_MS_BANNERS_IS_ACTIVE', 'Defines whether Banners Module is active or not'),
(2992, 'es', '_MS_BANNERS_IS_ACTIVE', 'Define si el m??dulo banners est?? activo o no'),
(2993, 'de', '_MS_BOOKING_MODE', 'Gibt an, welcher Modus aktiviert ist f??r die Buchung gedreht'),
(2994, 'en', '_MS_BOOKING_MODE', 'Specifies which mode is turned ON for booking'),
(2995, 'es', '_MS_BOOKING_MODE', 'Especifica en qu?? modo se enciende la reserva'),
(2996, 'de', '_MS_BOOKING_NUMBER_TYPE', 'Gibt die Art der Buchung Zahlen'),
(2997, 'en', '_MS_BOOKING_NUMBER_TYPE', 'Specifies the type of booking numbers'),
(2998, 'es', '_MS_BOOKING_NUMBER_TYPE', 'Especifica el tipo de n??meros de reserva'),
(2999, 'de', '_MS_CHECK_PARTIALLY_OVERLAPPING', 'Gibt an, ob f??r sich teilweise ??berlappenden Daten f??r Pakete ??berpr??fen'),
(3000, 'en', '_MS_CHECK_PARTIALLY_OVERLAPPING', 'Specifies whether to allow check for partially overlapping dates for packages'),
(3001, 'es', '_MS_CHECK_PARTIALLY_OVERLAPPING', 'Especifica si se debe permitir comprobar si las fechas se superponen parcialmente para los paquetes'),
(3002, 'de', '_MS_COMMENTS_ALLOW', 'Gibt an, ob Kommentare zu Artikeln erm??glichen'),
(3003, 'en', '_MS_COMMENTS_ALLOW', 'Specifies whether to allow comments to articles'),
(3004, 'es', '_MS_COMMENTS_ALLOW', 'Especifica si se permiten comentarios a los art??culos'),
(3005, 'de', '_MS_COMMENTS_LENGTH', 'Die maximale L??nge eines Kommentars'),
(3006, 'en', '_MS_COMMENTS_LENGTH', 'The maximum length of a comment'),
(3007, 'es', '_MS_COMMENTS_LENGTH', 'La longitud m??xima de un comentario'),
(3008, 'de', '_MS_COMMENTS_PAGE_SIZE', 'Legt fest, wie viel Kommentare werden auf einer Seite angezeigt werden'),
(3009, 'en', '_MS_COMMENTS_PAGE_SIZE', 'Defines how much comments will be shown on one page'),
(3010, 'es', '_MS_COMMENTS_PAGE_SIZE', 'Define la cantidad de comentarios tanto se muestra en una p??gina'),
(3011, 'de', '_MS_CONTACT_US_KEY', 'Das Schl??sselwort, das mit ersetzt werden Kontakt-Formular (Kopie und f??gen Sie ihn in die Seite)'),
(3012, 'en', '_MS_CONTACT_US_KEY', 'The keyword that will be replaced with Contact Us form (copy and paste it into the page)'),
(3013, 'es', '_MS_CONTACT_US_KEY', 'La palabra clave que ser??n reemplazadas con nosotros Formulario de contacto (copiar y pegarlo en la p??gina)'),
(3014, 'de', '_MS_CUSTOMERS_CANCEL_RESERVATION', 'Geeft het aantal dagen voordat klanten kunnen annuleren van een reservering'),
(3015, 'en', '_MS_CUSTOMERS_CANCEL_RESERVATION', 'Specifies the number of days before customers may cancel a reservation for free'),
(3016, 'es', '_MS_CUSTOMERS_CANCEL_RESERVATION', 'Especifica el n??mero de d??as para que los clientes pueden cancelar una reserva'),
(3017, 'de', '_MS_CUSTOMERS_IMAGE_VERIFICATION', 'Geeft aan of afbeelding verificatie (captcha) kan de klant registratiepagina'),
(3018, 'en', '_MS_CUSTOMERS_IMAGE_VERIFICATION', 'Specifies whether to allow image verification (captcha) on customer registration page'),
(3019, 'es', '_MS_CUSTOMERS_IMAGE_VERIFICATION', 'Especifica si se debe permitir la verificaci??n de la imagen (CAPTCHA) en la p??gina de registro de clientes'),
(3020, 'de', '_MS_DEFAULT_PAYMENT_SYSTEM', 'Gibt Zahlungsverzug Verarbeitungssystem'),
(3021, 'en', '_MS_DEFAULT_PAYMENT_SYSTEM', 'Specifies default payment processing system'),
(3022, 'es', '_MS_DEFAULT_PAYMENT_SYSTEM', 'Especifica el pago por defecto del sistema de procesamiento'),
(3023, 'de', '_MS_DELAY_LENGTH', 'Definiert eine L??nge von Verz??gerung zwischen dem Senden von E-Mails (in Sekunden)'),
(3024, 'en', '_MS_DELAY_LENGTH', 'Defines a length of delay between sending emails (in seconds)'),
(3025, 'es', '_MS_DELAY_LENGTH', 'Define un tiempo de retraso entre el env??o de correos electr??nicos (en segundos)'),
(3026, 'de', '_MS_DELETE_PENDING_TIME', 'Die maximale angemeldete Zeit f??r das L??schen von Kommentar in Minuten'),
(3027, 'en', '_MS_DELETE_PENDING_TIME', 'The maximum pending time for deleting of comment in minutes'),
(3028, 'es', '_MS_DELETE_PENDING_TIME', 'El tiempo m??ximo de espera para borrar el comentario en cuesti??n de minutos'),
(3029, 'de', '_MS_EMAIL', 'Die E-Mail-Adresse, die verwendet werden, um an Informationen zu bekommen sein wird'),
(3030, 'en', '_MS_EMAIL', 'The email address, that will be used to get sent information'),
(3031, 'es', '_MS_EMAIL', 'La direcci??n de correo electr??nico, que se utiliza para obtener la informaci??n enviada'),
(3032, 'de', '_MS_FAQ_IS_ACTIVE', 'Legt fest, ob FAQ-Modul aktiv ist oder nicht'),
(3033, 'en', '_MS_FAQ_IS_ACTIVE', 'Defines whether FAQ module is active or not'),
(3034, 'es', '_MS_FAQ_IS_ACTIVE', 'Define si FAQ m??dulo est?? activo o no'),
(3035, 'de', '_MS_FIRST_NIGHT_CALCULATING_TYPE', 'Gibt einen Typ des \"ersten Nacht\" Wert-Berechnung: real oder durchschnittliche'),
(3036, 'en', '_MS_FIRST_NIGHT_CALCULATING_TYPE', 'Specifies a type of the \'first night\' value calculating: real or average'),
(3037, 'es', '_MS_FIRST_NIGHT_CALCULATING_TYPE', 'Especifica un tipo de c??lculo del valor de la \'primera noche\': real o promedio'),
(3038, 'de', '_MS_GALLERY_KEY', 'Das Schl??sselwort, das mit Galerie (Kopie ersetzt wird, und f??gen Sie ihn in die Seite)'),
(3039, 'en', '_MS_GALLERY_KEY', 'The keyword that will be replaced with gallery (copy and paste it into the page)'),
(3040, 'es', '_MS_GALLERY_KEY', 'La palabra clave que ser??n reemplazadas con la galer??a (copiar y pegarlo en la p??gina)'),
(3041, 'de', '_MS_GALLERY_WRAPPER', 'Definiert eine Wrapper-Typ f??r die Galerie'),
(3042, 'en', '_MS_GALLERY_WRAPPER', 'Defines a wrapper type for gallery'),
(3043, 'es', '_MS_GALLERY_WRAPPER', 'Define un tipo de contenedor de la galer??a'),
(3044, 'de', '_MS_GUESTS_STAY_DISCOUNT', 'Gibt an, ob auf dem Back-End der G??ste Rabatt auf Aufenthalt zu zeigen oder nicht'),
(3045, 'en', '_MS_GUESTS_STAY_DISCOUNT', 'Specifies whether to show discount on stay of guests on the Back-End or not'),
(3046, 'es', '_MS_GUESTS_STAY_DISCOUNT', 'Especifica si se debe mostrar de descuento en la estancia de los hu??spedes en el back-end o no'),
(3047, 'de', '_MS_HOTEL_DEFAULT_CONTACT_EMAIL', 'Gibt einen Standard Kontakt E-Mail, wenn Hotel Kontakt versteckt'),
(3048, 'en', '_MS_HOTEL_DEFAULT_CONTACT_EMAIL', 'Specifies a default contact email when hotel contact info is hidden'),
(3049, 'es', '_MS_HOTEL_DEFAULT_CONTACT_EMAIL', 'Especifica un e-mail de contacto por defecto cuando informaci??n de contacto del hotel se oculta'),
(3050, 'de', '_MS_HOTEL_DEFAULT_CONTACT_PHONE', 'Gibt einen Standardkontakttelefonnummer, wenn Hotel Kontakt versteckt'),
(3051, 'en', '_MS_HOTEL_DEFAULT_CONTACT_PHONE', 'Specifies a default contact phone number when hotel contact info is hidden'),
(3052, 'es', '_MS_HOTEL_DEFAULT_CONTACT_PHONE', 'Especifica un n??mero de tel??fono de contacto por defecto cuando informaci??n de contacto del hotel se oculta'),
(3053, 'de', '_MS_HOTEL_IN_SEARCH_RESULT', 'Gibt an, ob anstelle von realen Informationen Standardtelefon und E-Mail in den Suchergebnissen angezeigt'),
(3054, 'en', '_MS_HOTEL_IN_SEARCH_RESULT', 'Specifies whether to show default phone and email in search results instead of real info'),
(3055, 'es', '_MS_HOTEL_IN_SEARCH_RESULT', 'Especifica si se debe mostrar predeterminado del tel??fono y correo electr??nico en los resultados de b??squeda en lugar de los datos reales'),
(3056, 'de', '_MS_IMAGE_GALLERY_TYPE', 'Erlaubt Arten von Image Gallery'),
(3057, 'en', '_MS_IMAGE_GALLERY_TYPE', 'Allowed types of Image Gallery'),
(3058, 'es', '_MS_IMAGE_GALLERY_TYPE', 'Tipos de animales Galer??a de im??genes'),
(3059, 'de', '_MS_IMAGE_VERIFICATION_ALLOW', 'Gibt an, ob Bild ??berpr??ft werden kann (captcha)'),
(3060, 'en', '_MS_IMAGE_VERIFICATION_ALLOW', 'Specifies whether to allow image verification (captcha)'),
(3061, 'es', '_MS_IMAGE_VERIFICATION_ALLOW', 'Especifica si se debe permitir la verificaci??n de la imagen (captcha)'),
(3062, 'de', '_MS_IS_SEND_DELAY', 'Gibt an, ob Zeitverz??gerung zwischen E-Mails erm??glichen.'),
(3063, 'en', '_MS_IS_SEND_DELAY', 'Specifies whether to allow time delay between sending emails.'),
(3064, 'es', '_MS_IS_SEND_DELAY', 'Especifica si se permite tiempo de retardo entre el env??o de mensajes de correo electr??nico.'),
(3065, 'de', '_MS_ITEMS_COUNT_IN_ALBUM', 'Gibt an, ob Anzahl der Bilder / Videos unter Albumname zeigen'),
(3066, 'en', '_MS_ITEMS_COUNT_IN_ALBUM', 'Specifies whether to show count of images/video under album name'),
(3067, 'es', '_MS_ITEMS_COUNT_IN_ALBUM', 'Especifica si se muestra la cuenta de las im??genes / video bajo el nombre del ??lbum'),
(3068, 'de', '_MS_LONG_TERM_STAY_DISCOUNT', 'Gibt an, ob die Back-End-Aufenthalt Rabatt auf langfristige zu zeigen oder nicht'),
(3069, 'en', '_MS_LONG_TERM_STAY_DISCOUNT', 'Specifies whether to show discount on long-term stay the Back-End or not'),
(3070, 'es', '_MS_LONG_TERM_STAY_DISCOUNT', 'Especifica si se debe mostrar descuento en mantenerse a largo plazo el back-end o no'),
(3071, 'de', '_MS_MAXIMUM_ALLOWED_RESERVATIONS', 'Gibt die maximal zul??ssige Zimmerreservierungen (nicht abgeschlossen) pro Kunde'),
(3072, 'en', '_MS_MAXIMUM_ALLOWED_RESERVATIONS', 'Specifies the maximum number of allowed room reservations (not completed) per customer'),
(3073, 'es', '_MS_MAXIMUM_ALLOWED_RESERVATIONS', 'Especifica el m??ximo permitido las reservas de habitaciones (no terminado) por cliente'),
(3074, 'de', '_MS_MAXIMUM_NIGHTS', 'Definiert eine maximale Anzahl der N??chte pro Buchung [<a href=index.php?admin=mod_booking_packages>eingrenzen Paket</a>]'),
(3075, 'en', '_MS_MAXIMUM_NIGHTS', 'Defines a maximum number of nights per booking [<a href=index.php?admin=mod_booking_packages>Define by Package</a>]'),
(3076, 'es', '_MS_MAXIMUM_NIGHTS', 'Define un n??mero m??ximo de noches por reserva [<a href=index.php?admin=mod_booking_packages>Definir por Paquete</a>]'),
(3077, 'de', '_MS_MAX_ADULTS_IN_SEARCH', 'Gibt die maximale Anzahl der Erwachsenen in der Dropdown-Liste der Suche Verf??gbarkeit Form'),
(3078, 'en', '_MS_MAX_ADULTS_IN_SEARCH', 'Specifies the maximum number of adults in the dropdown list of the Search Availability form'),
(3079, 'es', '_MS_MAX_ADULTS_IN_SEARCH', 'Especifica el n??mero m??ximo de adultos en la lista desplegable del formulario disponibilidad Buscar'),
(3080, 'de', '_MS_MAX_CHILDREN_IN_SEARCH', 'Gibt die maximale Anzahl von Kindern in der Dropdown-Liste der Suche Verf??gbarkeit Form'),
(3081, 'en', '_MS_MAX_CHILDREN_IN_SEARCH', 'Specifies the maximum number of children in the dropdown list of the Search Availability form'),
(3082, 'es', '_MS_MAX_CHILDREN_IN_SEARCH', 'Especifica el n??mero m??ximo de ni??os en la lista desplegable del formulario disponibilidad Buscar'),
(3083, 'de', '_MS_MINIMUM_NIGHTS', 'Definiert eine minimale Anzahl der N??chte pro Buchung [<a href=index.php?admin=mod_booking_packages>Eingrenzen Package</a>]'),
(3084, 'en', '_MS_MINIMUM_NIGHTS', 'Defines a minimum number of nights per booking [<a href=index.php?admin=mod_booking_packages>Define by Package</a>]'),
(3085, 'es', '_MS_MINIMUM_NIGHTS', 'Define un n??mero m??nimo de noches por reserva [<a href=index.php?admin=mod_booking_packages>Definir por paquete</a>]'),
(3086, 'de', '_MS_MULTIPLE_ITEMS_PER_DAY', 'Gibt an, ob Benutzer sich mehrere Artikel pro Tag oder nicht zulassen'),
(3087, 'en', '_MS_MULTIPLE_ITEMS_PER_DAY', 'Specifies whether to allow users to rate multiple items per day or not'),
(3088, 'es', '_MS_MULTIPLE_ITEMS_PER_DAY', 'Especifica si se permite a los usuarios art??culos tasas m??ltiples por d??a o no'),
(3089, 'de', '_MS_NEWS_COUNT', 'Definiert, wie viele Nachrichten in Nachrichten-Block gezeigt werden'),
(3090, 'en', '_MS_NEWS_COUNT', 'Defines how many news will be shown in news block'),
(3091, 'es', '_MS_NEWS_COUNT', 'Define el n??mero de noticias se muestra en el bloque de noticias'),
(3092, 'de', '_MS_NEWS_HEADER_LENGTH', 'Definiert eine L??nge von Nachrichten-Header in Block'),
(3093, 'en', '_MS_NEWS_HEADER_LENGTH', 'Defines a length of news header in block'),
(3094, 'es', '_MS_NEWS_HEADER_LENGTH', 'Define una longitud de la cabecera de noticias en el bloque'),
(3095, 'de', '_MS_NEWS_RSS', 'Definiert mit der RSS f??r Nachrichten'),
(3096, 'en', '_MS_NEWS_RSS', 'Defines using of RSS for news'),
(3097, 'es', '_MS_NEWS_RSS', 'Define el uso de los RSS de noticias'),
(3098, 'de', '_MS_ONLINE_CREDIT_CARD_REQUIRED', 'Gibt an, ob das Sammeln von Kreditkartendaten ist f??r \'On-line Bestellungen\' ben??tigt'),
(3099, 'en', '_MS_ONLINE_CREDIT_CARD_REQUIRED', 'Specifies whether collecting of credit card info is required for \'On-line Orders\''),
(3100, 'es', '_MS_ONLINE_CREDIT_CARD_REQUIRED', 'Especifica si la recogida de informaci??n de tarjetas de cr??dito es necesaria para \'Pedidos on-line\''),
(3101, 'de', '_MS_PAYMENT_TYPE_2CO', 'Gibt an, ob \'2 CO \'Art der Bezahlung zu erm??glichen und zu beantragen, falls es'),
(3102, 'en', '_MS_PAYMENT_TYPE_2CO', 'Specifies whether to allow \'2CO\' payment type and where apply it'),
(3103, 'es', '_MS_PAYMENT_TYPE_2CO', 'Especifica si se permite a \'2 CO \'tipo de pago y donde aplicarlo'),
(3104, 'de', '_MS_PAYMENT_TYPE_AUTHORIZE', 'Gibt an, ob \'Authorize.Net\' Art der Bezahlung und wo anwenden'),
(3105, 'en', '_MS_PAYMENT_TYPE_AUTHORIZE', 'Specifies whether to allow \'Authorize.Net\' payment type and where apply it'),
(3106, 'es', '_MS_PAYMENT_TYPE_AUTHORIZE', 'Especifica si se debe permitir \'Authorize.Net\' tipo de pago y donde la aplican'),
(3107, 'de', '_MS_PAYMENT_TYPE_BANK_TRANSFER', 'Gibt an, ob \'Bank??berweisung\' Art der Bezahlung zu erm??glichen und zu beantragen, falls es'),
(3108, 'en', '_MS_PAYMENT_TYPE_BANK_TRANSFER', 'Specifies whether to allow \'Bank Transfer\' payment type and where apply it'),
(3109, 'es', '_MS_PAYMENT_TYPE_BANK_TRANSFER', 'Especifica si se debe permitir que \"Transferencia bancaria\" tipo de pago y donde aplicarlo'),
(3110, 'de', '_MS_PAYMENT_TYPE_ONLINE', 'Gibt an, ob \'On-line Bestellung\' Zahlungsart erm??glichen und wo anwenden'),
(3111, 'en', '_MS_PAYMENT_TYPE_ONLINE', 'Specifies whether to allow \'On-line Order\' payment type and where apply it'),
(3112, 'es', '_MS_PAYMENT_TYPE_ONLINE', 'Especifica si se permite el tipo \'on-line Orden\' de pago y donde aplicarlo'),
(3113, 'de', '_MS_PAYMENT_TYPE_PAYPAL', 'Gibt an, ob \'PayPal\' Art der Bezahlung zu erm??glichen und zu beantragen, falls es'),
(3114, 'en', '_MS_PAYMENT_TYPE_PAYPAL', 'Specifies whether to allow \'PayPal\' payment type and where apply it'),
(3115, 'es', '_MS_PAYMENT_TYPE_PAYPAL', 'Especifica si se debe permitir que el tipo de pago \'PayPal\' y donde aplicarlo'),
(3116, 'de', '_MS_PAYMENT_TYPE_POA', 'Gibt an, ob (POA) Art der Bezahlung \'bei der Ankunft zu bezahlen\' und wo anwenden'),
(3117, 'en', '_MS_PAYMENT_TYPE_POA', 'Specifies whether to allow \'Pay on Arrival\' (POA) payment type and where apply it'),
(3118, 'es', '_MS_PAYMENT_TYPE_POA', 'Especifica si se permite \'Pagar a la llegada\' (POA) el tipo de pago y donde aplicarlo'),
(3119, 'de', '_MS_PAYPAL_EMAIL', 'Gibt PayPal (Gesch??ft) E-Mail'),
(3120, 'en', '_MS_PAYPAL_EMAIL', 'Specifies PayPal (business) email '),
(3121, 'es', '_MS_PAYPAL_EMAIL', 'Especifica PayPal (de negocios) de correo electr??nico'),
(3122, 'de', '_MS_PREBOOKING_ORDERS_TIMEOUT', 'Definiert ein Timeout f??r \'Vorausbuchung\' Bestellungen vor dem automatischen L??schen (in Stunden)'),
(3123, 'en', '_MS_PREBOOKING_ORDERS_TIMEOUT', 'Defines a timeout for \'prebooking\' orders before automatic deleting (in hours)'),
(3124, 'es', '_MS_PREBOOKING_ORDERS_TIMEOUT', 'Define un tiempo de espera para \"pre-reservas\" las ??rdenes antes de eliminar autom??tica (en horas)'),
(3125, 'de', '_MS_PRE_MODERATION_ALLOW', 'Gibt an, ob Pre-Moderation f??r Kommentare zulassen'),
(3126, 'en', '_MS_PRE_MODERATION_ALLOW', 'Specifies whether to allow pre-moderation for comments'),
(3127, 'es', '_MS_PRE_MODERATION_ALLOW', 'Especifica si se permite antes de la moderaci??n de los comentarios'),
(3128, 'de', '_MS_PRE_PAYMENT_TYPE', 'Definiert eine Vorauszahlung Typ (den vollen Preis, ersten Nacht nur, festen Betrag oder Prozentsatz)'),
(3129, 'en', '_MS_PRE_PAYMENT_TYPE', 'Defines a pre-payment type (full price, first night only, fixed sum or percentage)'),
(3130, 'es', '_MS_PRE_PAYMENT_TYPE', 'Define un tipo de pre-pago (precio total, la primera noche solamente, suma fija o porcentaje)'),
(3131, 'de', '_MS_PRE_PAYMENT_VALUE', 'Definiert eine Vorauszahlung Wert f??r \'fixed sum\' oder \'Prozent\'-Typen'),
(3132, 'en', '_MS_PRE_PAYMENT_VALUE', 'Defines a pre-payment value for \'fixed sum\' or \'percentage\' types'),
(3133, 'es', '_MS_PRE_PAYMENT_VALUE', 'Define un valor de prepago para \'suma fija\' o tipos de \'porcentaje\''),
(3134, 'de', '_MS_RATINGS_USER_TYPE', 'Typ von Usern, die Hotels bewertet werden k??nnen'),
(3135, 'en', '_MS_RATINGS_USER_TYPE', 'Type of users, who can rate hotels'),
(3136, 'es', '_MS_RATINGS_USER_TYPE', 'Tipo de usuarios, que pueden votar hoteles'),
(3137, 'de', '_MS_REFUND_MONEY', 'Gibt an, ob ein Geld auf dem Back-End zu zeigen Block erstatten oder nicht'),
(3138, 'en', '_MS_REFUND_MONEY', 'Specifies whether to show block refund a money on the Back-End or not'),
(3139, 'es', '_MS_REFUND_MONEY', 'Especifica si se debe mostrar un bloque de devoluci??n de dinero en el back-end o no'),
(3140, 'de', '_MS_REG_CONFIRMATION', 'Legt fest, ob die Best??tigung (welche Art) f??r die Anmeldung ist erforderlich'),
(3141, 'en', '_MS_REG_CONFIRMATION', 'Defines whether confirmation (which type of) is required for registration'),
(3142, 'es', '_MS_REG_CONFIRMATION', 'Define si la confirmaci??n (el tipo) es necesaria para la inscripci??n'),
(3143, 'de', '_MS_REMEMBER_ME', 'Gibt an, ob Remember Me Funktion'),
(3144, 'en', '_MS_REMEMBER_ME', 'Specifies whether to allow Remember Me feature'),
(3145, 'es', '_MS_REMEMBER_ME', 'Especifica si se permite Recordarme funci??n'),
(3146, 'de', '_MS_RESERVATION EXPIRED_ALERT', 'Gibt an, ob E-Mail-Benachrichtigung an Kunden zu senden, wenn Reservierung abgelaufen'),
(3147, 'en', '_MS_RESERVATION EXPIRED_ALERT', 'Specifies whether to send email alert to customer when reservation has expired'),
(3148, 'es', '_MS_RESERVATION EXPIRED_ALERT', 'Especifica si se debe enviar alertas de correo electr??nico a los clientes cuando la reserva ha caducado'),
(3149, 'de', '_MS_RESERVATION_INITIAL_FEE', 'Start (Anfangs-) Geb??hr - die Summe, die zu jeder Buchung hinzugef??gt werden (Festbetrag in Standard-W??hrung)'),
(3150, 'en', '_MS_RESERVATION_INITIAL_FEE', 'Start (initial) fee - the sum that will be added to each booking (fixed value in default currency)'),
(3151, 'es', '_MS_RESERVATION_INITIAL_FEE', 'Inicio (inicial) tarifa - la suma que se a??adir?? a cada reserva (suma fija en moneda por defecto)'),
(3152, 'de', '_MS_RESERVATION_NUMBER_TYPE', 'Gibt die Art der Reservierungsnummern'),
(3153, 'en', '_MS_RESERVATION_NUMBER_TYPE', 'Specifies the type of reservation numbers'),
(3154, 'es', '_MS_RESERVATION_NUMBER_TYPE', 'Especifica el tipo de n??meros de reservas'),
(3155, 'de', '_MS_REVIEWS_KEY', 'Das Schl??sselwort, das mit einer Liste von Kundenrezensionen ersetzt werden (kopieren und in die Seite einf??gen)'),
(3156, 'en', '_MS_REVIEWS_KEY', 'The keyword that will be replaced with a list of customer reviews (copy and paste it into the page)'),
(3157, 'es', '_MS_REVIEWS_KEY', 'La palabra clave que ser?? reemplazado con una lista de comentarios de los clientes (copiar y pegar en la p??gina)'),
(3158, 'de', '_MS_ROOMS_IN_SEARCH', 'Gibt an, welche Arten von Zimmern in Suchergebnis zeigen: alle oder nur zur Verf??gung stehenden Zimmer (ohne ausgebucht / nicht verf??gbar)'),
(3159, 'en', '_MS_ROOMS_IN_SEARCH', 'Specifies what types of rooms to show in search result: all or available rooms only (without fully booked / unavailable)'),
(3160, 'es', '_MS_ROOMS_IN_SEARCH', 'Especifica los tipos de salas para mostrar en el resultado de la b??squeda: todas las habitaciones o disponible solamente (sin completamente lleno / no disponible)'),
(3161, 'de', '_MS_ROTATE_DELAY', 'Definiert Banner Rotation Verz??gerung in Sekunden'),
(3162, 'en', '_MS_ROTATE_DELAY', 'Defines banners rotation delay in seconds'),
(3163, 'es', '_MS_ROTATE_DELAY', 'Define retraso banners de rotaci??n en cuesti??n de segundos'),
(3164, 'de', '_MS_ROTATION_TYPE', 'Verschiedene Arten von Banner-Rotation'),
(3165, 'en', '_MS_ROTATION_TYPE', 'Different type of banner rotation'),
(3166, 'es', '_MS_ROTATION_TYPE', 'Tipo de rotaci??n de banners'),
(3167, 'de', '_MS_SEARCH_AVAILABILITY_PAGE_SIZE', 'Gibt die Anzahl der Zimmer/Hotels, die auf der einen Seite bei der Suche Verf??gbarkeit Ergebnisse angezeigt werden'),
(3168, 'en', '_MS_SEARCH_AVAILABILITY_PAGE_SIZE', 'Specifies the number of rooms/hotels that will be displayed on one page in the search availability results'),
(3169, 'es', '_MS_SEARCH_AVAILABILITY_PAGE_SIZE', 'Especifica el n??mero de habitaciones/hoteles que se mostrar?? en una p??gina en los resultados de b??squeda de disponibilidad'),
(3170, 'de', '_MS_SEARCH_AVAILABILITY_PERIOD', 'Gibt die maximale im Jahre Zeit f??r die Suche erlaubt'),
(3171, 'en', '_MS_SEARCH_AVAILABILITY_PERIOD', 'Specifies the maximum allowed period of time for search in years'),
(3172, 'es', '_MS_SEARCH_AVAILABILITY_PERIOD', 'Especifica el periodo m??ximo de tiempo permitido para la b??squeda en a??os'),
(3173, 'de', '_MS_SEND_ORDER_COPY_TO_ADMIN', 'Gibt an, ob Sie eine Kopie, um Admin-oder Hotelbesitzer'),
(3174, 'en', '_MS_SEND_ORDER_COPY_TO_ADMIN', 'Specifies whether to allow sending a copy of order to admin or hotel owner'),
(3175, 'es', '_MS_SEND_ORDER_COPY_TO_ADMIN', 'Especifica si se permite el env??o de una copia de la orden de administrador o propietario del hotel'),
(3176, 'de', '_MS_SEPARATE_GATEWAYS', 'Ob damit usind gibt gesonderte Zahlungs-Gateways f??r jedes Hotel'),
(3177, 'en', '_MS_SEPARATE_GATEWAYS', 'Specifies whether to allow using separate payment gateways for each hotel'),
(3178, 'es', '_MS_SEPARATE_GATEWAYS', 'Especifica si se permite Usind pasarelas de pago por separado para cada hotel'),
(3179, 'de', '_MS_SHOW_BOOKING_STATUS_FORM', 'Gibt an, ob Booking-Status Formular auf der Homepage zeigen oder nicht'),
(3180, 'en', '_MS_SHOW_BOOKING_STATUS_FORM', 'Specifies whether to show Booking Status Form on homepage or not'),
(3181, 'es', '_MS_SHOW_BOOKING_STATUS_FORM', 'Especifica si se muestra Formulario de Reserva de estado en la p??gina principal o no'),
(3182, 'de', '_MS_SHOW_DEFAULT_PRICES', 'Gibt an, ob standardm????ig die Preise auf dem Front-End-oder nicht'),
(3183, 'en', '_MS_SHOW_DEFAULT_PRICES', 'Specifies whether to show default prices  on the Front-End or not'),
(3184, 'es', '_MS_SHOW_DEFAULT_PRICES', 'Especifica si se deben mostrar los precios predeterminados en el Front-End o no'),
(3185, 'de', '_MS_SHOW_FULLY_BOOKED_ROOMS', 'Gibt an, ob Vorf??hrung ausgebucht / nicht verf??gbar Zimmer auf der Suche'),
(3186, 'en', '_MS_SHOW_FULLY_BOOKED_ROOMS', 'Specifies whether to allow showing of fully booked/unavailable rooms in search'),
(3187, 'es', '_MS_SHOW_FULLY_BOOKED_ROOMS', 'Especifica si se permitir?? mostrar de habitaciones completamente lleno / no est?? disponible en la b??squeda'),
(3188, 'de', '_MS_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', 'Legt fest, ob zur Newsletter-Anmeldung sperren oder nicht zeigen'),
(3189, 'en', '_MS_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', 'Defines whether to show Newsletter Subscription block or not'),
(3190, 'es', '_MS_SHOW_NEWSLETTER_SUBSCRIBE_BLOCK', 'Define si se debe mostrar bloque Suscripci??n al bolet??n o no'),
(3191, 'de', '_MS_SHOW_NEWS_BLOCK', 'Legt fest, ob zu News Seite sperren oder nicht zeigen'),
(3192, 'en', '_MS_SHOW_NEWS_BLOCK', 'Defines whether to show News side block or not'),
(3193, 'es', '_MS_SHOW_NEWS_BLOCK', 'Define si se debe mostrar bloque Noticias lado o no'),
(3194, 'de', '_MS_SHOW_RESERVATION_FORM', 'Gibt an, ob Reservation Form auf der Homepage oder nicht zeigen'),
(3195, 'en', '_MS_SHOW_RESERVATION_FORM', 'Specifies whether to show Reservation Form on homepage or not'),
(3196, 'es', '_MS_SHOW_RESERVATION_FORM', 'Especifica si se muestra formulario de reserva en la p??gina principal o no'),
(3197, 'de', '_MS_SHOW_ROOMS_OCCUPANCY', 'Gibt an, ob Belegung Beschreibung Seite auf dem Zimmer zu zeigen'),
(3198, 'en', '_MS_SHOW_ROOMS_OCCUPANCY', 'Specifies whether to show occupancy on the room\'s description page'),
(3199, 'es', '_MS_SHOW_ROOMS_OCCUPANCY', 'Especifica si se debe mostrar la ocupaci??n en la p??gina Descripci??n de la habitaci??n'),
(3200, 'de', '_MS_SHOW_ROOMS_OCCUPANCY_MONTHS', 'Gibt die Anzahl der Monate, die auf Raumbelegung Tab angezeigt werden'),
(3201, 'en', '_MS_SHOW_ROOMS_OCCUPANCY_MONTHS', 'Specifies the number of months that will be shown on room occupancy tab'),
(3202, 'es', '_MS_SHOW_ROOMS_OCCUPANCY_MONTHS', 'Especifica el n??mero de meses que se mostrar?? en la sala de pesta??a de ocupaci??n'),
(3203, 'de', '_MS_SPECIAL_TAX', 'Sonderabgaben pro Gast'),
(3204, 'en', '_MS_SPECIAL_TAX', 'Special Tax per Guest'),
(3205, 'es', '_MS_SPECIAL_TAX', 'Impuesto Especial por hu??sped'),
(3206, 'de', '_MS_TC_DEFAULT_CONTACT_EMAIL', 'Gibt einen Standard Kontakt E-Mail, wenn Auto-Agentur Info nicht angezeigt wird'),
(3207, 'en', '_MS_TC_DEFAULT_CONTACT_EMAIL', 'Specifies a default contact email when Car Agency info is hidden'),
(3208, 'es', '_MS_TC_DEFAULT_CONTACT_EMAIL', 'Especifica un e-mail de contacto por defecto cuando informaci??n Agencia de coches no se muestra'),
(3209, 'de', '_MS_TC_DEFAULT_CONTACT_PHONE', 'Gibt einen Standardkontakttelefonnummer, wenn Auto-Agentur Info nicht angezeigt wird'),
(3210, 'en', '_MS_TC_DEFAULT_CONTACT_PHONE', 'Specifies a default contact phone number when Car Agency info is hidden'),
(3211, 'es', '_MS_TC_DEFAULT_CONTACT_PHONE', 'Especifica un n??mero de tel??fono de contacto por defecto cuando informaci??n Agencia de coches no se muestra'),
(3212, 'de', '_MS_TC_SEPARATE_GATEWAYS', 'Gibt an, ob f??r die Autovermietung mit separaten Zahlungs-Gateways zu erm??glichen'),
(3213, 'en', '_MS_TC_SEPARATE_GATEWAYS', 'Specifies whether to allow using separate payment gateways for car rental agency'),
(3214, 'es', '_MS_TC_SEPARATE_GATEWAYS', 'Especifica si se permite el uso de pasarelas de pago separadas para la agencia de alquiler de coches'),
(3215, 'de', '_MS_TESTIMONIALS_KEY', 'Das Schl??sselwort, das mit einer Liste von Kunden Statements ersetzt werden (Kopieren und f??gen Sie ihn auf der Seite)'),
(3216, 'en', '_MS_TESTIMONIALS_KEY', 'The keyword that will be replaced with a list of customer testimonials (copy and paste it into the page)'),
(3217, 'es', '_MS_TESTIMONIALS_KEY', 'La palabra clave que ser??n reemplazados por una lista de testimonios de clientes (copiar y pegarlo en la p??gina)'),
(3218, 'de', '_MS_TWO_CHECKOUT_VENDOR', 'Gibt 2CO Vendor ID'),
(3219, 'en', '_MS_TWO_CHECKOUT_VENDOR', 'Specifies 2CO Vendor ID'),
(3220, 'es', '_MS_TWO_CHECKOUT_VENDOR', 'Especifica 2CO Vendor ID'),
(3221, 'de', '_MS_USER_TYPE', 'Art der Benutzer kann die post comments'),
(3222, 'en', '_MS_USER_TYPE', 'Type of users, who can post comments'),
(3223, 'es', '_MS_USER_TYPE', 'Tipo de usuarios, que pueden enviar comentarios'),
(3224, 'de', '_MS_VAT_INCLUDED_IN_PRICE', 'Gibt an, ob Mehrwertsteuer Geb??hr im Zimmer und Extras Preise oder nicht im Lieferumfang enthalten'),
(3225, 'en', '_MS_VAT_INCLUDED_IN_PRICE', 'Specifies whether VAT fee is included in room and extras prices or not'),
(3226, 'es', '_MS_VAT_INCLUDED_IN_PRICE', 'Especifica si de IVA incluido en la habitaci??n y los precios de los extras o no'),
(3227, 'de', '_MS_VAT_VALUE', 'Gibt standardm????ige MwSt. Preis-Leistungs-Ordnung (in%) [ <a href=index.php?admin=countries_management>eingrenzen Land</a> ]'),
(3228, 'en', '_MS_VAT_VALUE', 'Specifies default VAT value for order (in %) &nbsp;[<a href=index.php?admin=countries_management>Define by Country</a>]'),
(3229, 'es', '_MS_VAT_VALUE', 'Especifica el valor predeterminado de IVA por el orden (en%) [<a href=index.php?admin=countries_management>Definir por Pa??s</a>]'),
(3230, 'de', '_MS_VIDEO_GALLERY_TYPE', 'Erlaubt Arten von Video-Galerie'),
(3231, 'en', '_MS_VIDEO_GALLERY_TYPE', 'Allowed types of Video Gallery'),
(3232, 'es', '_MS_VIDEO_GALLERY_TYPE', 'Tipos de animales Galer??a de Videos'),
(3233, 'de', '_MS_WATERMARK_TEXT', 'Wasserzeichen Text, der die Bilder hinzugef??gt werden'),
(3234, 'en', '_MS_WATERMARK_TEXT', 'Watermark text that will be added to images'),
(3235, 'es', '_MS_WATERMARK_TEXT', 'Texto de la marca que se a??adir?? a las im??genes'),
(3236, 'de', '_MUST_BE_LOGGED', 'Sie m??ssen eingeloggt sein um diese Seite sehen zu k??nnen! <a href=\'index.php?customer=login\'>Anmelden</a> oder <a href=\'index.php?customer=create_account\'>Konto erstellen kostenlos</a>.'),
(3237, 'en', '_MUST_BE_LOGGED', 'You must be logged in to view this page! <a href=\'index.php?customer=login\'>Login</a> or <a href=\'index.php?customer=create_account\'>Create Account for free</a>.'),
(3238, 'es', '_MUST_BE_LOGGED', 'Debe estar registrado para ver esta p??gina! <a href=\'index.php?customer=login\'>Login</a> o <a href=\'index.php?customer=create_account\'>Crear una cuenta gratis</a>.'),
(3239, 'de', '_MY_ACCOUNT', 'Ihr Konto'),
(3240, 'en', '_MY_ACCOUNT', 'My Account'),
(3241, 'es', '_MY_ACCOUNT', 'Mi Cuenta'),
(3242, 'de', '_MY_BOOKINGS', 'Meine Buchungen'),
(3243, 'en', '_MY_BOOKINGS', 'My Bookings'),
(3244, 'es', '_MY_BOOKINGS', 'Mis Reservas'),
(3248, 'de', '_MY_LAST_BOOKINGS_MESSAGE', '{type_booking} {count_rooms} auf {hotel_name} in {hotel_location}'),
(3249, 'en', '_MY_LAST_BOOKINGS_MESSAGE', '{type_booking} {count_rooms} at {hotel_name} in {hotel_location}'),
(3250, 'es', '_MY_LAST_BOOKINGS_MESSAGE', '{count_rooms} {type_booking} en el {hotel_name} en {hotel_location}'),
(3251, 'de', '_MY_ORDERS', 'Meine Bestellungen'),
(3252, 'en', '_MY_ORDERS', 'My Orders'),
(3253, 'es', '_MY_ORDERS', 'My Orders'),
(3254, 'de', '_MY_REVIEWS', 'Meine Bewertungen'),
(3255, 'en', '_MY_REVIEWS', 'My Reviews'),
(3256, 'es', '_MY_REVIEWS', 'Mis cr??ticas'),
(3257, 'de', '_NAME', 'Name'),
(3258, 'en', '_NAME', 'Name'),
(3259, 'es', '_NAME', 'Nombre'),
(3260, 'de', '_NAME_A_Z', 'name (a-z)'),
(3261, 'en', '_NAME_A_Z', 'name (a-z)'),
(3262, 'es', '_NAME_A_Z', 'nombre del (a-z)'),
(3263, 'de', '_NAME_CENTER_POINT', 'Nennen Center Point'),
(3264, 'en', '_NAME_CENTER_POINT', 'Name of Center Point'),
(3265, 'es', '_NAME_CENTER_POINT', 'Nombrar a un punto central'),
(3266, 'de', '_NAME_Z_A', 'name (z-a)'),
(3267, 'en', '_NAME_Z_A', 'name (z-a)'),
(3268, 'es', '_NAME_Z_A', 'nombre del (z-a)'),
(3269, 'de', '_NEED_ASSISTANCE', 'Brauchen Sie Hilfe?'),
(3270, 'en', '_NEED_ASSISTANCE', 'Need Assistance?'),
(3271, 'es', '_NEED_ASSISTANCE', '??Necesita ayuda?'),
(3272, 'de', '_NEED_ASSISTANCE_TEXT', 'Unser Team ist 24/7 f??r Sie da, um Sie bei Ihrer Buchung Problemen zu helfen oder alle damit verbundenen Fragen zu beantworten'),
(3273, 'en', '_NEED_ASSISTANCE_TEXT', 'Our team is 24/7 at your service to help you with your booking issues or answer any related questions'),
(3274, 'es', '_NEED_ASSISTANCE_TEXT', 'Nuestro equipo est?? a su servicio 24/7 para ayudarle con sus problemas de reserva o responder a cualquier pregunta relacionada'),
(3275, 'de', '_NEGATIVE_COMMENTS', 'Negative Kommentare'),
(3276, 'en', '_NEGATIVE_COMMENTS', 'Negative Comments'),
(3277, 'es', '_NEGATIVE_COMMENTS', 'Comentarios negativos'),
(3278, 'de', '_NEUTRAL', 'Neutral'),
(3279, 'en', '_NEUTRAL', 'Neutral'),
(3280, 'es', '_NEUTRAL', 'Neutral'),
(3281, 'de', '_NEVER', 'nie'),
(3282, 'en', '_NEVER', 'never'),
(3283, 'es', '_NEVER', 'nunca'),
(3284, 'de', '_NEWS', 'Nachrichten'),
(3285, 'en', '_NEWS', 'News'),
(3286, 'es', '_NEWS', 'Noticias'),
(3287, 'de', '_NEWSLETTER_PAGE_TEXT', '<p>Um Newsletter von unserer Website zu erhalten, geben Sie einfach Ihre Email und klicken Sie auf \"Abonnieren\"-Knopf. </p><p> Wenn Sie sich sp??ter entscheiden, um Ihr Abonnement beenden oder ??ndern Sie den Typ der Nachricht erhalten, folgen Sie einfach dem Link am Ende des aktuellen Newsletter und aktualisieren Sie Ihr Profil oder abbestellen, indem Sie das Kontrollk??stchen unten.</p>'),
(3288, 'en', '_NEWSLETTER_PAGE_TEXT', '<p>To receive newsletters from our site, simply enter your email and click on \"Subscribe\" button.</p><p>If you later decide to stop your subscription or change the type of news you receive, simply follow the link at the end of the latest newsletter and update your profile or unsubscribe by ticking the checkbox below.</p>');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(3289, 'es', '_NEWSLETTER_PAGE_TEXT', '<p>Para recibir boletines de noticias de nuestro sitio, simplemente introduzca su email y haga clic en el bot??n \"Suscribirse\".</p><p>Si posteriormente decide dejar su suscripci??n o cambiar el tipo de noticias que recibe, s??lo tiene que seguir el enlace al final del ??ltimo bolet??n de noticias y actualizar su perfil o darse de baja, marcando la casilla a continuaci??n.</p>'),
(3290, 'de', '_NEWSLETTER_PRE_SUBSCRIBE_ALERT', 'Bitte klicken Sie auf den \"Abonnieren\"-Knopf, um den Vorgang abzuschlie??en.'),
(3291, 'en', '_NEWSLETTER_PRE_SUBSCRIBE_ALERT', 'Please click on the \"Subscribe\" button to complete the process.'),
(3292, 'es', '_NEWSLETTER_PRE_SUBSCRIBE_ALERT', 'Por favor, haga clic en el bot??n \"Suscribirse\" para completar el proceso.'),
(3293, 'de', '_NEWSLETTER_PRE_UNSUBSCRIBE_ALERT', 'Bitte klicken Sie auf die Schaltfl??che \"Abmelden\", um den Vorgang abzuschlie??en.'),
(3294, 'en', '_NEWSLETTER_PRE_UNSUBSCRIBE_ALERT', 'Please click on the \"Unsubscribe\" button to complete the process.'),
(3295, 'es', '_NEWSLETTER_PRE_UNSUBSCRIBE_ALERT', 'Por favor, haga clic en \"Anular\" para completar el proceso.'),
(3296, 'de', '_NEWSLETTER_SUBSCRIBERS', 'Newsletter-Abonnenten'),
(3297, 'en', '_NEWSLETTER_SUBSCRIBERS', 'Newsletter Subscribers'),
(3298, 'es', '_NEWSLETTER_SUBSCRIBERS', 'Suscriptores del bolet??n'),
(3299, 'de', '_NEWSLETTER_SUBSCRIBE_SUCCESS', 'Danke f??r die Anmeldung zu unseren elektronischen Newsletter. Sie erhalten eine E-Mail, um Ihr Abonnement zu best??tigen.'),
(3300, 'en', '_NEWSLETTER_SUBSCRIBE_SUCCESS', 'Thank you for subscribing to our electronic newsletter. You will receive an e-mail to confirm your subscription.'),
(3301, 'es', '_NEWSLETTER_SUBSCRIBE_SUCCESS', 'Gracias por suscribirse a nuestro bolet??n electr??nico. Usted recibir?? un e-mail para confirmar su suscripci??n.'),
(3302, 'de', '_NEWSLETTER_SUBSCRIBE_TEXT', '<p>Um Newsletter von unserer Website zu erhalten, geben Sie einfach Ihre Email und klicken Sie auf \"Abonnieren\"-Knopf. </p><p> Wenn Sie sich sp??ter entscheiden, um Ihr Abonnement beenden oder ??ndern Sie den Typ der Nachricht erhalten, folgen Sie einfach dem Link am Ende des aktuellen Newsletter und aktualisieren Sie Ihr Profil oder abbestellen, indem Sie das Kontrollk??stchen unten.</p>'),
(3303, 'en', '_NEWSLETTER_SUBSCRIBE_TEXT', '<p>To receive newsletters from our site, simply enter your email and click on \"Subscribe\" button.</p><p>If you later decide to stop your subscription or change the type of news you receive, simply follow the link at the end of the latest newsletter and update your profile or unsubscribe by ticking the checkbox below.</p>'),
(3304, 'es', '_NEWSLETTER_SUBSCRIBE_TEXT', '<p>Para recibir boletines de noticias de nuestro sitio, simplemente introduzca su email y haga clic en el bot??n \"Suscribirse\".</p><p>Si posteriormente decide dejar su suscripci??n o cambiar el tipo de noticias que recibe, s??lo tiene que seguir el enlace al final del ??ltimo bolet??n de noticias y actualizar su perfil o darse de baja, marcando la casilla a continuaci??n.</p>'),
(3305, 'de', '_NEWSLETTER_SUBSCRIPTION_MANAGEMENT', 'Newsletter-Abonnement-Verwaltung'),
(3306, 'en', '_NEWSLETTER_SUBSCRIPTION_MANAGEMENT', 'Newsletter Subscription Management'),
(3307, 'es', '_NEWSLETTER_SUBSCRIPTION_MANAGEMENT', 'Bolet??n de administraci??n de suscripciones'),
(3308, 'de', '_NEWSLETTER_UNSUBSCRIBE_SUCCESS', 'Sie haben sich erfolgreich von unserem Newsletter abgemeldet!'),
(3309, 'en', '_NEWSLETTER_UNSUBSCRIBE_SUCCESS', 'You have been successfully unsubscribed from our newsletter!'),
(3310, 'es', '_NEWSLETTER_UNSUBSCRIBE_SUCCESS', 'Que han sido ??xito de baja de nuestro bolet??n de noticias!'),
(3311, 'de', '_NEWSLETTER_UNSUBSCRIBE_TEXT', '<p>Um von unserem Newsletter abmelden, geben Sie Ihre E-Mail-Adresse ein und klicken Sie auf die Schaltfl??che Abbestellen.</p>'),
(3312, 'en', '_NEWSLETTER_UNSUBSCRIBE_TEXT', '<p>To unsubscribe from our newsletters, enter your email address below and click the unsubscribe button.</p>'),
(3313, 'es', '_NEWSLETTER_UNSUBSCRIBE_TEXT', '<p>Para darse de baja de nuestros boletines, introduzca su direcci??n de correo electr??nico y haga clic en el bot??n de darse de baja.</p>'),
(3314, 'de', '_NEWS_AND_EVENTS', 'News &amp; Events'),
(3315, 'en', '_NEWS_AND_EVENTS', 'News & Events'),
(3316, 'es', '_NEWS_AND_EVENTS', 'Noticias y Eventos'),
(3317, 'de', '_NEWS_MANAGEMENT', 'News Management'),
(3318, 'en', '_NEWS_MANAGEMENT', 'News Management'),
(3319, 'es', '_NEWS_MANAGEMENT', 'Gesti??n de Noticias'),
(3320, 'de', '_NEWS_SETTINGS', 'News Einstellungen'),
(3321, 'en', '_NEWS_SETTINGS', 'News Settings'),
(3322, 'es', '_NEWS_SETTINGS', 'Noticias Ajustes'),
(3323, 'de', '_NEXT', 'n??chste'),
(3324, 'en', '_NEXT', 'Next'),
(3325, 'es', '_NEXT', 'Pr??ximo'),
(3326, 'de', '_NIGHT', 'Nacht'),
(3327, 'en', '_NIGHT', 'Night'),
(3328, 'es', '_NIGHT', 'Noche'),
(3329, 'de', '_NIGHTS', 'N??chte'),
(3330, 'en', '_NIGHTS', 'Nights'),
(3331, 'es', '_NIGHTS', 'Noches'),
(3332, 'de', '_NIGHT_3', '3. Nacht'),
(3333, 'en', '_NIGHT_3', '3rd night'),
(3334, 'es', '_NIGHT_3', '3?? noche'),
(3335, 'de', '_NIGHT_4', '4. Nacht'),
(3336, 'en', '_NIGHT_4', '4th night'),
(3337, 'es', '_NIGHT_4', '4?? noche'),
(3338, 'de', '_NIGHT_5', '5. Nacht'),
(3339, 'en', '_NIGHT_5', '5th night'),
(3340, 'es', '_NIGHT_5', '5?? noche'),
(3341, 'de', '_NO', 'Keine'),
(3342, 'en', '_NO', 'No'),
(3343, 'es', '_NO', 'No'),
(3344, 'de', '_NONE', 'keiner'),
(3345, 'en', '_NONE', 'None'),
(3346, 'es', '_NONE', 'Ninguno'),
(3347, 'de', '_NOTICE_MODULES_CODE', 'Um die verf??gbaren Module zu dieser Seite hinzuf??gen nur kopieren und einf??gen in den Text:'),
(3348, 'en', '_NOTICE_MODULES_CODE', 'To add available modules to this page just copy and paste into the text:'),
(3349, 'es', '_NOTICE_MODULES_CODE', 'Para agregar m??dulos a disposici??n de esta p??gina s??lo tienes que copiar y pegar en el texto:'),
(3350, 'de', '_NOTIFICATION_MSG', 'Bitte senden Sie mir Informationen ??ber Updates'),
(3351, 'en', '_NOTIFICATION_MSG', 'Please send me information about specials and discounts!'),
(3352, 'es', '_NOTIFICATION_MSG', 'Por favor, env??enme informaci??n acerca de ofertas especiales y descuentos!'),
(3353, 'de', '_NOTIFICATION_STATUS_CHANGED', 'Notification Status ge??ndert'),
(3354, 'en', '_NOTIFICATION_STATUS_CHANGED', 'Notification status changed'),
(3355, 'es', '_NOTIFICATION_STATUS_CHANGED', 'Estatuto de notificaci??n cambiado'),
(3356, 'de', '_NOT_ACTIVE', 'nicht aktiv'),
(3357, 'en', '_NOT_ACTIVE', 'not active'),
(3358, 'es', '_NOT_ACTIVE', 'no activo'),
(3359, 'de', '_NOT_ALLOWED', 'Nicht Erlaubt'),
(3360, 'en', '_NOT_ALLOWED', 'Not Allowed'),
(3361, 'es', '_NOT_ALLOWED', 'No se admiten'),
(3362, 'de', '_NOT_AUTHORIZED', 'Sie sind nicht berechtigt'),
(3363, 'en', '_NOT_AUTHORIZED', 'You are not authorized to view this page.'),
(3364, 'es', '_NOT_AUTHORIZED', 'Usted no est?? autorizado a ver esta p??gina.'),
(3365, 'de', '_NOT_AVAILABLE', 'n/a'),
(3366, 'en', '_NOT_AVAILABLE', 'N/A'),
(3367, 'es', '_NOT_AVAILABLE', 'N/A'),
(3368, 'de', '_NOT_ENOUGH_MONEY_ALERT', 'Nicht genug Geld in Ihr Kontostand : '),
(3369, 'en', '_NOT_ENOUGH_MONEY_ALERT', 'Not enough money in your account balance: '),
(3370, 'es', '_NOT_ENOUGH_MONEY_ALERT', 'No hay suficiente dinero en su saldo de la cuenta: '),
(3371, 'de', '_NOT_GOOD', 'Nicht Gut!'),
(3372, 'en', '_NOT_GOOD', 'Not Good'),
(3373, 'es', '_NOT_GOOD', 'No Es Bueno'),
(3374, 'de', '_NOT_LOGGED_ALERT', 'Sie m??ssen angemeldet sein, um diese Operation auszuf??hren!'),
(3375, 'en', '_NOT_LOGGED_ALERT', 'You must be logged in to perform this operation!'),
(3376, 'es', '_NOT_LOGGED_ALERT', 'Usted debe estar conectado para realizar esta operaci??n!'),
(3377, 'de', '_NOT_PAID_YET', 'Noch nicht bezahlt'),
(3378, 'en', '_NOT_PAID_YET', 'Not paid yet'),
(3379, 'es', '_NOT_PAID_YET', 'A??n no pagados'),
(3380, 'de', '_NOT_RECOMMENDED', 'Nicht empfohlen'),
(3381, 'en', '_NOT_RECOMMENDED', 'Not Recommended'),
(3382, 'es', '_NOT_RECOMMENDED', 'No recomendado'),
(3383, 'de', '_NOVEMBER', 'November'),
(3384, 'en', '_NOVEMBER', 'November'),
(3385, 'es', '_NOVEMBER', 'Noviembre'),
(3386, 'de', '_NO_AVAILABLE', 'Nicht verf??gbar'),
(3387, 'en', '_NO_AVAILABLE', 'Not Available'),
(3388, 'es', '_NO_AVAILABLE', 'No est?? disponible'),
(3389, 'de', '_NO_BOOKING_FOUND', 'Die Zahl der Buchung die Sie eingegeben haben war nicht in unserem System gefunden! Bitte erneut eingeben.'),
(3390, 'en', '_NO_BOOKING_FOUND', 'The number of booking you\'ve entered has not been found in our system! Please re-enter.'),
(3391, 'es', '_NO_BOOKING_FOUND', 'El n??mero de reserva que has introducido no se encuentra en nuestro sistema! Por favor, vuelva a introducir.'),
(3395, 'de', '_NO_COMMENTS_YET', 'Noch keine Kommentare.'),
(3396, 'en', '_NO_COMMENTS_YET', 'No comments yet.'),
(3397, 'es', '_NO_COMMENTS_YET', 'Todav??a no hay comentarios.'),
(3398, 'de', '_NO_CUSTOMER_FOUND', 'Kein Kunde gefunden!'),
(3399, 'en', '_NO_CUSTOMER_FOUND', 'No customer found!'),
(3400, 'es', '_NO_CUSTOMER_FOUND', 'Ning??n cliente ha encontrado!'),
(3401, 'de', '_NO_DEFAULT_PERIODS', 'Standard Zeitr??ume noch nicht f??r dieses Hotel definiert. Klicken Sie <a href=_HREF_>hier</a>, um sie hinzuzuf??gen.'),
(3402, 'en', '_NO_DEFAULT_PERIODS', 'Default periods not yet defined for this hotel. Click <a href=_HREF_>here</a> to add them.'),
(3403, 'es', '_NO_DEFAULT_PERIODS', 'Per??odos por defecto no definido para este hotel. Haga clic en <a href=_HREF_>aqu??</a> para agregarlos.'),
(3404, 'de', '_NO_MATCHES_FOUND', 'Keine Treffer gefunden'),
(3405, 'en', '_NO_MATCHES_FOUND', 'No matches found'),
(3406, 'es', '_NO_MATCHES_FOUND', 'No se encontraron coincidencias'),
(3407, 'de', '_NO_NEWS', 'Keine Nachrichten'),
(3408, 'en', '_NO_NEWS', 'No news'),
(3409, 'es', '_NO_NEWS', 'No hay noticias'),
(3410, 'de', '_NO_PAYMENT_METHODS_ALERT', 'Keine Zahlungsmethoden zur Verf??gung! Bitte kontaktieren Sie unseren technischen Support.'),
(3411, 'en', '_NO_PAYMENT_METHODS_ALERT', 'No payment options are available! Please try later or contact our technical support.'),
(3412, 'es', '_NO_PAYMENT_METHODS_ALERT', 'No hay m??todos de pago disponibles! Por favor, p??ngase en contacto con nuestro soporte t??cnico.'),
(3413, 'de', '_NO_RECORDS_FOUND', 'Keine Datens??tze gefunden'),
(3414, 'en', '_NO_RECORDS_FOUND', 'No records found'),
(3415, 'es', '_NO_RECORDS_FOUND', 'No se encontraron registros'),
(3416, 'de', '_NO_RECORDS_PROCESSED', 'Keine Datens??tze zur Verarbeitung gefunden!'),
(3417, 'en', '_NO_RECORDS_PROCESSED', 'No records found for processing!'),
(3418, 'es', '_NO_RECORDS_PROCESSED', 'No se encontraron registros para el tratamiento!'),
(3419, 'de', '_NO_RECORDS_UPDATED', 'Keine Datens??tze wurden aktualisiert!'),
(3420, 'en', '_NO_RECORDS_UPDATED', 'No records were updated!'),
(3421, 'es', '_NO_RECORDS_UPDATED', 'No hay registros fueron actualizados!'),
(3422, 'de', '_NO_ROOMS_FOUND', 'Sorry, es gibt keine R??ume, die den Suchkriterien entsprechen. Bitte ??ndern Sie Ihre Suchkriterien ein, um mehr R??ume zu sehen.'),
(3423, 'en', '_NO_ROOMS_FOUND', 'Sorry, there are no rooms that match your search. Please change your search criteria to see more rooms.'),
(3424, 'es', '_NO_ROOMS_FOUND', 'Lo sentimos, no hay habitaciones que coinciden con su b??squeda. Por favor cambie sus criterios de b??squeda para ver m??s habitaciones.'),
(3425, 'de', '_NO_TEMPLATE', 'keine vorlage'),
(3426, 'en', '_NO_TEMPLATE', 'no template'),
(3427, 'es', '_NO_TEMPLATE', 'sin plantilla'),
(3428, 'de', '_NO_USER_EMAIL_EXISTS_ALERT', 'Es scheint, dass Sie bereits gebuchten Zimmer mit uns! <br>Bitte klicken Sie <a href=index.php?customer=reset_account>hier</a>, um Ihren Benutzernamen zur??ckgesetzt und bekommen ein tempor??res Passwort.'),
(3429, 'en', '_NO_USER_EMAIL_EXISTS_ALERT', 'It seems that you already booked rooms with us! <br>Please click <a href=index.php?customer=reset_account>here</a> to reset your username and get a temporary password. '),
(3430, 'es', '_NO_USER_EMAIL_EXISTS_ALERT', 'Parece que ya reservaron habitaciones con nosotros! <br>Por favor, haga clic <a href=index.php?customer=reset_account>aqu??</a> para restablecer su nombre de usuario y obtener una contrase??a temporal.'),
(3431, 'de', '_NO_WRITE_ACCESS_ALERT', 'Bitte ??berpr??fen Sie Schreibzugriff auf folgenden Verzeichnissen:'),
(3432, 'en', '_NO_WRITE_ACCESS_ALERT', 'Please check you have write access to following directories:'),
(3433, 'es', '_NO_WRITE_ACCESS_ALERT', 'Por favor, compruebe que tiene acceso de escritura a los directorios siguientes:'),
(3434, 'de', '_NUMBER_AGENCIES', 'Anzahl der Agenturen'),
(3435, 'en', '_NUMBER_AGENCIES', 'Number of Agencies'),
(3436, 'es', '_NUMBER_AGENCIES', 'N??mero de agencias'),
(3437, 'de', '_NUMBER_OF_VIEWS', 'Anzahl der Ansichten'),
(3438, 'en', '_NUMBER_OF_VIEWS', 'Number of views'),
(3439, 'es', '_NUMBER_OF_VIEWS', 'N??mero de puntos de vista'),
(3440, 'de', '_OCCUPANCY', 'Belegung'),
(3441, 'en', '_OCCUPANCY', 'Occupancy'),
(3442, 'es', '_OCCUPANCY', 'Ocupaci??n'),
(3443, 'de', '_OCTOBER', 'Oktober'),
(3444, 'en', '_OCTOBER', 'October'),
(3445, 'es', '_OCTOBER', 'Octubre'),
(3446, 'de', '_OFF', 'aus'),
(3447, 'en', '_OFF', 'Off'),
(3448, 'es', '_OFF', 'Desc.'),
(3449, 'de', '_OFFLINE_LOGIN_ALERT', 'So melden Sie sich beim Admin Panel Website offline ist'),
(3450, 'en', '_OFFLINE_LOGIN_ALERT', 'To log into Admin Panel when site is offline, type in your browser: http://{your_site_address}/index.php?admin=login'),
(3451, 'es', '_OFFLINE_LOGIN_ALERT', 'Para entrar en el panel de administraci??n cuando el sitio est?? en l??nea, escriba en su navegador: http:// {your_site_address}/index.php?admin=login'),
(3452, 'de', '_OFFLINE_MESSAGE', 'Offline-Nachricht'),
(3453, 'en', '_OFFLINE_MESSAGE', 'Offline Message'),
(3454, 'es', '_OFFLINE_MESSAGE', 'Mensaje Desconectado'),
(3455, 'de', '_ON', 'an'),
(3456, 'en', '_ON', 'On'),
(3457, 'es', '_ON', 'Activ.'),
(3458, 'de', '_ONLINE', 'Online'),
(3459, 'en', '_ONLINE', 'Online'),
(3460, 'es', '_ONLINE', 'Online'),
(3461, 'de', '_ONLINE_ORDER', 'On-line Bestellen'),
(3462, 'en', '_ONLINE_ORDER', 'On-line Order'),
(3463, 'es', '_ONLINE_ORDER', 'Orden en l??nea'),
(3464, 'de', '_ONLY', 'nur'),
(3465, 'en', '_ONLY', 'Only'),
(3466, 'es', '_ONLY', 'S??lo'),
(3467, 'de', '_OPEN', 'offen'),
(3468, 'en', '_OPEN', 'Open'),
(3469, 'es', '_OPEN', 'Abrir'),
(3470, 'de', '_OPEN_ALERT_WINDOW', 'Open Alert Window'),
(3471, 'en', '_OPEN_ALERT_WINDOW', 'Open Alert Window'),
(3472, 'es', '_OPEN_ALERT_WINDOW', 'Abra la ventana de alerta'),
(3473, 'de', '_OPERATION_BLOCKED', 'Dieser Vorgang ist in der Demoversion gesperrt!'),
(3474, 'en', '_OPERATION_BLOCKED', 'This operation is blocked in Demo Mode! :('),
(3475, 'es', '_OPERATION_BLOCKED', 'Esta operaci??n est?? bloqueada en Versi??n Demo!'),
(3476, 'de', '_OPERATION_COMMON_COMPLETED', 'Die Operation wurde erfolgreich abgeschlossen!'),
(3477, 'en', '_OPERATION_COMMON_COMPLETED', 'The operation has been successfully completed!'),
(3478, 'es', '_OPERATION_COMMON_COMPLETED', 'La operaci??n se complet?? con ??xito!'),
(3479, 'de', '_OPERATION_WAS_ALREADY_COMPLETED', 'Dieser Vorgang wurde bereits abgeschlossen!'),
(3480, 'en', '_OPERATION_WAS_ALREADY_COMPLETED', 'This operation has been already completed!'),
(3481, 'es', '_OPERATION_WAS_ALREADY_COMPLETED', 'Esta operaci??n ya se hab??a terminado!'),
(3482, 'de', '_OR', 'oder'),
(3483, 'en', '_OR', 'or'),
(3484, 'es', '_OR', 'o'),
(3485, 'de', '_ORDER', 'Bestellen'),
(3486, 'en', '_ORDER', 'Order'),
(3487, 'es', '_ORDER', 'Orden'),
(3488, 'de', '_ORDERS', 'Bestellungen'),
(3489, 'en', '_ORDERS', 'Orders'),
(3490, 'es', '_ORDERS', '??rdenes'),
(3491, 'de', '_ORDERS_COUNT', 'Bestellungen rechnen'),
(3492, 'en', '_ORDERS_COUNT', 'Orders count'),
(3493, 'es', '_ORDERS_COUNT', '??rdenes de contar'),
(3494, 'de', '_ORDER_DATE', 'Sortierung: Datum'),
(3495, 'en', '_ORDER_DATE', 'Order Date'),
(3496, 'es', '_ORDER_DATE', 'Fecha del pedido'),
(3497, 'de', '_ORDER_ERROR', 'Kann nicht abgeschlossen werden Ihre Bestellung! Bitte versuchen Sie es sp??ter erneut.'),
(3498, 'en', '_ORDER_ERROR', 'Cannot complete your order! Please try again later.'),
(3499, 'es', '_ORDER_ERROR', 'No se puede completar su solicitud! Por favor, int??ntelo de nuevo m??s tarde.'),
(3500, 'de', '_ORDER_NOW', 'Jetzt bestellen'),
(3501, 'en', '_ORDER_NOW', 'Order Now'),
(3502, 'es', '_ORDER_NOW', 'Ordene ahora'),
(3503, 'de', '_ORDER_PLACED_MSG', 'Danke! Der Auftrag ist in unserem System platziert und wird in K??rze bearbeitet werden. Ihre Buchungsnummer ist: _BOOKING_NUMBER_. '),
(3504, 'en', '_ORDER_PLACED_MSG', 'Thank you! The order has been placed in our system and will be processed shortly. Your booking number is: _BOOKING_NUMBER_.'),
(3505, 'es', '_ORDER_PLACED_MSG', '??Gracias! El pedido ha sido realizado en nuestro sistema y se procesar?? en breve. Su n??mero de reserva es la siguiente: _BOOKING_NUMBER_.'),
(3506, 'de', '_ORDER_PRICE', 'Bestellen Preis'),
(3507, 'en', '_ORDER_PRICE', 'Order Price'),
(3508, 'es', '_ORDER_PRICE', 'Orden de precios'),
(3509, 'de', '_OTHER', 'Anderen'),
(3510, 'en', '_OTHER', 'Other'),
(3511, 'es', '_OTHER', 'Otro'),
(3512, 'de', '_OUR_HOTELS', 'unsere Hotels'),
(3513, 'en', '_OUR_HOTELS', 'our hotels'),
(3514, 'es', '_OUR_HOTELS', 'nuestros hoteles'),
(3515, 'de', '_OUR_LOCATION', 'Unser Standort'),
(3516, 'en', '_OUR_LOCATION', 'Our location'),
(3517, 'es', '_OUR_LOCATION', 'Nuestra ubicaci??n'),
(3518, 'de', '_OWNER', 'Eigent??mer'),
(3519, 'en', '_OWNER', 'Owner'),
(3520, 'es', '_OWNER', 'Propietario'),
(3521, 'de', '_OWNER_NOT_ASSIGNED', 'Sie hat immer noch nicht zu jedem Hotel zugewiesen wurde, um die Berichte zu sehen.'),
(3522, 'en', '_OWNER_NOT_ASSIGNED', 'You still have not been assigned to any hotel to see the reports.'),
(3523, 'es', '_OWNER_NOT_ASSIGNED', 'Todav??a no se ha asignado a ning??n hotel para ver los informes.'),
(3524, 'de', '_OWNER_NOT_ASSIGNED_TO_HOTEL', 'Falsche Hotel ID oder Sie haben keine Zugriffsberechtigungen es anzuzeigen.'),
(3525, 'en', '_OWNER_NOT_ASSIGNED_TO_HOTEL', 'Wrong hotel ID or you have no access permissions to view it.'),
(3526, 'es', '_OWNER_NOT_ASSIGNED_TO_HOTEL', 'ID incorrecto hotel o que no tienen permisos de acceso para visualizarlo.'),
(3527, 'de', '_PACKAGES', 'Pakete'),
(3528, 'en', '_PACKAGES', 'Packages'),
(3529, 'es', '_PACKAGES', 'Paquetes'),
(3530, 'de', '_PACKAGES_MANAGEMENT', 'Pakete-Management'),
(3531, 'en', '_PACKAGES_MANAGEMENT', 'Packages Management'),
(3532, 'es', '_PACKAGES_MANAGEMENT', 'Gesti??n de paquetes'),
(3533, 'de', '_PAGE', 'Seite'),
(3534, 'en', '_PAGE', 'Page'),
(3535, 'es', '_PAGE', 'P??gina'),
(3536, 'de', '_PAGES', 'Seiten'),
(3537, 'en', '_PAGES', 'Pages'),
(3538, 'es', '_PAGES', 'P??ginas'),
(3539, 'de', '_PAGE_ADD_NEW', 'Neue Seite hinzuf??gen'),
(3540, 'en', '_PAGE_ADD_NEW', 'Add New Page'),
(3541, 'es', '_PAGE_ADD_NEW', 'Add New Page'),
(3542, 'de', '_PAGE_CREATED', 'Seite wurde erfolgreich erstellt'),
(3543, 'en', '_PAGE_CREATED', 'Page has been successfully created'),
(3544, 'es', '_PAGE_CREATED', 'La p??gina se ha creado correctamente'),
(3545, 'de', '_PAGE_DELETED', 'Seite wurde erfolgreich gel??scht'),
(3546, 'en', '_PAGE_DELETED', 'Page has been successfully deleted'),
(3547, 'es', '_PAGE_DELETED', 'Page ha sido borrado'),
(3548, 'de', '_PAGE_DELETE_WARNING', 'Sind Sie sicher'),
(3549, 'en', '_PAGE_DELETE_WARNING', 'Are you sure you want to delete this page?'),
(3550, 'es', '_PAGE_DELETE_WARNING', '??Est??s seguro de que deseas eliminar esta p??gina?'),
(3551, 'de', '_PAGE_EDIT_HOME', 'Bearbeiten Home Page'),
(3552, 'en', '_PAGE_EDIT_HOME', 'Edit Home Page'),
(3553, 'es', '_PAGE_EDIT_HOME', 'Editar Home Page'),
(3554, 'de', '_PAGE_EDIT_PAGES', 'Bearbeiten Seiten'),
(3555, 'en', '_PAGE_EDIT_PAGES', 'Edit Pages'),
(3556, 'es', '_PAGE_EDIT_PAGES', 'Editar p??ginas'),
(3557, 'de', '_PAGE_EDIT_SYS_PAGES', 'Edit System Seiten'),
(3558, 'en', '_PAGE_EDIT_SYS_PAGES', 'Edit System Pages'),
(3559, 'es', '_PAGE_EDIT_SYS_PAGES', 'Editar p??ginas del sistema'),
(3560, 'de', '_PAGE_EXPIRED', 'Der von Ihnen angeforderte Seite ist abgelaufen!'),
(3561, 'en', '_PAGE_EXPIRED', 'The page you requested has expired!'),
(3562, 'es', '_PAGE_EXPIRED', 'P??gina solicitada ha caducado!'),
(3563, 'de', '_PAGE_HEADER', 'Seitenkopf'),
(3564, 'en', '_PAGE_HEADER', 'Page Header'),
(3565, 'es', '_PAGE_HEADER', 'Encabezado de p??gina'),
(3566, 'de', '_PAGE_HEADER_EMPTY', 'Page Header kann nicht leer sein!'),
(3567, 'en', '_PAGE_HEADER_EMPTY', 'Page header cannot be empty!'),
(3568, 'es', '_PAGE_HEADER_EMPTY', 'Cabecera de la p??gina no puede estar vac??a!'),
(3569, 'de', '_PAGE_KEY_EMPTY', 'Page-Taste kann nicht leer sein!'),
(3570, 'en', '_PAGE_KEY_EMPTY', 'Page key cannot be empty!'),
(3571, 'es', '_PAGE_KEY_EMPTY', 'Page clave no puede estar vac??a!'),
(3572, 'de', '_PAGE_LINK_TOO_LONG', 'Link Menu zu lang!'),
(3573, 'en', '_PAGE_LINK_TOO_LONG', 'Menu link too long!'),
(3574, 'es', '_PAGE_LINK_TOO_LONG', 'Enlace del men?? demasiado tiempo!'),
(3575, 'de', '_PAGE_MANAGEMENT', 'Seiten-Management'),
(3576, 'en', '_PAGE_MANAGEMENT', 'Pages Management'),
(3577, 'es', '_PAGE_MANAGEMENT', 'P??ginas de Gesti??n de'),
(3578, 'de', '_PAGE_NOT_CREATED', 'Seite wurde nicht erstellt!'),
(3579, 'en', '_PAGE_NOT_CREATED', 'Page has not been created!'),
(3580, 'es', '_PAGE_NOT_CREATED', 'La p??gina no ha sido creado!'),
(3581, 'de', '_PAGE_NOT_DELETED', 'Seite wurde nicht gel??scht!'),
(3582, 'en', '_PAGE_NOT_DELETED', 'Page has not been deleted!'),
(3583, 'es', '_PAGE_NOT_DELETED', 'La p??gina no se ha eliminado!'),
(3584, 'de', '_PAGE_NOT_EXISTS', 'Die Seite'),
(3585, 'en', '_PAGE_NOT_EXISTS', 'The page you attempted to access does not exist'),
(3586, 'es', '_PAGE_NOT_EXISTS', 'La p??gina que intenta acceder no existe'),
(3587, 'de', '_PAGE_NOT_FOUND', 'Keine Seiten gefunden'),
(3588, 'en', '_PAGE_NOT_FOUND', 'No Pages Found'),
(3589, 'es', '_PAGE_NOT_FOUND', 'No se han encontrado p??ginas'),
(3590, 'de', '_PAGE_NOT_SAVED', 'Diese Seite wurde nicht gespart!'),
(3591, 'en', '_PAGE_NOT_SAVED', 'Page has not been saved!'),
(3592, 'es', '_PAGE_NOT_SAVED', 'La p??gina no se salv??!'),
(3593, 'de', '_PAGE_ORDER_CHANGED', 'Page Bestellung wurde erfolgreich ge??ndert!'),
(3594, 'en', '_PAGE_ORDER_CHANGED', 'Page order has been successfully changed!'),
(3595, 'es', '_PAGE_ORDER_CHANGED', 'Orden de las p??ginas se ha cambiado correctamente!'),
(3596, 'de', '_PAGE_REMOVED', 'Diese Seite wurde erfolgreich entfernt!'),
(3597, 'en', '_PAGE_REMOVED', 'Page has been successfully removed!'),
(3598, 'es', '_PAGE_REMOVED', 'Page se ha eliminado correctamente!'),
(3599, 'de', '_PAGE_REMOVE_WARNING', 'Sie sind sicher'),
(3600, 'en', '_PAGE_REMOVE_WARNING', 'Are you sure you want to move this page to the Trash?'),
(3601, 'es', '_PAGE_REMOVE_WARNING', '??Est?? seguro que desea mover esta pagina a la papelera?'),
(3602, 'de', '_PAGE_RESTORED', 'Diese Seite wurde erfolgreich wiederhergestellt!'),
(3603, 'en', '_PAGE_RESTORED', 'Page has been successfully restored!'),
(3604, 'es', '_PAGE_RESTORED', 'Page fue restaurado con ??xito!'),
(3605, 'de', '_PAGE_RESTORE_WARNING', 'Sind Sie sicher'),
(3606, 'en', '_PAGE_RESTORE_WARNING', 'Are you sure you want to restore this page?'),
(3607, 'es', '_PAGE_RESTORE_WARNING', '??Est??s seguro de que desea restaurar esta p??gina?'),
(3608, 'de', '_PAGE_SAVED', 'Diese Seite wurde erfolgreich gespeichert'),
(3609, 'en', '_PAGE_SAVED', 'Page has been successfully saved!'),
(3610, 'es', '_PAGE_SAVED', 'La p??gina se ha guardado correctamente'),
(3611, 'de', '_PAGE_TEXT', 'Seite Text'),
(3612, 'en', '_PAGE_TEXT', 'Page text'),
(3613, 'es', '_PAGE_TEXT', 'Las p??ginas de texto'),
(3614, 'de', '_PAGE_TITLE', 'Seitentitel'),
(3615, 'en', '_PAGE_TITLE', 'Page Title'),
(3616, 'es', '_PAGE_TITLE', 'T??tulo de la p??gina'),
(3617, 'de', '_PAGE_UNKNOWN', 'Unbekannte Seite!'),
(3618, 'en', '_PAGE_UNKNOWN', 'Unknown page!'),
(3619, 'es', '_PAGE_UNKNOWN', 'P??gina desconocido!'),
(3620, 'de', '_PAID_SUM', 'gezahlten Betrag'),
(3621, 'en', '_PAID_SUM', 'Paid Sum'),
(3622, 'es', '_PAID_SUM', 'suma pagada'),
(3623, 'de', '_PARAMETER', 'Parameter'),
(3624, 'en', '_PARAMETER', 'Parameter'),
(3625, 'es', '_PARAMETER', 'Par??metro'),
(3626, 'de', '_PARTIALLY_AVAILABLE', 'Teilweise verf??gbar'),
(3627, 'en', '_PARTIALLY_AVAILABLE', 'Partially Available'),
(3628, 'es', '_PARTIALLY_AVAILABLE', 'Parcialmente disponible'),
(3629, 'de', '_PARTIAL_PRICE', 'Teilweise Preis'),
(3630, 'en', '_PARTIAL_PRICE', 'Partial Price'),
(3631, 'es', '_PARTIAL_PRICE', 'Precio parcial'),
(3632, 'de', '_PASSENGERS', 'Passagiere'),
(3633, 'en', '_PASSENGERS', 'Passengers'),
(3634, 'es', '_PASSENGERS', 'Los pasajeros'),
(3635, 'de', '_PASSENGER_TYPE', 'Passagier-Typ'),
(3636, 'en', '_PASSENGER_TYPE', 'Passagiere type'),
(3637, 'es', '_PASSENGER_TYPE', 'Tipo de pasajero'),
(3638, 'de', '_PASSWORD', 'Kennwort'),
(3639, 'en', '_PASSWORD', 'Password'),
(3640, 'es', '_PASSWORD', 'Contrase??a'),
(3641, 'de', '_PASSWORD_ALREADY_SENT', 'Passwort wurde bereits auf Ihre E-Mail geschickt. Bitte versuchen Sie es sp??ter erneut.'),
(3642, 'en', '_PASSWORD_ALREADY_SENT', 'Password has been already sent to your email. Please try again later.'),
(3643, 'es', '_PASSWORD_ALREADY_SENT', 'Contrase??a era ya ha sido enviada a su correo electr??nico. Por favor, int??ntelo de nuevo m??s tarde.'),
(3644, 'de', '_PASSWORD_CHANGED', 'Passwort wurde ge??ndert.'),
(3645, 'en', '_PASSWORD_CHANGED', 'Password has been changed.'),
(3646, 'es', '_PASSWORD_CHANGED', 'Contrase??a ha cambiado.'),
(3647, 'de', '_PASSWORD_DO_NOT_MATCH', 'Kennwort und Best??tigung stimmen nicht ??berein!'),
(3648, 'en', '_PASSWORD_DO_NOT_MATCH', 'Password and confirmation do not match!'),
(3649, 'es', '_PASSWORD_DO_NOT_MATCH', 'Contrase??a y la confirmaci??n no coinciden!'),
(3650, 'de', '_PASSWORD_FORGOTTEN', 'Passwort vergessen?'),
(3651, 'en', '_PASSWORD_FORGOTTEN', 'Forgotten Password'),
(3652, 'es', '_PASSWORD_FORGOTTEN', 'He olvidado la contrase??a'),
(3653, 'de', '_PASSWORD_FORGOTTEN_PAGE_MSG', 'Verwenden Sie eine g??ltige E-Mail-Administrator, Ihr Passwort f??r den Administrator Back-End-Wiederherstellung. <br><br> Zur??ck zur Seite <a href=\'index.php\'>Home Page</a> <br><br><img align=\'center\' src=\'images/password.png\' alt=\'\' width=\'92px\'>'),
(3654, 'en', '_PASSWORD_FORGOTTEN_PAGE_MSG', 'Use a valid administrator e-mail to restore your password to the Administrator Back-End.<br><br>Return to site <a href=\'index.php\'>Home Page</a><br><br><img align=\'center\' src=\'images/password.png\' alt=\'\' width=\'92px\'>'),
(3655, 'es', '_PASSWORD_FORGOTTEN_PAGE_MSG', 'Utilice un administrador de correo electr??nico v??lida para restablecer su contrase??a en el Administrador de servicios de fondo. <br> Volver a la p??gina<a href=\'index.php\'>Home Page</a><br><br><img align=\'center\' src=\'images/password.png\' alt=\'\' width=\'92px\'>'),
(3656, 'de', '_PASSWORD_IS_EMPTY', 'Passw??rter d??rfen nicht leer sein und mindestens sechs (6) Zeichen lang sein!'),
(3657, 'en', '_PASSWORD_IS_EMPTY', 'Passwords must not be empty and at least 6 characters!'),
(3658, 'es', '_PASSWORD_IS_EMPTY', 'Las contrase??as no deben estar vac??as y al menos 6 caracteres!'),
(3659, 'de', '_PASSWORD_NOT_CHANGED', 'Passwort wurde nicht ge??ndert. Bitte versuchen Sie es erneut!'),
(3660, 'en', '_PASSWORD_NOT_CHANGED', 'Password has not been changed. Please try again!'),
(3661, 'es', '_PASSWORD_NOT_CHANGED', 'La contrase??a no ha cambiado. Por favor, int??ntelo de nuevo!'),
(3662, 'de', '_PASSWORD_RECOVERY_MSG', 'Um Ihr Kennwort ein'),
(3663, 'en', '_PASSWORD_RECOVERY_MSG', 'To recover your password, please enter your e-mail address and recovery instructions will be emailed to you.'),
(3664, 'es', '_PASSWORD_RECOVERY_MSG', 'Para recuperar su contrase??a, por favor, introduzca su direcci??n de correo electr??nico y un enlace ser?? enviada a usted.'),
(3665, 'de', '_PASSWORD_SUCCESSFULLY_SENT', 'Ihr Passwort wurde erfolgreich an die Email-Adresse gesendet.'),
(3666, 'en', '_PASSWORD_SUCCESSFULLY_SENT', 'Your password has been successfully sent to the email address.'),
(3667, 'es', '_PASSWORD_SUCCESSFULLY_SENT', 'Su contrase??a ha sido enviado con ??xito a la direcci??n de correo electr??nico.'),
(3668, 'de', '_PAST_TIME_ALERT', 'Sie k??nnen keine Reservierung in der Vergangenheit! Bitte erneut eingeben Termine.'),
(3669, 'en', '_PAST_TIME_ALERT', 'You cannot perform reservation in the past! Please re-enter dates.'),
(3670, 'es', '_PAST_TIME_ALERT', 'No es posible realizar reservas en el pasado! Por favor, vuelva a entrar en fechas.'),
(3671, 'de', '_PAYED_BY', 'Bezahlt durch'),
(3672, 'en', '_PAYED_BY', 'Payed by'),
(3673, 'es', '_PAYED_BY', 'Pagado por'),
(3674, 'de', '_PAYMENT', 'Zahlung'),
(3675, 'en', '_PAYMENT', 'Payment'),
(3676, 'es', '_PAYMENT', 'Pago'),
(3677, 'de', '_PAYMENTS', 'Zahlungen'),
(3678, 'en', '_PAYMENTS', 'Payments'),
(3679, 'es', '_PAYMENTS', 'Pagos'),
(3680, 'de', '_PAYMENT_COMPANY_ACCOUNT', 'Zahlung Firmenkonto'),
(3681, 'en', '_PAYMENT_COMPANY_ACCOUNT', 'Payment Company Account'),
(3682, 'es', '_PAYMENT_COMPANY_ACCOUNT', 'Pago de cuenta de la compa????a'),
(3683, 'de', '_PAYMENT_DATE', 'Zahltag'),
(3684, 'en', '_PAYMENT_DATE', 'Payment Date'),
(3685, 'es', '_PAYMENT_DATE', 'Fecha de Pago'),
(3686, 'de', '_PAYMENT_DETAILS', 'Einzelheiten zur Bezahlung'),
(3687, 'en', '_PAYMENT_DETAILS', 'Payment Details'),
(3688, 'es', '_PAYMENT_DETAILS', 'Detalles de pago'),
(3689, 'de', '_PAYMENT_ERROR', 'Zahlung Fehler'),
(3690, 'en', '_PAYMENT_ERROR', 'Payment error'),
(3691, 'es', '_PAYMENT_ERROR', 'El pago de error'),
(3692, 'de', '_PAYMENT_INFO', 'Zahlungsinformationen'),
(3693, 'en', '_PAYMENT_INFO', 'Payment Info'),
(3694, 'es', '_PAYMENT_INFO', 'Informaci??n de pago'),
(3695, 'de', '_PAYMENT_METHOD', 'Zahlungsart'),
(3696, 'en', '_PAYMENT_METHOD', 'Payment Method'),
(3697, 'es', '_PAYMENT_METHOD', 'Forma de pago'),
(3698, 'de', '_PAYMENT_METHODS', 'Zahlungsmethoden'),
(3699, 'en', '_PAYMENT_METHODS', 'Payment Methods'),
(3700, 'es', '_PAYMENT_METHODS', 'Formas de pago'),
(3701, 'de', '_PAYMENT_REQUIRED', 'Zahlungsart'),
(3702, 'en', '_PAYMENT_REQUIRED', 'Payment Required'),
(3703, 'es', '_PAYMENT_REQUIRED', 'Se requiere el pago'),
(3704, 'de', '_PAYMENT_SUM', 'Die Zahlung Sum'),
(3705, 'en', '_PAYMENT_SUM', 'Payment Sum'),
(3706, 'es', '_PAYMENT_SUM', 'Pago de Suma'),
(3707, 'de', '_PAYMENT_TYPE', 'Zahlungsart'),
(3708, 'en', '_PAYMENT_TYPE', 'Payment Type'),
(3709, 'es', '_PAYMENT_TYPE', 'Tipo de Pago'),
(3710, 'de', '_PAYPAL', 'PayPal'),
(3711, 'en', '_PAYPAL', 'PayPal'),
(3712, 'es', '_PAYPAL', 'PayPal'),
(3713, 'de', '_PAYPAL_NOTICE', 'Sparen Sie Zeit. Sicher bezahlen mit Ihrer gespeicherten Zahlungsinformationen. <br />Bezahlen mit <b>Kreditkarte, Bankkonto</b> oder <b>PayPal-Guthaben.</b>'),
(3714, 'en', '_PAYPAL_NOTICE', 'Save time. Pay securely using your stored payment information.<br />Pay with <b>credit card</b>, <b>bank account</b> or <b>PayPal</b> account balance.'),
(3715, 'es', '_PAYPAL_NOTICE', 'Ahorre tiempo. Pague con seguridad con su informaci??n almacenada pago.<br /> Pago con <b>tarjeta de cr??dito</b>, <b> cuenta bancaria</b> o <b>PayPal</b> saldo de la cuenta.'),
(3716, 'de', '_PAYPAL_ORDER', 'PayPal Auftrag'),
(3717, 'en', '_PAYPAL_ORDER', 'PayPal Order'),
(3718, 'es', '_PAYPAL_ORDER', 'PayPal Orden'),
(3719, 'de', '_PAY_ON_ARRIVAL', 'Zahlung bei Ankunft'),
(3720, 'en', '_PAY_ON_ARRIVAL', 'Pay on Arrival'),
(3721, 'es', '_PAY_ON_ARRIVAL', 'Pagar a la llegada'),
(3722, 'de', '_PAY_WITH_BALANCE', 'Bezahlen Sie mit Abgleich'),
(3723, 'en', '_PAY_WITH_BALANCE', 'Pay with Balance'),
(3724, 'es', '_PAY_WITH_BALANCE', 'Pague con Equilibrio'),
(3725, 'de', '_PC_BILLING_INFORMATION_TEXT', 'Zahlungsinformationen: Adresse, Stadt, Land usw.'),
(3726, 'en', '_PC_BILLING_INFORMATION_TEXT', 'billing information: address, city, country etc.'),
(3727, 'es', '_PC_BILLING_INFORMATION_TEXT', 'informaci??n de facturaci??n: direcci??n, ciudad, pa??s, etc'),
(3728, 'de', '_PC_BOOKING_DETAILS_TEXT', 'Um Details, Liste der gekauften Produkte usw.'),
(3729, 'en', '_PC_BOOKING_DETAILS_TEXT', 'order details, list of purchased products etc.'),
(3730, 'es', '_PC_BOOKING_DETAILS_TEXT', 'detalles de la orden, la lista de los productos adquiridos, etc'),
(3731, 'de', '_PC_BOOKING_NUMBER_TEXT', 'die Zahl der Bestellung'),
(3732, 'en', '_PC_BOOKING_NUMBER_TEXT', 'the number of order'),
(3733, 'es', '_PC_BOOKING_NUMBER_TEXT', 'el n??mero de orden'),
(3734, 'de', '_PC_EVENT_TEXT', 'der Titel der Veranstaltung'),
(3735, 'en', '_PC_EVENT_TEXT', 'the title of event'),
(3736, 'es', '_PC_EVENT_TEXT', 'el t??tulo del evento'),
(3737, 'de', '_PC_FIRST_NAME_TEXT', 'Der erste Name, der Kunde oder Admin'),
(3738, 'en', '_PC_FIRST_NAME_TEXT', 'the first name of customer or admin'),
(3739, 'es', '_PC_FIRST_NAME_TEXT', 'el nombre del cliente o administrador'),
(3740, 'de', '_PC_HOTEL_INFO_TEXT', 'Informationen ??ber das Hotel: Name, Adresse, Telefon, Fax usw.'),
(3741, 'en', '_PC_HOTEL_INFO_TEXT', 'information about hotel: name, address, telephone, fax etc.'),
(3742, 'es', '_PC_HOTEL_INFO_TEXT', 'Informaci??n sobre el hotel: nombre, direcci??n, tel??fono, fax, etc'),
(3743, 'de', '_PC_LAST_NAME_TEXT', 'der Nachname des Kunden oder Admin'),
(3744, 'en', '_PC_LAST_NAME_TEXT', 'the last name of customer or admin'),
(3745, 'es', '_PC_LAST_NAME_TEXT', 'el apellido del cliente o administrador'),
(3746, 'de', '_PC_PERSONAL_INFORMATION_TEXT', 'pers??nliche Daten des Kunden: Vorname, Nachname usw.'),
(3747, 'en', '_PC_PERSONAL_INFORMATION_TEXT', 'personal information of customer: first name, last name etc.'),
(3748, 'es', '_PC_PERSONAL_INFORMATION_TEXT', 'informaci??n personal del cliente: nombre, apellidos, etc'),
(3749, 'de', '_PC_REGISTRATION_CODE_TEXT', 'Best??tigungs-Code f??r neues Konto'),
(3750, 'en', '_PC_REGISTRATION_CODE_TEXT', 'confirmation code for new account'),
(3751, 'es', '_PC_REGISTRATION_CODE_TEXT', 'c??digo de confirmaci??n para la nueva cuenta'),
(3752, 'de', '_PC_STATUS_DESCRIPTION_TEXT', 'beschreibung der Zahlungsstatus'),
(3753, 'en', '_PC_STATUS_DESCRIPTION_TEXT', 'description of payment status'),
(3754, 'es', '_PC_STATUS_DESCRIPTION_TEXT', 'descripci??n del estado de pago'),
(3755, 'de', '_PC_USER_EMAIL_TEXT', 'E-Mail an Benutzer'),
(3756, 'en', '_PC_USER_EMAIL_TEXT', 'email of user'),
(3757, 'es', '_PC_USER_EMAIL_TEXT', 'correo electr??nico del usuario'),
(3758, 'de', '_PC_USER_NAME_TEXT', 'Benutzername (Login) des Benutzers'),
(3759, 'en', '_PC_USER_NAME_TEXT', 'username (login) of user'),
(3760, 'es', '_PC_USER_NAME_TEXT', 'nombre de usuario (login) del usuario'),
(3761, 'de', '_PC_USER_PASSWORD_TEXT', 'Passwort f??r den Kunden oder Admin'),
(3762, 'en', '_PC_USER_PASSWORD_TEXT', 'password for customer or admin'),
(3763, 'es', '_PC_USER_PASSWORD_TEXT', 'contrase??a para el cliente o administrador'),
(3764, 'de', '_PC_WEB_SITE_BASED_URL_TEXT', 'Website Basis-URL'),
(3765, 'en', '_PC_WEB_SITE_BASED_URL_TEXT', 'web site base url'),
(3766, 'es', '_PC_WEB_SITE_BASED_URL_TEXT', 'sitio web, base de url'),
(3767, 'de', '_PC_WEB_SITE_URL_TEXT', 'Website eintragen'),
(3768, 'en', '_PC_WEB_SITE_URL_TEXT', 'web site url'),
(3769, 'es', '_PC_WEB_SITE_URL_TEXT', 'URL del sitio web'),
(3770, 'de', '_PC_YEAR_TEXT', 'laufenden Jahr im Format YYYY'),
(3771, 'en', '_PC_YEAR_TEXT', 'current year in YYYY format'),
(3772, 'es', '_PC_YEAR_TEXT', 'a??o en curso en formato AAAA'),
(3773, 'de', '_PENDING', 'anh??ngig'),
(3774, 'en', '_PENDING', 'Pending'),
(3775, 'es', '_PENDING', 'Pendiente'),
(3776, 'de', '_PEOPLE_ARRIVING', 'Menschen angekommen'),
(3777, 'en', '_PEOPLE_ARRIVING', 'People Arriving'),
(3778, 'es', '_PEOPLE_ARRIVING', 'Las personas que llegan'),
(3779, 'de', '_PEOPLE_DEPARTING', 'Menschen Abfahrt'),
(3780, 'en', '_PEOPLE_DEPARTING', 'People Departing'),
(3781, 'es', '_PEOPLE_DEPARTING', 'La gente de Salida'),
(3782, 'de', '_PEOPLE_STAYING', 'Menschen bleiben'),
(3783, 'en', '_PEOPLE_STAYING', 'People Staying'),
(3784, 'es', '_PEOPLE_STAYING', 'Personas que se quedan'),
(3785, 'de', '_PERCENTAGE', 'Prozentsatz'),
(3786, 'en', '_PERCENTAGE', 'Percentage'),
(3787, 'es', '_PERCENTAGE', 'Porcentaje'),
(3788, 'de', '_PERCENTAGE_MAX_ALOWED_VALUE', 'Die maximal zul??ssige Wert f??r Anteil betr??gt 99%! Bitte geben Sie erneut.'),
(3789, 'en', '_PERCENTAGE_MAX_ALOWED_VALUE', 'The maximum allowed value for percentage is 99%! Please re-enter.'),
(3790, 'es', '_PERCENTAGE_MAX_ALOWED_VALUE', 'El valor m??ximo permitido para el porcentaje es del 99%! Vuelva a inscribir.'),
(3791, 'de', '_PERCENT_OF_GUESTS_RECOMMEND', '_PERCENT_ der G??ste empfehlen'),
(3792, 'en', '_PERCENT_OF_GUESTS_RECOMMEND', '_PERCENT_ of guests recommend'),
(3793, 'es', '_PERCENT_OF_GUESTS_RECOMMEND', '_PERCENT_ de los hu??spedes recomienda'),
(3794, 'de', '_PERFORM_OPERATION_COMMON_ALERT', 'Sie sind Sicher'),
(3795, 'en', '_PERFORM_OPERATION_COMMON_ALERT', 'Are you sure you want to perform this operation?'),
(3796, 'es', '_PERFORM_OPERATION_COMMON_ALERT', '??Est?? seguro que desea llevar a cabo esta operaci??n?'),
(3797, 'de', '_PERIOD', 'Periode'),
(3798, 'en', '_PERIOD', 'Period'),
(3799, 'es', '_PERIOD', 'Per??odo'),
(3800, 'de', '_PERIODS', 'Spielzeiten'),
(3801, 'en', '_PERIODS', 'Periods'),
(3802, 'es', '_PERIODS', 'Per??odos'),
(3803, 'de', '_PERSONAL_DATA_SAVED', 'Ihre Zahlungsinformationen aktualisiert wurde.'),
(3804, 'en', '_PERSONAL_DATA_SAVED', 'Your billing information has been updated.'),
(3805, 'es', '_PERSONAL_DATA_SAVED', 'Sus datos de facturaci??n se ha actualizado.'),
(3806, 'de', '_PERSONAL_DETAILS', 'Pers??nliche Daten'),
(3807, 'en', '_PERSONAL_DETAILS', 'Personal Details'),
(3808, 'es', '_PERSONAL_DETAILS', 'Datos personales'),
(3809, 'de', '_PERSONAL_INFORMATION', 'Pers??nliche Informationen'),
(3810, 'en', '_PERSONAL_INFORMATION', 'Personal Information'),
(3811, 'es', '_PERSONAL_INFORMATION', 'Informaci??n Personal'),
(3812, 'de', '_PERSON_PER_NIGHT', 'Person/pro Nacht'),
(3813, 'en', '_PERSON_PER_NIGHT', 'Person/Per Night'),
(3814, 'es', '_PERSON_PER_NIGHT', 'Persona/Por noche'),
(3815, 'de', '_PER_DAY', 'pro Tag'),
(3816, 'en', '_PER_DAY', 'per day'),
(3817, 'es', '_PER_DAY', 'por d??a'),
(3818, 'de', '_PER_HOUR', 'pro Stunde'),
(3819, 'en', '_PER_HOUR', 'per hour'),
(3820, 'es', '_PER_HOUR', 'por hora'),
(3821, 'de', '_PER_NIGHT', 'Pro Nacht'),
(3822, 'en', '_PER_NIGHT', 'Per Night'),
(3823, 'es', '_PER_NIGHT', 'Por Noche'),
(3824, 'de', '_PETROL', 'Benzin'),
(3825, 'en', '_PETROL', 'Petrol'),
(3826, 'es', '_PETROL', 'Gasolina'),
(3827, 'de', '_PHONE', 'Telefon'),
(3828, 'en', '_PHONE', 'Phone'),
(3829, 'es', '_PHONE', 'Tel??fono'),
(3830, 'de', '_PHONE_EMPTY_ALERT', 'Telefon Feld darf nicht leer sein! Bitte erneut eingeben.'),
(3831, 'en', '_PHONE_EMPTY_ALERT', 'Phone field cannot be empty! Please re-enter.'),
(3832, 'es', '_PHONE_EMPTY_ALERT', 'Campo de tel??fono no puede estar vac??o! Por favor, vuelva a entrar.'),
(3833, 'de', '_PHOTO', 'Foto'),
(3834, 'en', '_PHOTO', 'Photo'),
(3835, 'es', '_PHOTO', 'Foto'),
(3836, 'de', '_PICKING_UP', 'Aufheben'),
(3837, 'en', '_PICKING_UP', 'Picking up'),
(3838, 'es', '_PICKING_UP', 'Recogiendo'),
(3839, 'de', '_PICK_DATE', 'Kalender ??ffnen und ein Datum w??hlen'),
(3840, 'en', '_PICK_DATE', 'Open calendar and pick a date'),
(3841, 'es', '_PICK_DATE', 'Abrir el calendario y elegir una fecha'),
(3842, 'de', '_PICK_UP_DATE', 'Abholdatum'),
(3843, 'en', '_PICK_UP_DATE', 'Pick up date'),
(3844, 'es', '_PICK_UP_DATE', 'Fecha de recogida'),
(3845, 'de', '_PLACEMENT', 'Platzierung'),
(3846, 'en', '_PLACEMENT', 'Placement'),
(3847, 'es', '_PLACEMENT', 'Colocaci??n'),
(3848, 'de', '_PLACE_ORDER', 'Bestellung'),
(3849, 'en', '_PLACE_ORDER', 'Place Order'),
(3850, 'es', '_PLACE_ORDER', 'Realizar pedido'),
(3851, 'de', '_PLAY', 'Spielen'),
(3852, 'en', '_PLAY', 'Play'),
(3853, 'es', '_PLAY', 'Jugar'),
(3854, 'de', '_PLEASE_SELECT_LOCATION', 'Bitte w??hlen Sie einen Ort in einem Land sind'),
(3855, 'en', '_PLEASE_SELECT_LOCATION', 'Please select both locations within a same country'),
(3856, 'es', '_PLEASE_SELECT_LOCATION', 'Por favor, seleccione una ubicaci??n en un pa??s son'),
(3857, 'de', '_POPULARITY', 'Beliebtheit'),
(3858, 'en', '_POPULARITY', 'Popularity'),
(3859, 'es', '_POPULARITY', 'Popularidad'),
(3860, 'de', '_POPULAR_SEARCH', 'Beliebte Suchen'),
(3861, 'en', '_POPULAR_SEARCH', 'Popular Search'),
(3862, 'es', '_POPULAR_SEARCH', 'Popular Buscar'),
(3863, 'de', '_POSITIVE_COMMENTS', 'Positive Kommentare'),
(3864, 'en', '_POSITIVE_COMMENTS', 'Positive Comments'),
(3865, 'es', '_POSITIVE_COMMENTS', 'Comentarios positivos'),
(3866, 'de', '_POSTED_ON', 'Gesendet am'),
(3867, 'en', '_POSTED_ON', 'Posted on'),
(3868, 'es', '_POSTED_ON', 'Publicado en'),
(3869, 'de', '_POST_COM_REGISTERED_ALERT', 'Ihr m??ssen registriert sein, um Kommentare verfassen zu k??nnen.'),
(3870, 'en', '_POST_COM_REGISTERED_ALERT', 'Your need to be registered to post comments.'),
(3871, 'es', '_POST_COM_REGISTERED_ALERT', 'Su necesidad de estar registrado para enviar comentarios.'),
(3872, 'de', '_PREBOOKING', 'Voranmeldung'),
(3873, 'en', '_PREBOOKING', 'Pre-Booking'),
(3874, 'es', '_PREBOOKING', 'Pre-Reserva'),
(3875, 'de', '_PREDEFINED_CONSTANTS', 'Vordefinierte Konstanten'),
(3876, 'en', '_PREDEFINED_CONSTANTS', 'Predefined Constants'),
(3877, 'es', '_PREDEFINED_CONSTANTS', 'Constantes predefinidas'),
(3878, 'de', '_PREFERENCES', 'Einstellungen'),
(3879, 'en', '_PREFERENCES', 'Preferences'),
(3880, 'es', '_PREFERENCES', 'Preferencias'),
(3881, 'de', '_PREFERRED_LANGUAGE', 'Bevorzugte Sprache'),
(3882, 'en', '_PREFERRED_LANGUAGE', 'Preferred Language'),
(3883, 'es', '_PREFERRED_LANGUAGE', 'Idioma de preferencia'),
(3884, 'de', '_PREORDERING', 'Vorbestellung'),
(3885, 'en', '_PREORDERING', 'Pre-Ordering'),
(3886, 'es', '_PREORDERING', 'Pre-Orden'),
(3887, 'de', '_PREVIEW', 'Vorschau'),
(3888, 'en', '_PREVIEW', 'Preview'),
(3889, 'es', '_PREVIEW', 'Prevista'),
(3890, 'de', '_PREVIOUS', 'vorhergehenden'),
(3891, 'en', '_PREVIOUS', 'Previous'),
(3892, 'es', '_PREVIOUS', 'Anterior'),
(3893, 'de', '_PRE_PAYMENT', 'Vorauszahlung'),
(3894, 'en', '_PRE_PAYMENT', 'Pre-Payment'),
(3895, 'es', '_PRE_PAYMENT', 'Pre-Pago'),
(3896, 'de', '_PRICE', 'Preis'),
(3897, 'en', '_PRICE', 'Price'),
(3898, 'es', '_PRICE', 'Precio'),
(3899, 'de', '_PRICES', 'Preise'),
(3900, 'en', '_PRICES', 'Prices'),
(3901, 'es', '_PRICES', 'Precios'),
(3902, 'de', '_PRICE_EMPTY_ALERT', 'Field Preis darf nicht leer sein! Bitte erneut eingeben.'),
(3903, 'en', '_PRICE_EMPTY_ALERT', 'Field price cannot be empty! Please re-enter.'),
(3904, 'es', '_PRICE_EMPTY_ALERT', 'Precio de campo no puede estar vac??o! Por favor, vuelva a entrar.'),
(3905, 'de', '_PRICE_FORMAT', 'Preis Format'),
(3906, 'en', '_PRICE_FORMAT', 'Price Format'),
(3907, 'es', '_PRICE_FORMAT', 'Formato Precio'),
(3908, 'de', '_PRICE_FORMAT_ALERT', 'Erm??glicht die Preise f??r Besucher in geeigneter Form angezeigt werden'),
(3909, 'en', '_PRICE_FORMAT_ALERT', 'Allows to display prices for visitor in appropriate format'),
(3910, 'es', '_PRICE_FORMAT_ALERT', 'Permite mostrar los precios de los visitantes en el formato adecuado'),
(3911, 'de', '_PRICE_H_L', 'Preis (h??chste)'),
(3912, 'en', '_PRICE_H_L', 'price (from highest)'),
(3913, 'es', '_PRICE_H_L', 'precio (de alto)'),
(3914, 'de', '_PRICE_L_H', 'Preis (von unten)'),
(3915, 'en', '_PRICE_L_H', 'price (from lowest)'),
(3916, 'es', '_PRICE_L_H', 'precio (m??s bajo)'),
(3917, 'de', '_PRICE_PER_DAY', 'Preis pro Tag'),
(3918, 'en', '_PRICE_PER_DAY', 'Price per Day'),
(3919, 'es', '_PRICE_PER_DAY', 'Precio por d??a'),
(3920, 'de', '_PRICE_PER_HOUR', 'Preis pro Stunde'),
(3921, 'en', '_PRICE_PER_HOUR', 'Price per Hour'),
(3922, 'es', '_PRICE_PER_HOUR', 'Precio por hora'),
(3923, 'de', '_PRICE_RANGE', 'Preisbereich / pro Tag'),
(3924, 'en', '_PRICE_RANGE', 'Price range/per day'),
(3925, 'es', '_PRICE_RANGE', 'Gama de precios / por d??a'),
(3926, 'de', '_PRINT', 'drucken'),
(3927, 'en', '_PRINT', 'Print'),
(3928, 'es', '_PRINT', 'Imprimir'),
(3929, 'de', '_PRIVILEGES', 'Vorrechte'),
(3930, 'en', '_PRIVILEGES', 'Privileges'),
(3931, 'es', '_PRIVILEGES', 'Privilegios'),
(3932, 'de', '_PRIVILEGES_MANAGEMENT', 'Privileges-Management'),
(3933, 'en', '_PRIVILEGES_MANAGEMENT', 'Privileges Management'),
(3934, 'es', '_PRIVILEGES_MANAGEMENT', 'Privilegios de administraci??n'),
(3935, 'de', '_PRODUCT', 'Produkt'),
(3936, 'en', '_PRODUCT', 'Product'),
(3937, 'es', '_PRODUCT', 'Producto'),
(3938, 'de', '_PRODUCTS', 'Produkte'),
(3939, 'en', '_PRODUCTS', 'Products'),
(3940, 'es', '_PRODUCTS', 'Productos'),
(3941, 'de', '_PRODUCTS_COUNT', 'Produkte z??hlen'),
(3942, 'en', '_PRODUCTS_COUNT', 'Products count'),
(3943, 'es', '_PRODUCTS_COUNT', 'Productos cuentan'),
(3944, 'de', '_PRODUCTS_MANAGEMENT', 'Produkte Management'),
(3945, 'en', '_PRODUCTS_MANAGEMENT', 'Products Management'),
(3946, 'es', '_PRODUCTS_MANAGEMENT', 'Productos para la administraci??n'),
(3947, 'de', '_PRODUCT_DESCRIPTION', 'Produkt-Beschreibung'),
(3948, 'en', '_PRODUCT_DESCRIPTION', 'Product Description'),
(3949, 'es', '_PRODUCT_DESCRIPTION', 'Descripci??n del producto'),
(3950, 'de', '_PROMO_AND_DISCOUNTS', 'Promo und Rabatte'),
(3951, 'en', '_PROMO_AND_DISCOUNTS', 'Promo and Discounts'),
(3952, 'es', '_PROMO_AND_DISCOUNTS', 'Promociones y Descuentos'),
(3953, 'de', '_PROMO_CODE_OR_COUPON', 'Promo Code oder Rabatt-Coupon'),
(3954, 'en', '_PROMO_CODE_OR_COUPON', 'Promo Code or Discount Coupon'),
(3955, 'es', '_PROMO_CODE_OR_COUPON', 'C??digo de promoci??n o cup??n de descuento'),
(3956, 'de', '_PROMO_COUPON_NOTICE', 'Wenn Sie einen Promo-Code oder Rabatt-Coupon haben, bitte geben Sie ihn hier'),
(3957, 'en', '_PROMO_COUPON_NOTICE', 'If you have a promo code or discount coupon please enter it here'),
(3958, 'es', '_PROMO_COUPON_NOTICE', 'Si usted tiene un c??digo promocional o cup??n de descuento por favor ingrese aqu??'),
(3959, 'de', '_PROPERTY_NOT_REVIEWED_YET', 'Noch nicht von jedem Mitglied pr??ft ... Sie k??nnen der erste sein, der eine Bewertung f??r _PROPERTY_NAME_ zu schreiben.'),
(3960, 'en', '_PROPERTY_NOT_REVIEWED_YET', 'Not yet reviewed by any member... You can be the FIRST one to write a review for _PROPERTY_NAME_.'),
(3961, 'es', '_PROPERTY_NOT_REVIEWED_YET', 'a??n no revisado por cualquier miembro ... Usted puede ser el primero en escribir un comentario para _PROPERTY_NAME_.'),
(3962, 'de', '_PROPERTY_TYPE', 'Art der Immobilie'),
(3963, 'en', '_PROPERTY_TYPE', 'Property Type'),
(3964, 'es', '_PROPERTY_TYPE', 'Tipo de Inmueble'),
(3965, 'de', '_PROPERTY_TYPES', 'Objekt-Typen'),
(3966, 'en', '_PROPERTY_TYPES', 'Property Types'),
(3967, 'es', '_PROPERTY_TYPES', 'Tipos de la caracter??stica'),
(3968, 'de', '_PUBLIC', '??ffentliche'),
(3969, 'en', '_PUBLIC', 'Public'),
(3970, 'es', '_PUBLIC', 'P??blica'),
(3971, 'de', '_PUBLISHED', 'Ver??ffentlicht'),
(3972, 'en', '_PUBLISHED', 'Published'),
(3973, 'es', '_PUBLISHED', 'Publicado'),
(3974, 'de', '_PUBLISH_YOUR_COMMENT', 'Ver??ffentlichen she Ihren Kommentar'),
(3975, 'en', '_PUBLISH_YOUR_COMMENT', 'Publish your comment'),
(3976, 'es', '_PUBLISH_YOUR_COMMENT', 'Publicar tu comentario'),
(3977, 'de', '_QTY', 'Anz'),
(3978, 'en', '_QTY', 'Qty'),
(3979, 'es', '_QTY', 'Cantidad'),
(3980, 'de', '_QUANTITY', 'Menge'),
(3981, 'en', '_QUANTITY', 'Quantity'),
(3982, 'es', '_QUANTITY', 'Cantidad'),
(3983, 'de', '_QUESTION', 'Frage'),
(3984, 'en', '_QUESTION', 'Question'),
(3985, 'es', '_QUESTION', 'Pregunta'),
(3986, 'de', '_QUESTIONS', 'Fragen'),
(3987, 'en', '_QUESTIONS', 'Questions'),
(3988, 'es', '_QUESTIONS', 'Preguntas'),
(3989, 'de', '_RATE', 'Rate'),
(3990, 'en', '_RATE', 'Rate'),
(3991, 'es', '_RATE', 'Tipo'),
(3992, 'de', '_RATE_PER_NIGHT', 'Preis pro Nacht'),
(3993, 'en', '_RATE_PER_NIGHT', 'Rate per night'),
(3994, 'es', '_RATE_PER_NIGHT', 'Precio por noche'),
(3995, 'de', '_RATE_PER_NIGHT_AVG', 'Durchschnittspreis pro Nacht'),
(3996, 'en', '_RATE_PER_NIGHT_AVG', 'Average rate per night'),
(3997, 'es', '_RATE_PER_NIGHT_AVG', 'Tarifa media por noche'),
(3998, 'de', '_RATINGS', 'Bewertungen'),
(3999, 'en', '_RATINGS', 'Ratings'),
(4000, 'es', '_RATINGS', 'Valoraciones'),
(4001, 'de', '_RATINGS_BASED_ON_REVIEWS', 'Bewertungen basierend auf _REVIEWS_ Pr??fte Bewertungen'),
(4002, 'en', '_RATINGS_BASED_ON_REVIEWS', 'Ratings based on _REVIEWS_ Verified Reviews'),
(4003, 'es', '_RATINGS_BASED_ON_REVIEWS', 'Las capacidades est??n basadas en _REVIEWS_ Comentarios verificados'),
(4004, 'de', '_RATINGS_SETTINGS', 'Bewertungen Einstellungen'),
(4005, 'en', '_RATINGS_SETTINGS', 'Ratings Settings'),
(4006, 'es', '_RATINGS_SETTINGS', 'Valoraciones Configuraci??n'),
(4007, 'de', '_REACTIVATION_EMAIL', 'Aktivierungsmail erneut zuschicken'),
(4008, 'en', '_REACTIVATION_EMAIL', 'Resend Activation Email'),
(4009, 'es', '_REACTIVATION_EMAIL', 'Reenviar email de activaci??n'),
(4010, 'de', '_READY', 'bereit'),
(4011, 'en', '_READY', 'Ready'),
(4012, 'es', '_READY', 'Listo'),
(4013, 'de', '_READ_MORE', 'Lesen Sie mehr'),
(4014, 'en', '_READ_MORE', 'Read more'),
(4015, 'es', '_READ_MORE', 'Leer m??s'),
(4016, 'de', '_REAL_TIME_CAMPAIGN', 'Echtzeit-Kampagne'),
(4017, 'en', '_REAL_TIME_CAMPAIGN', 'Real Time Campaign'),
(4018, 'es', '_REAL_TIME_CAMPAIGN', 'Campa??a Tiempo real'),
(4019, 'de', '_REASON', 'Grund'),
(4020, 'en', '_REASON', 'Reason'),
(4021, 'es', '_REASON', 'Raz??n'),
(4022, 'de', '_RECEIPT_VOUCHER', 'Receipt Gutschein Nr'),
(4023, 'en', '_RECEIPT_VOUCHER', 'Receipt Voucher No.'),
(4024, 'es', '_RECEIPT_VOUCHER', 'Recibo tal??n N??'),
(4025, 'de', '_RECOMMENDED_TO_EVERYONE', 'Empfohlen Jeder'),
(4026, 'en', '_RECOMMENDED_TO_EVERYONE', 'Recommended to Everyone'),
(4027, 'es', '_RECOMMENDED_TO_EVERYONE', 'Recomend?? a todos'),
(4028, 'de', '_RECORD_CANNOT_EMPTY', 'Rekord-ID kann nicht leer Schl??ssel'),
(4029, 'en', '_RECORD_CANNOT_EMPTY', 'Record id cannot be empty key'),
(4030, 'es', '_RECORD_CANNOT_EMPTY', 'Identificaci??n del registro no puede ser clave vac??a'),
(4031, 'de', '_RECORD_WAS_DELETED_COMMON', 'Der Datensatz wurde erfolgreich gel??scht!'),
(4032, 'en', '_RECORD_WAS_DELETED_COMMON', 'The record has been successfully deleted!'),
(4033, 'es', '_RECORD_WAS_DELETED_COMMON', 'El registro ha sido borrado!'),
(4034, 'de', '_REFRESH', 'Erfrischen'),
(4035, 'en', '_REFRESH', 'Refresh'),
(4036, 'es', '_REFRESH', 'Refrescar'),
(4037, 'de', '_REFUNDED', 'erstattet'),
(4038, 'en', '_REFUNDED', 'Refunded'),
(4039, 'es', '_REFUNDED', 'Devuelto'),
(4040, 'de', '_REFUND_AMOUNT', 'R??ckerstattungen werden in H??he von gemacht'),
(4041, 'en', '_REFUND_AMOUNT', 'Refunds are made in the amount of'),
(4042, 'es', '_REFUND_AMOUNT', 'Los reembolsos se hacen en la cantidad de'),
(4043, 'de', '_REFUND_AMOUNT_FIRST_NIGHT', 'Die R??ckerstattung erfolgt in H??he der ersten Nacht gemacht'),
(4044, 'en', '_REFUND_AMOUNT_FIRST_NIGHT', 'The money return is made in amount of a first night'),
(4045, 'es', '_REFUND_AMOUNT_FIRST_NIGHT', 'El reembolso se hace en el importe de la primera noche'),
(4046, 'de', '_REFUND_BOOKING_ROOMS', 'Die Erstattung f??r die Buchung Zimmer'),
(4047, 'en', '_REFUND_BOOKING_ROOMS', 'Refunds for booking rooms'),
(4048, 'es', '_REFUND_BOOKING_ROOMS', 'Los reembolsos para la reserva de habitaciones'),
(4049, 'de', '_REFUND_MONEY', 'R??ckerstattung f??r einen Geld'),
(4050, 'en', '_REFUND_MONEY', 'Refund a money'),
(4051, 'es', '_REFUND_MONEY', 'Reembolsar un dinero');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(4052, 'de', '_REGIONALMANAGER_WELCOME_TEXT', 'Willkommen bei Regional Manager Control Panel! Mit diesem Systemsteuerung k??nnen Sie Ihre Hotels, Reiseb??ros , Standorte verwalten und Hotel Site-Management durchf??hren.'),
(4053, 'en', '_REGIONALMANAGER_WELCOME_TEXT', 'Welcome to Regional Manager Control Panel! With this Control Panel you can easily manage your hotels, travel agencies, locations and perform hotel site management.'),
(4054, 'es', '_REGIONALMANAGER_WELCOME_TEXT', 'Bienvenido a Panel de control Gerente Regional! Con este panel de control se pueden manejar f??cilmente sus hoteles, agencias de viajes, lugares y llevar a cabo la gesti??n del sitio del hotel.'),
(4055, 'de', '_REGIONALMANGER_NOT_ASSIGNED', 'Sie haben noch nicht zu jedem Hotel zugewiesen wurde oder Sie noch nicht als Reiseb??ro registriert, um die Berichte zu sehen.'),
(4056, 'en', '_REGIONALMANGER_NOT_ASSIGNED', 'You still have not been assigned to any hotel or you have not registered yet as a travel agency, in order to see the reports.'),
(4057, 'es', '_REGIONALMANGER_NOT_ASSIGNED', 'Todav??a no se le ha asignado a cualquier hotel o que a??n no se ha registrado como una agencia de viajes, con el fin de ver los informes.'),
(4058, 'de', '_REGIONAL_MANAGER', 'Regionalleiter'),
(4059, 'en', '_REGIONAL_MANAGER', 'Regional Manager'),
(4060, 'es', '_REGIONAL_MANAGER', 'Administrador regional'),
(4061, 'de', '_REGIONAL_MANAGERS', 'Regional Managers'),
(4062, 'en', '_REGIONAL_MANAGERS', 'Regional Managers'),
(4063, 'es', '_REGIONAL_MANAGERS', 'Los gerentes regionales'),
(4064, 'de', '_REGIONAL_NOT_HOTELS', 'Es gibt keine Hotels in Ihrem Standort gefunden. Sie k??nnen keine Berichte zu sehen.'),
(4065, 'en', '_REGIONAL_NOT_HOTELS', 'There are no hotels found in your location. You cannot see reports.'),
(4066, 'es', '_REGIONAL_NOT_HOTELS', 'No hay hoteles que se encuentran en su ubicaci??n. No se puede ver informes.'),
(4067, 'de', '_REGISTERED', 'registriert'),
(4068, 'en', '_REGISTERED', 'Registered'),
(4069, 'es', '_REGISTERED', 'Registrado'),
(4070, 'de', '_REGISTERED_FROM_IP', 'Einschreiben aus IP'),
(4071, 'en', '_REGISTERED_FROM_IP', 'Registered from IP'),
(4072, 'es', '_REGISTERED_FROM_IP', 'Registradas a partir de la IP'),
(4073, 'de', '_REGISTRATIONS', 'anmeldungen'),
(4074, 'en', '_REGISTRATIONS', 'Registrations'),
(4075, 'es', '_REGISTRATIONS', 'Inscripciones'),
(4076, 'de', '_REGISTRATION_CODE', 'Registrierungs-Code'),
(4077, 'en', '_REGISTRATION_CODE', 'Registration code'),
(4078, 'es', '_REGISTRATION_CODE', 'C??digo de registro'),
(4079, 'de', '_REGISTRATION_CONFIRMATION', 'Anmeldebest??tigung'),
(4080, 'en', '_REGISTRATION_CONFIRMATION', 'Registration Confirmation'),
(4081, 'es', '_REGISTRATION_CONFIRMATION', 'Confirmaci??n de registro'),
(4082, 'de', '_REGISTRATION_FORM', 'Anmeldeformular'),
(4083, 'en', '_REGISTRATION_FORM', 'Registration Form'),
(4084, 'es', '_REGISTRATION_FORM', 'Formulario de Inscripci??n'),
(4085, 'de', '_REGISTRATION_NOT_COMPLETED', 'Ihre Registrierung ist noch nicht abgeschlossen! Bitte ??berpr??fen Sie nochmals Ihre E-Mail f??r weitere Anweisungen oder klicken Sie <a href=index.php?customer=resend_activation>hier</a>, um erneut wieder.'),
(4086, 'en', '_REGISTRATION_NOT_COMPLETED', 'Your registration process is not yet complete! Please check again your email for further instructions or click <a href=index.php?customer=resend_activation>here</a> to resend them again.'),
(4087, 'es', '_REGISTRATION_NOT_COMPLETED', 'El proceso de registro a??n no ha terminado! Por favor, compruebe de nuevo su correo electr??nico para recibir instrucciones o haga clic en <a href=index.php?customer=resend_activation>aqu??</a> para volver a enviar de nuevo.'),
(4088, 'de', '_REGISTRATION_NUMBER', 'Registrationsnummer'),
(4089, 'en', '_REGISTRATION_NUMBER', 'Registration Number'),
(4090, 'es', '_REGISTRATION_NUMBER', 'N??mero de registro'),
(4091, 'de', '_REMEMBER_ME', 'Erinnere dich an mich'),
(4092, 'en', '_REMEMBER_ME', 'Remember Me'),
(4093, 'es', '_REMEMBER_ME', 'Acu??rdate de m??'),
(4094, 'de', '_REMOVAL_DATE', 'Entfernen Datum'),
(4095, 'en', '_REMOVAL_DATE', 'Removal Date'),
(4096, 'es', '_REMOVAL_DATE', 'Fecha de Retirada'),
(4097, 'de', '_REMOVE', 'Entfernen'),
(4098, 'en', '_REMOVE', 'Remove'),
(4099, 'es', '_REMOVE', 'Eliminar'),
(4100, 'de', '_REMOVED', 'Entfernt'),
(4101, 'en', '_REMOVED', 'Removed'),
(4102, 'es', '_REMOVED', 'Eliminado'),
(4103, 'de', '_REMOVED_BY', 'entfernt, indem'),
(4104, 'en', '_REMOVED_BY', 'Removed by'),
(4105, 'es', '_REMOVED_BY', 'eliminado por'),
(4106, 'de', '_REMOVED_FROM_WISHLIST', 'Artikel von der Wunschliste entfernt!'),
(4107, 'en', '_REMOVED_FROM_WISHLIST', 'Item removed from wishlist!'),
(4108, 'es', '_REMOVED_FROM_WISHLIST', 'Se elimin?? el elemento de lista de deseos!'),
(4109, 'de', '_REMOVE_ACCOUNT', 'Konto entfernen'),
(4110, 'en', '_REMOVE_ACCOUNT', 'Remove Account'),
(4111, 'es', '_REMOVE_ACCOUNT', 'Quite la cuenta'),
(4112, 'de', '_REMOVE_ACCOUNT_ALERT', 'Sie sind sicher'),
(4113, 'en', '_REMOVE_ACCOUNT_ALERT', 'Are you sure you want to remove your account?'),
(4114, 'es', '_REMOVE_ACCOUNT_ALERT', '??Est?? seguro que desea eliminar su cuenta?'),
(4115, 'de', '_REMOVE_ACCOUNT_WARNING', 'Wenn Sie nicht glauben wollen'),
(4116, 'en', '_REMOVE_ACCOUNT_WARNING', 'If you don\'t think you will use this site again and would like your account deleted, we can take care of this for you. Keep in mind, that you will not be able to reactivate your account or retrieve any of the content or information that was added. If you would like your account deleted, then click Remove button'),
(4117, 'es', '_REMOVE_ACCOUNT_WARNING', 'Si usted no piensa que va a utilizar este sitio de nuevo y le gustar??a que su cuenta eliminada, nos podemos encargar de esto por usted. Tenga en cuenta, que no podr?? reactivar su cuenta o recuperar cualquier contenido o informaci??n que se ha a??adido. Si desea que su cuenta eliminada, a continuaci??n, haga clic en el bot??n Quitar'),
(4121, 'de', '_REMOVE_FROM_WISHLIST', 'Von Wunschliste entfernen'),
(4122, 'en', '_REMOVE_FROM_WISHLIST', 'Remove from wishlist'),
(4123, 'es', '_REMOVE_FROM_WISHLIST', 'Eliminar de la lista de deseos'),
(4124, 'de', '_REMOVE_LAST_COUNTRY_ALERT', 'Das Land ausgew??hlt wurde nicht gel??scht, weil Sie mindestens ein aktives Land, um korrekte Arbeitsweise der Seite haben muss!'),
(4125, 'en', '_REMOVE_LAST_COUNTRY_ALERT', 'The country selected has not been deleted, because you must have at least one active country for correct work of the site!'),
(4126, 'es', '_REMOVE_LAST_COUNTRY_ALERT', 'El pa??s seleccionado no se ha eliminado, ya que debe tener al menos un pa??s activo para un funcionamiento correcto del sitio!'),
(4127, 'de', '_REMOVE_ROOM_FROM_CART', 'Nehmen Sie Platz aus dem Warenkorb'),
(4128, 'en', '_REMOVE_ROOM_FROM_CART', 'Remove room from the cart'),
(4129, 'es', '_REMOVE_ROOM_FROM_CART', 'Retire de la sala de la cesta'),
(4130, 'de', '_RENTAL_FROM', 'Vermietung von'),
(4131, 'en', '_RENTAL_FROM', 'Rental From'),
(4132, 'es', '_RENTAL_FROM', 'De Alquiler'),
(4133, 'de', '_RENTAL_TO', 'Vermietung an'),
(4134, 'en', '_RENTAL_TO', 'Rental To'),
(4135, 'es', '_RENTAL_TO', 'Alquiler de'),
(4139, 'de', '_REPORTS', 'Berichte'),
(4140, 'en', '_REPORTS', 'Reports'),
(4141, 'es', '_REPORTS', 'Informes'),
(4142, 'de', '_RESEND_ACTIVATION_EMAIL', 'Aktivierungsmail erneut zuschicken'),
(4143, 'en', '_RESEND_ACTIVATION_EMAIL', 'Resend Activation Email'),
(4144, 'es', '_RESEND_ACTIVATION_EMAIL', 'Reenviar email de activaci??n'),
(4145, 'de', '_RESEND_ACTIVATION_EMAIL_MSG', 'Bitte geben Sie Ihre E-Mail-Adresse ein und klicken Sie auf Senden. Sie wird die Aktivierung per E-Mail zugesandt.'),
(4146, 'en', '_RESEND_ACTIVATION_EMAIL_MSG', 'Please enter your email address then click on Send button. You will receive the activation email shortly.'),
(4147, 'es', '_RESEND_ACTIVATION_EMAIL_MSG', 'Por favor, introduzca su direcci??n de correo electr??nico continuaci??n, haga clic en el bot??n Enviar. Usted recibir?? el mensaje de activaci??n en breve.'),
(4148, 'de', '_RESERVATION', 'Reservierung'),
(4149, 'en', '_RESERVATION', 'Reservation'),
(4150, 'es', '_RESERVATION', 'Reservation'),
(4151, 'de', '_RESERVATIONS', 'Reservierungen'),
(4152, 'en', '_RESERVATIONS', 'Reservations'),
(4153, 'es', '_RESERVATIONS', 'Reservas'),
(4154, 'de', '_RESERVATION_CART', 'Reservierung Warenkorb'),
(4155, 'en', '_RESERVATION_CART', 'Reservation Cart'),
(4156, 'es', '_RESERVATION_CART', 'Reserva de compra'),
(4157, 'de', '_RESERVATION_CART_IS_EMPTY_ALERT', 'Ihre Reservierung Warenkorb ist leer!'),
(4158, 'en', '_RESERVATION_CART_IS_EMPTY_ALERT', 'Your reservation cart is empty!'),
(4159, 'es', '_RESERVATION_CART_IS_EMPTY_ALERT', 'Su cesta de la reserva est?? vac??a!'),
(4160, 'de', '_RESERVATION_DETAILS', 'Reservierung Details'),
(4161, 'en', '_RESERVATION_DETAILS', 'Reservation Details'),
(4162, 'es', '_RESERVATION_DETAILS', 'Datos de la Reserva'),
(4163, 'de', '_RESERVATION_NUMBER', 'Reservierungsnummer'),
(4164, 'en', '_RESERVATION_NUMBER', 'Reservation Number'),
(4165, 'es', '_RESERVATION_NUMBER', 'N??mero de reserva'),
(4166, 'de', '_RESERVE', 'Reservieren'),
(4167, 'en', '_RESERVE', 'Reserve'),
(4168, 'es', '_RESERVE', 'Reserva'),
(4169, 'de', '_RESERVED', 'vorbehalten'),
(4170, 'en', '_RESERVED', 'Reserved'),
(4171, 'es', '_RESERVED', 'Reservados'),
(4172, 'de', '_RESET', 'Reset'),
(4173, 'en', '_RESET', 'Reset'),
(4174, 'es', '_RESET', 'Restablecer'),
(4175, 'de', '_RESET_ACCOUNT', 'Konto zur??cksetzen'),
(4176, 'en', '_RESET_ACCOUNT', 'Reset Account'),
(4177, 'es', '_RESET_ACCOUNT', 'Restablecer la cuenta'),
(4178, 'de', '_RESTAURANT', 'Restaurant'),
(4179, 'en', '_RESTAURANT', 'Restaurant'),
(4180, 'es', '_RESTAURANT', 'Restaurant'),
(4181, 'de', '_RESTORE', 'Wiederherstellen'),
(4182, 'en', '_RESTORE', 'Restore'),
(4183, 'es', '_RESTORE', 'Restaurar'),
(4184, 'de', '_RETYPE_PASSWORD', 'Passwort wiederholen'),
(4185, 'en', '_RETYPE_PASSWORD', 'Retype Password'),
(4186, 'es', '_RETYPE_PASSWORD', 'Volver a escribir contrase??a'),
(4187, 'de', '_REVIEW', '??berpr??fung'),
(4188, 'en', '_REVIEW', 'review'),
(4189, 'es', '_REVIEW', 'revisi??n'),
(4190, 'de', '_REVIEWS', 'Bewertungen'),
(4191, 'en', '_REVIEWS', 'Reviews'),
(4192, 'es', '_REVIEWS', 'Opiniones'),
(4193, 'de', '_REVIEWS_MANAGEMENT', 'Bewertungen Verwaltung'),
(4194, 'en', '_REVIEWS_MANAGEMENT', 'Reviews Management'),
(4195, 'es', '_REVIEWS_MANAGEMENT', 'Los comentarios de Gesti??n'),
(4196, 'de', '_REVIEWS_SETTINGS', 'Bewertungen Einstellungen'),
(4197, 'en', '_REVIEWS_SETTINGS', 'Reviews Settings'),
(4198, 'es', '_REVIEWS_SETTINGS', 'Ajustes cr??ticas'),
(4199, 'de', '_REVIEW_LINK_LOGIN', '<a href=index.php?customer=login>Link-Seite</a> anmelden.'),
(4200, 'en', '_REVIEW_LINK_LOGIN', '<a href=index.php?customer=login>Link</a> to login page.'),
(4201, 'es', '_REVIEW_LINK_LOGIN', '<a href=index.php?customer=login>Enlazar</a> a la p??gina de acceso.'),
(4202, 'de', '_REVIEW_YOU_HAVE_REGISTERED', 'Sie m??ssen registriert in einen Beitrag zu schreiben.'),
(4203, 'en', '_REVIEW_YOU_HAVE_REGISTERED', 'You have to be registered in to post your review.'),
(4204, 'es', '_REVIEW_YOU_HAVE_REGISTERED', 'Tiene que estar registrado para enviar su opini??n.'),
(4205, 'de', '_RIGHT', 'Recht'),
(4206, 'en', '_RIGHT', 'Right'),
(4207, 'es', '_RIGHT', 'Derecho'),
(4208, 'de', '_RIGHT_TO_LEFT', 'RTL (von rechts nach links)'),
(4209, 'en', '_RIGHT_TO_LEFT', 'RTL (right-to-left)'),
(4210, 'es', '_RIGHT_TO_LEFT', 'RTL (de derecha a izquierda)'),
(4211, 'de', '_ROLES_AND_PRIVILEGES', 'Rollen und Zugriffsrechte'),
(4212, 'en', '_ROLES_AND_PRIVILEGES', 'Roles & Privileges'),
(4213, 'es', '_ROLES_AND_PRIVILEGES', 'Los roles y privilegios'),
(4214, 'de', '_ROLES_MANAGEMENT', 'Rollen-Management'),
(4215, 'en', '_ROLES_MANAGEMENT', 'Roles Management'),
(4216, 'es', '_ROLES_MANAGEMENT', 'Funciones de administraci??n'),
(4217, 'de', '_ROOM', 'Zimmer'),
(4218, 'en', '_ROOM', 'room'),
(4219, 'es', '_ROOM', 'habitaci??n'),
(4220, 'de', '_ROOMS', 'Zimmer'),
(4221, 'en', '_ROOMS', 'Rooms'),
(4222, 'es', '_ROOMS', 'Salas'),
(4223, 'de', '_ROOMS_AVAILABILITY', 'Zimmer Verf??gbarkeit'),
(4224, 'en', '_ROOMS_AVAILABILITY', 'Rooms Availability'),
(4225, 'es', '_ROOMS_AVAILABILITY', 'Disponibilidad'),
(4226, 'de', '_ROOMS_COUNT', 'Anzahl der Zimmer (im Hotel)'),
(4227, 'en', '_ROOMS_COUNT', 'Number of Rooms (in the Hotel)'),
(4228, 'es', '_ROOMS_COUNT', 'N??mero de habitaciones (en el hotel)'),
(4229, 'de', '_ROOMS_FACILITIES', 'Zimmer Einrichtungen'),
(4230, 'en', '_ROOMS_FACILITIES', 'Rooms Facilities'),
(4231, 'es', '_ROOMS_FACILITIES', 'Habitaciones instalaciones'),
(4232, 'de', '_ROOMS_LAST', 'la ??ltima habitaci??n'),
(4233, 'en', '_ROOMS_LAST', 'last room'),
(4234, 'es', '_ROOMS_LAST', 'habitaci??n'),
(4235, 'de', '_ROOMS_LEFT', 'Zimmer links'),
(4236, 'en', '_ROOMS_LEFT', 'rooms left'),
(4237, 'es', '_ROOMS_LEFT', 'salas de la izquierda'),
(4238, 'de', '_ROOMS_MANAGEMENT', 'Zimmer Management'),
(4239, 'en', '_ROOMS_MANAGEMENT', 'Rooms Management'),
(4240, 'es', '_ROOMS_MANAGEMENT', 'Administraci??n Salas de'),
(4241, 'de', '_ROOMS_OCCUPANCY', 'Zimmer Belegung'),
(4242, 'en', '_ROOMS_OCCUPANCY', 'Rooms Occupancy'),
(4243, 'es', '_ROOMS_OCCUPANCY', 'Las habitaciones de ocupaci??n'),
(4244, 'de', '_ROOMS_RESERVATION', 'Zimmer Reservierung'),
(4245, 'en', '_ROOMS_RESERVATION', 'Rooms Reservation'),
(4246, 'es', '_ROOMS_RESERVATION', 'Reservaci??n de Habitaciones'),
(4247, 'de', '_ROOMS_SETTINGS', 'Zimmer-Einstellungen'),
(4248, 'en', '_ROOMS_SETTINGS', 'Rooms Settings'),
(4249, 'es', '_ROOMS_SETTINGS', 'Configuraci??n de habitaciones'),
(4250, 'de', '_ROOM_AREA', 'Raum Fl??che'),
(4251, 'en', '_ROOM_AREA', 'Room Area'),
(4252, 'es', '_ROOM_AREA', 'Sala Espacio'),
(4253, 'de', '_ROOM_COMFORT', 'Zimmerkomfort'),
(4254, 'en', '_ROOM_COMFORT', 'Room Comfort'),
(4255, 'es', '_ROOM_COMFORT', 'Confort de la habitaci??n'),
(4256, 'de', '_ROOM_DESCRIPTION', 'Zimmer Beschreibung'),
(4257, 'en', '_ROOM_DESCRIPTION', 'Room Description'),
(4258, 'es', '_ROOM_DESCRIPTION', 'Descripci??n de las habitaciones'),
(4259, 'de', '_ROOM_DETAILS', 'Zimmerbeschreibung'),
(4260, 'en', '_ROOM_DETAILS', 'Room Details'),
(4261, 'es', '_ROOM_DETAILS', 'Informaci??n de las habitaciones'),
(4262, 'de', '_ROOM_FACILITIES', 'Zimmerausstattung'),
(4263, 'en', '_ROOM_FACILITIES', 'Room Facilities'),
(4264, 'es', '_ROOM_FACILITIES', 'Facilidades en la habitaci??n'),
(4265, 'de', '_ROOM_FACILITIES_MANAGEMENT', 'Zimmerausstattung Management'),
(4266, 'en', '_ROOM_FACILITIES_MANAGEMENT', 'Room Facilities Management'),
(4267, 'es', '_ROOM_FACILITIES_MANAGEMENT', 'Servicio de habitaciones Administraci??n'),
(4268, 'de', '_ROOM_LEFT', 'room left'),
(4269, 'en', '_ROOM_LEFT', 'room left'),
(4270, 'es', '_ROOM_LEFT', 'room left'),
(4271, 'de', '_ROOM_NOT_FOUND', 'Zimmer wurde nicht gefunden!'),
(4272, 'en', '_ROOM_NOT_FOUND', 'Room has not been found!'),
(4273, 'es', '_ROOM_NOT_FOUND', 'Habitaciones no se ha encontrado!'),
(4274, 'de', '_ROOM_NUMBERS', 'Zimmernummern'),
(4275, 'en', '_ROOM_NUMBERS', 'Room Numbers'),
(4276, 'es', '_ROOM_NUMBERS', 'N??meros de las habitaciones'),
(4277, 'de', '_ROOM_PRICE', 'Zimmerpreise'),
(4278, 'en', '_ROOM_PRICE', 'Room Price'),
(4279, 'es', '_ROOM_PRICE', 'Precio de la habitaci??n'),
(4280, 'de', '_ROOM_PRICES_WERE_ADDED', 'Zimmerpreise f??r neue Periode wurden erfolgreich hinzugef??gt!'),
(4281, 'en', '_ROOM_PRICES_WERE_ADDED', 'Room prices for new period were successfully added!'),
(4282, 'es', '_ROOM_PRICES_WERE_ADDED', 'los precios de habitaciones nuevo per??odo se ha a??adido correctamente!'),
(4283, 'de', '_ROOM_TYPE', 'Zimmer Typ'),
(4284, 'en', '_ROOM_TYPE', 'Room Type'),
(4285, 'es', '_ROOM_TYPE', 'Tipo de Habitaci??n'),
(4286, 'de', '_ROOM_VALUE_EXCEEDED', '_FIELD_ Hat die maximal zul??ssige Wert ??berschritten _MAX_! Bitte geben Sie erneut oder ??ndern Zimmer gesamt Anzahl <a href=\'index.php?admin=mod_rooms_management\'>hier</a>.'),
(4287, 'en', '_ROOM_VALUE_EXCEEDED', '_FIELD_ has exceeded the maximum allowed value _MAX_! Please re-enter or change total rooms number <a href=\'index.php?admin=mod_rooms_management\'>here</a>.'),
(4288, 'es', '_ROOM_VALUE_EXCEEDED', '_FIELD_ ha superado el valor m??ximo permitido _MAX_! Por favor vuelva a introducir o modificar el n??mero total de habitaciones <a href=\'index.php?admin=mod_rooms_management\'>aqu??</a>.'),
(4289, 'de', '_ROOM_WAS_ADDED', 'Zimmer war erfolgreich, um Ihre Reservierung hinzugef??gt!'),
(4290, 'en', '_ROOM_WAS_ADDED', 'Room has been successfully added to your reservation!'),
(4291, 'es', '_ROOM_WAS_ADDED', 'Sala se ha a??adido a su reserva!'),
(4292, 'de', '_ROOM_WAS_REMOVED', 'Ausgew??hlte Zimmer wurde erfolgreich von Ihrem Reservierung Warenkorb entfernt!'),
(4293, 'en', '_ROOM_WAS_REMOVED', 'Selected room has been removed from your Reservation Cart!'),
(4294, 'es', '_ROOM_WAS_REMOVED', 'Habitaci??n seleccionada se ha eliminado de su Reserva de compra!'),
(4295, 'de', '_ROWS', 'Reihen'),
(4296, 'en', '_ROWS', 'Rows'),
(4297, 'es', '_ROWS', 'Filas'),
(4298, 'de', '_RSS_FEED_TYPE', 'RSS Feed-Typ'),
(4299, 'en', '_RSS_FEED_TYPE', 'RSS Feed Type'),
(4300, 'es', '_RSS_FEED_TYPE', 'RSS Feed Tipo'),
(4301, 'de', '_RSS_FILE_ERROR', 'Kann nicht ge??ffnet werden RSS-Datei auf neues Element hinzuf??gen! Bitte ??berpr??fen Sie Ihre Zugriffsrechte auf <b>feeds/</b> Verzeichnis oder versuchen Sie es sp??ter erneut.'),
(4302, 'en', '_RSS_FILE_ERROR', 'Cannot open RSS file to add new item! Please check your access rights to <b>feeds/</b> directory or try again later.'),
(4303, 'es', '_RSS_FILE_ERROR', 'No se puede abrir el archivo RSS para a??adir el art??culo nuevo! Por favor, compruebe sus derechos de acceso a <b>feeds/</b> del directorio o int??ntelo de nuevo m??s tarde.'),
(4304, 'de', '_RUN_CRON', 'Laufen Cron'),
(4305, 'en', '_RUN_CRON', 'Run cron'),
(4306, 'es', '_RUN_CRON', 'Ejecutar cron'),
(4307, 'de', '_RUN_EVERY', 'F??hren Sie alle'),
(4308, 'en', '_RUN_EVERY', 'Run every'),
(4309, 'es', '_RUN_EVERY', 'Ejecutar cada'),
(4310, 'de', '_SA', 'Sa'),
(4311, 'en', '_SA', 'Sa'),
(4312, 'es', '_SA', 'Sa'),
(4313, 'de', '_SAID', 'sagte'),
(4314, 'en', '_SAID', 'said'),
(4315, 'es', '_SAID', 'dijo'),
(4316, 'de', '_SAT', 'Sat'),
(4317, 'en', '_SAT', 'Sat'),
(4318, 'es', '_SAT', 'S??b'),
(4319, 'de', '_SATURDAY', 'Samstag'),
(4320, 'en', '_SATURDAY', 'Saturday'),
(4321, 'es', '_SATURDAY', 's??bado'),
(4322, 'de', '_SCHEDULED_CAMPAIGN', 'Geplante Kampagne'),
(4323, 'en', '_SCHEDULED_CAMPAIGN', 'Scheduled Campaign'),
(4324, 'es', '_SCHEDULED_CAMPAIGN', 'Campa??a Programado'),
(4325, 'de', '_SEARCH', 'Suche'),
(4326, 'en', '_SEARCH', 'Search'),
(4327, 'es', '_SEARCH', 'B??squeda'),
(4328, 'de', '_SEARCH_KEYWORDS', 'Suchbegriffe'),
(4329, 'en', '_SEARCH_KEYWORDS', 'search keywords'),
(4330, 'es', '_SEARCH_KEYWORDS', 'b??squeda'),
(4331, 'de', '_SEARCH_RESULT_FOR', 'Suchergebnisse f??r'),
(4332, 'en', '_SEARCH_RESULT_FOR', 'Search Results for'),
(4333, 'es', '_SEARCH_RESULT_FOR', 'Resultados de la b??squeda para'),
(4334, 'de', '_SEARCH_ROOM_TIPS', '<b> Weitere R??ume durch die Erweiterung Ihrer Suchoptionen</b>: <br> - Reduzieren Sie die Anzahl der Erwachsenen im Zimmer, um mehr Ergebnisse zu erhalten\r\n<br> - Reduzieren Sie die Anzahl der Kinder im Zimmer um Ihr Ergebnis zu\r\n<br> - ??ndern Sie Ihr Check-in/Check-out-Datum<br>'),
(4335, 'en', '_SEARCH_ROOM_TIPS', '<b>Find more rooms by expanding your search options</b>:<br>- Reduce the number of adults in room to get more results<br>- Reduce the number of children in room to get more results<br>- Change your Check-in/Check-out dates<br>'),
(4336, 'es', '_SEARCH_ROOM_TIPS', '<b>Buscar m??s habitaciones, ampliando sus opciones de b??squeda</b>:<br> - Reducir el n??mero de adultos en la habitaci??n para conseguir m??s resultados <br> - Reducir el n??mero de ni??os en la habitaci??n para conseguir m??s resultados <br> - Cambio de fechas de llegada y salida<br>'),
(4337, 'de', '_SEC', 'sec'),
(4338, 'en', '_SEC', 'Sec'),
(4339, 'es', '_SEC', 'Seg'),
(4340, 'de', '_SELECT', 'w??hlen'),
(4341, 'en', '_SELECT', 'select'),
(4342, 'es', '_SELECT', 'Seleccione'),
(4346, 'de', '_SELECTED_ROOMS', 'Ausgew??hlte Zimmer'),
(4347, 'en', '_SELECTED_ROOMS', 'Selected Rooms'),
(4348, 'es', '_SELECTED_ROOMS', 'En algunas de ellas'),
(4349, 'de', '_SELECT_DESTINATION_OR_HOTEL', 'Reiseziel / Hotelname'),
(4350, 'en', '_SELECT_DESTINATION_OR_HOTEL', 'Destination / Hotel Name'),
(4351, 'es', '_SELECT_DESTINATION_OR_HOTEL', 'Destino / Nombre del hotel'),
(4352, 'de', '_SELECT_FILE_TO_UPLOAD', 'W??hlen Sie eine Datei zum Hochladen'),
(4353, 'en', '_SELECT_FILE_TO_UPLOAD', 'Select a file to upload'),
(4354, 'es', '_SELECT_FILE_TO_UPLOAD', 'Seleccione un archivo para cargar'),
(4355, 'de', '_SELECT_HOTEL', 'Hotel w??hlen'),
(4356, 'en', '_SELECT_HOTEL', 'Select Hotel'),
(4357, 'es', '_SELECT_HOTEL', 'Select Hotel'),
(4358, 'de', '_SELECT_LANG_TO_UPDATE', 'W??hlen Sie eine Sprache zu aktualisieren'),
(4359, 'en', '_SELECT_LANG_TO_UPDATE', 'Select a language to update'),
(4360, 'es', '_SELECT_LANG_TO_UPDATE', 'Seleccione un idioma para actualizar'),
(4361, 'de', '_SELECT_LOCATION', 'Standort ausw??hlen'),
(4362, 'en', '_SELECT_LOCATION', 'Select Location'),
(4363, 'es', '_SELECT_LOCATION', 'Seleccionar ubicaci??n'),
(4364, 'de', '_SELECT_REPORT_ALERT', 'Bitte w??hlen Sie einen Bericht geben!'),
(4365, 'en', '_SELECT_REPORT_ALERT', 'Please select a report type!'),
(4366, 'es', '_SELECT_REPORT_ALERT', 'Por favor, seleccione un tipo de informe!'),
(4367, 'de', '_SEND', 'Senden'),
(4368, 'en', '_SEND', 'Send'),
(4369, 'es', '_SEND', 'Enviar'),
(4370, 'de', '_SENDING', 'Senden'),
(4371, 'en', '_SENDING', 'Sending'),
(4372, 'es', '_SENDING', 'Env??o'),
(4373, 'de', '_SEND_COPY_TO_ADMIN', 'Senden Einer kopie ein Admin'),
(4374, 'en', '_SEND_COPY_TO_ADMIN', 'Send a copy to admin'),
(4375, 'es', '_SEND_COPY_TO_ADMIN', 'Enviar una copia al administrador'),
(4376, 'de', '_SEND_INVOICE', 'Senden Rechnung'),
(4377, 'en', '_SEND_INVOICE', 'Send Invoice'),
(4378, 'es', '_SEND_INVOICE', 'Enviar factura'),
(4379, 'de', '_SENT', 'geschickt'),
(4380, 'en', '_SENT', 'Sent'),
(4381, 'es', '_SENT', 'Expedido'),
(4382, 'de', '_SEO_LINKS_ALERT', 'Wenn Sie diese Option'),
(4383, 'en', '_SEO_LINKS_ALERT', 'If you select this option, make sure SEO Links Section uncommented in .htaccess file'),
(4384, 'es', '_SEO_LINKS_ALERT', 'Si selecciona esta opci??n, aseg??rese de SEO Enlaces sin comentarios en la secci??n .htaccess'),
(4385, 'de', '_SEO_URLS', 'SEO URLs'),
(4386, 'en', '_SEO_URLS', 'SEO URLs'),
(4387, 'es', '_SEO_URLS', 'SEO URLs'),
(4388, 'de', '_SEPTEMBER', 'September'),
(4389, 'en', '_SEPTEMBER', 'September'),
(4390, 'es', '_SEPTEMBER', 'Septiembre'),
(4391, 'de', '_SERVER_INFO', 'Server Info'),
(4392, 'en', '_SERVER_INFO', 'Server Info'),
(4393, 'es', '_SERVER_INFO', 'Servidor de Informaci??n'),
(4394, 'de', '_SERVER_LOCALE', 'Server locale'),
(4395, 'en', '_SERVER_LOCALE', 'Server Locale'),
(4396, 'es', '_SERVER_LOCALE', 'servidor local'),
(4397, 'de', '_SERVICE', 'Service'),
(4398, 'en', '_SERVICE', 'Service'),
(4399, 'es', '_SERVICE', 'Servicio'),
(4400, 'de', '_SERVICES', 'Dienstleistungen'),
(4401, 'en', '_SERVICES', 'Services'),
(4402, 'es', '_SERVICES', 'Servicios'),
(4403, 'de', '_SERVICE_AND_STAFF', 'Servicepersonal'),
(4404, 'en', '_SERVICE_AND_STAFF', 'Service & Staff'),
(4405, 'es', '_SERVICE_AND_STAFF', 'Personal de servicio'),
(4406, 'de', '_SETTINGS', 'Einstellungen'),
(4407, 'en', '_SETTINGS', 'Settings'),
(4408, 'es', '_SETTINGS', 'Configuraci??n'),
(4409, 'de', '_SETTINGS_SAVED', '??nderungen wurden gespeichert! Bitte aktualisieren Sie die <a href=index.php>Home Page</a> zu den Suchergebnissen finden Sie im.'),
(4410, 'en', '_SETTINGS_SAVED', 'Changes were saved! Please refresh the <a href=index.php>Home Page</a> to see the results.'),
(4411, 'es', '_SETTINGS_SAVED', 'Los cambios fueron salvados! Por favor, actualice la <a href=index.php>Home Page</a> para ver los resultados.'),
(4412, 'de', '_SET_ADMIN', 'Set Admin'),
(4413, 'en', '_SET_ADMIN', 'Set Admin'),
(4414, 'es', '_SET_ADMIN', 'Set de admin'),
(4415, 'de', '_SET_DATE', 'Stellen Sie das Datum'),
(4416, 'en', '_SET_DATE', 'Set date'),
(4417, 'es', '_SET_DATE', 'Establecer fecha'),
(4418, 'de', '_SET_PERIODS', 'gesetzt Perioden'),
(4419, 'en', '_SET_PERIODS', 'Set Periods'),
(4420, 'es', '_SET_PERIODS', 'Establecer per??odos'),
(4421, 'de', '_SET_TIME', 'Eingestellte Zeit'),
(4422, 'en', '_SET_TIME', 'Set Time'),
(4423, 'es', '_SET_TIME', 'Ajuste de la hora'),
(4424, 'de', '_SHORT_DESCRIPTION', 'Kurzbeschreibung'),
(4425, 'en', '_SHORT_DESCRIPTION', 'Short Description'),
(4426, 'es', '_SHORT_DESCRIPTION', 'Descripci??n corta'),
(4427, 'de', '_SHOW', 'Zeigen'),
(4428, 'en', '_SHOW', 'Show'),
(4429, 'es', '_SHOW', 'Mostrar'),
(4430, 'de', '_SHOW_IN_SEARCH', 'Show auf der Suche'),
(4431, 'en', '_SHOW_IN_SEARCH', 'Show in Search'),
(4432, 'es', '_SHOW_IN_SEARCH', 'Ver en la b??squeda'),
(4433, 'de', '_SHOW_META_TAGS', 'META-Tags anzeigen'),
(4434, 'en', '_SHOW_META_TAGS', 'Show META tags'),
(4435, 'es', '_SHOW_META_TAGS', 'Mostrar Las etiquetas META'),
(4436, 'de', '_SHOW_ON_DASHBOARD', 'Anzeigen auf Armaturenbrett'),
(4437, 'en', '_SHOW_ON_DASHBOARD', 'Show on Dashboard'),
(4438, 'es', '_SHOW_ON_DASHBOARD', 'Mostrar en el Dashboard'),
(4439, 'de', '_SIDE_PANEL', 'Seitenteil'),
(4440, 'en', '_SIDE_PANEL', 'Side Panel'),
(4441, 'es', '_SIDE_PANEL', 'El panel lateral'),
(4442, 'de', '_SIMPLE', 'Einfache'),
(4443, 'en', '_SIMPLE', 'Simple'),
(4444, 'es', '_SIMPLE', 'Simple'),
(4445, 'de', '_SITE_DEVELOPMENT_MODE_ALERT', 'Die Seite ist in Entwicklung Modus l??uft! Um ihn auszuschalten ??ndern <b>SITE_MODE</b>-Wert in <b>inc/settings.inc.php</b>'),
(4446, 'en', '_SITE_DEVELOPMENT_MODE_ALERT', 'The site is running in Development Mode! To turn it off change <b>SITE_MODE</b> value in <b>inc/settings.inc.php</b>'),
(4447, 'es', '_SITE_DEVELOPMENT_MODE_ALERT', 'El sitio se est?? ejecutando en el modo de desarrollo! Para desactivarlo cambio <b>SITE_MODE</b> valor en <b>inc/settings.inc.php</b>'),
(4448, 'de', '_SITE_INFO', 'Homepage Info'),
(4449, 'en', '_SITE_INFO', 'Site Info'),
(4450, 'es', '_SITE_INFO', 'Informaci??n del Sitio'),
(4451, 'de', '_SITE_OFFLINE', 'Website offline'),
(4452, 'en', '_SITE_OFFLINE', 'Site Offline'),
(4453, 'es', '_SITE_OFFLINE', 'Sitio fuera de l??nea'),
(4454, 'de', '_SITE_OFFLINE_ALERT', 'W??hlen Sie'),
(4455, 'en', '_SITE_OFFLINE_ALERT', 'Select whether access to the Site Front-end is available. If Yes, the Front-End will display the message below'),
(4456, 'es', '_SITE_OFFLINE_ALERT', 'Seleccione si el acceso al Sitio Front-end est?? disponible. En caso afirmativo, el Front-End mostrar?? el mensaje siguiente:'),
(4457, 'de', '_SITE_OFFLINE_MESSAGE_ALERT', 'Eine Nachricht'),
(4458, 'en', '_SITE_OFFLINE_MESSAGE_ALERT', 'A message that displays in the Front-end if your site is offline'),
(4459, 'es', '_SITE_OFFLINE_MESSAGE_ALERT', 'Un mensaje que aparece en el front-end si su sitio est?? en l??nea'),
(4460, 'de', '_SITE_PREVIEW', 'Website-Vorschau'),
(4461, 'en', '_SITE_PREVIEW', 'Site Preview'),
(4462, 'es', '_SITE_PREVIEW', 'Sitio de vista preliminar'),
(4463, 'de', '_SITE_RANKS', 'Website Reihen'),
(4464, 'en', '_SITE_RANKS', 'Site Ranks'),
(4465, 'es', '_SITE_RANKS', 'Sitio Ranks'),
(4466, 'de', '_SITE_ROOT_DIRECTORY', 'Pfad zu Ihrer Website Root-Verzeichnis (muss \"/\" am Ende enthalten)'),
(4467, 'en', '_SITE_ROOT_DIRECTORY', 'Path to your site root directory (must include \"/\" at the end)'),
(4468, 'es', '_SITE_ROOT_DIRECTORY', 'Ruta de acceso al directorio ra??z del sitio (debe incluir \"/\" al final)'),
(4469, 'de', '_SITE_RSS', 'Website RSS'),
(4470, 'en', '_SITE_RSS', 'Site RSS'),
(4471, 'es', '_SITE_RSS', 'RSS del sitio'),
(4472, 'de', '_SITE_SETTINGS', 'Site-Einstellungen'),
(4473, 'en', '_SITE_SETTINGS', 'Site Settings'),
(4474, 'es', '_SITE_SETTINGS', 'Configuraci??n del sitio'),
(4475, 'de', '_SIZE_REFUND_BOOKING_ROOMS', 'Die Gr????e des Geldr??ckgabe f??r die Buchung Zimmer'),
(4476, 'en', '_SIZE_REFUND_BOOKING_ROOMS', 'The size of the money return for booking rooms'),
(4477, 'es', '_SIZE_REFUND_BOOKING_ROOMS', 'El tama??o de la devoluci??n de dinero de la reserva de habitaciones'),
(4478, 'de', '_SIZE_REFUND_MONEY', 'Die Gr????e der Erstattung ein Geld'),
(4479, 'en', '_SIZE_REFUND_MONEY', 'The value of money refund'),
(4480, 'es', '_SIZE_REFUND_MONEY', 'El tama??o de la restituci??n de un dinero'),
(4481, 'de', '_SLEEP_QUALITY', 'Schlafqualit??t '),
(4482, 'en', '_SLEEP_QUALITY', 'Sleep Quality'),
(4483, 'es', '_SLEEP_QUALITY', 'Calidad del sue??o'),
(4484, 'de', '_SMTP_HOST', 'SMTP-Host'),
(4485, 'en', '_SMTP_HOST', 'SMTP Host'),
(4486, 'es', '_SMTP_HOST', 'SMTP host'),
(4487, 'de', '_SMTP_PORT', 'SMTP-Port'),
(4488, 'en', '_SMTP_PORT', 'SMTP Port'),
(4489, 'es', '_SMTP_PORT', 'Puerto SMTP'),
(4490, 'de', '_SMTP_SECURE', 'SMTP Sichere'),
(4491, 'en', '_SMTP_SECURE', 'SMTP Secure'),
(4492, 'es', '_SMTP_SECURE', 'Secure SMTP'),
(4493, 'de', '_SORT_BY', 'Sortieren'),
(4494, 'en', '_SORT_BY', 'Sort by'),
(4495, 'es', '_SORT_BY', 'Ordenar'),
(4496, 'de', '_STANDARD', 'Standards'),
(4497, 'en', '_STANDARD', 'Standard'),
(4498, 'es', '_STANDARD', 'Est??ndar'),
(4499, 'de', '_STANDARD_PRICE', 'Standard Preis'),
(4500, 'en', '_STANDARD_PRICE', 'Standard Price'),
(4501, 'es', '_STANDARD_PRICE', 'Precio est??ndar'),
(4502, 'de', '_STAR', 'Star'),
(4503, 'en', '_STAR', 'Star'),
(4504, 'es', '_STAR', 'Estrella'),
(4505, 'de', '_STARS', 'Sterne'),
(4506, 'en', '_STARS', 'Stars'),
(4507, 'es', '_STARS', 'Estrellas'),
(4508, 'de', '_STARS_1_5', '1 Stern bis 5 Sterne'),
(4509, 'en', '_STARS_1_5', '1 star to 5 stars'),
(4510, 'es', '_STARS_1_5', '1 a 5 estrellas'),
(4511, 'de', '_STARS_5_1', '5 Sterne f??r 1 Stern'),
(4512, 'en', '_STARS_5_1', '5 stars to 1 star'),
(4513, 'es', '_STARS_5_1', '5 estrellas a 1 estrella'),
(4514, 'de', '_STARTING', 'Ab'),
(4515, 'en', '_STARTING', 'Starting'),
(4516, 'es', '_STARTING', 'Empezando'),
(4517, 'de', '_STARTING_FROM', 'Ab'),
(4518, 'en', '_STARTING_FROM', 'Starting from'),
(4519, 'es', '_STARTING_FROM', 'Empezando desde'),
(4520, 'de', '_START_DATE', 'Startdatum'),
(4521, 'en', '_START_DATE', 'Start Date'),
(4522, 'es', '_START_DATE', 'Fecha de inicio'),
(4523, 'de', '_START_FINISH_DATE_ERROR', 'Endtermin muss sp??testens Startdatum werden! Bitte erneut eingeben.'),
(4524, 'en', '_START_FINISH_DATE_ERROR', 'Finish date must be later than start date! Please re-enter.'),
(4525, 'es', '_START_FINISH_DATE_ERROR', 'Fecha de finalizaci??n debe ser posterior a la fecha de inicio! Por favor, vuelva a entrar.'),
(4526, 'de', '_START_OVER', 'Beginnen'),
(4527, 'en', '_START_OVER', 'Start Over'),
(4528, 'es', '_START_OVER', 'Comenzar de Nuevo'),
(4529, 'de', '_STATE', 'Zustand'),
(4530, 'en', '_STATE', 'State'),
(4531, 'es', '_STATE', 'Estado'),
(4532, 'de', '_STATES', 'Staaten'),
(4533, 'en', '_STATES', 'States'),
(4534, 'es', '_STATES', 'Unidos'),
(4535, 'de', '_STATE_PROVINCE', 'Staat/Provinz'),
(4536, 'en', '_STATE_PROVINCE', 'State/Province'),
(4537, 'es', '_STATE_PROVINCE', 'Estado/Provincia'),
(4538, 'de', '_STATISTICS', 'Statistik'),
(4539, 'en', '_STATISTICS', 'Statistics'),
(4540, 'es', '_STATISTICS', 'Estad??stica'),
(4541, 'de', '_STATUS', 'Status'),
(4542, 'en', '_STATUS', 'Status'),
(4543, 'es', '_STATUS', 'Estado'),
(4544, 'de', '_STATUS_CHANGED', 'Status ge??ndert'),
(4545, 'en', '_STATUS_CHANGED', 'Status Changed'),
(4546, 'es', '_STATUS_CHANGED', 'Estatuto cambiado'),
(4547, 'de', '_STATUS_NOT_CHANGED', 'Der Status nicht ge??ndert'),
(4548, 'en', '_STATUS_NOT_CHANGED', 'Status not changed'),
(4549, 'es', '_STATUS_NOT_CHANGED', 'El estado no ha cambiado'),
(4550, 'de', '_STEAM', 'Dampf'),
(4551, 'en', '_STEAM', 'Steam'),
(4552, 'es', '_STEAM', 'Vapor'),
(4553, 'de', '_STOP', 'Anschlag'),
(4554, 'en', '_STOP', 'Stop'),
(4555, 'es', '_STOP', 'Detener'),
(4556, 'de', '_SU', 'So'),
(4557, 'en', '_SU', 'Su'),
(4558, 'es', '_SU', 'Do'),
(4559, 'de', '_SUBJECT', 'Gegenstand'),
(4560, 'en', '_SUBJECT', 'Subject'),
(4561, 'es', '_SUBJECT', 'Tema'),
(4562, 'de', '_SUBJECT_EMPTY_ALERT', 'Betreff darf nicht leer sein!'),
(4563, 'en', '_SUBJECT_EMPTY_ALERT', 'Subject cannot be empty!'),
(4564, 'es', '_SUBJECT_EMPTY_ALERT', 'Sin perjuicio no puede estar vac??o!'),
(4565, 'de', '_SUBMIT', 'Eintragen'),
(4566, 'en', '_SUBMIT', 'Submit'),
(4567, 'es', '_SUBMIT', 'Submit'),
(4568, 'de', '_SUBMIT_BOOKING', 'Senden Buchung'),
(4569, 'en', '_SUBMIT_BOOKING', 'Submit Booking'),
(4570, 'es', '_SUBMIT_BOOKING', 'Enviar Reservas'),
(4571, 'de', '_SUBMIT_PAYMENT', 'Submit Zahlung'),
(4572, 'en', '_SUBMIT_PAYMENT', 'Submit Payment'),
(4573, 'es', '_SUBMIT_PAYMENT', 'Presentar el pago'),
(4574, 'de', '_SUBSCRIBE', 'Zeichnen'),
(4575, 'en', '_SUBSCRIBE', 'Subscribe'),
(4576, 'es', '_SUBSCRIBE', 'Suscribir'),
(4577, 'de', '_SUBSCRIBE_EMAIL_EXISTS_ALERT', 'Jemand mit einer solchen E-Mail hat schon unseren Newsletter abonniert worden. Bitte w??hlen Sie ein anderes E-Mail-Adresse zum Bezug anzubieten.'),
(4578, 'en', '_SUBSCRIBE_EMAIL_EXISTS_ALERT', 'Someone with such email has already been subscribed to our newsletter. Please choose another email address for subscription.'),
(4579, 'es', '_SUBSCRIBE_EMAIL_EXISTS_ALERT', 'Alguien con el correo electr??nico como ya se ha suscrito a nuestro bolet??n de noticias. Por favor, elija otra direcci??n de correo electr??nico para la suscripci??n.'),
(4580, 'de', '_SUBSCRIBE_TO_NEWSLETTER', 'Newsletter abonnieren'),
(4581, 'en', '_SUBSCRIBE_TO_NEWSLETTER', 'Newsletter Subscription'),
(4582, 'es', '_SUBSCRIBE_TO_NEWSLETTER', 'Suscr??bete al bolet??n de noticias'),
(4583, 'de', '_SUBSCRIPTION_ALREADY_SENT', 'Sie haben bereits unseren Newsletter abonniert. Bitte versuchen Sie es sp??ter noch einmal oder warten _WAIT_ Sekunden.'),
(4584, 'en', '_SUBSCRIPTION_ALREADY_SENT', 'You have already subscribed to our newsletter. Please try again later or wait _WAIT_ seconds.'),
(4585, 'es', '_SUBSCRIPTION_ALREADY_SENT', 'Ya se ha suscrito a nuestro bolet??n. Por favor, int??ntelo de nuevo m??s tarde o esperar unos segundos _WAIT_.'),
(4586, 'de', '_SUBSCRIPTION_MANAGEMENT', 'Abo-Verwaltung'),
(4587, 'en', '_SUBSCRIPTION_MANAGEMENT', 'Subscription Management'),
(4588, 'es', '_SUBSCRIPTION_MANAGEMENT', 'De administraci??n de suscripciones'),
(4589, 'de', '_SUBTOTAL', 'Zwischensumme'),
(4590, 'en', '_SUBTOTAL', 'Subtotal'),
(4591, 'es', '_SUBTOTAL', 'Total parcial'),
(4592, 'de', '_SUMMARY', 'Zusammenfassung'),
(4593, 'en', '_SUMMARY', 'Summary'),
(4594, 'es', '_SUMMARY', 'resumen'),
(4595, 'de', '_SUN', 'Son'),
(4596, 'en', '_SUN', 'Sun'),
(4597, 'es', '_SUN', 'Dom'),
(4598, 'de', '_SUNDAY', 'Sonntag'),
(4599, 'en', '_SUNDAY', 'Sunday'),
(4600, 'es', '_SUNDAY', 'domingo'),
(4601, 'de', '_SWITCH_TO_EXPORT', 'Schalter f??r den Export'),
(4602, 'en', '_SWITCH_TO_EXPORT', 'Switch to Export'),
(4603, 'es', '_SWITCH_TO_EXPORT', 'Cambiar a la exportaci??n'),
(4604, 'de', '_SWITCH_TO_NORMAL', 'Wechseln Sie zur Normalansicht'),
(4605, 'en', '_SWITCH_TO_NORMAL', 'Switch to Normal'),
(4606, 'es', '_SWITCH_TO_NORMAL', 'Cambiar a la normal'),
(4607, 'de', '_SYMBOL', 'Symbol'),
(4608, 'en', '_SYMBOL', 'Symbol'),
(4609, 'es', '_SYMBOL', 'S??mbolo'),
(4610, 'de', '_SYMBOL_PLACEMENT', 'Symbolplatzierung'),
(4611, 'en', '_SYMBOL_PLACEMENT', 'Symbol Placement'),
(4612, 'es', '_SYMBOL_PLACEMENT', 'Ubicaci??n de S??mbolo'),
(4613, 'de', '_SYSTEM', 'System'),
(4614, 'en', '_SYSTEM', 'System'),
(4615, 'es', '_SYSTEM', 'Sistema'),
(4616, 'de', '_SYSTEM_EMAIL_DELETE_ALERT', 'Diese E-Mail-Vorlage wird durch das System verwendet und kann nicht gel??scht werden!'),
(4617, 'en', '_SYSTEM_EMAIL_DELETE_ALERT', 'This email template is used by the system and cannot be deleted!'),
(4618, 'es', '_SYSTEM_EMAIL_DELETE_ALERT', 'Esta plantilla de correo electr??nico es utilizado por el sistema y no se puede eliminar!'),
(4619, 'de', '_SYSTEM_MODULE', 'System-Modul'),
(4620, 'en', '_SYSTEM_MODULE', 'System Module'),
(4621, 'es', '_SYSTEM_MODULE', 'M??dulo del Sistema'),
(4622, 'de', '_SYSTEM_MODULES', 'System-Module'),
(4623, 'en', '_SYSTEM_MODULES', 'System Modules'),
(4624, 'es', '_SYSTEM_MODULES', 'Sistema de M??dulos'),
(4625, 'de', '_SYSTEM_MODULE_ACTIONS_BLOCKED', 'Alle Operationen mit System-Modul sind gesperrt!'),
(4626, 'en', '_SYSTEM_MODULE_ACTIONS_BLOCKED', 'All operations with system module are blocked!'),
(4627, 'es', '_SYSTEM_MODULE_ACTIONS_BLOCKED', 'Todas las operaciones con el m??dulo del sistema est??n bloqueados!'),
(4628, 'de', '_SYSTEM_TEMPLATE', 'System Vorlage'),
(4629, 'en', '_SYSTEM_TEMPLATE', 'System Template'),
(4630, 'es', '_SYSTEM_TEMPLATE', 'Sistema de plantillas'),
(4631, 'de', '_TAG', 'Begriffe'),
(4632, 'en', '_TAG', 'Tag'),
(4633, 'es', '_TAG', 'Tag'),
(4634, 'de', '_TAG_TITLE_IS_EMPTY', '&lt;TITLE&gt; Tag nicht leer sein! Bitte erneut eingeben.'),
(4635, 'en', '_TAG_TITLE_IS_EMPTY', 'Tag &lt;TITLE&gt; cannot be empty! Please re-enter.'),
(4636, 'es', '_TAG_TITLE_IS_EMPTY', '&lt;Title&gt; no puede estar vac??o! Por favor, introduzca'),
(4637, 'de', '_TARGET', 'Ziel'),
(4638, 'en', '_TARGET', 'Target'),
(4639, 'es', '_TARGET', 'Meta'),
(4640, 'de', '_TARGET_GROUP', 'Zielgruppe'),
(4641, 'en', '_TARGET_GROUP', 'Target Group'),
(4642, 'es', '_TARGET_GROUP', 'Grupo Objetivo'),
(4643, 'de', '_TARGET_HOTEL', 'Ziel Hotels'),
(4644, 'en', '_TARGET_HOTEL', 'Target Hotel'),
(4645, 'es', '_TARGET_HOTEL', 'Objetivo del hotel'),
(4646, 'de', '_TAXES', 'Steuern'),
(4647, 'en', '_TAXES', 'Taxes'),
(4648, 'es', '_TAXES', 'Impuestos'),
(4649, 'de', '_TEMPLATES_STYLES', 'Templates &amp; Styles'),
(4650, 'en', '_TEMPLATES_STYLES', 'Templates & Styles'),
(4651, 'es', '_TEMPLATES_STYLES', 'Plantillas y Estilos'),
(4652, 'de', '_TEMPLATE_CODE', 'Template-Code'),
(4653, 'en', '_TEMPLATE_CODE', 'Template Code'),
(4654, 'es', '_TEMPLATE_CODE', 'Plantilla C??digo'),
(4655, 'de', '_TEMPLATE_IS_EMPTY', 'Vorlage kann nicht leer sein! Bitte erneut eingeben.'),
(4656, 'en', '_TEMPLATE_IS_EMPTY', 'Template cannot be empty! Please re-enter.'),
(4657, 'es', '_TEMPLATE_IS_EMPTY', 'Plantilla no puede estar vac??a! Por favor, vuelva a entrar.'),
(4658, 'de', '_TERMS', 'Allgemeine Gesch??ftsbedingungen'),
(4659, 'en', '_TERMS', 'Terms & Conditions'),
(4660, 'es', '_TERMS', 'T??rminos y Condiciones'),
(4661, 'de', '_TESTIMONIALS', 'Zeugnisse'),
(4662, 'en', '_TESTIMONIALS', 'Testimonials'),
(4663, 'es', '_TESTIMONIALS', 'Testimonios'),
(4664, 'de', '_TESTIMONIALS_MANAGEMENT', 'Management von Testimonials'),
(4665, 'en', '_TESTIMONIALS_MANAGEMENT', 'Testimonials Management'),
(4666, 'es', '_TESTIMONIALS_MANAGEMENT', 'Gesti??n de los testimonios'),
(4667, 'de', '_TESTIMONIALS_SETTINGS', 'Zeugnisse Einstellungen'),
(4668, 'en', '_TESTIMONIALS_SETTINGS', 'Testimonials Settings'),
(4669, 'es', '_TESTIMONIALS_SETTINGS', 'Configuraci??n de testimonios'),
(4670, 'de', '_TEST_EMAIL', 'Test-E-Mail'),
(4671, 'en', '_TEST_EMAIL', 'Test Email'),
(4672, 'es', '_TEST_EMAIL', 'Prueba de correo electr??nico'),
(4673, 'de', '_TEST_MODE_ALERT', 'Testmodus Reservierung Warenkorb ist eingeschaltet! So ??ndern Sie aktuelle Modus klicken <a href=index.php?admin=mod_booking_settings>Sie hier</a>.'),
(4674, 'en', '_TEST_MODE_ALERT', 'Test Mode in Reservation Cart is turned ON! To change current mode click <a href=index.php?admin=mod_booking_settings>here</a>.'),
(4675, 'es', '_TEST_MODE_ALERT', 'Modo de prueba en la cesta de reserva se enciende! Para cambiar <a actual, haga clic en el modo de href=index.php?admin=mod_booking_settings>aqu??</a>.'),
(4676, 'de', '_TEST_MODE_ALERT_SHORT', 'Achtung: Reservierung Warenkorb ist im Test-Modus laufen!'),
(4677, 'en', '_TEST_MODE_ALERT_SHORT', 'Attention: Reservation Cart is running in Test Mode!'),
(4678, 'es', '_TEST_MODE_ALERT_SHORT', 'Atenci??n: La reserva de compra se est?? ejecutando en modo de prueba!'),
(4679, 'de', '_TEXT', 'Text'),
(4680, 'en', '_TEXT', 'Text'),
(4681, 'es', '_TEXT', 'Texto'),
(4682, 'de', '_TH', 'Do'),
(4683, 'en', '_TH', 'Th'),
(4684, 'es', '_TH', 'Ju'),
(4685, 'de', '_THIS_HOTEL', 'dieses Hotel'),
(4686, 'en', '_THIS_HOTEL', 'this hotel'),
(4687, 'es', '_THIS_HOTEL', 'este hotel'),
(4688, 'de', '_THU', 'Don'),
(4689, 'en', '_THU', 'Thu'),
(4690, 'es', '_THU', 'Jue'),
(4691, 'de', '_THUMBNAIL', 'Vorschaubild'),
(4692, 'en', '_THUMBNAIL', 'Thumbnail'),
(4693, 'es', '_THUMBNAIL', 'Miniatura'),
(4694, 'de', '_THURSDAY', 'Donnerstag'),
(4695, 'en', '_THURSDAY', 'Thursday'),
(4696, 'es', '_THURSDAY', 'jueves'),
(4697, 'de', '_TILL', 'bis'),
(4698, 'en', '_TILL', 'Till'),
(4699, 'es', '_TILL', 'hasta'),
(4700, 'de', '_TIME', 'Zeit'),
(4701, 'en', '_TIME', 'Time'),
(4702, 'es', '_TIME', 'Hora'),
(4703, 'de', '_TIMES_USED', 'Zeiten verwendet'),
(4704, 'en', '_TIMES_USED', 'Times Used'),
(4705, 'es', '_TIMES_USED', 'Utilizado veces'),
(4706, 'de', '_TIMES_USED_ERROR', 'Max. Anzahl der Benutzer muss gr????er sein als Zeiten verwendet! Bitte erneut eingeben.'),
(4707, 'en', '_TIMES_USED_ERROR', 'Max. number of uses must be greater than times used! Please re-enter.'),
(4708, 'es', '_TIMES_USED_ERROR', 'Max. n??mero de usuarios debe ser mayor que los tiempos utilizados! Por favor, vuelva a introducir.'),
(4709, 'de', '_TIME_INTERVAL', 'Zeitintervall'),
(4710, 'en', '_TIME_INTERVAL', 'Time Interval'),
(4711, 'es', '_TIME_INTERVAL', 'Intervalo de tiempo'),
(4712, 'de', '_TIME_PERIOD_OVERLAPPING_ALERT', 'Dieser Zeitraum (vollst??ndig oder teilweise) wurde bereits ausgew??hlt! Bitte w??hlen Sie einen anderen.'),
(4713, 'en', '_TIME_PERIOD_OVERLAPPING_ALERT', 'This period of time (fully or partially) is already selected! Please choose another.'),
(4714, 'es', '_TIME_PERIOD_OVERLAPPING_ALERT', 'Este per??odo de tiempo (total o parcialmente) fue seleccionado ya! Por favor elija otro.'),
(4715, 'de', '_TIME_ZONE', 'Time Zone'),
(4716, 'en', '_TIME_ZONE', 'Time Zone'),
(4717, 'es', '_TIME_ZONE', 'Zona horaria'),
(4718, 'de', '_TIPTRONIC', 'Tiptronic'),
(4719, 'en', '_TIPTRONIC', 'Tiptronic'),
(4720, 'es', '_TIPTRONIC', 'Tiptronic'),
(4721, 'de', '_TITLE', 'Titel'),
(4722, 'en', '_TITLE', 'Title'),
(4723, 'es', '_TITLE', 'T??tulo'),
(4724, 'de', '_TO', 'auf'),
(4725, 'en', '_TO', 'To'),
(4726, 'es', '_TO', 'A'),
(4727, 'de', '_TODAY', 'Heute'),
(4728, 'en', '_TODAY', 'Today'),
(4729, 'es', '_TODAY', 'Hoy'),
(4730, 'de', '_TODAY_CHECKIN', 'Heutige Check-in'),
(4731, 'en', '_TODAY_CHECKIN', 'Today\'s Check-in'),
(4732, 'es', '_TODAY_CHECKIN', 'De hoy check-in'),
(4733, 'de', '_TODAY_CHECKOUT', 'Heutige Check-out'),
(4734, 'en', '_TODAY_CHECKOUT', 'Today\'s Check-out'),
(4735, 'es', '_TODAY_CHECKOUT', 'De hoy check-out'),
(4736, 'de', '_TODAY_TOP_DEALS', 'Die heutigen Top Angebote'),
(4737, 'en', '_TODAY_TOP_DEALS', 'Today\'s Top Deals'),
(4738, 'es', '_TODAY_TOP_DEALS', 'Top de Hoy Ofertas'),
(4739, 'de', '_TODAY_TOP_DEALS_TEXT', 'Beginnen Sie Ihre Suche mit einem Blick auf die besten Preise auf unserer Website.'),
(4740, 'en', '_TODAY_TOP_DEALS_TEXT', 'Start your search with a look at the best rates on our site.'),
(4741, 'es', '_TODAY_TOP_DEALS_TEXT', 'Comience su b??squeda con una mirada a las mejores tarifas en nuestro sitio.'),
(4742, 'de', '_TODAY_TOP_DEALS_WITH_BR', 'Die heutigen Top<br/>Angebote'),
(4743, 'en', '_TODAY_TOP_DEALS_WITH_BR', 'Today\'s Top<br/>Deals'),
(4744, 'es', '_TODAY_TOP_DEALS_WITH_BR', 'Top de Hoy<br/>Ofertas'),
(4745, 'de', '_TOKEN_INCORRECT', 'Falsche Token. Versuchen Sie, die Seite neu zu laden und wiederholen Sie den Vorgang'),
(4746, 'en', '_TOKEN_INCORRECT', 'Token incorrect. Try reloading the page and repeat the operation'),
(4747, 'es', '_TOKEN_INCORRECT', 'Token incorrecta. Intente volver a cargar la p??gina y repetir la operaci??n'),
(4748, 'de', '_TOP', 'Oben'),
(4749, 'en', '_TOP', 'Top'),
(4750, 'es', '_TOP', 'Superior'),
(4751, 'de', '_TOP_PANEL', 'Oberseite'),
(4752, 'en', '_TOP_PANEL', 'Top Panel'),
(4753, 'es', '_TOP_PANEL', 'Panel superior'),
(4754, 'de', '_TOTAL', 'Insgesamt'),
(4755, 'en', '_TOTAL', 'Total'),
(4756, 'es', '_TOTAL', 'Total'),
(4760, 'de', '_TOTAL_FUNDS', 'Gesamtmittel'),
(4761, 'en', '_TOTAL_FUNDS', 'Total Funds'),
(4762, 'es', '_TOTAL_FUNDS', 'Total de fondos'),
(4763, 'de', '_TOTAL_PAYMENTS', 'Insgesamt Zahlungen'),
(4764, 'en', '_TOTAL_PAYMENTS', 'Total Payments'),
(4765, 'es', '_TOTAL_PAYMENTS', 'Pagos totales'),
(4766, 'de', '_TOTAL_PRICE', 'Gesamtpreis'),
(4767, 'en', '_TOTAL_PRICE', 'Total Price'),
(4768, 'es', '_TOTAL_PRICE', 'Precio Total'),
(4769, 'de', '_TOTAL_ROOMS', 'Anzahl der Zimmer'),
(4770, 'en', '_TOTAL_ROOMS', 'Total Rooms'),
(4771, 'es', '_TOTAL_ROOMS', 'Habitaciones del hotel'),
(4772, 'de', '_TOURISM', 'Tourismus'),
(4773, 'en', '_TOURISM', 'Tourism'),
(4774, 'es', '_TOURISM', 'Turismo'),
(4775, 'de', '_TO_SET_UNLIMITED_TOOLTIP', 'So stellen Sie \"unbegrenzte\" Typ \"_VAL_\"'),
(4776, 'en', '_TO_SET_UNLIMITED_TOOLTIP', 'To set \"unlimited\" enter \"_VAL_\"'),
(4777, 'es', '_TO_SET_UNLIMITED_TOOLTIP', 'Para establecer el tipo de l??mites \"_VAL_\"'),
(4778, 'de', '_TRANSACTION', 'Transaktion'),
(4779, 'en', '_TRANSACTION', 'Transaction'),
(4780, 'es', '_TRANSACTION', 'Transacci??n'),
(4781, 'de', '_TRANSLATE_VIA_GOOGLE', '??bersetzen mit Google'),
(4782, 'en', '_TRANSLATE_VIA_GOOGLE', 'Translate via Google'),
(4783, 'es', '_TRANSLATE_VIA_GOOGLE', 'Traducir a trav??s de Google'),
(4793, 'de', '_TRASH', 'M??ll'),
(4794, 'en', '_TRASH', 'Trash'),
(4795, 'es', '_TRASH', 'Basura'),
(4796, 'de', '_TRASH_PAGES', 'Trash Seiten'),
(4797, 'en', '_TRASH_PAGES', 'Trash Pages'),
(4798, 'es', '_TRASH_PAGES', 'Papelera P??ginas'),
(4799, 'de', '_TRAVEL_AGENCIES', 'Reiseagenturen'),
(4800, 'en', '_TRAVEL_AGENCIES', 'Travel Agencies'),
(4801, 'es', '_TRAVEL_AGENCIES', 'Agencias de viajes'),
(4802, 'de', '_TRAVEL_TYPE', 'Reisetyp'),
(4803, 'en', '_TRAVEL_TYPE', 'Travel type'),
(4804, 'es', '_TRAVEL_TYPE', 'Tipo de viaje'),
(4805, 'de', '_TRUNCATE_RELATED_TABLES', 'Truncate verkn??pften Tabellen?'),
(4806, 'en', '_TRUNCATE_RELATED_TABLES', 'Truncate related tables?'),
(4807, 'es', '_TRUNCATE_RELATED_TABLES', 'Truncar tablas relacionadas?'),
(4808, 'de', '_TRY_LATER', 'Ein Fehler Trat w??hrend der ausf??hrung der Operation. Bitte versuchen Sie Es Noch Einmal sp??ter!'),
(4809, 'en', '_TRY_LATER', 'An error occurred while executing. Please try again later!'),
(4810, 'es', '_TRY_LATER', 'Se produjo un error mientras que la ejecuci??n. Por favor, int??ntelo de nuevo m??s tarde!'),
(4811, 'de', '_TRY_SYSTEM_SUGGESTION', 'Testen Sie Systems Vorschlag'),
(4812, 'en', '_TRY_SYSTEM_SUGGESTION', 'Try out system suggestion'),
(4813, 'es', '_TRY_SYSTEM_SUGGESTION', 'Pruebe la sugerencia del sistema'),
(4814, 'de', '_TU', 'Di'),
(4815, 'en', '_TU', 'Tu'),
(4816, 'es', '_TU', 'Ma'),
(4817, 'de', '_TUE', 'Die'),
(4818, 'en', '_TUE', 'Tue'),
(4819, 'es', '_TUE', 'Mar'),
(4820, 'de', '_TUESDAY', 'Dienstag'),
(4821, 'en', '_TUESDAY', 'Tuesday'),
(4822, 'es', '_TUESDAY', 'martes'),
(4823, 'de', '_TYPE', 'Typ'),
(4824, 'en', '_TYPE', 'Type'),
(4825, 'es', '_TYPE', 'Tipo'),
(4826, 'de', '_TYPES_AND_RATES', 'Typen und Preise'),
(4827, 'en', '_TYPES_AND_RATES', 'Types and Rates'),
(4828, 'es', '_TYPES_AND_RATES', 'Tipos y tarifas'),
(4829, 'de', '_TYPE_CHARS', 'Geben Sie die Zeichen im Bild sehen'),
(4830, 'en', '_TYPE_CHARS', 'Type the characters you see in the picture'),
(4831, 'es', '_TYPE_CHARS', 'Escriba los caracteres que ve en la imagen'),
(4832, 'de', '_TYPE_MENU', 'Typ-Men??'),
(4833, 'en', '_TYPE_MENU', 'Type Menu'),
(4834, 'es', '_TYPE_MENU', 'Tipo menu'),
(4835, 'de', '_TYPE_REFUND_MONEY', 'Geben Sie erstatten eine Geld'),
(4836, 'en', '_TYPE_REFUND_MONEY', 'Type of money refund'),
(4837, 'es', '_TYPE_REFUND_MONEY', 'Escriba un reembolso de dinero'),
(4838, 'de', '_TYPE_YOUR_DROPPING_OFF_LOCATION', 'Geben Sie Ihre Abfallen Lage'),
(4839, 'en', '_TYPE_YOUR_DROPPING_OFF_LOCATION', 'type your dropping off location'),
(4840, 'es', '_TYPE_YOUR_DROPPING_OFF_LOCATION', 'escriba su ca??da Lugar'),
(4841, 'de', '_TYPE_YOUR_PICKUP_LOCATION', 'Geben Sie Ihren Abholort'),
(4842, 'en', '_TYPE_YOUR_PICKUP_LOCATION', 'type your picking up location'),
(4843, 'es', '_TYPE_YOUR_PICKUP_LOCATION', 'escriba su lugar de recogida'),
(4844, 'de', '_UNCATEGORIZED', 'Uncategorized'),
(4845, 'en', '_UNCATEGORIZED', 'Uncategorized'),
(4846, 'es', '_UNCATEGORIZED', 'Hasta'),
(4847, 'de', '_UNDEFINED', 'undefiniert'),
(4848, 'en', '_UNDEFINED', 'undefined'),
(4849, 'es', '_UNDEFINED', 'indefinido'),
(4850, 'de', '_UNINSTALL', 'Deinstallieren'),
(4851, 'en', '_UNINSTALL', 'Uninstall'),
(4852, 'es', '_UNINSTALL', 'Desinstalar'),
(4853, 'de', '_UNITS', 'Einheiten'),
(4854, 'en', '_UNITS', 'Units'),
(4855, 'es', '_UNITS', 'Unidades'),
(4856, 'de', '_UNIT_PRICE', 'Einheitspreis'),
(4857, 'en', '_UNIT_PRICE', 'Unit Price'),
(4858, 'es', '_UNIT_PRICE', 'Precio unitario'),
(4859, 'de', '_UNKNOWN', 'Unbekannt'),
(4860, 'en', '_UNKNOWN', 'Unknown'),
(4861, 'es', '_UNKNOWN', 'Desconocido'),
(4862, 'de', '_UNLIMITED', 'Unbegrenzt'),
(4863, 'en', '_UNLIMITED', 'Unlimited'),
(4864, 'es', '_UNLIMITED', 'Ilimitado'),
(4865, 'de', '_UNSUBSCRIBE', 'Unsubscribe'),
(4866, 'en', '_UNSUBSCRIBE', 'Unsubscribe'),
(4867, 'es', '_UNSUBSCRIBE', 'Darse de baja'),
(4868, 'de', '_UP', 'Bis'),
(4869, 'en', '_UP', 'Up'),
(4870, 'es', '_UP', 'Arriba'),
(4871, 'de', '_UPDATING_ACCOUNT', 'Aktualisierung von Kontoinformationen'),
(4872, 'en', '_UPDATING_ACCOUNT', 'Updating Account'),
(4873, 'es', '_UPDATING_ACCOUNT', 'Actualizaci??n de la cuenta'),
(4874, 'de', '_UPDATING_ACCOUNT_ERROR', 'Fehler beim Aktualisieren Sie Ihr Konto! Bitte versuchen Sie es sp??ter noch einmal oder senden Sie Informationen zu diesem Fehler zur Verwaltung der Website.'),
(4875, 'en', '_UPDATING_ACCOUNT_ERROR', 'An error occurred while updating your account! Please try again later or send information about this error to administration of the site.'),
(4876, 'es', '_UPDATING_ACCOUNT_ERROR', 'Se produjo un error al actualizar su cuenta! Por favor, int??ntelo de nuevo m??s tarde o enviar informaci??n sobre este error a la administraci??n del sitio.'),
(4877, 'de', '_UPDATING_OPERATION_COMPLETED', 'Aktualisierung ist erfolgreich abgeschlossen!'),
(4878, 'en', '_UPDATING_OPERATION_COMPLETED', 'Updating operation has been successfully completed!'),
(4879, 'es', '_UPDATING_OPERATION_COMPLETED', 'Actualizaci??n de la operaci??n se complet?? con ??xito!'),
(4880, 'de', '_UPLOAD', 'Upload'),
(4881, 'en', '_UPLOAD', 'Upload'),
(4882, 'es', '_UPLOAD', 'Cargar'),
(4883, 'de', '_UPLOAD_AND_PROCCESS', 'Upload-und Prozessmanagement'),
(4884, 'en', '_UPLOAD_AND_PROCCESS', 'Upload and Process'),
(4885, 'es', '_UPLOAD_AND_PROCCESS', 'Subir y Proceso'),
(4886, 'de', '_UPLOAD_FROM_FILE', 'Upload von Datei'),
(4887, 'en', '_UPLOAD_FROM_FILE', 'Upload from File'),
(4888, 'es', '_UPLOAD_FROM_FILE', 'Cargar desde archivo'),
(4889, 'de', '_URL', 'URL'),
(4890, 'en', '_URL', 'URL'),
(4891, 'es', '_URL', 'URL'),
(4892, 'de', '_USED_ON', 'Verwendet auf'),
(4893, 'en', '_USED_ON', 'Used On'),
(4894, 'es', '_USED_ON', 'Se utiliza en'),
(4895, 'de', '_USERNAME', 'Benutzername'),
(4896, 'en', '_USERNAME', 'Username'),
(4897, 'es', '_USERNAME', 'Nombre de usuario'),
(4898, 'de', '_USERNAME_AND_PASSWORD', 'Benutzername und Passwort'),
(4899, 'en', '_USERNAME_AND_PASSWORD', 'Username & Password'),
(4900, 'es', '_USERNAME_AND_PASSWORD', 'Nombre de usuario y contrase??a'),
(4901, 'de', '_USERNAME_EMPTY_ALERT', 'Benutzername darf nicht leer sein! Bitte erneut eingeben.'),
(4902, 'en', '_USERNAME_EMPTY_ALERT', 'Username cannot be empty! Please re-enter.');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(4903, 'es', '_USERNAME_EMPTY_ALERT', 'Nombre de usuario no puede estar vac??a! Por favor, vuelva a entrar.'),
(4904, 'de', '_USERNAME_LENGTH_ALERT', 'Die L??nge der Benutzername darf nicht weniger als 6 Zeichen! Bitte erneut eingeben.'),
(4905, 'en', '_USERNAME_LENGTH_ALERT', 'The length of username cannot be less than 4 characters! Please re-enter.'),
(4906, 'es', '_USERNAME_LENGTH_ALERT', 'La longitud de nombre de usuario no puede ser menos de 4 caracteres! Por favor, vuelva a entrar.'),
(4907, 'de', '_USERS', 'Benutzer'),
(4908, 'en', '_USERS', 'Users'),
(4909, 'es', '_USERS', 'Usuarios'),
(4910, 'de', '_USER_EMAIL_EXISTS_ALERT', 'User mit solchen E-Mail ist bereits vorhanden! Bitte w??hlen Sie einen anderen.'),
(4911, 'en', '_USER_EMAIL_EXISTS_ALERT', 'User with such email already exists! Please choose another.'),
(4912, 'es', '_USER_EMAIL_EXISTS_ALERT', 'Usuario con el correo electr??nico ya existe! Por favor seleccione otro.'),
(4913, 'de', '_USER_EXISTS_ALERT', 'User mit solchen Benutzername existiert bereits! Bitte w??hlen Sie einen anderen.'),
(4914, 'en', '_USER_EXISTS_ALERT', 'User with such username already exists! Please choose another.'),
(4915, 'es', '_USER_EXISTS_ALERT', 'Usuario con nombre de usuario ya existe! Por favor seleccione otro.'),
(4916, 'de', '_USER_NAME', 'Benutzername'),
(4917, 'en', '_USER_NAME', 'User name'),
(4918, 'es', '_USER_NAME', 'Nombre de usuario'),
(4919, 'de', '_USE_THIS_PASSWORD', 'Verwenden Sie dieses Kennwort'),
(4920, 'en', '_USE_THIS_PASSWORD', 'Use this password'),
(4921, 'es', '_USE_THIS_PASSWORD', 'Utilice esta contrase??a'),
(4922, 'de', '_VALUE', 'Wert'),
(4923, 'en', '_VALUE', 'Value'),
(4924, 'es', '_VALUE', 'Valor'),
(4925, 'de', '_VALUE_FOR_PRICE', 'Preis-Leistungs-Preis'),
(4926, 'en', '_VALUE_FOR_PRICE', 'Value for Price'),
(4927, 'es', '_VALUE_FOR_PRICE', 'Relaci??n calidad-precio'),
(4928, 'de', '_VAT', 'MwSt.'),
(4929, 'en', '_VAT', 'VAT'),
(4930, 'es', '_VAT', 'IVA'),
(4931, 'de', '_VAT_PERCENT', 'MwSt. Prozent'),
(4932, 'en', '_VAT_PERCENT', 'VAT Percent'),
(4933, 'es', '_VAT_PERCENT', 'Porcentaje del IVA'),
(4958, 'de', '_VERSION', 'Version'),
(4959, 'en', '_VERSION', 'Version'),
(4960, 'es', '_VERSION', 'Versi??n'),
(4961, 'de', '_VERTICAL', 'Vertikal'),
(4962, 'en', '_VERTICAL', 'Vertical'),
(4963, 'es', '_VERTICAL', 'Verticale'),
(4964, 'de', '_VERY_GOOD', 'Sehr Gut!'),
(4965, 'en', '_VERY_GOOD', 'Very Good!'),
(4966, 'es', '_VERY_GOOD', 'Muy Buena!'),
(4967, 'de', '_VIDEO', 'Video'),
(4968, 'en', '_VIDEO', 'Video'),
(4969, 'es', '_VIDEO', 'Video'),
(4970, 'de', '_VIEWED_TIME', '1 mal angesehen'),
(4971, 'en', '_VIEWED_TIME', 'viewed 1 time'),
(4972, 'es', '_VIEWED_TIME', 'visto 1 vez'),
(4973, 'de', '_VIEWED_TIMES', '{number} mal angesehen'),
(4974, 'en', '_VIEWED_TIMES', 'viewed {number} times'),
(4975, 'es', '_VIEWED_TIMES', 'visto {number} veces'),
(4976, 'de', '_VIEWS', 'Ansichten'),
(4977, 'en', '_VIEWS', 'Views'),
(4978, 'es', '_VIEWS', 'Puntos de vista'),
(4979, 'de', '_VIEW_ALL', 'Alle anzeigen'),
(4980, 'en', '_VIEW_ALL', 'View All'),
(4981, 'es', '_VIEW_ALL', 'Ver todos'),
(4982, 'de', '_VIEW_WORD', 'Blick'),
(4983, 'en', '_VIEW_WORD', 'View'),
(4984, 'es', '_VIEW_WORD', 'Ver'),
(4985, 'de', '_VILLA', 'Villa'),
(4986, 'en', '_VILLA', 'Villa'),
(4987, 'es', '_VILLA', 'Villa'),
(4988, 'de', '_VILLAS', 'Villen'),
(4989, 'en', '_VILLAS', 'Villas'),
(4990, 'es', '_VILLAS', 'Villas'),
(4991, 'de', '_VISITOR', 'Besucher'),
(4992, 'en', '_VISITOR', 'Visitor'),
(4993, 'es', '_VISITOR', 'Visitante'),
(4994, 'de', '_VISITORS_RATING', 'Besucher Bewertung'),
(4995, 'en', '_VISITORS_RATING', 'Visitors Rating'),
(4996, 'es', '_VISITORS_RATING', 'Ustedes evaluaci??n'),
(4997, 'de', '_VISUAL_SETTINGS', 'Visuelle Einstellungen'),
(4998, 'en', '_VISUAL_SETTINGS', 'Visual Settings'),
(4999, 'es', '_VISUAL_SETTINGS', 'Ajustes Visual'),
(5000, 'de', '_VOCABULARY', 'wortschatz'),
(5001, 'en', '_VOCABULARY', 'Vocabulary'),
(5002, 'es', '_VOCABULARY', 'Vocabulario'),
(5003, 'de', '_VOC_KEYS_UPDATED', 'Operation wurde erfolgreich abgeschlossen. Aktualisiert: _KEYS_ Tasten. Klicken Sie <a href=\'index.php?admin=vocabulary&filter_by=A\'>hier</a>, um Website aktualisieren.'),
(5004, 'en', '_VOC_KEYS_UPDATED', 'Operation has been successfully completed. Updated: _KEYS_ keys. Click <a href=\'index.php?admin=vocabulary&filter_by=A\'>here</a> to refresh the site.'),
(5005, 'es', '_VOC_KEYS_UPDATED', 'La operaci??n se complet?? con ??xito. Actualizaci??n: claves _KEYS_. Haga clic en href=\'index.php?admin=vocabulary&filter_by=A\'>aqu??</a> para volver a cargar el sitio.'),
(5006, 'de', '_VOC_KEY_UPDATED', 'Wortschatz Schl??ssel wurde erfolgreich aktualisiert.'),
(5007, 'en', '_VOC_KEY_UPDATED', 'Vocabulary key has been successfully updated.'),
(5008, 'es', '_VOC_KEY_UPDATED', 'Vocabulario clave se ha actualizado correctamente.'),
(5009, 'de', '_VOC_KEY_VALUE_EMPTY', 'Key-Wert darf nicht leer sein! Bitte erneut eingeben.'),
(5010, 'en', '_VOC_KEY_VALUE_EMPTY', 'Key value cannot be empty! Please re-enter.'),
(5011, 'es', '_VOC_KEY_VALUE_EMPTY', 'Valor de la clave no puede estar vac??a! Por favor, vuelva a entrar.'),
(5012, 'de', '_VOC_NOT_FOUND', 'Kein Schl??ssel gefunden'),
(5013, 'en', '_VOC_NOT_FOUND', 'No keys found'),
(5014, 'es', '_VOC_NOT_FOUND', 'No hay teclas que se encuentran'),
(5015, 'de', '_VOC_UPDATED', 'Wortschatz wurde erfolgreich aktualisiert. Klicken Sie <a href=index.php>hier</a>'),
(5016, 'en', '_VOC_UPDATED', 'Vocabulary has been successfully updated. Click <a href=index.php>here</a> to refresh the site.'),
(5017, 'es', '_VOC_UPDATED', 'Vocabulario se ha actualizado correctamente. Haga clic <a href=index.php>aqu??</a> para actualizar el sitio.'),
(5018, 'de', '_VOTE', 'abstimmung'),
(5019, 'en', '_VOTE', 'vote'),
(5020, 'es', '_VOTE', 'votar'),
(5021, 'de', '_VOTES', 'stimmen'),
(5022, 'en', '_VOTES', 'votes'),
(5023, 'es', '_VOTES', 'votos'),
(5024, 'de', '_VOTE_NOT_REGISTERED', 'Ihre Stimme wurde nicht registriert! Sie m??ssen, bevor Sie abstimmen k??nnen protokolliert werden.'),
(5025, 'en', '_VOTE_NOT_REGISTERED', 'Your vote has not been registered! You must be logged in before you can vote.'),
(5026, 'es', '_VOTE_NOT_REGISTERED', 'Su voto no se ha registrado? Debe estar registrado para poder votar.'),
(5027, 'de', '_WE', 'Mi'),
(5028, 'en', '_WE', 'We'),
(5029, 'es', '_WE', 'Mi'),
(5030, 'de', '_WEB_SITE', 'Web-Site'),
(5031, 'en', '_WEB_SITE', 'Web Site'),
(5032, 'es', '_WEB_SITE', 'Sitio Web'),
(5033, 'de', '_WED', 'Mit'),
(5034, 'en', '_WED', 'Wed'),
(5035, 'es', '_WED', 'Mi??'),
(5036, 'de', '_WEDNESDAY', 'Mittwoch'),
(5037, 'en', '_WEDNESDAY', 'Wednesday'),
(5038, 'es', '_WEDNESDAY', 'mi??rcoles'),
(5039, 'de', '_WEEK_START_DAY', 'Woche Starttag'),
(5040, 'en', '_WEEK_START_DAY', 'Week Start Day'),
(5041, 'es', '_WEEK_START_DAY', 'Semana D??a de inicio'),
(5042, 'de', '_WELCOME_AGENCY_TEXT', '<p>Hallo <b>_FIRST_NAME_ _LAST_NAME_</b>!</p>\r\n<p>Willkommen in Agentur Konto Steuerung, die Sie ver??ndern den Status anzeigen k??nnen, verwalten Sie Ihre Account-Einstellungen und Buchungen.</p>\r\n<p>\r\n    _TODAY_ <br />\r\n    _LAST_LOGIN_\r\n</p>\r\n<p><b>&#8226;</b> Um dieses Konto Zusammenfassung nur auf einem klicken <a href=\'index.php?customer=home\'>Armaturenbrett</a> link.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_account\'>Mein Konto bearbeiten</a> Men?? k??nnen Sie Ihre pers??nlichen Daten und Kontodaten zu ??ndern.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_bookings\'>Meine Buchungen</a> enth??lt Informationen ??ber Ihre Bestellungen.</p>\r\n<p><br /></p>'),
(5043, 'en', '_WELCOME_AGENCY_TEXT', '<p>Hello <b>_FIRST_NAME_ _LAST_NAME_</b>!</p>\r\n<p>Welcome to Agency Account Panel, that allows you to view account status, manage your account settings and bookings.</p>\r\n<p>\r\n   _TODAY_<br />\r\n   _LAST_LOGIN_\r\n</p>				\r\n<p> <b>&#8226;</b> To view this account summary just click on a <a href=\'index.php?customer=home\'>Dashboard</a> link.</p>\r\n<p> <b>&#8226;</b> <a href=\'index.php?customer=my_account\'>Edit My Account</a> menu allows you to change your personal info and account data.</p>\r\n<p> <b>&#8226;</b> <a href=\'index.php?customer=my_bookings\'>My Bookings</a> contains information about your orders.</p>\r\n<p><br /></p>'),
(5044, 'es', '_WELCOME_AGENCY_TEXT', '<p>Hola <b>_FIRST_NAME_ _LAST_NAME_</b></p>\r\n<p>Bienvenido a Grupo Cuenta Agencia, de que le permite ver el estado de cuenta de gesti??n de la configuraci??n de su cuenta y reservas.</p>\r\n<p>\r\n   _TODAY_ <br />\r\n   _LAST_LOGIN_\r\n</P>\r\n<p><b>&#8226;</b> Para ver este resumen de la cuenta basta con hacer clic en una <a href=\'index.php?customer=home\'>Salpicadero</a> enlace.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_account\'>Editar Mi Cuenta</a> men?? le permite cambiar su informaci??n personal y datos de la cuenta.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_bookings\'>Mi Reserva</a> contiene informaci??n acerca de sus pedidos.</p>\r\n<p><br /></p>'),
(5045, 'de', '_WELCOME_CUSTOMER_TEXT', '<p>Hallo <b>_FIRST_NAME_ _LAST_NAME_</b>!</p>\r\n<p>Willkommen auf Kundenkonto-Panel, die Sie ver??ndern den Status anzeigen k??nnen, verwalten Sie Ihre Account-Einstellungen und Buchungen.</p>\r\n<p>\r\n    _TODAY_ <br />\r\n    _LAST_LOGIN_\r\n</p>\r\n<p><b>&#8226;</b> Um dieses Konto Zusammenfassung nur auf einem klicken <a href=\'index.php?customer=home\'>Armaturenbrett</a> link.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_account\'>Mein Konto bearbeiten</a> Men?? k??nnen Sie Ihre pers??nlichen Daten und Kontodaten zu ??ndern.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_bookings\'>Meine Buchungen</a> enth??lt Informationen ??ber Ihre Bestellungen.</p>\r\n<p><br /></p>'),
(5046, 'en', '_WELCOME_CUSTOMER_TEXT', '<p>Hello <b>_FIRST_NAME_ _LAST_NAME_</b>!</p>        \r\n<p>Welcome to Customer Account Panel, that allows you to view account status, manage your account settings and bookings.</p>\r\n<p>\r\n   _TODAY_<br />\r\n   _LAST_LOGIN_\r\n</p>				\r\n<p> <b>&#8226;</b> To view this account summary just click on a <a href=\'index.php?customer=home\'>Dashboard</a> link.</p>\r\n<p> <b>&#8226;</b> <a href=\'index.php?customer=my_account\'>Edit My Account</a> menu allows you to change your personal info and account data.</p>\r\n<p> <b>&#8226;</b> <a href=\'index.php?customer=my_bookings\'>My Bookings</a> contains information about your orders.</p>\r\n<p><br /></p>'),
(5047, 'es', '_WELCOME_CUSTOMER_TEXT', '<p>Hola <b>_FIRST_NAME_ _LAST_NAME_</b></p>\r\n<p>Bienvenido a la cuenta del cliente, de que le permite ver el estado de cuenta de gesti??n de la configuraci??n de su cuenta y reservas.</p>\r\n<p>\r\n   _TODAY_ <br />\r\n   _LAST_LOGIN_\r\n</P>\r\n<p><b>&#8226;</b> Para ver este resumen de la cuenta basta con hacer clic en una <a href=\'index.php?customer=home\'>Salpicadero</a> enlace.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_account\'>Editar Mi Cuenta</a> men?? le permite cambiar su informaci??n personal y datos de la cuenta.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?customer=my_bookings\'>Mi Reserva</a> contiene informaci??n acerca de sus pedidos.</p>\r\n<p><br /></p>'),
(5048, 'de', '_WHAT_IS_CVV', 'Was ist CVV'),
(5049, 'en', '_WHAT_IS_CVV', 'What is CVV'),
(5050, 'es', '_WHAT_IS_CVV', '??Qu?? es el CVV'),
(5051, 'de', '_WHOLE_SITE', 'Ganze Web-Site'),
(5052, 'en', '_WHOLE_SITE', 'Whole site'),
(5053, 'es', '_WHOLE_SITE', 'Todo el sitio web'),
(5054, 'de', '_WIDGET_INTEGRATION_MESSAGE', 'Sie k??nnen Hotel-Site Suchmaschine mit einem anderen bestehenden Website integrieren.'),
(5055, 'en', '_WIDGET_INTEGRATION_MESSAGE', 'You may integrate Hotel Site search engine with another existing web site.'),
(5056, 'es', '_WIDGET_INTEGRATION_MESSAGE', 'Puede integrar hotel buscador del sitio con otro sitio web existente.'),
(5060, 'de', '_WIDGET_INTEGRATION_MESSAGE_HINT', '<b>Hinweis</b>: Um alle verf??gbaren Hotels auflisten, lassen hsJsKey Wert leer oder geben hotel IDs durch Komma getrennt.'),
(5061, 'en', '_WIDGET_INTEGRATION_MESSAGE_HINT', '<b>Hint</b>: To list all available hotels, leave hsJsKey value empty or enter hotel IDs separated by commas, for ex.: var hsHotelIDs = \"2,9,12\";'),
(5062, 'es', '_WIDGET_INTEGRATION_MESSAGE_HINT', '<b>Hint</b>: Para una lista de todos los disponibles, deje el valor hsJsKey vac??o o introducir ID de hoteles, separados por comas.'),
(5066, 'de', '_WISHLIST', 'Wunschliste'),
(5067, 'en', '_WISHLIST', 'Wishlist'),
(5068, 'es', '_WISHLIST', 'Lista'),
(5069, 'de', '_WITHOUT_ACCOUNT', 'ohne Konto'),
(5070, 'en', '_WITHOUT_ACCOUNT', 'without account'),
(5071, 'es', '_WITHOUT_ACCOUNT', 'sin tener en cuenta'),
(5072, 'de', '_WONDERFUL', 'Wunderbar!'),
(5073, 'en', '_WONDERFUL', 'Wonderful!'),
(5074, 'es', '_WONDERFUL', '??Maravilloso!'),
(5075, 'de', '_WORK', 'Arbeit'),
(5076, 'en', '_WORK', 'Work'),
(5077, 'es', '_WORK', 'Trabajo'),
(5078, 'de', '_WRONG_BOOKING_NUMBER', 'Die Buchungsnummer die Sie eingegeben haben wurde nicht gefunden! Bitte geben Sie eine g??ltige Buchungsnummer.'),
(5079, 'en', '_WRONG_BOOKING_NUMBER', 'The booking number you\'ve entered was not found! Please enter a valid booking number.'),
(5080, 'es', '_WRONG_BOOKING_NUMBER', 'El n??mero de reserva que has introducido no se encuentra! Por favor, introduzca un n??mero de reserva v??lida.'),
(5081, 'de', '_WRONG_CHECKOUT_DATE_ALERT', 'Falsches Datum ausgew??hlt! Bitte w??hlen Sie eine g??ltige Abreisedatum.'),
(5082, 'en', '_WRONG_CHECKOUT_DATE_ALERT', 'Wrong date selected! Please choose a valid check-out date.'),
(5083, 'es', '_WRONG_CHECKOUT_DATE_ALERT', 'Ha seleccionado la fecha! Por favor, elija una fecha v??lida de salida.'),
(5084, 'de', '_WRONG_CODE_ALERT', 'Leider war der Code'),
(5085, 'en', '_WRONG_CODE_ALERT', 'Sorry, the code you have entered is invalid! Please try again.'),
(5086, 'es', '_WRONG_CODE_ALERT', 'Lo sentimos, el c??digo que ha introducido no es v??lido! Por favor, int??ntelo de nuevo.'),
(5087, 'de', '_WRONG_CONFIRMATION_CODE', 'Falscher Best??tigungscode oder Ihre Anmeldung wurde bereits best??tigt!'),
(5088, 'en', '_WRONG_CONFIRMATION_CODE', 'Wrong confirmation code or your registration is already confirmed!'),
(5089, 'es', '_WRONG_CONFIRMATION_CODE', 'C??digo de confirmaci??n incorrecto o su registro se confirm?? ya!'),
(5090, 'de', '_WRONG_COUPON_CODE', 'Dieser Gutscheincode ist ung??ltig oder abgelaufen ist!'),
(5091, 'en', '_WRONG_COUPON_CODE', 'This coupon code is invalid or has expired!'),
(5092, 'es', '_WRONG_COUPON_CODE', 'Este c??digo de cup??n es v??lido o ha caducado!'),
(5093, 'de', '_WRONG_EMPTY_FIELD', 'Falsche leeres Feld Aufnehmen oder/und Abwurf'),
(5094, 'en', '_WRONG_EMPTY_FIELD', 'Fields picking up or/and dropping off are empty. Please select them.'),
(5095, 'es', '_WRONG_EMPTY_FIELD', 'Campo vac??o incorrecto recoger y/o dejar a'),
(5096, 'de', '_WRONG_EMPTY_FIELDS_PICK_UP_AND_DROP_OFF', 'Falsche leeres Feld Aufnehmen und Abwurf'),
(5097, 'en', '_WRONG_EMPTY_FIELDS_PICK_UP_AND_DROP_OFF', 'Fields picking up and dropping off may not be empty and have to include valid destinations, please re-enter.'),
(5098, 'es', '_WRONG_EMPTY_FIELDS_PICK_UP_AND_DROP_OFF', 'Campo vac??o incorrecto recoger y dejar a'),
(5099, 'de', '_WRONG_EMPTY_FIELD_DROP_OFF', 'Falsche leeres Feld Abwurf'),
(5100, 'en', '_WRONG_EMPTY_FIELD_DROP_OFF', 'Fields dropping off may not be empty and have to include a valid destination, please re-enter.'),
(5101, 'es', '_WRONG_EMPTY_FIELD_DROP_OFF', 'Campo vac??o incorrecto dejar a'),
(5102, 'de', '_WRONG_EMPTY_FIELD_PICK_UP', 'Falsche leeres Feld Abholung'),
(5103, 'en', '_WRONG_EMPTY_FIELD_PICK_UP', 'Fields picking up may not be empty and have to include a valid destination, please re-enter.'),
(5104, 'es', '_WRONG_EMPTY_FIELD_PICK_UP', 'Campo vac??o incorrecto recogiendo'),
(5105, 'de', '_WRONG_FILE_TYPE', 'Datei hochgeladen ist keine g??ltige PHP-Datei Wortschatz! Bitte erneut eingeben.'),
(5106, 'en', '_WRONG_FILE_TYPE', 'Uploaded file is not a valid PHP vocabulary file! Please re-enter.'),
(5107, 'es', '_WRONG_FILE_TYPE', 'El archivo subido no es un archivo v??lido PHP vocabulario! Por favor, vuelva a entrar.'),
(5108, 'de', '_WRONG_LOGIN', 'Falscher Benutzername oder Passwort!'),
(5109, 'en', '_WRONG_LOGIN', 'Wrong username or password!'),
(5110, 'es', '_WRONG_LOGIN', 'Nombre de usuario o contrase??a incorrecta!'),
(5111, 'de', '_WRONG_PARAMETER_PASSED', 'Falscher Parameter ??bergeben - kann nicht die gesamte Bedienung!'),
(5112, 'en', '_WRONG_PARAMETER_PASSED', 'Wrong parameters passed - cannot complete operation!'),
(5113, 'es', '_WRONG_PARAMETER_PASSED', 'Par??metros err??neos pasado - no puede completar la operaci??n!'),
(5114, 'de', '_WYSIWYG_EDITOR', 'WYSIWYG-Editor'),
(5115, 'en', '_WYSIWYG_EDITOR', 'WYSIWYG Editor'),
(5116, 'es', '_WYSIWYG_EDITOR', 'Editor WYSIWYG'),
(5117, 'de', '_X_OUT_OF_Y', '_X_ Aus _Y_'),
(5118, 'en', '_X_OUT_OF_Y', '_X_ out of _Y_'),
(5119, 'es', '_X_OUT_OF_Y', '_X_ De _Y_'),
(5120, 'de', '_YEAR', 'Jahr'),
(5121, 'en', '_YEAR', 'Year'),
(5122, 'es', '_YEAR', 'A??o'),
(5123, 'de', '_YES', 'Ja'),
(5124, 'en', '_YES', 'Yes'),
(5125, 'es', '_YES', 'S??'),
(5126, 'de', '_YOUR_AFFILIATE_LINK', 'Ihre Affiliate-Link'),
(5127, 'en', '_YOUR_AFFILIATE_LINK', 'Affiliate\'s Link'),
(5128, 'es', '_YOUR_AFFILIATE_LINK', 'Su red de afiliados'),
(5129, 'de', '_YOUR_EMAIL', 'Ihre E-Mail'),
(5130, 'en', '_YOUR_EMAIL', 'Your Email'),
(5131, 'es', '_YOUR_EMAIL', 'Su correo electr??nico'),
(5132, 'de', '_YOUR_LAST_BOOKING_WAS', 'Ihre letzte Buchung war'),
(5133, 'en', '_YOUR_LAST_BOOKING_WAS', 'Your last booking was'),
(5134, 'es', '_YOUR_LAST_BOOKING_WAS', 'Su ??ltima reserva era'),
(5135, 'de', '_YOUR_NAME', 'Ihr Name'),
(5136, 'en', '_YOUR_NAME', 'Your Name'),
(5137, 'es', '_YOUR_NAME', 'Su nombre'),
(5138, 'de', '_YOU_ARE_LOGGED_AS', 'Sie sind angemeldet als'),
(5139, 'en', '_YOU_ARE_LOGGED_AS', 'You are logged in as'),
(5140, 'es', '_YOU_ARE_LOGGED_AS', 'Est??s conectado como'),
(5141, 'de', '_YOU_CANNOT_CANCELED', 'Sie k??nnen nicht den Status zu ??ndern - die Zeit f??r die Stornierung der Buchung ist abgelaufen'),
(5142, 'en', '_YOU_CANNOT_CANCELED', 'You cannot change the status - the time has expired for cancellation booking'),
(5143, 'es', '_YOU_CANNOT_CANCELED', 'No se puede cambiar el estado - ha expirado el tiempo de cancelaci??n de reserva'),
(5144, 'de', '_YOU_CAN_REVIEW', 'Sie k??nnen einen Beitrag zu einem oder mehreren Hotels verlassen'),
(5145, 'en', '_YOU_CAN_REVIEW', 'You can leave a review to one or more hotels'),
(5146, 'es', '_YOU_CAN_REVIEW', 'Puedes dejar una opini??n sobre uno o m??s hoteles'),
(5147, 'de', '_YOU_MAY_ALSO_LIKE', 'Sie k??nnen auch m??gen'),
(5148, 'en', '_YOU_MAY_ALSO_LIKE', 'You May Also Like'),
(5149, 'es', '_YOU_MAY_ALSO_LIKE', 'Tambi??n te podr??a gustar'),
(5150, 'de', '_YOU_NOT_DOUBLE_REVIEW', 'Sie k??nnen eine Bewertung f??r ein Hotel nicht doppelt posten'),
(5151, 'en', '_YOU_NOT_DOUBLE_REVIEW', 'You cannot double-post a review for a hotel'),
(5152, 'es', '_YOU_NOT_DOUBLE_REVIEW', 'Puede no doble publicar una rese??a de un hotel'),
(5153, 'de', '_YOU_NOT_REVIEW_THIS_HOTEL', 'Sorry, aber Sie k??nnen nicht eine Bewertung f??r dieses Hotel verlassen, die Sie noch nie dort gewesen'),
(5154, 'en', '_YOU_NOT_REVIEW_THIS_HOTEL', 'Sorry, but you can not leave a review for this hotel, you\'ve never been there'),
(5155, 'es', '_YOU_NOT_REVIEW_THIS_HOTEL', 'Lo sentimos, pero no se puede dejar una rese??a para este hotel, que nunca ha estado all??'),
(5156, 'de', '_ZIPCODE_EMPTY_ALERT', 'PLZ kann nicht leer sein! Bitte erneut eingeben.'),
(5157, 'en', '_ZIPCODE_EMPTY_ALERT', 'Zip/Postal code cannot be empty! Please re-enter.'),
(5158, 'es', '_ZIPCODE_EMPTY_ALERT', 'C??digo postal no puede estar vac??a! Por favor, vuelva a entrar.'),
(5159, 'de', '_ZIP_CODE', 'Postleitzahl'),
(5160, 'en', '_ZIP_CODE', 'Zip/Postal code'),
(5161, 'es', '_ZIP_CODE', 'C??digo Postal'),
(5162, 'de', '_Z_A', 'Z bis A'),
(5163, 'en', '_Z_A', 'Z to A'),
(5164, 'es', '_Z_A', 'De Z a A'),
(5165, 'en', '_SORRY_WE_COULD_NOT_FIND', '<h3>Sorry???we couldn\'t find<br/>_QUERY_</h3>You could try:<br/><ul><li>Searching a different area</li><li>A more general search (hotel, landmark, location)</li><li>Checking your spelling</li>'),
(5166, 'es', '_SORRY_WE_COULD_NOT_FIND', '<h3>Lo sentimos, pero no hemos encontrado<br/>_QUERY_</h3>Usted podr??a intentar:<br/><ul><li>B??squeda en un ??rea diferente</li><li>Una b??squeda m??s general (hotel, lugar de inter??s, ubicaci??n)</li><li>Comprobaci??n de la ortograf??a</li>'),
(5167, 'de', '_SORRY_WE_COULD_NOT_FIND', '<h3>Leider konnten wir nicht finden<br/>_QUERY_</h3>Sie k??nnten versuchen:<br/><ul><li>Suche nach einem anderen Gebiet</li><li>Eine allgemeinere Suche (Hotel, Sehensw??rdigkeit, Standort)</li><li>Rechtschreibpr??fung</li>'),
(5168, 'en', '_MESSAGE_DISCOUNTS_GUESTS', 'The price of the room depends on the total number of guests when ordering.<br/>Price per room when ordering for 3 people _PRICE_3_PEOPLE_<br/>Price per room when ordering for 4 people _PRICE_4_PEOPLE_<br/>Price per room when ordering for 5 or more people _PRICE_5_PEOPLE_'),
(5169, 'es', '_MESSAGE_DISCOUNTS_GUESTS', 'El precio de la habitaci??n depende del n??mero total de hu??spedes al hacer el pedido. <br/> Precio por habitaci??n en el pedido para 3 personas _PRICE_3_PEOPLE_<br/> Precio por habitaci??n en el pedido para 4 personas _PRICE_4_PEOPLE_<br/> Precio por habitaci??n en el pedido de 5 o m??s personas _PRICE_5_PEOPLE_'),
(5170, 'de', '_MESSAGE_DISCOUNTS_GUESTS', 'Der Preis des Zimmers h??ngt von der Gesamtzahl der G??ste bei der Bestellung ab. <br/> Preis pro Zimmer bei der Bestellung f??r 3 Personen _PRICE_3_PEOPLE_<br/> Preis pro Zimmer bei der Bestellung f??r 4 Personen _PRICE_4_PEOPLE_<br/> Preis pro Zimmer bei der Bestellung f??r 5 Oder mehr Menschen _PRICE_5_PEOPLE_'),
(5171, 'en', '_QUICK_RESERVATIONS', 'Quick Reservations'),
(5172, 'es', '_QUICK_RESERVATIONS', 'Reservas r??pidas'),
(5173, 'de', '_QUICK_RESERVATIONS', 'Schnelle Reservierungen'),
(5174, 'en', '_EXISTING_ROOM_TYPES', 'Existent room type'),
(5175, 'es', '_EXISTING_ROOM_TYPES', 'El tipo de habitaci??n existente'),
(5176, 'de', '_EXISTING_ROOM_TYPES', 'Bestehende Zimmertyp'),
(5177, 'en', '_NO_AVAILABLE_ROOMS', 'At this time there are no available rooms of this type'),
(5178, 'es', '_NO_AVAILABLE_ROOMS', 'En este momento no hay habitaciones disponibles de este tipo'),
(5179, 'de', '_NO_AVAILABLE_ROOMS', 'Zur Zeit sind keine Zimmer dieses Typs verf??gbar'),
(5180, 'en', '_THIS_HOTEL_NO_ROOMS', 'There are no rooms defined in this hotel.'),
(5181, 'es', '_THIS_HOTEL_NO_ROOMS', 'En este hotel no tiene habitaciones.'),
(5182, 'de', '_THIS_HOTEL_NO_ROOMS', 'In diesem Hotel keine Zimmer.'),
(5183, 'en', '_PLEASE_SELECT_ROOM', 'Please select a room from the list'),
(5184, 'es', '_PLEASE_SELECT_ROOM', 'Por favor, seleccione hoja de Rohm and Frome Tkhe'),
(5185, 'de', '_PLEASE_SELECT_ROOM', 'Bitte w??hlen Sie Rohm and Frome Tkhe Blatt'),
(5186, 'en', '_PLEASE_SELECT_NUMBER_ROOMS', 'Please select a number of rooms (in the Hotel) from the list'),
(5187, 'es', '_PLEASE_SELECT_NUMBER_ROOMS', 'Por favor, seleccione un n??mero de la ROPME (Eun Tae Se busca) Hoja de Frome Tkhe'),
(5188, 'de', '_PLEASE_SELECT_NUMBER_ROOMS', 'Bitte w??hlen Sie aus der Liste eine Anzahl Zimmer (im Hotel) aus'),
(5189, 'en', '_APPLY_FILTERS', 'Apply The Filters'),
(5190, 'es', '_APPLY_FILTERS', 'Aplicar los filtros'),
(5191, 'de', '_APPLY_FILTERS', '??bernehmen Sie die Filter'),
(5192, 'en', '_YOU_HAVE_RESERVED', 'You have reserved _NUMBER_ROOMS_ _ROOMS_ for a total of _PRICE_'),
(5193, 'es', '_YOU_HAVE_RESERVED', 'Has reservado _NUMBER_ROOMS_  _ROOMS_ por un total de _PRICE_'),
(5194, 'de', '_YOU_HAVE_RESERVED', 'Sie haben _NUMBER_ROOMS_ _ROOMS_ f??r insgesamt _PRICE_ reserviert'),
(5195, 'en', '_MSG_MAXIMUM_PRICE', 'The maximum price in the _FIELD_ field should not exceed _SUM_'),
(5196, 'es', '_MSG_MAXIMUM_PRICE', 'El precio m??ximo en el campo _FIELD_ no debe exceder _SUM_'),
(5197, 'de', '_MSG_MAXIMUM_PRICE', 'Der H??chstpreis im Feld _FIELD_ darf _SUM_ nicht ??berschreiten'),
(5198, 'en', '_RECOMMENDED_IMAGE_SIZE', 'Recommended image size of _SIZE_'),
(5199, 'es', '_RECOMMENDED_IMAGE_SIZE', 'Tama??o de imagen recomendado de _SIZE_'),
(5200, 'de', '_RECOMMENDED_IMAGE_SIZE', 'Empfohlene Bildgr????e von _SIZE_'),
(5201, 'en', '_MY_AGENCIES', 'My Agencies'),
(5202, 'es', '_MY_AGENCIES', 'Mis Agencias'),
(5203, 'de', '_MY_AGENCIES', 'Meine Agenturen'),
(5204, 'en', '_HOTELS_LOCATION', 'Hotels location'),
(5205, 'es', '_HOTELS_LOCATION', 'Hoteles ubicaci??n'),
(5206, 'de', '_HOTELS_LOCATION', '??bernachtung'),
(5207, 'en', '_CENTER_PANEL', 'Center Panel'),
(5208, 'es', '_CENTER_PANEL', 'Panel central'),
(5209, 'de', '_CENTER_PANEL', 'Zentriertafel'),
(5210, 'en', '_DISPLAYS_AVAILABILITY_CALENDAR', 'Displays the availability calendar of the room for each month'),
(5211, 'es', '_DISPLAYS_AVAILABILITY_CALENDAR', 'Muestra el calendario de disponibilidad de la habitaci??n para cada mes'),
(5212, 'de', '_DISPLAYS_AVAILABILITY_CALENDAR', 'Zeigt den Verf??gbarkeitskalender des Raumes f??r jeden Monat an'),
(5213, 'en', '_AVAILABLE_CALENDAR', 'Availability Calendar'),
(5214, 'es', '_AVAILABLE_CALENDAR', 'Calendario de disponibilidad'),
(5215, 'de', '_AVAILABLE_CALENDAR', 'Verf??gbarkeitskalender'),
(5216, 'en', '_MEAL_DESCRIPTION', 'Meals are charged per night of stay and per person'),
(5217, 'es', '_MEAL_DESCRIPTION', 'Las comidas se cobran por noche de estancia y por persona'),
(5218, 'de', '_MEAL_DESCRIPTION', 'Die Mahlzeiten werden pro ??bernachtung und pro Person berechnet'),
(5219, 'en', '_MSG_WIDGET_CENTER_PANEL_HOME', 'Set the parameters to get a list of available rooms'),
(5220, 'es', '_MSG_WIDGET_CENTER_PANEL_HOME', 'Establezca los par??metros para obtener una lista de habitaciones disponibles'),
(5221, 'de', '_MSG_WIDGET_CENTER_PANEL_HOME', 'Stellen Sie die Parameter ein, um eine Liste der verf??gbaren R??ume zu erhalten'),
(5222, 'en', '_FIELD_DAYS_INCORRECT_VALUE', 'The field days has incorrect value: _DAY_. The number of rooms that you want to make available should not exceed the number of closed rooms.'),
(5223, 'es', '_FIELD_DAYS_INCORRECT_VALUE', 'Los d??as de campo tienen un valor incorrecto: _DAY_. El n??mero de habitaciones que desea poner a disposici??n no debe exceder el n??mero de habitaciones cerradas.'),
(5224, 'de', '_FIELD_DAYS_INCORRECT_VALUE', 'Die Feldtage haben einen falschen Wert: _DAY_. Die Anzahl der Zimmer, die Sie zur Verf??gung stellen m??chten, sollte die Anzahl der geschlossenen R??ume nicht ??berschreiten.'),
(5225, 'en', '_CLOSED_ROOMS', 'Closed Rooms'),
(5226, 'es', '_CLOSED_ROOMS', 'Habitaciones cerradas'),
(5227, 'de', '_CLOSED_ROOMS', 'Geschlossene R??ume'),
(5228, 'en', '_NOT_POSSIBLE_BOOKING', 'Not possible to booking {_ROOM_TYPE_} room. You are trying to reserve {_NUM_BOOK_} but there are only {_NUM_AVAL_}'),
(5229, 'es', '_NOT_POSSIBLE_BOOKING', 'No es posible reservar {_ROOM_TYPE_} habitaci??n. Intentas reservar {_NUM_BOOK_} pero solo hay {_NUM_AVAL_}'),
(5230, 'de', '_NOT_POSSIBLE_BOOKING', 'Es ist nicht m??glich, Zimmer {_ROOM_TYPE_} zu buchen. Sie versuchen, {_NUM_BOOK_} zu reservieren, aber es gibt nur {_NUM_AVAL_}'),
(5231, 'en', '_GEOGRAPHICAL_ADDRESS', 'Website Geographical Address'),
(5232, 'es', '_GEOGRAPHICAL_ADDRESS', 'Direcci??n geogr??fica del sitio web'),
(5233, 'de', '_GEOGRAPHICAL_ADDRESS', 'Website Geographische Adresse'),
(5234, 'en', '_PC_MESSAGE_FOOTER', 'additional information: header text, contact email, geographical address etc.'),
(5235, 'es', '_PC_MESSAGE_FOOTER', 'Informaci??n adicional: texto del encabezado, correo electr??nico de contacto, direcci??n geogr??fica, etc.'),
(5236, 'de', '_PC_MESSAGE_FOOTER', 'Zus??tzliche Informationen: Kopfzeile, Kontakt-E-Mail, geografische Anschrift etc.'),
(5237, 'en', '_RESERVED_ROOMS', 'Reserved Rooms'),
(5238, 'es', '_RESERVED_ROOMS', 'Habitaciones Reservadas'),
(5239, 'de', '_RESERVED_ROOMS', 'Reservierte Zimmer'),
(5240, 'en', '_REGIONAL_MANAGER_COMMENT_ADD', 'Add a comment'),
(5241, 'es', '_REGIONAL_MANAGER_COMMENT_ADD', 'A??adir un comentario'),
(5242, 'de', '_REGIONAL_MANAGER_COMMENT_ADD', 'Einen Kommentar hinzuf??gen'),
(5243, 'en', '_REGIONAL_MANAGER_COMMENT_EDIT', 'Edit a comment'),
(5244, 'es', '_REGIONAL_MANAGER_COMMENT_EDIT', 'Editar un comentario'),
(5245, 'de', '_REGIONAL_MANAGER_COMMENT_EDIT', 'Bearbeiten Sie einen Kommentar'),
(5246, 'en', '_APPLICATION_MODULES', 'Application Modules'),
(5247, 'es', '_APPLICATION_MODULES', 'M??dulos de Aplicaci??n'),
(5248, 'de', '_APPLICATION_MODULES', 'Anwendungsmodule'),
(5249, 'en', '_MODULE_ALREADY_INSTALLED', 'This module is already installed!'),
(5250, 'es', '_MODULE_ALREADY_INSTALLED', '??Este m??dulo ya est?? instalado!'),
(5251, 'de', '_MODULE_ALREADY_INSTALLED', 'Dieses Modul ist bereits installiert!'),
(5252, 'en', '_MODULE_NOT_FOUND', 'This module is not found!'),
(5253, 'es', '_MODULE_NOT_FOUND', 'Este m??dulo no se encuentra'),
(5254, 'de', '_MODULE_NOT_FOUND', 'Dieses Modul wurde nicht gefunden!'),
(5255, 'en', '_CANCELLATION_POLICY_FOR_ROOM', 'Cancellation policy for the room'),
(5256, 'es', '_CANCELLATION_POLICY_FOR_ROOM', 'Pol??tica de cancelaci??n de la habitaci??n'),
(5257, 'de', '_CANCELLATION_POLICY_FOR_ROOM', 'Stornierungsbedingungen f??r das Zimmer'),
(5258, 'en', '_MODULE_TYPE', 'Module Type'),
(5259, 'es', '_MODULE_TYPE', 'Module Type'),
(5260, 'de', '_MODULE_TYPE', 'Module Type'),
(5261, 'en', '_APPLICATION', 'Application'),
(5262, 'es', '_APPLICATION', 'Solicitud'),
(5263, 'de', '_APPLICATION', 'Anwendung'),
(5264, 'en', '_ADDITIONAL', 'Additional'),
(5265, 'es', '_ADDITIONAL', 'Adicional'),
(5266, 'de', '_ADDITIONAL', 'Zus??tzlich'),
(5267, 'en', '_PRICE_DETAILS', 'Price Details'),
(5268, 'es', '_PRICE_DETAILS', 'Detalles del precio'),
(5269, 'de', '_PRICE_DETAILS', 'Preisdetails'),
(5270, 'en', '_TO_MAKE_YOUR_RESERVATION', 'To make your reservation, please enter the desired dates and number of guests on the left then press the \"Check availability\" button.'),
(5271, 'es', '_TO_MAKE_YOUR_RESERVATION', 'Para hacer su reserva, introduzca las fechas y el n??mero de invitados a la izquierda y pulse el bot??n \"Verificar disponibilidad\".'),
(5272, 'de', '_TO_MAKE_YOUR_RESERVATION', 'Um Ihre Reservierung vorzunehmen, geben Sie bitte das gew??nschte Datum und die Anzahl der G??ste auf der linken Seite ein und klicken Sie dann auf die Schaltfl??che \"Verf??gbarkeit pr??fen\".'),
(5273, 'en', '_SELECT_DATES_REQUIRED', 'Select dates and accomodations required'),
(5274, 'es', '_SELECT_DATES_REQUIRED', 'Seleccione fechas y alojamiento'),
(5275, 'de', '_SELECT_DATES_REQUIRED', 'W??hlen Sie die gew??nschten Daten und Unterk??nfte aus'),
(5276, 'en', '_WHY_SHOULD_I_BOOK', 'Why should I book online?'),
(5277, 'es', '_WHY_SHOULD_I_BOOK', '??Por qu?? reservar en l??nea?'),
(5278, 'de', '_WHY_SHOULD_I_BOOK', 'Warum sollte ich online buchen?'),
(5279, 'en', '_BEST_RATE_GUARANTEED', 'Best rate Guaranteed'),
(5280, 'es', '_BEST_RATE_GUARANTEED', 'Mejor Tarifa Garantizada'),
(5281, 'de', '_BEST_RATE_GUARANTEED', 'Best Rate Garantiert'),
(5282, 'en', '_BOOK_NOW_PAY_LATER', 'Book now, pay later'),
(5283, 'es', '_BOOK_NOW_PAY_LATER', 'Reserva ahora y paga despu??s'),
(5284, 'de', '_BOOK_NOW_PAY_LATER', 'Buchen Sie jetzt, zahlen Sie sp??ter'),
(5285, 'en', '_DIRECT_RESERVATION', 'Direct reservation with hotel, No booking fees'),
(5286, 'es', '_DIRECT_RESERVATION', 'Reserva directa con hotel, Sin gastos de reserva'),
(5287, 'de', '_DIRECT_RESERVATION', 'Direkte Reservierung mit dem Hotel, Keine Buchungsgeb??hren'),
(5288, 'en', '_FREE_CANCELLATION', 'Free cancellation within terms'),
(5289, 'es', '_FREE_CANCELLATION', 'Cancelaci??n gratuita dentro de los plazos'),
(5290, 'de', '_FREE_CANCELLATION', 'Kostenlose Stornierung innerhalb von Begriffen'),
(5291, 'en', '_RECREATE', 'Recreate'),
(5292, 'es', '_RECREATE', 'Rekreate'),
(5293, 'de', '_RECREATE', 'Rekreate'),
(5294, 'en', '_MESSAGE_FOR_RECREATE', 'Are you sure want to recreate API key?'),
(5295, 'es', '_MESSAGE_FOR_RECREATE', '??Seguro que quieres volver a crear la clave de la API?'),
(5296, 'de', '_MESSAGE_FOR_RECREATE', 'M??chten Sie API-Schl??ssel wirklich neu erstellen?'),
(5297, 'en', '_HOTEL_WITH_BEST_PRICE', 'Hotel with the best price'),
(5298, 'es', '_HOTEL_WITH_BEST_PRICE', 'Hotel con el mejor precio'),
(5299, 'de', '_HOTEL_WITH_BEST_PRICE', 'Hotel mit dem besten Preis'),
(5300, 'de', '_DISCOUNT_FOR_FIVE_OR_MORE_ROOMS', 'Rabatt f??r 5. + Zimmer'),
(5301, 'en', '_DISCOUNT_FOR_FIVE_OR_MORE_ROOMS', 'Discount for 5th+ rooms'),
(5302, 'es', '_DISCOUNT_FOR_FIVE_OR_MORE_ROOMS', 'Descuento para 5?? y m??s habitaciones'),
(5303, 'de', '_DISCOUNT_FOR_FOUR_ROOMS', 'Rabatt f??r 4. Zimmer'),
(5304, 'en', '_DISCOUNT_FOR_FOUR_ROOMS', 'Discount for 4th rooms'),
(5305, 'es', '_DISCOUNT_FOR_FOUR_ROOMS', 'Descuento 4?? cuartos'),
(5306, 'de', '_DISCOUNT_FOR_THREE_ROOMS', 'Rabatt f??r 3. Zimmer'),
(5307, 'en', '_DISCOUNT_FOR_THREE_ROOMS', 'Discount for 3rd rooms'),
(5308, 'es', '_DISCOUNT_FOR_THREE_ROOMS', 'Descuento 3?? cuartos'),
(5309, 'de', '_ROOMS_3', '3. Zimmer'),
(5310, 'en', '_ROOMS_3', '3rd rooms'),
(5311, 'es', '_ROOMS_3', '3?? cuartos'),
(5312, 'de', '_ROOMS_4', '4. Zimmer'),
(5313, 'en', '_ROOMS_4', '4th rooms'),
(5314, 'es', '_ROOMS_4', '4?? cuartos'),
(5315, 'de', '_ROOMS_5', '5. Zimmer'),
(5316, 'en', '_ROOMS_5', '5th rooms'),
(5317, 'es', '_ROOMS_5', '5?? cuartos'),
(5318, 'de', '_ROOMS_DISCOUNT', 'Zimmer Rabatt'),
(5319, 'en', '_ROOMS_DISCOUNT', 'Room Discount'),
(5320, 'es', '_ROOMS_DISCOUNT', 'Descuento Habitaciones'),
(5321, 'en', '_MESSAGE_DISCOUNTS_ROOMS', 'The price of the room depends on the total number of rooms when ordering.<br/>Price per room when ordering for 3 rooms _PRICE_3_PEOPLE_<br/>Price per room when ordering for 4 rooms _PRICE_4_PEOPLE_<br/>Price per room when ordering for 5 or more rooms _PRICE_5_PEOPLE_'),
(5322, 'es', '_MESSAGE_DISCOUNTS_ROOMS', 'El precio de la habitaci??n depende del n??mero total de habitaciones al momento de realizar el pedido. <br/> Precio por habitaci??n en pedido de 3 habitaciones _PRICE_3_PEOPLE_ <br/> Precio por habitaci??n en pedido de 4 habitaciones _PRICE_4_PEOPLE_ <br/> Precio por habitaci??n en pedido Para 5 o m??s habitaciones _PRICE_5_PEOPLE_'),
(5323, 'de', '_MESSAGE_DISCOUNTS_ROOMS', 'Der Preis des Zimmers h??ngt von der Gesamtzahl der Zimmer bei der Bestellung ab. <br/> Preis pro Zimmer bei der Bestellung f??r 3 Zimmer _PRICE_3_PEOPLE_ <br/> Preis pro Zimmer bei der Bestellung f??r 4 Zimmer _PRICE_4_PEOPLE_ <br/> Preis pro Zimmer bei der Bestellung F??r 5 oder mehr zimmer _PRICE_5_PEOPLE_'),
(5324, 'en', '_BEST_PRICE', 'the best price'),
(5325, 'es', '_BEST_PRICE', 'el mejor precio'),
(5326, 'de', '_BEST_PRICE', 'der beste Preis'),
(5327, 'en', '_NO_ROOMS_FOUND_AUTOMATIC_RE_SEARCH_ROOM', 'Sorry, there are no rooms match your search criteria. But we\'ve found hotels where you can stay in several rooms'),
(5328, 'es', '_NO_ROOMS_FOUND_AUTOMATIC_RE_SEARCH_ROOM', 'Lo sentimos, no hay habitaciones que correspondan a sus criterios de b??squeda. Pero hemos encontrado hoteles donde se puede alojar en varias habitaciones'),
(5329, 'de', '_NO_ROOMS_FOUND_AUTOMATIC_RE_SEARCH_ROOM', 'Es tut uns leid, es gibt keine Zimmer zu Ihren Suchkriterien. Aber wir haben Hotels gefunden, wo man in mehreren Zimmern ??bernachten kann'),
(5330, 'en', '_MSN_CUSTOMER_BOOKING_IN_PAST', 'Booking in the Past for customer'),
(5331, 'es', '_MSN_CUSTOMER_BOOKING_IN_PAST', 'Reserva en el pasado para el cliente'),
(5332, 'de', '_MSN_CUSTOMER_BOOKING_IN_PAST', 'Buchung in der Vergangenheit f??r Kunden'),
(5333, 'en', '_MS_CUSTOMER_BOOKING_IN_PAST', 'Specifies whether to allow booking in the past for customers and guests (one day ago)'),
(5334, 'es', '_MS_CUSTOMER_BOOKING_IN_PAST', 'Especifica si se permite reservar en el pasado para clientes e invitados (hace un d??a)'),
(5335, 'de', '_MS_CUSTOMER_BOOKING_IN_PAST', 'Gibt an, ob die Buchung in der Vergangenheit f??r Kunden und G??ste (vor einem Tag)'),
(5336, 'en', '_MESSAGE_DISCOUNTS_NIGHT', 'The price of the room depends on the total of night reserved.<br/>Price per room when ordering for 3 nights is _PRICE_3_NIGHT_<br/>Price per room when ordering for 4 nights is _PRICE_4_NIGHT_<br/>Price per room when ordering for 5 or more nights is _PRICE_5_NIGHT_'),
(5337, 'es', '_MESSAGE_DISCOUNTS_NIGHT', 'El precio de la habitaci??n depende del total de la noche reservada. <br/> Precio por habitaci??n cuando se solicite 3 noches es _PRICE_3_NIGHT_ <br/> Precio por habitaci??n al hacer el pedido por 4 noches es _PRICE_4_NIGHT_<br/>Precio por habitaci??n al realizar el pedido Para 5 o m??s noches es _PRICE_5_NIGHT_'),
(5338, 'de', '_MESSAGE_DISCOUNTS_NIGHT', 'Der Preis des Zimmers h??ngt von der Gesamtnote ab.<br/>Preis pro Zimmer bei Bestellung f??r 3 N??chte _PRICE_3_NIGHT_<br/>Preis pro Zimmer bei Bestellung f??r 4 N??chte _PRICE_4_NIGHT_<br/>Preis pro Zimmer bei Bestellung F??r 5 oder mehr N??chte ist _PRICE_5_NIGHT_'),
(5339, 'en', '_FIELD_INCORRECT_VALUE', 'The field _FIELD_ has incorrect value! Please re-enter.'),
(5340, 'es', '_FIELD_INCORRECT_VALUE', 'El campo _FIELD_ tiene valor incorrecto! Vuelve a ingresar.'),
(5341, 'de', '_FIELD_INCORRECT_VALUE', 'Das Feld _FIELD_ hat falschen Wert! Bitte erneut eingeben.'),
(5342, 'en', '_THERE_NO_AVAILABLE_ROOMS', 'There are no available rooms from _DATE_FROM_ to _DATE_TO_. Try changing the reservation date or room type'),
(5343, 'es', '_THERE_NO_AVAILABLE_ROOMS', 'No hay habitaciones disponibles de _DATE_FROM_ a _DATE_TO_. Intente cambiar la fecha de la reserva o el tipo de habitaci??n'),
(5344, 'de', '_THERE_NO_AVAILABLE_ROOMS', 'Es stehen keine verf??gbaren Zimmer von _DATE_FROM_ bis _DATE_TO_ zur Verf??gung. Versuchen Sie, das Reservierungsdatum oder die Zimmertypen zu ??ndern'),
(5345, 'en', '_MIN_BEDS', 'Min. Beds'),
(5346, 'es', '_MIN_BEDS', 'Min. Beds'),
(5347, 'de', '_MIN_BEDS', 'Min. Beds'),
(5348, 'en', '_COUPON_DISCOUNT', 'Coupon Discount'),
(5349, 'es', '_COUPON_DISCOUNT', 'Descuento de cupones'),
(5350, 'de', '_COUPON_DISCOUNT', 'Gutscheinrabatt'),
(5351, 'en', '_FLATS_ADMIN_WELCOME_TEXT', '<p>Welcome to Administrator Control Panel that allows you to add, edit or delete site content. With this Administrator Control Panel you can easy manage customers, reservations and perform a full hotel site management.</p><p><b>&#8226;</b> There are some modules for you: Backup & Restore, News. Installation or un-installation of them is possible from <a href=\'index.php?admin=modules\'>Modules Menu</a>.</p><p><b>&#8226;</b> In <a href=\'index.php?admin=languages\'>Languages Menu</a> you may add/remove language or change language settings and edit your vocabulary (the words and phrases, used by the system).</p><p><b>&#8226;</b> <a href=\'index.php?admin=settings\'>Settings Menu</a> allows you to define important settings for the site.</p><p><b>&#8226;</b> In <a href=\'index.php?admin=my_account\'>My Account</a> there is a possibility to change your info.</p><p><b>&#8226;</b> <a href=\'index.php?admin=menus\'>Menus</a> and <a href=\'index.php?admin=pages\'>Pages Management</a> are designed for creating and managing menus, links and pages.</p><p><b>&#8226;</b> To create and edit room types, seasons, prices, bookings and other flats info, use <a href=\'index.php?admin=hotels_info\'>Flats Management</a> and <a href=\'index.php?admin=mod_booking_bookings\'>Bookings</a> menus.</p>'),
(5352, 'es', '_FLATS_ADMIN_WELCOME_TEXT', '<p>Bienvenido al Administrador del panel de control que le permite agregar, editar o eliminar contenido del sitio. Con este Panel de Control del Administrador usted puede f??cilmente administrar clientes, reservas y realizar una gesti??n hotelera de todo el sitio.</p>\r\n<p><b>&#8226;</b> Hay algunos m??dulos para usted: Copia de seguridad y restauraci??n, Noticias. La instalaci??n o desinstalaci??n de ellos es posible de <a href=\'index.php?admin=modules\'>m??dulos Men??</a>.</p>\r\n<p><b>&#8226;</b> En <a href=\'index.php?admin=languages\'>Idiomas del men??</a> que puede agregar o quitar idioma o cambiar la configuraci??n de idioma y modificar su vocabulario (las palabras y frases, utilizadas por el sistema).</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?admin=settings\'>men?? de configuraci??n</a> le permite definir opciones importantes para el sitio.</p>\r\n<p><b>&#8226;</b> En <a href=\'index.php?admin=my_account\'>Mi Cuenta</a> hay una posibilidad de cambiar su informaci??n.</p>\r\n<p><b>&#8226;</b> <a href=\'index.php?admin=menus\'>men??s</a> y <a href=\'index.php?admin=pages\'>P??ginas de Gesti??n</a> est??n dise??ados para crear y gestionar los men??s, enlaces y p??ginas. </p>\r\n<p><b>&#8226;</b> Para crear y editar tipos de habitaci??n, temporadas, precios, reservas y otros datos del pisos, el uso <a href=\'index.php?admin=hotels_info\'>Pisos Management</a> y <a href=\'index.php?admin=mod_booking_bookings\'>reservas</a> men??s.</p>'),
(5353, 'de', '_FLATS_ADMIN_WELCOME_TEXT', '<p>Willkommen Administrator Control Panel, mit dem Sie hinzuf??gen, bearbeiten oder l??schen Website-Content. Mit dieser Administrator Control Panel k??nnen Sie einfach verwalten Kunden, Reservierungen und eine vollst??ndige Hotel Bauleitung.</p><p><b>???</b> Es gibt einige Module f??r Sie: Backup & Restore, News. Installation oder Deinstallation von ihnen ist m??glich aus <a href=\'index.php?admin=modules\'>Module Menu</a>.</p><p><b>???</b> Im <a href=\'index.php?admin=languages\'>Men?? Sprachen</a> Sie k??nnen hinzuf??gen / entfernen oder ??ndern Sprache Sprache ??ndern und bearbeiten Sie Ihren Wortschatz (die W??rter und S??tze, die vom System verwendet).</p><p><b>???</b> <a href=\'index.php?admin=settings\'>Das Men?? Einstellungen</a> k??nnen Sie wichtige Einstellungen f??r die Site zu definieren.</p><p><b>???</b> Im <a href=\'index.php?admin=my_account\'>Ihr Konto</a> gibt es eine M??glichkeit, um Ihre Daten ??ndern.</p><p><b>???</b> <a href=\'index.php?admin=menus\'>Men??s</a> und <a href=\'index.php?admin=pages\'>Seiten-Management</a> sind zur Erstellung und Verwaltung Men??s, Links und Seiten gestaltet.</p><p><b>???</b> So erstellen und bearbeiten Zimmertypen, Verf??gbarkeiten, Preise, Buchungen und weitere Info zum Wohnungen, verwenden <a href=\'index.php?admin=hotels_info\'>Wohnungen Management</a> und <a href=\'index.php?admin=mod_booking_bookings\'>Buchungen</a> Men??s.</p>'),
(5354, 'en', '_FLATS_AGENT_COMMISION', 'Flats Owner/Agent Commision'),
(5355, 'es', '_FLATS_AGENT_COMMISION', 'Pisos Propietario/Agente Commision'),
(5356, 'de', '_FLATS_AGENT_COMMISION', 'Wohnungen Management/Agent Provision'),
(5357, 'en', '_FLATS_ALERT_SAME_HOTEL_ROOMS', 'You can add only one flats to this basket!'),
(5358, 'es', '_FLATS_ALERT_SAME_HOTEL_ROOMS', '??S??lo puedes a??adir un piso a esta canasta!'),
(5359, 'de', '_FLATS_ALERT_SAME_HOTEL_ROOMS', 'Sie k??nnen nur eine Wohnung zu diesem Korb hinzuf??gen!'),
(5360, 'en', '_COUPON_FOR_SINGLE_FLAT_ALERT', 'This discount coupon can be applied only for single flat!'),
(5361, 'es', '_COUPON_FOR_SINGLE_FLAT_ALERT', 'Este cup??n de descuento se puede aplicar s??lo para un solo piso!'),
(5362, 'de', '_COUPON_FOR_SINGLE_FLAT_ALERT', 'Dieser Rabattgutschein kann nur f??r einzelne Wohnung angewendet werden!'),
(5363, 'en', '_FLATS_DIRECT_RESERVATION', 'Direct reservation with flats, No booking fees'),
(5364, 'es', '_FLATS_DIRECT_RESERVATION', 'Reserva directa con hotel, Sin gastos de reserva'),
(5365, 'de', '_FLATS_DIRECT_RESERVATION', 'Direkte Reservierung mit dem Hotel, Keine Buchungsgeb??hren'),
(5366, 'en', '_FLATS_DISCOUNT_CAMPAIGN_TEXT', '<span class=campaign_header>Super discount campaign!</span><br /><br />\r\nEnjoy special price cuts right now<br />_FROM_ _TO_:<br /> \r\n<b>_PERCENT_</b> on booking our apartment!'),
(5367, 'es', '_FLATS_DISCOUNT_CAMPAIGN_TEXT', '<span class=campaign_header>Super campa??a de descuento!</span><br /><br />\r\nDisfrute de los recortes de precios especiales en este momento <br />_FROM_ _TO_:<br /><b>_PERCENT_</b> en la reserva de nuestro apartamento!'),
(5368, 'de', '_FLATS_DISCOUNT_CAMPAIGN_TEXT', '<span class=campaign_header>Super Rabattaktion!</span> <br /><br />Genie??en Sie besondere Preissenkungen jetzt <br />_FROM_ _TO_: <br /> <b>_PERCENT_</b> Bei der Buchung unserer Wohnung!'),
(5369, 'en', '_DISTANCE_OF_FLAT_FROM_CENTER_POINT', 'Distance of the flat to the {name_center_point} is {distance_center_point}'),
(5370, 'es', '_DISTANCE_OF_FLAT_FROM_CENTER_POINT', 'La distancia del plano al {name_center_point} es {distance_center_point}'),
(5371, 'de', '_DISTANCE_OF_FLAT_FROM_CENTER_POINT', 'Die Entfernung des Hotels vom {name_center_point} ist {distance_center_point}'),
(5372, 'en', '_EX_FLAT_OR_LOCATION', 'e.g. flat, landmark or location'),
(5373, 'es', '_EX_FLAT_OR_LOCATION', 'p.ej. Apartamento, punto de referencia o ubicaci??n'),
(5374, 'de', '_EX_FLAT_OR_LOCATION', 'z.B. Flach, landmark oder standort'),
(5375, 'en', '_FOUND_FLATS', 'Found Flats'),
(5376, 'es', '_FOUND_FLATS', 'Pisos encontrados'),
(5377, 'de', '_FOUND_FLATS', 'Gefundene Wohnungen'),
(5378, 'en', '_FLAT', 'Flat'),
(5379, 'es', '_FLAT', 'Plano'),
(5380, 'de', '_FLAT', 'Wohnung'),
(5381, 'en', '_FLATS_HOTELOWNER_WELCOME_TEXT', 'Welcome to Flats Owner Control Panel! With this Control Panel you can easily manage your flats, customers, reservations and perform a full hotel site management.'),
(5382, 'es', '_FLATS_HOTELOWNER_WELCOME_TEXT', 'Bienvenido al panel de control de Flats! Con este panel de control puede gestionar f??cilmente sus pisos, clientes, reservas y realizar una gesti??n completa del sitio del hotel.'),
(5383, 'de', '_FLATS_HOTELOWNER_WELCOME_TEXT', 'Willkommen bei Flats Owner Control Panel! Mit diesem Control Panel k??nnen Sie ganz einfach verwalten Sie Ihre Wohnungen, Kunden, Reservierungen und f??hren eine komplette Hotel-Site-Management.'),
(5384, 'en', '_FLATS', 'Flats'),
(5385, 'es', '_FLATS', 'Pisos'),
(5386, 'de', '_FLATS', 'Wohnungen'),
(5387, 'en', '_FLATS_INFO', 'Flats Info'),
(5388, 'es', '_FLATS_INFO', 'Pisos Info'),
(5389, 'de', '_FLATS_INFO', 'Flats Info'),
(5390, 'en', '_FLATS_MANAGEMENT', 'Flats Management'),
(5391, 'es', '_FLATS_MANAGEMENT', 'Gesti??n de pisos'),
(5392, 'de', '_FLATS_MANAGEMENT', 'Flats Management'),
(5393, 'en', '_FLAT_DELETE_ALERT', 'Are you sure you want to delete this flat? Remember: after completing this action all related data to this flat could not be restored!'),
(5394, 'es', '_FLAT_DELETE_ALERT', '??Seguro que quieres eliminar este apartamento? Recuerde: despu??s de completar esta acci??n, todos los datos relacionados a este piso no pudieron ser restaurados.'),
(5395, 'de', '_FLAT_DELETE_ALERT', 'Bist du sicher, dass du diese Wohnung l??schen m??chtest? Denken Sie daran: Nach Abschluss dieser Aktion konnten alle verwandten Daten zu dieser Wohnung nicht wiederhergestellt werden!'),
(5396, 'en', '_FLAT_DESCRIPTION', 'Flat Description'),
(5397, 'es', '_FLAT_DESCRIPTION', 'Piso Descripci??n'),
(5398, 'de', '_FLAT_DESCRIPTION', 'Flache Beschreibung'),
(5399, 'en', '_FLAT_FACILITIES', 'Flats Facilities'),
(5400, 'es', '_FLAT_FACILITIES', 'Instalaciones de Pisos'),
(5401, 'de', '_FLAT_FACILITIES', 'Wohnungen Einrichtungen'),
(5402, 'en', '_FLAT_INFO', 'Flats Info'),
(5403, 'es', '_FLAT_INFO', 'Pisos Info'),
(5404, 'de', '_FLAT_INFO', 'Flats Info'),
(5405, 'en', '_FLAT_MANAGEMENT', 'Flats Management'),
(5406, 'es', '_FLAT_MANAGEMENT', 'Gesti??n de pisos'),
(5407, 'de', '_FLAT_MANAGEMENT', 'Flats Management'),
(5408, 'en', '_FLAT_OWNER', 'Flat Owner'),
(5409, 'es', '_FLAT_OWNER', 'Propietario plano'),
(5410, 'de', '_FLAT_OWNER', 'Wohnung Inhaber'),
(5411, 'en', '_FLAT_OWNERS', 'Flat Owners'),
(5412, 'es', '_FLAT_OWNERS', 'Propietarios de Flat'),
(5413, 'de', '_FLAT_OWNERS', 'Wohnungseigent??mer'),
(5414, 'en', '_FLAT_PAYMENT_GATEWAYS', 'Flats Payment Gateways'),
(5415, 'es', '_FLAT_PAYMENT_GATEWAYS', 'Pago Pago Gateways'),
(5416, 'de', '_FLAT_PAYMENT_GATEWAYS', 'Flats Payment Gateways'),
(5417, 'en', '_FLAT_RESERVATION_ID', 'Flat Reservation ID'),
(5418, 'es', '_FLAT_RESERVATION_ID', 'ID de reserva plana'),
(5419, 'de', '_FLAT_RESERVATION_ID', 'Flat Reservierungs-ID'),
(5420, 'en', '_LAST_FLAT_ALERT', 'You cannot delete last active flats record!'),
(5421, 'es', '_LAST_FLAT_ALERT', '??No puede borrar el ??ltimo registro activo de pisos!'),
(5422, 'de', '_LAST_FLAT_ALERT', 'Du kannst den letzten aktiven Bonus nicht l??schen!'),
(5423, 'en', '_LAST_FLAT_PROPERTY_ALERT', 'This property type cannot be deleted, because it is participating in one property at least.'),
(5424, 'es', '_LAST_FLAT_PROPERTY_ALERT', 'Este tipo de propiedad no puede ser eliminado, ya que est?? participando en un establecimiento al menos.'),
(5425, 'de', '_LAST_FLAT_PROPERTY_ALERT', 'Diese Eigenschaft Typ kann nicht gel??scht werden, weil sie in einer Eigenschaft zumindest beteiligt.'),
(5426, 'en', '_TARGET_FLAT', 'Target Flat'),
(5427, 'es', '_TARGET_FLAT', 'Target Flat'),
(5428, 'de', '_TARGET_FLAT', 'Zielflache'),
(5429, 'en', '_YOU_NOT_REVIEW_THIS_FLAT', 'Sorry, but you can\'t leave a review for this flat, you\'ve never been there'),
(5430, 'es', '_YOU_NOT_REVIEW_THIS_FLAT', 'Lo sentimos, pero no puedes dejar un comentario para este piso, nunca has estado all??'),
(5431, 'de', '_YOU_NOT_REVIEW_THIS_FLAT', 'Tut mir leid, aber du kannst keine Bewertung f??r diese Wohnung hinterlassen, du warst noch nie dort'),
(5432, 'en', '_SELECT_FLAT', 'Select Flat'),
(5433, 'es', '_SELECT_FLAT', 'Seleccione plano'),
(5434, 'de', '_SELECT_FLAT', 'Wohnung ausw??hlen'),
(5435, 'en', '_SELECT_DESTINATION_OR_FLAT', 'Destination / Flat Name'),
(5436, 'es', '_SELECT_DESTINATION_OR_FLAT', 'Nombre del destino / plano'),
(5437, 'de', '_SELECT_DESTINATION_OR_FLAT', 'Ziel / flacher Name'),
(5438, 'en', '_FLAT_WITH_BEST_PRICE', 'Flat with the best price'),
(5439, 'es', '_FLAT_WITH_BEST_PRICE', 'Apartamento con el mejor precio'),
(5440, 'de', '_FLAT_WITH_BEST_PRICE', 'Wohnung mit dem besten Preis'),
(5441, 'en', '_LAST_BOOKING_FLAT_WAS', 'Last booking for this flat was {type_booking}'),
(5442, 'es', '_LAST_BOOKING_FLAT_WAS', 'La ??ltima reserva para este piso fue {type_booking}'),
(5443, 'de', '_LAST_BOOKING_FLAT_WAS', 'Letzte Buchung f??r diese Wohnung war {type_booking}'),
(5444, 'en', '_THIS_FLAT', 'this flat'),
(5445, 'es', '_THIS_FLAT', 'este piso'),
(5446, 'de', '_THIS_FLAT', 'diese Wohnung'),
(5447, 'en', '_OUR_FLATS', 'our flats'),
(5448, 'es', '_OUR_FLATS', 'nuestros pisos'),
(5449, 'de', '_OUR_FLATS', 'unsere Wohnungen'),
(5450, 'en', '_DEFAULT_FLAT_DELETE_ALERT', 'You cannot delete default flat!'),
(5451, 'es', '_DEFAULT_FLAT_DELETE_ALERT', 'No puedes eliminar el plano predeterminado!'),
(5452, 'de', '_DEFAULT_FLAT_DELETE_ALERT', 'Sie k??nnen nicht standardm????ig flach l??schen!'),
(5453, 'en', '_OWNER_NOT_ASSIGNED_TO_FLAT', 'Wrong flat ID or you have no access permissions to view it.'),
(5454, 'es', '_OWNER_NOT_ASSIGNED_TO_FLAT', 'Identificaci??n plana incorrecta o no tiene permisos de acceso para verla.');
INSERT INTO `uhb_vocabulary` (`id`, `language_id`, `key_value`, `key_text`) VALUES
(5455, 'de', '_OWNER_NOT_ASSIGNED_TO_FLAT', 'Falsche Flat ID oder Sie haben keine Zugriffsberechtigungen, um sie anzusehen.'),
(5456, 'en', '_PC_FLAT_INFO_TEXT', 'information about flat: name, address, telephone, fax etc.'),
(5457, 'es', '_PC_FLAT_INFO_TEXT', 'informaci??n sobre piso: nombre, direcci??n, tel??fono, fax, etc.'),
(5458, 'de', '_PC_FLAT_INFO_TEXT', 'Informationen ??ber Wohnung: Name, Adresse, Telefon, Fax etc.'),
(5459, 'en', '_REGIONAL_NOT_FLATS', 'There are no flats found in your location. You cannot see reports.'),
(5460, 'es', '_REGIONAL_NOT_FLATS', 'No hay pisos encontrados en su ubicaci??n. No puede ver los informes.'),
(5461, 'de', '_REGIONAL_NOT_FLATS', 'Es gibt keine Wohnungen in deinem Standort gefunden. Sie k??nnen keine Berichte sehen.'),
(5462, 'en', '_MOST_POPULAR_FLATS', 'Most Popular Flats'),
(5463, 'es', '_MOST_POPULAR_FLATS', 'Apartamentos m??s populares'),
(5464, 'de', '_MOST_POPULAR_FLATS', 'Beliebteste Wohnungen'),
(5465, 'en', '_FLAT_COMFORT', 'Flats Comfort'),
(5466, 'es', '_FLAT_COMFORT', 'Apartamentos confort'),
(5467, 'de', '_FLAT_COMFORT', 'Wohnungen Komfort'),
(5468, 'en', '_FLAT_AREA', 'Apartment Area'),
(5469, 'es', '_FLAT_AREA', 'Apartamento'),
(5470, 'de', '_FLAT_AREA', 'Wohnung Bereich'),
(5471, 'en', '_MESSAGE_INFO_LINK_BOOKING', 'You can go to the order by clicking the <a href=\'index.php?page=booking\'>\"booking\"</a> link in the footer menu'),
(5472, 'es', '_MESSAGE_INFO_LINK_BOOKING', 'Puede ir a la orden haciendo clic en el enlace <a href=\'index.php?page=booking\'>\"reserva\"</a> en el men?? de pie de p??gina'),
(5473, 'de', '_MESSAGE_INFO_LINK_BOOKING', 'Sie k??nnen in den Auftrag gehen, indem Sie im Footer-Men?? auf den Link <a href=\'index.php?page=booking\'>\"Buchung\"</a> klicken'),
(5474, 'en', '_FLAT_WAS_ADDED', 'Flat has been successfully added to your reservation!'),
(5475, 'es', '_FLAT_WAS_ADDED', 'Apartamento ha sido a??adido a su reserva con ??xito!'),
(5476, 'de', '_FLAT_WAS_ADDED', 'Flat wurde erfolgreich zu Ihrer Reservierung hinzugef??gt!'),
(5477, 'en', '_FLAT_WAS_REMOVED', 'Selected flat has been removed from your Reservation Cart!'),
(5478, 'es', '_FLAT_WAS_REMOVED', 'El apartamento seleccionado ha sido eliminado de su Carrito de Reservas!'),
(5479, 'de', '_FLAT_WAS_REMOVED', 'Ausgew??hlte Wohnung wurde aus Ihrem Reservierungswagen entfernt!'),
(5480, 'en', '_FLAT_NOT_FOUND', 'Flat has not been found!'),
(5481, 'es', '_FLAT_NOT_FOUND', 'Apartamento no ha sido encontrado!'),
(5482, 'de', '_FLAT_NOT_FOUND', 'Wohnung wurde nicht gefunden!'),
(5483, 'en', '_SELECTED_FLATS', 'Selected Flats'),
(5484, 'es', '_SELECTED_FLATS', 'Pisos seleccionados'),
(5485, 'de', '_SELECTED_FLATS', 'Ausgew??hlte Wohnungen'),
(5486, 'de', '_DELETE_ALL', 'Alles l??schen'),
(5487, 'en', '_DELETE_ALL', 'Delete all'),
(5488, 'es', '_DELETE_ALL', 'Eliminar todos'),
(5489, 'de', '_DELETE_ALL_ALERT', 'Sind Sie sicher, dass Sie alle Datens??tze l??schen m??chten? Denken Sie daran: Nach dem Abschluss dieser Aktion k??nnen die Daten nicht wiederhergestellt werden!'),
(5490, 'en', '_DELETE_ALL_ALERT', 'Are you sure you want to delete all records? Remember: after the completion of this action, the data cannot be restored!'),
(5491, 'es', '_DELETE_ALL_ALERT', '??Seguro que desea eliminar todos los registros? Recuerde: despu??s de la finalizaci??n de esta acci??n, los datos no se pueden restaurar!'),
(5492, 'de', '_HOTEL_RESTRICTIONS_MIN_MAX_ROOMS', 'Bei der Buchung in <b>_HOTEL_NAME_</b> Hotel gibt es Einschr??nkungen in der Anzahl der Zimmer reserviert.<br> Sie m??ssen mindestens <b>_MIN_ROOMS_</b> und nicht mehr als <b>_MAX_ROOMS_</b>'),
(5493, 'en', '_HOTEL_RESTRICTIONS_MIN_MAX_ROOMS', 'When booking in <b>_HOTEL_NAME_</b> hotel there are restrictions in the number of rooms reserved.<br> They must be at least <b>_MIN_ROOMS_</b> and not more than <b>_MAX_ROOMS_</b>'),
(5494, 'es', '_HOTEL_RESTRICTIONS_MIN_MAX_ROOMS', 'Al reservar en <b>_HOTEL_NAME_</b> hotel hay restricciones en el n??mero de habitaciones reservadas.<br> Deber??n tener un m??nimo de <b>_MIN_ROOMS_</b> y no m??s de <b>_MAX_ROOMS_</b>'),
(5495, 'de', '_HOTEL_RESTRICTIONS_MIN_ROOMS', 'Bei der Buchung in <b>_HOTEL_NAME_</b> Hotel gibt es Einschr??nkungen in der Anzahl der Zimmer reserviert.<br> Sie m??ssen mindestens <b>_MIN_ROOMS_</b>'),
(5496, 'en', '_HOTEL_RESTRICTIONS_MIN_ROOMS', 'When booking in <b>_HOTEL_NAME_</b> hotel there are restrictions in the number of rooms reserved.<br> They must be at least <b>_MIN_ROOMS_</b>'),
(5497, 'es', '_HOTEL_RESTRICTIONS_MIN_ROOMS', 'Al reservar en <b>_HOTEL_NAME_</b> hotel hay restricciones en el n??mero de habitaciones reservadas.<br> Deben ser por lo menos <b>_MIN_ROOMS_</b>'),
(5498, 'de', '_HOTEL_RESTRICTIONS_MAX_ROOMS', 'Bei der Buchung in <b>_HOTEL_NAME_</b> Hotel gibt es Einschr??nkungen in der Anzahl der Zimmer reserviert.<br> Sie m??ssen nicht mehr sein als <b>_MAX_ROOMS_</b>'),
(5499, 'en', '_HOTEL_RESTRICTIONS_MAX_ROOMS', 'When booking in <b>_HOTEL_NAME_</b> hotel there are restrictions in the number of rooms reserved.<br> They must be at not more than <b>_MAX_ROOMS_</b>'),
(5500, 'es', '_HOTEL_RESTRICTIONS_MAX_ROOMS', 'Al reservar en <b>_HOTEL_NAME_</b> hotel hay restricciones en el n??mero de habitaciones reservadas.<br> Deben estar a no m??s de <b>_MAX_ROOMS_</b>'),
(5501, 'de', '_CANNOT_BOOKING_MORE', 'Sie k??nnen nicht mehr als <b>_NUM_ROOMS_</b> Zimmer buchen.'),
(5502, 'en', '_CANNOT_BOOKING_MORE', 'You cannot order more than <b>_NUM_ROOMS_</b> rooms.'),
(5503, 'es', '_CANNOT_BOOKING_MORE', 'No se puede reservar m??s de <b>_NUM_ROOMS_</b> habitaciones.'),
(5504, 'de', '_CONTINUE_MUST_BOOK_MIN', 'Bei der Buchung m??ssen Sie mindestens <b>_NUM_ROOMS_</b> Zimmer buchen'),
(5505, 'en', '_CONTINUE_MUST_BOOK_MIN', 'In booking to continue you must book a minimum of <b>_NUM_ROOMS_</b> rooms'),
(5506, 'es', '_CONTINUE_MUST_BOOK_MIN', 'En la reserva para continuar debe reservar un m??nimo de <b>_NUM_ROOMS_</b> habitaciones'),
(5507, 'en', '_UPDATE_CURRENCY_RATE', 'Update Currency Rates'),
(5508, 'es', '_UPDATE_CURRENCY_RATE', 'Actualizar tipo de cambio'),
(5509, 'de', '_UPDATE_CURRENCY_RATE', 'W??hrungskurs aktualisieren'),
(5510, 'en', '_CURRENCY_PREVIOUS_RATE', 'Previous Rate'),
(5511, 'es', '_CURRENCY_PREVIOUS_RATE', 'Tarifa anterior'),
(5512, 'de', '_CURRENCY_PREVIOUS_RATE', 'Vorheriger Preis'),
(5513, 'en', '_CURRENCY_NEW_RATE', 'New Rate'),
(5514, 'es', '_CURRENCY_NEW_RATE', 'Nueva tarifa'),
(5515, 'de', '_CURRENCY_NEW_RATE', 'Neuer Tarif'),
(5516, 'en', '_NO_CHANGES', 'no changes'),
(5517, 'es', '_NO_CHANGES', 'sin cambios'),
(5518, 'de', '_NO_CHANGES', 'keine ??nderungen'),
(5519, 'en', '_LAST_UPDATE', 'Last Update'),
(5520, 'es', '_LAST_UPDATE', '??ltima actualizaci??n'),
(5521, 'de', '_LAST_UPDATE', 'Letztes Update'),
(5522, 'en', '_FIELD_MUST_BE_DATE', '_FIELD_ must be in valid date format! Please re-enter.'),
(5523, 'es', '_FIELD_MUST_BE_DATE', '_FIELD_ debe estar en formato de fecha v??lido! Por favor, vuelva a entrar.'),
(5524, 'de', '_FIELD_MUST_BE_DATE', '_FIELD_ m??ssen in g??ltigen Datum-Format! Bitte erneut eingeben.'),
(5525, 'en', '_ADMIN_ANSWER', 'Admin Answer'),
(5526, 'es', '_ADMIN_ANSWER', 'Respuesta del administrador'),
(5527, 'de', '_ADMIN_ANSWER', 'Admin Antwort'),
(5528, 'en', '_IT_IS_YOUR_REVIEW', 'it\'s your review'),
(5529, 'es', '_IT_IS_YOUR_REVIEW', 'es tu opini??n'),
(5530, 'de', '_IT_IS_YOUR_REVIEW', 'es ist deine ??berpr??fung'),
(5531, 'en', '_QUICK_RESERVATIONS_MSG', 'Quick Reservations feature allows quick reserving rooms without specifying the guest name.'),
(5532, 'es', '_QUICK_RESERVATIONS_MSG', 'La funci??n de reservas r??pidas permite reservar salas r??pidamente sin especificar el nombre del hu??sped'),
(5533, 'de', '_QUICK_RESERVATIONS_MSG', 'Die Schnellreservierungsfunktion erm??glicht die schnelle Reservierung von R??umen ohne Angabe des Gastnamens'),
(5534, 'en', '_ERROR', 'Error'),
(5535, 'es', '_ERROR', 'Error'),
(5536, 'de', '_ERROR', 'Fehler'),
(5537, 'de', '_EMAIL_TEMPLATE', 'E-Mail-Vorlagen'),
(5538, 'en', '_EMAIL_TEMPLATE', 'Email Template'),
(5539, 'es', '_EMAIL_TEMPLATE', 'Plantillas de correo'),
(5540, 'de', '_VEHICLE', 'Fahrzeug'),
(5541, 'en', '_VEHICLE', 'Vehicle'),
(5542, 'es', '_VEHICLE', 'Veh??culo'),
(5543, 'de', '_VEHICLES', 'Fahrzeuge'),
(5544, 'en', '_VEHICLES', 'Vehicles'),
(5545, 'es', '_VEHICLES', 'Veh??culos'),
(5546, 'de', '_TOKEN_EXPIRED_ALERT', 'Token ist abgelaufen. Bitte laden Sie die Seite neu und versuchen Sie es erneut.'),
(5547, 'en', '_TOKEN_EXPIRED_ALERT', 'Token expired. Please reload page and try again.'),
(5548, 'es', '_TOKEN_EXPIRED_ALERT', 'Token expir??. Por favor, recarga la p??gina e intenta nuevamente.');

-- --------------------------------------------------------

--
-- Table structure for table `uhb_wishlist`
--

CREATE TABLE `uhb_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - hotel, 2 - room, 3 - car',
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uhb_wishlist`
--

INSERT INTO `uhb_wishlist` (`id`, `customer_id`, `item_id`, `item_type`, `date_added`) VALUES
(1, 1, 1, 1, '2016-04-25 00:00:00'),
(2, 2, 2, 2, '2021-09-06 11:37:48');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test Man', 'test@email.com', NULL, '$2y$10$viOHOOf5IEQFYms0k7EcHuJXACqOTmwLSm7hksNTQTcfzqLY62RE6', NULL, '2021-08-28 00:38:39', '2021-08-28 00:38:39'),
(2, 'user1', 'user1@gmail.com', NULL, '$2y$10$hH8EnQUjcr.06gjskB3KmevKL9ggmgBT4sm3PTuJ0HE/4EiRyScay', NULL, '2021-09-03 01:54:31', '2021-09-03 01:54:31'),
(3, 'user1', 'user2@gmail.com', NULL, '$2y$10$vz.2aoZwX0iVON7dwfowsOwRUBTHGCd8XHStQoBLbFCj/lwDrWFfa', NULL, '2021-09-24 08:33:06', '2021-09-24 08:33:06'),
(4, 'user1', 'sabeerali099@gmail.com', NULL, '$2y$10$CwKoUcIu1W.WpJzM9eON.ulbLuUVAfjTEjD7baUt3sntlVr1ppPxK', NULL, '2021-09-29 09:31:51', '2021-09-29 09:31:51'),
(5, 'user1', 'sabeerali099@gmail.co', NULL, '$2y$10$EHIbICk/ZNBjgE2jiRiIku8O7aeF1ZH5a8adfFORojj76mMLhvLKe', NULL, '2021-09-29 09:32:08', '2021-09-29 09:32:08'),
(6, 'sabeer', 'sabeer@mail.com', NULL, '$2y$10$5maggtrCL0WF.o5B9wNmTeRdvcwCO4.0q5j7I6CpMJTyQUk1KGLWu', NULL, '2021-10-02 09:18:59', '2021-10-02 09:18:59'),
(7, 'sabeer', 'sabeer1@mail.com', NULL, '$2y$10$2QPFGdmTkzmJbNqJXHtcQOqOHcArxEPokHltT86ncW1ULsdgDLr.G', NULL, '2021-10-02 09:20:51', '2021-10-02 09:20:51'),
(8, 'sabeer', 'sabeer2@mail.com', NULL, '$2y$10$KyEfRGCQrJhIwdcLfEfvxuk1qiQltBBQ4ZPnmiMtwldWA/tdUWr5a', NULL, '2021-10-02 09:21:47', '2021-10-02 09:21:47'),
(9, 'sabeer', 'sabeer3@mail.com', NULL, '$2y$10$XTxxzMdCtgcSB91pUAiIc.B1/1JK49eordEvbuoLu8JQpSiesik.a', NULL, '2021-10-02 09:25:53', '2021-10-02 09:25:53'),
(10, 'sabeer', 'sabeer4@mail.com', NULL, '$2y$10$9BsAREUHsD8oZ1zi26DH/e7yYw62rIvQaraR2hpeS62g43OelUtF.', NULL, '2021-10-02 09:27:02', '2021-10-02 09:27:02'),
(11, 'user1', 'user3@gmail.com', NULL, '$2y$10$yXblE5i0oFspF1x9V1rEhup.ghLPEXUXnCglvJMs78UmsMABLzDmG', NULL, '2021-10-03 01:01:08', '2021-10-03 01:01:08'),
(12, 'Test user', 'test@gmil.com', NULL, '$2y$10$s.gigItb/6/U.eTLE.NVI.5u3Hfh/1H6PUEgZmk9dGWnt/zDFeP86', NULL, '2022-01-17 10:05:19', '2022-01-17 10:05:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extras_availability`
--
ALTER TABLE `extras_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `marketcurrencies`
--
ALTER TABLE `marketcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerdcheckins`
--
ALTER TABLE `offerdcheckins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerdcheckouts`
--
ALTER TABLE `offerdcheckouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerdreserves`
--
ALTER TABLE `offerdreserves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerdstays`
--
ALTER TABLE `offerdstays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratelists`
--
ALTER TABLE `ratelists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombathrooms`
--
ALTER TABLE `roombathrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombeds`
--
ALTER TABLE `roombeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomdescriptions`
--
ALTER TABLE `roomdescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomfacilities`
--
ALTER TABLE `roomfacilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomphotos`
--
ALTER TABLE `roomphotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomservices`
--
ALTER TABLE `roomservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_accounts`
--
ALTER TABLE `uhb_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_account_locations`
--
ALTER TABLE `uhb_account_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `uhb_affiliates`
--
ALTER TABLE `uhb_affiliates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliate_id` (`affiliate_id`),
  ADD KEY `status` (`is_active`);

--
-- Indexes for table `uhb_banlist`
--
ALTER TABLE `uhb_banlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ban_ip` (`ban_item`);

--
-- Indexes for table `uhb_banners`
--
ALTER TABLE `uhb_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `priority_order` (`priority_order`);

--
-- Indexes for table `uhb_banners_description`
--
ALTER TABLE `uhb_banners_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_bookings`
--
ALTER TABLE `uhb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_type` (`payment_type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `uhb_bookings_rooms`
--
ALTER TABLE `uhb_bookings_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_number` (`booking_number`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `uhb_campaigns`
--
ALTER TABLE `uhb_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `target_group_id` (`group_id`);

--
-- Indexes for table `uhb_comments`
--
ALTER TABLE `uhb_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`,`user_id`);

--
-- Indexes for table `uhb_countries`
--
ALTER TABLE `uhb_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abbrv` (`abbrv`);

--
-- Indexes for table `uhb_countries_description`
--
ALTER TABLE `uhb_countries_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_coupons`
--
ALTER TABLE `uhb_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_currencies`
--
ALTER TABLE `uhb_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_customers`
--
ALTER TABLE `uhb_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b_country` (`b_country`),
  ADD KEY `status` (`is_active`);

--
-- Indexes for table `uhb_customer_funds`
--
ALTER TABLE `uhb_customer_funds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `uhb_customer_groups`
--
ALTER TABLE `uhb_customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_email_templates`
--
ALTER TABLE `uhb_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_events_registered`
--
ALTER TABLE `uhb_events_registered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_extras`
--
ALTER TABLE `uhb_extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_extrasitems`
--
ALTER TABLE `uhb_extrasitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_extras_availability`
--
ALTER TABLE `uhb_extras_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_extras_description`
--
ALTER TABLE `uhb_extras_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_faq_categories`
--
ALTER TABLE `uhb_faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_faq_categories_description`
--
ALTER TABLE `uhb_faq_categories_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_faq_category_items`
--
ALTER TABLE `uhb_faq_category_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `uhb_faq_category_items_description`
--
ALTER TABLE `uhb_faq_category_items_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_gallery_albums`
--
ALTER TABLE `uhb_gallery_albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_active` (`is_active`);

--
-- Indexes for table `uhb_gallery_albums_description`
--
ALTER TABLE `uhb_gallery_albums_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `uhb_gallery_album_items`
--
ALTER TABLE `uhb_gallery_album_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_code` (`album_code`),
  ADD KEY `priority_order` (`priority_order`);

--
-- Indexes for table `uhb_gallery_album_items_description`
--
ALTER TABLE `uhb_gallery_album_items_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_code` (`gallery_album_item_id`);

--
-- Indexes for table `uhb_hotels`
--
ALTER TABLE `uhb_hotels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `hotel_location_id` (`hotel_location_id`);

--
-- Indexes for table `uhb_hotels_description`
--
ALTER TABLE `uhb_hotels_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`,`language_id`);

--
-- Indexes for table `uhb_hotels_locations`
--
ALTER TABLE `uhb_hotels_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `uhb_hotels_locations_description`
--
ALTER TABLE `uhb_hotels_locations_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_location_id` (`hotel_location_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `uhb_hotels_property_types`
--
ALTER TABLE `uhb_hotels_property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_hotels_property_types_description`
--
ALTER TABLE `uhb_hotels_property_types_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_property_id` (`hotel_property_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `uhb_hotel_images`
--
ALTER TABLE `uhb_hotel_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `priority_order` (`priority_order`);

--
-- Indexes for table `uhb_hotel_payment_gateways`
--
ALTER TABLE `uhb_hotel_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_hotel_periods`
--
ALTER TABLE `uhb_hotel_periods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `uhb_languages`
--
ALTER TABLE `uhb_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_mail_log`
--
ALTER TABLE `uhb_mail_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_meal_plans`
--
ALTER TABLE `uhb_meal_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_meal_plans_description`
--
ALTER TABLE `uhb_meal_plans_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_menus`
--
ALTER TABLE `uhb_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_modules`
--
ALTER TABLE `uhb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `uhb_modules_settings`
--
ALTER TABLE `uhb_modules_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_name` (`module_name`);

--
-- Indexes for table `uhb_news`
--
ALTER TABLE `uhb_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `uhb_news_subscribed`
--
ALTER TABLE `uhb_news_subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_packages`
--
ALTER TABLE `uhb_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `uhb_pages`
--
ALTER TABLE `uhb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_published` (`is_published`),
  ADD KEY `is_removed` (`is_removed`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `comments_allowed` (`comments_allowed`);

--
-- Indexes for table `uhb_privileges`
--
ALTER TABLE `uhb_privileges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `uhb_rates`
--
ALTER TABLE `uhb_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_ratings_items`
--
ALTER TABLE `uhb_ratings_items`
  ADD PRIMARY KEY (`item`);

--
-- Indexes for table `uhb_reviews`
--
ALTER TABLE `uhb_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `uhb_roles`
--
ALTER TABLE `uhb_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `uhb_role_privileges`
--
ALTER TABLE `uhb_role_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_rooms`
--
ALTER TABLE `uhb_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_rooms_availabilities`
--
ALTER TABLE `uhb_rooms_availabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `y` (`y`),
  ADD KEY `m` (`m`);

--
-- Indexes for table `uhb_rooms_description`
--
ALTER TABLE `uhb_rooms_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`room_id`);

--
-- Indexes for table `uhb_rooms_prices`
--
ALTER TABLE `uhb_rooms_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `uhb_room_bathrooms`
--
ALTER TABLE `uhb_room_bathrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_room_beds`
--
ALTER TABLE `uhb_room_beds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_room_facilities`
--
ALTER TABLE `uhb_room_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_room_facilities_description`
--
ALTER TABLE `uhb_room_facilities_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_search_wordlist`
--
ALTER TABLE `uhb_search_wordlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `word_text` (`word_text`);

--
-- Indexes for table `uhb_site_description`
--
ALTER TABLE `uhb_site_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_states`
--
ALTER TABLE `uhb_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `uhb_testimonials`
--
ALTER TABLE `uhb_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uhb_vocabulary`
--
ALTER TABLE `uhb_vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `voc_item` (`language_id`,`key_value`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `uhb_wishlist`
--
ALTER TABLE `uhb_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_type` (`item_type`);

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
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extras_availability`
--
ALTER TABLE `extras_availability`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketcurrencies`
--
ALTER TABLE `marketcurrencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `offerdcheckins`
--
ALTER TABLE `offerdcheckins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offerdcheckouts`
--
ALTER TABLE `offerdcheckouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offerdreserves`
--
ALTER TABLE `offerdreserves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offerdstays`
--
ALTER TABLE `offerdstays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ratelists`
--
ALTER TABLE `ratelists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roombathrooms`
--
ALTER TABLE `roombathrooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `roombeds`
--
ALTER TABLE `roombeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roomdescriptions`
--
ALTER TABLE `roomdescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roomfacilities`
--
ALTER TABLE `roomfacilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `roomphotos`
--
ALTER TABLE `roomphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `roomservices`
--
ALTER TABLE `roomservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `uhb_accounts`
--
ALTER TABLE `uhb_accounts`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uhb_account_locations`
--
ALTER TABLE `uhb_account_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_affiliates`
--
ALTER TABLE `uhb_affiliates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_banlist`
--
ALTER TABLE `uhb_banlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_banners`
--
ALTER TABLE `uhb_banners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `uhb_banners_description`
--
ALTER TABLE `uhb_banners_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `uhb_bookings`
--
ALTER TABLE `uhb_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uhb_bookings_rooms`
--
ALTER TABLE `uhb_bookings_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uhb_campaigns`
--
ALTER TABLE `uhb_campaigns`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uhb_comments`
--
ALTER TABLE `uhb_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uhb_countries`
--
ALTER TABLE `uhb_countries`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `uhb_countries_description`
--
ALTER TABLE `uhb_countries_description`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT for table `uhb_coupons`
--
ALTER TABLE `uhb_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uhb_currencies`
--
ALTER TABLE `uhb_currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uhb_customers`
--
ALTER TABLE `uhb_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uhb_customer_funds`
--
ALTER TABLE `uhb_customer_funds`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_customer_groups`
--
ALTER TABLE `uhb_customer_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uhb_email_templates`
--
ALTER TABLE `uhb_email_templates`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `uhb_events_registered`
--
ALTER TABLE `uhb_events_registered`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_extras`
--
ALTER TABLE `uhb_extras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uhb_extrasitems`
--
ALTER TABLE `uhb_extrasitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `uhb_extras_availability`
--
ALTER TABLE `uhb_extras_availability`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `uhb_extras_description`
--
ALTER TABLE `uhb_extras_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uhb_faq_categories`
--
ALTER TABLE `uhb_faq_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_faq_categories_description`
--
ALTER TABLE `uhb_faq_categories_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_faq_category_items`
--
ALTER TABLE `uhb_faq_category_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_faq_category_items_description`
--
ALTER TABLE `uhb_faq_category_items_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_gallery_albums`
--
ALTER TABLE `uhb_gallery_albums`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uhb_gallery_albums_description`
--
ALTER TABLE `uhb_gallery_albums_description`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `uhb_gallery_album_items`
--
ALTER TABLE `uhb_gallery_album_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uhb_gallery_album_items_description`
--
ALTER TABLE `uhb_gallery_album_items_description`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `uhb_hotels`
--
ALTER TABLE `uhb_hotels`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uhb_hotels_description`
--
ALTER TABLE `uhb_hotels_description`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uhb_hotels_locations`
--
ALTER TABLE `uhb_hotels_locations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uhb_hotels_locations_description`
--
ALTER TABLE `uhb_hotels_locations_description`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uhb_hotels_property_types`
--
ALTER TABLE `uhb_hotels_property_types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uhb_hotels_property_types_description`
--
ALTER TABLE `uhb_hotels_property_types_description`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `uhb_hotel_images`
--
ALTER TABLE `uhb_hotel_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uhb_hotel_payment_gateways`
--
ALTER TABLE `uhb_hotel_payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `uhb_hotel_periods`
--
ALTER TABLE `uhb_hotel_periods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_languages`
--
ALTER TABLE `uhb_languages`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uhb_mail_log`
--
ALTER TABLE `uhb_mail_log`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `uhb_meal_plans`
--
ALTER TABLE `uhb_meal_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `uhb_meal_plans_description`
--
ALTER TABLE `uhb_meal_plans_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `uhb_menus`
--
ALTER TABLE `uhb_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uhb_modules`
--
ALTER TABLE `uhb_modules`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `uhb_modules_settings`
--
ALTER TABLE `uhb_modules_settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `uhb_news`
--
ALTER TABLE `uhb_news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uhb_news_subscribed`
--
ALTER TABLE `uhb_news_subscribed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_packages`
--
ALTER TABLE `uhb_packages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uhb_pages`
--
ALTER TABLE `uhb_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `uhb_privileges`
--
ALTER TABLE `uhb_privileges`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uhb_rates`
--
ALTER TABLE `uhb_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `uhb_reviews`
--
ALTER TABLE `uhb_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uhb_roles`
--
ALTER TABLE `uhb_roles`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uhb_role_privileges`
--
ALTER TABLE `uhb_role_privileges`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `uhb_rooms`
--
ALTER TABLE `uhb_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `uhb_rooms_availabilities`
--
ALTER TABLE `uhb_rooms_availabilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `uhb_rooms_description`
--
ALTER TABLE `uhb_rooms_description`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `uhb_rooms_prices`
--
ALTER TABLE `uhb_rooms_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uhb_room_bathrooms`
--
ALTER TABLE `uhb_room_bathrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `uhb_room_beds`
--
ALTER TABLE `uhb_room_beds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `uhb_room_facilities`
--
ALTER TABLE `uhb_room_facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `uhb_room_facilities_description`
--
ALTER TABLE `uhb_room_facilities_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `uhb_search_wordlist`
--
ALTER TABLE `uhb_search_wordlist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uhb_site_description`
--
ALTER TABLE `uhb_site_description`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uhb_states`
--
ALTER TABLE `uhb_states`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `uhb_testimonials`
--
ALTER TABLE `uhb_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uhb_vocabulary`
--
ALTER TABLE `uhb_vocabulary`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5549;

--
-- AUTO_INCREMENT for table `uhb_wishlist`
--
ALTER TABLE `uhb_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
