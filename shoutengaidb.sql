-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 04:54 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutengaidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Elektronik', 'elektronik', '2022-05-05 03:32:06', '2022-05-15 05:07:21'),
(2, 'Kamera', 'kamera', '2022-05-05 03:32:06', '2022-05-15 04:29:03'),
(3, 'Mainan & Hobi', 'mainan-hobi', '2022-05-05 03:32:06', '2022-05-15 05:01:20'),
(4, 'Rumah Tangga', 'rumah-tangga', '2022-05-05 03:32:06', '2022-05-15 05:08:09'),
(5, 'Handphone & Tablet', 'handphone-tablet', '2022-05-05 03:32:06', '2022-05-15 04:56:48'),
(7, 'Vtuber', 'vtuber', '2022-05-05 22:04:48', '2022-05-09 07:51:03'),
(11, 'Komputer & Laptop', 'komputer-laptop', '2022-05-11 18:40:15', '2022-05-11 18:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Christian Richard Halim', 'chris.richard.halim@gmail.com', '+628995872788', 'Bananananana', '2022-05-08 08:57:33', '2022-05-08 08:57:33'),
(2, 'Kirigaya Kazuto', 'kirigaya.kazuto@gmail.com', '1234125123', 'Test Message banana test maessage Test Message banana test maessage Test Message banana test maessage Test Message banana test maessage Test Message banana test maessage', '2022-05-08 09:22:00', '2022-05-08 09:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 'OFFWHITE20', 'fixed', '20.00', '600.00', '2022-05-07 06:47:46', '2022-05-07 08:19:34', '2024-05-07'),
(2, 'GUCCI45', 'percent', '45.00', '2000.00', '2022-05-07 06:49:31', '2022-05-07 08:14:33', '2022-05-06'),
(4, 'EID30', 'percent', '30.00', '500.00', '2022-05-07 08:08:04', '2022-05-07 08:19:16', '2024-05-14'),
(5, 'SAOVSCBT', 'percent', '50.00', '10000.00', '2022-05-07 08:18:05', '2022-05-07 08:19:00', '2024-05-16');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5,7,11', 8, '2022-05-07 06:41:26', '2022-05-15 05:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Legendary Treasure Map', 'Unlike the other types of maps, this treasure map is comprised of 4 states, which means that it requires more steps to obtain the prize.', '399', '/product/legendary-treasure-map', '1651898227.png', 1, '2022-05-06 21:37:07', '2022-05-15 05:44:06'),
(4, 'Second Slide', 'This is a test slide banner', '399999', 'http://localhost:8000/shop', '1651898496.png', 1, '2022-05-06 21:41:36', '2022-05-15 05:35:07'),
(5, 'Third Slide', 'This is a test slide banner', '123412', '/product/wolfs-gravestone', '1651898706.png', 1, '2022-05-06 21:45:06', '2022-05-15 05:46:01');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_03_125749_create_sessions_table', 1),
(7, '2022_04_18_141037_create_categories_table', 1),
(8, '2022_04_18_141229_create_products_table', 1),
(9, '2022_05_07_033553_create_home_sliders_table', 2),
(10, '2022_05_07_052904_create_home_categories_table', 3),
(11, '2022_05_07_081353_create_sales_table', 4),
(12, '2022_05_07_123944_create_coupons_table', 5),
(13, '2022_05_07_150033_add_expiry_date_to_coupon', 6),
(14, '2022_05_08_054748_create_orders_table', 7),
(15, '2022_05_08_054837_create_order_items_table', 7),
(16, '2022_05_08_054903_create_shippings_table', 7),
(17, '2022_05_08_054923_create_transactions_table', 7),
(18, '2022_05_08_102029_add_delivered_canceled_date_to_or_orders_table', 8),
(19, '2022_05_08_110839_create_reviews_table', 9),
(20, '2022_05_08_140651_add_rstatus_to_order_items_table', 9),
(21, '2022_05_08_153811_create_contacts_table', 10),
(22, '2022_05_08_162346_create_settings_table', 11),
(23, '2022_05_11_065400_create_shoppingcart_table', 12),
(24, '2022_05_12_091451_create_subcategories_table', 13),
(25, '2022_05_14_103240_add_subcategory_id_to_products_table', 14),
(26, '2022_05_15_043154_create_profiles_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(6, 2, '460.00', '0.00', '50.60', '510.60', 'Christian', 'Halim', '08995872788', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tokyo', 'Tokyo', 'Japan', '15810', 'delivered', 0, '2022-05-08 01:48:20', '2022-05-08 03:31:22', '2022-05-08', NULL),
(7, 3, '1491.99', '0.00', '164.12', '1656.11', 'Christian', 'Halim', '123415213', 'user2@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Indonesia', '15810', 'cancelled', 0, '2022-05-08 02:57:27', '2022-05-08 03:38:03', NULL, '2022-05-08'),
(8, 2, '2913.99', '20.00', '320.54', '3234.53', 'Christian', 'Halim', '08995872788', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Indonesia', '15810', 'cancelled', 0, '2022-05-08 03:18:10', '2022-05-08 04:03:31', NULL, '2022-05-08'),
(9, 2, '862.99', '0.00', '94.93', '957.92', 'User ', '1', '12314212', 'user@gmail.com', 'aweaw', 'afaefawf', 'Tangerang', 'Banten', 'Japan', '15810', 'ordered', 0, '2022-05-08 04:06:54', '2022-05-08 04:06:54', NULL, NULL),
(10, 2, '1472.99', '0.00', '162.03', '1635.02', 'Christian', 'Halim', '08995872788', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Japan', '15810', 'ordered', 0, '2022-05-10 09:50:27', '2022-05-10 09:50:27', NULL, NULL),
(11, 2, '420.00', '0.00', '46.20', '466.20', 'Christian', 'Halim', '12312412', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Japan', '15810', 'ordered', 1, '2022-05-10 10:06:46', '2022-05-10 10:06:46', NULL, NULL),
(12, 2, '420.00', '0.00', '46.20', '466.20', 'Christian', 'Halim', '123123', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Japan', '15810', 'ordered', 1, '2022-05-10 10:07:54', '2022-05-10 10:07:54', NULL, NULL),
(13, 2, '420.00', '0.00', '46.20', '466.20', 'Christian', 'Halim', '08995872788', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Japan', '15810', 'ordered', 0, '2022-05-10 10:09:03', '2022-05-10 10:09:03', NULL, NULL),
(14, 2, '1680.00', '0.00', '184.80', '1864.80', 'Christian', 'Halim', '08995872788', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Japan', '15810', 'ordered', 0, '2022-05-10 10:10:43', '2022-05-10 10:10:43', NULL, NULL),
(15, 3, '383.00', '0.00', '42.13', '425.13', 'Christian', 'Halim', '08995872788', 'chris.richard.halim@gmail.com', 'Jl. Raya Kelapa Lilin Kec. Kelapa Dua', 'Jl. Raya Kelapa Lilin DD 3/28 Sektor 7a', 'Tangerang', 'Banten', 'Japan', '15810', 'ordered', 0, '2022-05-12 01:57:49', '2022-05-12 01:57:49', NULL, NULL),
(16, 3, '683.00', '0.00', '75.13', '758.13', 'User', '2', '08124123', 'user2@gmail.com', 'Adress Line 1', 'Adress Line 2', 'Town', 'Province', 'Country', '123421', 'delivered', 0, '2022-05-15 03:37:26', '2022-05-15 04:22:39', '2022-05-15', NULL),
(17, 3, '400.00', '0.00', '44.00', '444.00', 'User', '2', '1241', 'user2@gmail.com', 'Adress Line 1', 'Adress Line 2', 'Tangerang', 'Banten', 'Country', '15810', 'delivered', 0, '2022-05-15 03:39:30', '2022-05-15 04:21:30', '2022-05-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`) VALUES
(8, 1, 6, '460.00', 1, '2022-05-08 01:48:20', '2022-05-08 07:31:04', 1),
(9, 29, 7, '49.99', 1, '2022-05-08 02:57:27', '2022-05-08 02:57:27', 0),
(10, 28, 7, '1442.00', 1, '2022-05-08 02:57:27', '2022-05-08 02:57:27', 0),
(11, 29, 8, '49.99', 1, '2022-05-08 03:18:10', '2022-05-08 03:18:10', 0),
(12, 28, 8, '1442.00', 2, '2022-05-08 03:18:10', '2022-05-08 03:18:10', 0),
(13, 29, 9, '79.99', 1, '2022-05-08 04:06:54', '2022-05-08 04:06:54', 0),
(14, 2, 9, '400.00', 1, '2022-05-08 04:06:54', '2022-05-08 04:06:54', 0),
(15, 12, 9, '383.00', 1, '2022-05-08 04:06:54', '2022-05-08 04:06:54', 0),
(16, 31, 10, '1423.00', 1, '2022-05-10 09:50:27', '2022-05-10 09:50:27', 0),
(17, 29, 10, '49.99', 1, '2022-05-10 09:50:27', '2022-05-10 09:50:27', 0),
(18, 30, 11, '420.00', 1, '2022-05-10 10:06:46', '2022-05-10 10:06:46', 0),
(19, 30, 12, '420.00', 1, '2022-05-10 10:07:54', '2022-05-10 10:07:54', 0),
(20, 30, 13, '420.00', 1, '2022-05-10 10:09:03', '2022-05-10 10:09:03', 0),
(21, 30, 14, '420.00', 4, '2022-05-10 10:10:43', '2022-05-10 10:10:43', 0),
(22, 12, 15, '383.00', 1, '2022-05-12 01:57:49', '2022-05-12 01:57:49', 0),
(23, 12, 16, '383.00', 1, '2022-05-15 03:37:26', '2022-05-15 03:37:26', 0),
(24, 1, 16, '300.00', 1, '2022-05-15 03:37:26', '2022-05-15 03:37:26', 0),
(25, 2, 17, '400.00', 1, '2022-05-15 03:39:30', '2022-05-15 03:39:30', 0);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('in_stock','out_of_stock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(1, 'Monitor', 'monitor', 'Non et id debitis non perferendis quaerat. Molestias dicta in debitis rerum necessitatibus quibusdam. Quo necessitatibus eveniet accusantium. Deserunt iusto cum a assumenda.', 'Necessitatibus aperiam accusantium praesentium beatae sint. Animi facilis iure et fugiat laudantium. Sint culpa est laboriosam cumque minima qui fuga occaecati. Enim quis quaerat quo porro. Sit omnis ea suscipit repellendus culpa quisquam. Et dolor omnis omnis earum. Delectus modi quod repellendus temporibus cumque. Molestiae hic optio dolor molestias eos odit. Culpa odit eaque est ut et earum omnis. Architecto eius earum vel ut minima.', '460.00', '300.00', 'STAI253', 'in_stock', 0, 35, 'digital_20.jpg', ',16521973010.png,16521973011.png,16521973012.png,16521973023.png,16521973024.png,16521973025.png', 11, '2022-05-05 03:32:06', '2022-05-15 04:50:54', 9),
(2, 'Kamera VR', 'kamera-vr', 'Impedit nisi officiis rem qui explicabo. Fugiat blanditiis a at.', 'Illum assumenda et facere ut eum recusandae. Sunt sunt quibusdam non aut. Id velit inventore et velit quidem. Quidem modi omnis voluptatem fuga necessitatibus. Harum est repellendus autem est quidem blanditiis. Culpa sed consequatur fuga laborum. Veritatis illum quis molestiae consequatur autem maxime. Esse qui quis quasi.', '455.00', '400.00', 'STAI293', 'in_stock', 0, 97, 'digital_22.jpg', NULL, 2, '2022-05-05 03:32:06', '2022-05-15 05:01:55', 11),
(3, 'Samsung Galaxy Tab 4', 'samsung-galaxy-tab-4', 'Quia eos atque explicabo autem dolor voluptates. Rem beatae at iste dolor at voluptatem quisquam. Cum ducimus rem quibusdam asperiores qui. Enim et nulla aliquid eos tenetur odio laboriosam magni.', 'Minus debitis ut voluptatem sunt et. Ipsum animi voluptate alias necessitatibus neque laborum. Et nesciunt animi et. Asperiores corrupti in incidunt nostrum et at sint. Animi officiis nihil facilis modi voluptate quod aspernatur. In ad est ullam sint dolor fugit. Tenetur maiores ipsum impedit cupiditate non asperiores dolor. Quia ducimus laudantium sunt perspiciatis voluptates vel et. Ut dolor expedita ad. Quia eaque sit eius est maiores.', '237.00', '200.00', 'STAI127', 'in_stock', 0, 29, 'digital_1.jpg', NULL, 5, '2022-05-05 03:32:06', '2022-05-15 05:02:31', 13),
(4, 'Smart Watch', 'smart-watch', 'Eius eius accusantium est amet quia voluptatum. Tempora laboriosam laudantium sequi. Quidem vel autem harum non soluta ut.', 'Inventore voluptas omnis eius. Enim aliquid ea voluptatem dolor non. Quisquam optio eveniet omnis tempore. Explicabo similique et dolores ea porro omnis reprehenderit quasi. Esse iste nesciunt ullam nihil dolorem. Mollitia ex et omnis iure in. Aut omnis molestiae dolorem corrupti. Commodi aut veritatis autem. Aliquam ratione dignissimos facilis qui. Quisquam deserunt fuga est recusandae. Qui iusto voluptatem optio qui. Aliquam porro explicabo voluptatibus incidunt hic amet.', '366.00', NULL, 'STAI302', 'in_stock', 0, 40, 'digital_11.jpg', NULL, 5, '2022-05-05 03:32:06', '2022-05-15 05:21:19', 21),
(5, 'Acer Aspire S7 UltraBook', 'acer-aspire-s7-ultrabook', 'Mollitia ex atque ratione et facere ut ut. Velit culpa illo quaerat fugit unde. Ut eius voluptatem asperiores nesciunt illo minus. Ut necessitatibus sit natus voluptatum.', 'Inventore nisi autem commodi. Omnis ut vel soluta voluptatem magnam. Odit harum ex accusamus quaerat minima. Eveniet molestiae voluptatem totam perferendis sapiente aut. Sit sint voluptates placeat in. Rerum deleniti enim impedit perferendis. In sed esse quia sint. Et quos et quam provident et. Ipsam non voluptas asperiores facere sed quas doloremque. Eligendi sit iure eos veniam quia voluptatem eos. Expedita esse distinctio non.', '77.00', NULL, 'STAI223', 'in_stock', 0, 6, 'digital_14.jpg', NULL, 11, '2022-05-05 03:32:06', '2022-05-15 05:03:05', 14),
(6, 'Dell UltraSharp Refurbished 23.8\" LED Monitor', 'dell-ultrasharp-refurbished-238-led-monitor', 'Saepe molestias facilis iste molestias. Quam voluptatem minus iusto ipsa eaque enim. Dicta recusandae id vel tenetur molestias aut a.', 'Molestias ad in iste animi. Delectus accusantium eius et sequi. Ipsam quia modi voluptatibus amet at perferendis. Molestias repudiandae ut voluptas sed quo qui. Ratione aut sunt sint id. Laboriosam veniam doloribus sit esse possimus dolores nisi. Quis labore saepe ea sint recusandae. Iure voluptatem aut odio aut ratione. Quia velit atque dolores ut voluptas ullam dolorem illo.', '377.00', NULL, 'STAI164', 'in_stock', 0, 52, 'digital_19.jpg', NULL, 11, '2022-05-05 03:32:06', '2022-05-15 05:03:35', 9),
(7, 'Sony Alpha 7 IV Full-frame Mirrorless Interchangeable Lens Camera,Body Only , Black', 'sony-alpha-7-iv-full-frame-mirrorless-interchangeable-lens-camerabody-only-black', 'Consequuntur laborum vel autem doloribus quia vero est. Atque sed voluptate voluptas deserunt. Aperiam sunt amet repellendus qui quis. Voluptatibus mollitia quis et reiciendis.', 'Placeat id aperiam excepturi dolorem. Est fugit omnis perspiciatis velit placeat eius minima. Reprehenderit iusto soluta corporis qui a eum officia. Labore adipisci est dolorum cum odit. Quia autem qui recusandae aut enim quisquam et. Nam tenetur tempore facere ullam quas. Magni nihil eaque dolorem est. Possimus blanditiis reprehenderit qui. Maxime numquam quia quod adipisci reiciendis recusandae. Aut omnis error maiores sit.', '4696.00', NULL, 'mrls001', 'in_stock', 0, 70, '1652616388_jpg', NULL, 2, '2022-05-05 03:32:06', '2022-05-15 05:06:28', 10),
(8, 'SEGWAY NINEBOT MINI PRO', 'segway-ninebot-mini-pro', 'Possimus adipisci minus aliquam optio itaque adipisci neque aut. Est tempore aperiam dignissimos eveniet similique molestias. Quos consequatur omnis error. Eveniet eveniet quo eum.', 'Officia ut assumenda eveniet illum veniam in. Quas numquam saepe ipsam est illo laboriosam aut. Consequatur libero non deleniti expedita quaerat mollitia qui sit. Rerum omnis velit autem ut. Non incidunt totam consectetur dolor. Beatae iusto tempora eius vel doloremque modi. Debitis repudiandae possimus eum. Cumque iste expedita veritatis repudiandae et magni cupiditate. Dolores molestias est tempora repellat similique. Qui voluptatem eum excepturi neque.', '458.00', NULL, 'STAI500', 'in_stock', 0, 30, 'digital_15.jpg', NULL, 3, '2022-05-05 03:32:06', '2022-05-15 05:01:41', NULL),
(9, 'Yamaha TSX-V235 Desktop Audio System', 'yamaha-tsx-v235-desktop-audio-system', 'Non error delectus consectetur quo rerum rerum enim. Ut voluptatibus consequuntur nemo vitae non magni in. Minima eos natus nihil et repudiandae aperiam fugit.', 'Architecto voluptatem numquam aut voluptatum minima magni est ut. Aut officia autem illum unde. Esse et iste a ut similique quae error. Et aspernatur rerum est aut modi. Est non est officiis. Nostrum sequi aut placeat eligendi ab voluptas. Voluptas dignissimos omnis qui ad occaecati. Eum dignissimos libero quo neque sit rerum nihil.', '136.00', NULL, 'STAI150', 'in_stock', 0, 41, 'digital_3.jpg', NULL, 1, '2022-05-05 03:32:06', '2022-05-15 05:08:44', 15),
(10, 'corrupti praesentium laboriosam perspiciatis', 'corrupti-praesentium-laboriosam-perspiciatis', 'Officia totam recusandae quia sint sequi explicabo quis. Labore similique adipisci quo sequi non. Officiis voluptatibus officiis consequatur et et.', 'Magnam vitae molestiae incidunt sit pariatur laboriosam quam. Non nisi est quaerat eum molestiae natus doloremque autem. Hic deserunt aut amet dolores. Cum consequuntur eaque quos fugit quasi. Commodi occaecati nobis doloremque at quo sint. Et ut in autem nemo architecto reiciendis impedit. Et et ut veniam ut eos quis libero. Voluptatibus qui et natus ipsam. Temporibus illum dolorem voluptatem et debitis.', '212.00', NULL, 'STAI210', 'in_stock', 0, 49, 'digital_9.jpg', NULL, 3, '2022-05-05 03:32:06', '2022-05-05 03:32:06', NULL),
(11, 'Motorola Moto G4 Plus (3GB RAM, 32GB)', 'motorola-moto-g4-plus-3gb-ram-32gb', 'Dolor voluptatem quia at illo perspiciatis quae. Ab et repudiandae ipsa ad est incidunt facilis. Odit aut pariatur aut. Velit qui officiis rerum modi rerum officiis.', 'Ut praesentium eveniet asperiores et. Inventore et alias et cupiditate omnis officia. Dolores ullam qui necessitatibus sequi laboriosam. Possimus voluptas rerum porro ex pariatur odio quibusdam. Debitis magnam deleniti minus est nesciunt iure. Et est tempore quis quis. Impedit dicta velit quaerat omnis consequatur voluptatem. Nostrum et ratione aut perspiciatis. Facilis consequuntur minima suscipit. Saepe exercitationem cupiditate placeat sunt.', '22.00', NULL, 'STAI258', 'in_stock', 0, 39, 'digital_2.jpg', NULL, 5, '2022-05-05 03:32:06', '2022-05-15 05:09:29', 12),
(12, 'Galaxy Note Edge', 'galaxy-note-edge', 'Incidunt occaecati aut suscipit laudantium accusantium odio. Ab illum quis officiis. Molestias suscipit est ratione. Impedit quia voluptate laboriosam voluptatum ea quam quos ratione.', 'Facilis non reprehenderit non officia laborum. Eum molestiae velit odio excepturi. Enim eaque quidem perferendis qui eos aut. At sunt voluptatibus qui incidunt perferendis ut. Error optio non provident dolores. Quia accusantium voluptates ipsa est sit qui. Sed molestias explicabo dolores sed maxime sit. Qui occaecati aperiam illum vero ut non omnis. Dolore a quod non illum. Magnam culpa voluptas autem alias ducimus. Voluptatibus nisi perspiciatis perferendis corrupti et et rerum.', '383.00', NULL, 'STAI347', 'in_stock', 0, 61, 'digital_5.jpg', NULL, 5, '2022-05-05 03:32:06', '2022-05-15 05:10:28', 13),
(13, 'Asus N752', 'asus-n752', 'Fugit fuga modi quod. Doloremque ea temporibus dolorem ut fuga ipsa. Ut nisi et voluptatem quod incidunt ea eum odit. Labore qui vero ut rem reprehenderit et impedit ut.', 'Omnis qui iusto numquam aut et. Ut dignissimos magnam qui voluptatem voluptatem molestiae. Velit quia temporibus quis aliquid reiciendis quod. Itaque doloribus iure qui. Sunt exercitationem eos et consectetur consequatur. Iste consequatur quia aliquid perspiciatis possimus animi rerum voluptatem.', '295.00', NULL, 'STAI240', 'in_stock', 0, 74, 'digital_4.jpg', NULL, 11, '2022-05-05 03:32:06', '2022-05-15 05:10:55', 14),
(14, 'Vega V3 Gradient Blue Smart phone Dual SIM 2600 mAh', 'vega-v3-gradient-blue-smart-phone-dual-sim-2600-mah', 'Occaecati suscipit aut et autem qui consequatur. Asperiores beatae sapiente quae et. Magnam culpa rerum placeat est. Nobis exercitationem aut quis esse eos vel minus.', 'Nihil distinctio distinctio facere nobis. Asperiores totam impedit ea neque fuga quod quia. Nobis quae a qui consequatur quidem. Ipsum nisi non blanditiis accusantium perferendis quae. Nesciunt consequuntur fuga nulla deserunt dolores qui voluptatem aut. Beatae laborum qui et architecto. Ipsa numquam ut eum quasi iusto quae beatae dolor. Voluptate velit minus voluptas totam qui. Est laborum voluptatem architecto.', '364.00', NULL, 'STAI208', 'in_stock', 0, 62, 'digital_21.jpg', NULL, 2, '2022-05-05 03:32:06', '2022-05-15 05:11:41', 16),
(15, 'Sony 65\" Class LED Z9D Series 2160p Smart 4K UHD TV', 'sony-65-class-led-z9d-series-2160p-smart-4k-uhd-tv', 'Architecto accusamus consequatur amet et enim. Enim molestiae ut ipsa est.', 'Eum architecto dolorem et numquam. Molestiae quis quis quibusdam eveniet. Praesentium modi corporis natus et qui dolorem. Accusamus delectus id consequuntur quaerat et voluptas officia inventore. Nesciunt amet non tempora dolores dolor sapiente. Dolor et beatae rerum distinctio tenetur quia. Ullam recusandae magni qui assumenda vel. Porro deserunt dolor voluptas esse. Dolores sed unde natus ducimus. Consequuntur rerum quod sit atque fugiat. Repellendus et officiis quis.', '468.00', NULL, 'STAI299', 'in_stock', 0, 71, 'digital_8.jpg', NULL, 1, '2022-05-05 03:32:06', '2022-05-15 05:13:34', 17),
(16, 'Xbox One S Controller', 'xbox-one-s-controller', 'Assumenda aut optio facilis dolores atque reiciendis. Ut dolor voluptatum non a. Molestias odio assumenda voluptate quia atque tenetur est.', 'Error tempore qui sint sapiente consectetur. Est et voluptas rem nulla saepe est. Et et sed commodi vitae. Consectetur fuga sequi incidunt ab quibusdam accusamus. Et aut aut veritatis dolores deserunt quia. Maxime nihil in et doloribus voluptas ducimus tempora. Minus vel id ab quia recusandae explicabo sunt. Quaerat natus consequatur dolor consequatur. Sunt quam ipsam mollitia corrupti. Fuga voluptatum in et vero excepturi. Esse facere rerum quia reprehenderit odio veniam qui.', '265.00', NULL, 'STAI296', 'in_stock', 0, 52, 'digital_10.jpg', NULL, 11, '2022-05-05 03:32:06', '2022-05-15 05:14:19', 18),
(17, 'Xbox One Special Edition Lunar White Wireless Controller', 'xbox-one-special-edition-lunar-white-wireless-controller', 'A et autem necessitatibus repellat nihil voluptas natus aut. Ut et est aliquam explicabo facilis deleniti sint qui.', 'Sed voluptates accusamus quos esse consequuntur in possimus. Eum qui vitae quia est culpa. Et autem esse rem magni neque sunt. Repellendus cum iure est ipsam nostrum dolorem. Quas aspernatur modi consequatur dolores quisquam maxime voluptatibus laudantium. Minus ipsam possimus iusto veniam id sed labore praesentium. Vel nesciunt id molestiae dolorem repellat laudantium. Cumque rerum vitae maiores aut accusamus ipsam blanditiis.', '442.00', NULL, 'STAI297', 'in_stock', 0, 54, 'digital_18.jpg', NULL, 11, '2022-05-05 03:32:06', '2022-05-15 05:14:40', 18),
(18, 'Beats Studio 3 Wireless Headphone', 'beats-studio-3-wireless-headphone', 'Fugiat possimus sequi iure. Aut omnis doloremque possimus debitis sed quia voluptates.', 'Itaque ab distinctio hic ipsum voluptates. Odit sit natus consequuntur dolorem dolor aut libero. Quaerat quis repellendus quo consequatur et. Voluptas sint reprehenderit velit consectetur quam qui quos. Blanditiis maiores fugit minus aut labore fugit. Ut vitae dignissimos omnis beatae id et vel ullam. Quidem maxime omnis qui nihil est.', '435.00', NULL, 'STAI196', 'in_stock', 0, 56, 'digital_13.jpg', NULL, 1, '2022-05-05 03:32:06', '2022-05-15 05:15:07', 15),
(19, 'Samsung Gear 360 Camera', 'samsung-gear-360-camera', 'Illo repudiandae facilis totam nam. Dolor ex ducimus nostrum qui. Et enim et inventore non quam inventore inventore.', 'Ut voluptatem voluptatum sint labore natus. Voluptatibus ut qui assumenda fuga quibusdam. Dicta suscipit libero dolores molestiae. Et quia explicabo alias quia suscipit dolorum. Omnis ut officiis ea dolores repudiandae mollitia. Quaerat ducimus quaerat voluptas necessitatibus natus. Minus illo quaerat quas tenetur repudiandae. Qui explicabo esse est laudantium eveniet repellat vero. Rerum ducimus tempore repudiandae cum qui eveniet est consequuntur. Itaque nihil aut est rerum.', '21.00', NULL, 'STAI421', 'in_stock', 0, 28, 'digital_7.jpg', NULL, 2, '2022-05-05 03:32:06', '2022-05-15 05:16:03', 19),
(20, 'Sony Ericsson T15', 'sony-ericsson-t15', 'Est corrupti sit mollitia et. Nesciunt delectus placeat sapiente dolor quia. Voluptatem error ad mollitia est. Quo eum accusamus sit iste quo facere.', 'Necessitatibus voluptate voluptatem nostrum aliquid maxime numquam sit. Perspiciatis consequatur natus voluptatem ea. Nobis sed nihil quisquam aliquam. Voluptatem illo dolor dolorem dicta id ratione. Temporibus eum et quasi iste. Optio quam rerum non. Provident libero dolores minus mollitia sed vel. Atque ratione quia deleniti placeat veniam. Cumque iste maiores totam doloremque. Eum itaque ut et ullam libero. Odit temporibus accusantium odio fuga.', '71.00', NULL, 'STAI284', 'in_stock', 0, 68, 'digital_16.jpg', NULL, 1, '2022-05-05 03:32:06', '2022-05-15 05:16:26', 15),
(21, 'Humidifier', 'humidifier', 'Earum illum exercitationem sit quis tempore sunt quibusdam. Velit incidunt est deserunt eaque consequatur eaque est. Totam soluta quis molestias praesentium quos veritatis.', 'Blanditiis hic ut doloribus vero. Mollitia laborum enim voluptatem reiciendis modi nihil qui. Molestiae id mollitia totam error. Similique voluptas expedita rerum voluptates. Provident alias modi alias rem voluptas id nam. Rerum natus incidunt nisi sit est. Cumque sint ratione consequatur impedit similique quos aspernatur sapiente. In fugit non est modi dolor qui ea.', '184.00', NULL, 'STAI336', 'in_stock', 0, 36, 'digital_17.jpg', NULL, 4, '2022-05-05 03:32:06', '2022-05-15 05:17:26', NULL),
(22, 'Tianlong VR BOX Virtual Reality Home Cinema 3D Glasses', 'tianlong-vr-box-virtual-reality-home-cinema-3d-glasses', 'Eum ipsa magni doloremque et fugiat sequi repudiandae et. Aspernatur vero maxime ea omnis et. Deleniti quam autem ut ipsa.', 'Assumenda corrupti voluptatem eos molestiae. Sit itaque suscipit voluptatibus officiis esse. Illo dolores esse sed consequatur magni quaerat sed. Cumque numquam nihil perspiciatis non iusto. Nulla officia et fuga voluptatem. Velit aut praesentium dolore soluta sit veniam quae tenetur. Laboriosam nam a aut quis veniam. Quidem eaque expedita est sapiente. Ipsam quasi delectus sed soluta perferendis eius. Nam aspernatur autem excepturi earum dolore accusamus qui.', '304.00', NULL, 'STAI200', 'in_stock', 0, 31, 'digital_12.jpg', NULL, 2, '2022-05-05 03:32:06', '2022-05-15 05:17:57', 11),
(28, 'New New product', 'new-new-product', 'xxxdfagfaf', 'baanbana', '1442.00', NULL, 'wdas12', 'in_stock', 0, 23, '1651900303.png', NULL, 3, '2022-05-06 22:11:43', '2022-05-06 22:11:43', NULL),
(29, 'Logitech G502 HERO', 'logitech-g502-hero', '<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\"><strong>G502 HERO</strong></span> dilengkapi sensor optik terbaik untuk akurasi penelusuran maksimum, pencahayaan RGB yang disesuaikan, profil game khusus, dari 200 hingga 25.600 DPI, dan pemberat yang dapat diposisikan ulang.</p>', '<h4><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Spesifikasi Teknis</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Sensor: HERO\'</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Resolusi: 100 \'\'\" 16.000 dpi</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Zero smoothing/akselerasi/filtering</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Maks. akselerasi: &gt; 40 G2</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Maks. kecepatan: &gt; 400 IPS2</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Format data USB: 16 bit/axis</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Report rate USB: 1.000 Hz (1 md)</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Mikroprosesor: 32-bit ARM</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Tombol utama: 50 juta klik</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">-Alas PTFE: 250 kilometer2</span></h4>\n<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Fitur lain</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Onboard memory: 5 profil</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- LIGHTSYNC RGB: 1 zona</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Braided cable</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Spesifikasi fisik</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tinggi: 132 mm, Lebar: 75 mm</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tebal: 40 mm</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Berat: 121 g, mouse saja</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Pemberat tambahan opsional: hingga 18 g (5x3,6 g)</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Panjang kabel: 2,10 m</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Persyaratan Sistem</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Windows\" 7 atau versi terbaru</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- macOS 10.11 atau versi terbaru</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Chrome OS\'</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Port USB</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Konten Kemasan</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- G502 HERO Gaming Mouse</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Pemberat 5x 3,6 g opsional</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Dokumentasi pengguna</span></p>', '79.99', '49.99', 'G502', 'in_stock', 0, 42, '1651916831.jpg', NULL, 11, '2022-05-07 02:47:11', '2022-05-15 05:18:41', 20),
(30, 'Hololive', 'hololive', '<p><span style=\"color: #62686f; font-family: \'work sans\', \'ヒラギノ角ゴ Pro W3\', \'Hiragino Kaku Gothic Pro\', Osaka, メイリオ, Meiryo, \'ＭＳ Ｐゴシック\', \'MS PGothic\', sans-serif; font-size: 20px; background-color: #ffffff;\">「ホロライブプロダクション」は、YouTubeで約5000万人のファンがいる、日本だけでなく世界でも人気のVTuber事務所です。</span></p>', '<p>Hololive Production is a virtual YouTuber agency owned by Japanese tech entertainment company Cover Corporation. In addition to acting as a multi-channel network, Hololive Production also handles merchandising especially in music production and concert organization.</p>', '420.00', '400.00', 'holo420', 'in_stock', 0, 420, '1652107835.jpg', ',16521078350.png,16521078351.png,16521078352.png,16521078353.png,16521078354.png,16521078355.jpg,16521078356.png,16521078357.png,16521078358.png,16521078359.png,165210783510.png,165210783511.png,165210783512.png', 7, '2022-05-09 07:50:35', '2022-05-09 07:50:35', NULL),
(31, 'Test Delete Product', 'test-delete-product', '<p>test delete</p>', '<p>test delete</p>', '15123.00', '1423.00', 'test123', 'in_stock', 0, 123, '1652195713.png', NULL, 7, '2022-05-10 08:15:13', '2022-05-10 08:15:13', NULL),
(33, 'Testproduct1', 'testproduct1', '<p>test</p>', '<p>test</p>', '123.00', NULL, 'test123', 'in_stock', 0, 12, '1652319069.jpg', NULL, 7, '2022-05-11 18:31:09', '2022-05-15 05:19:37', NULL),
(34, 'Keychron K2 RGB Backlight Plastic Frame Wireless Mechanical Keyboard - Brown Switch', 'keychron-k2-rgb-backlight-plastic-frame-wireless-mechanical-keyboard-brown-switch', '<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">What\'s new on K2v2</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Bluetooth 5.1</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Inclined bottom frame.</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Added dedicated caps lock indicator light</span></p>', '<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">The K2 can be used with Bluetooth or with a cable. Connect with your phone, laptop or iPad.</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Connect the keyboard wirelessly with up to 3 devices at once and switch between the screens via fn + 1/2/3 (not f1). You can also use our type-C cable to connect the keyboard to your devices.</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Compatible with all operating systems from Mac to Android to Windows. K2 is one of the few mechanical keyboard featuring Mac layout media keys. It allows you to use all the same media keys as conventional macOS.</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Every K2 keyboard comes with 3 specific keycaps for Mac and Windows, respectively. K2&rsquo;s 84 key design by retaining all the essential function keys like Page Up/Down, Home, End, and Screen capture (cmd+shift+4) which are important for your productivity.</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">With N-key rollover (NKRO on wired mode only) you can register as many keys as you can press at once without missing out characters.</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">The K2 can last up to 72 hours typing, or up to 9 days of normal use (8 hrs/day) with a 4000 mAh big battery.</span></p>', '59.99', NULL, 'keyb001', 'in_stock', 1, 40, '1652319413.jpg', ',16523194130.jpg,16523194131.jpg,16523194132.jpg,16523194133.jpg,16523194134.jpg', 11, '2022-05-11 18:36:53', '2022-05-15 05:19:42', 5),
(35, 'Canon EOS 2000D', 'canon-eos-2000d', '<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Garansi 1 Tahun</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Free :</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">- Anti gores</span></p>', '<ul class=\"css-yxla8g e1iszlzh2\" style=\"box-sizing: inherit; display: flex; flex-flow: column wrap; height: 120px; margin-bottom: -4px; padding: 0px; color: rgba(0, 0, 0, 0.54); font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\" data-testid=\"lblPDPInfoProduk\">\n<li class=\"css-1dmo88g\" style=\"box-sizing: inherit; max-width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin: 0px 12px 4px 0px; padding: 0px; list-style-type: none; color: var(--n700,rgba(49,53,59,0.96)); font-size: 1rem; line-height: 20px; font-family: \'open sans\', tahoma, sans-serif;\"><span style=\"box-sizing: inherit; color: var(--n700,rgba(49,53,59,0.68));\">Kondisi:&nbsp;</span><span class=\"main\" style=\"box-sizing: inherit; color: var(--n700,rgba(49,53,59,0.96));\">Baru</span></li>\n<li class=\"css-1dmo88g\" style=\"box-sizing: inherit; max-width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin: 0px 12px 4px 0px; padding: 0px; list-style-type: none; color: var(--n700,rgba(49,53,59,0.96)); font-size: 1rem; line-height: 20px; font-family: \'open sans\', tahoma, sans-serif;\"><span style=\"box-sizing: inherit; color: var(--n700,rgba(49,53,59,0.68));\">Berat:&nbsp;</span><span class=\"main\" style=\"box-sizing: inherit; color: var(--n700,rgba(49,53,59,0.96));\">1.000 Gram</span></li>\n<li class=\"css-1dmo88g\" style=\"box-sizing: inherit; max-width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin: 0px 12px 4px 0px; padding: 0px; list-style-type: none; color: var(--n700,rgba(49,53,59,0.96)); font-size: 1rem; line-height: 20px; font-family: \'open sans\', tahoma, sans-serif;\"><span style=\"box-sizing: inherit; color: var(--n700,rgba(49,53,59,0.68));\">Kategori:&nbsp;</span><a style=\"box-sizing: inherit; background-color: transparent; text-decoration-line: none;\" href=\"https://www.tokopedia.com/p/kamera/digital/kamera-dslr\" target=\"_blank\" rel=\"noopener noreferrer\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Kamera DSLR</span></a></li>\n<li class=\"css-1dmo88g\" style=\"box-sizing: inherit; max-width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin: 0px 12px 4px 0px; padding: 0px; list-style-type: none; color: var(--n700,rgba(49,53,59,0.96)); font-size: 1rem; line-height: 20px; font-family: \'open sans\', tahoma, sans-serif;\"><span style=\"box-sizing: inherit; color: var(--n700,rgba(49,53,59,0.68));\">Etalase:&nbsp;</span><a style=\"box-sizing: inherit; background-color: transparent; text-decoration-line: none;\" href=\"https://www.tokopedia.com/lystastore/etalase/canon\" target=\"_blank\" rel=\"noopener noreferrer\"><span style=\"box-sizing: inherit; font-weight: bolder;\">CANON</span></a></li>\n<li class=\"css-1dmo88g\" style=\"box-sizing: inherit; max-width: 100%; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin: 0px 12px 4px 0px; padding: 0px; list-style-type: none; color: var(--n700,rgba(49,53,59,0.96)); font-size: 1rem; line-height: 20px; font-family: \'open sans\', tahoma, sans-serif;\"><span style=\"box-sizing: inherit; color: var(--n700,rgba(49,53,59,0.68));\">Katalog:&nbsp;</span><a style=\"box-sizing: inherit; background-color: transparent; text-decoration-line: none;\" href=\"https://www.tokopedia.com/catalog/canon-73162/canon-eos-2000d\" target=\"_blank\" rel=\"noopener noreferrer\"><span style=\"box-sizing: inherit; font-weight: bolder;\">Canon EOS 2000D</span></a></li>\n</ul>', '550.00', '499.00', 'dslr001', 'in_stock', 0, 12, '1652615060.jpg', NULL, 2, '2022-05-15 04:44:20', '2022-05-15 04:44:20', 8),
(36, 'Legendary Treasure Map', 'legendary-treasure-map', '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #f9f9f9;\">Unlike the other types of maps, this treasure map is comprised of 4 states, which means that it requires more steps to obtain the prize.</span></p>', '<p><span style=\"color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; background-color: #f9f9f9;\">Unlike the other types of maps, this treasure map is comprised of 4 states, which means that it requires more steps to obtain the prize.</span></p>', '399.00', NULL, 'map001', 'in_stock', 1, 1, '1652618308.png', NULL, 3, '2022-05-15 05:38:28', '2022-05-15 05:38:28', NULL),
(37, 'Wolf\'s Gravestone', 'wolfs-gravestone', '<p>Test</p>', '<p>Test2</p>', '420.00', '399.00', 'hoyo001', 'in_stock', 0, 1, '1652618736.png', NULL, 3, '2022-05-15 05:45:36', '2022-05-15 05:45:36', NULL),
(38, 'ASUS ROG FLOW Z13', 'asus-rog-flow-z13', '<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Garansi Resmi Asus Indonesia 2 Tahun (1st Year VIP Perfect Warranty)</span></p>', '<p><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">SPESIFIKASI</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">CPU : 12th Gen Intel Core i7-12700H 2.3 GHz 24M Cache</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Up to 4.7 GHz, 14 cores: 6 P-cores and 8 E-cores)</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">GPU : NVIDIA GeForce RTX 3050</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Laptop GPU 4GB GDDR6 MUX Switch + Optimus</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">ROG Boost: 1107.5MHz* at 40W (1057.5MHz Boost Clock+50MHz OC, 35W+5W Dynamic Boost)</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Display : 13.4-inch WUXGA (1920 x 1200) 16:10 Touch Screen IPS-level, Refresh Rate 120Hz Adaptive-Sync, Brightness 500nits, sRGB % 100%, Pantone Validated</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Memory : 16GB (8GB*2 LPDDR5 on board)</span><br style=\"box-sizing: inherit; color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: rgba(49, 53, 59, 0.96); font-family: \'open sans\', tahoma, sans-serif; font-size: 14px; background-color: #ffffff;\">Storage : 512GB M.2 2230 NVMe&trade; PCIe&reg; 4.0 SSD</span></p>', '399.00', NULL, 'rog001', 'in_stock', 1, 42, '1652619596.jpg', ',16526195960.jpg,16526195961.jpg,16526195962.jpg,16526195963.jpg,16526195964.jpg', 11, '2022-05-15 05:59:56', '2022-05-15 05:59:56', 22);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, '1652591635.png', '08123123123', 'Address Line 1', 'Address Line 2', 'City', 'Province', 'Country', '12345', '2022-05-14 21:47:31', '2022-05-14 22:13:55'),
(2, 3, '1652607454.png', '08423532', 'Address Line 1', 'Adress Line 2', 'City', 'Province', 'Country', '232123', '2022-05-15 02:36:29', '2022-05-15 02:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(1, 4, 'not bad.', 8, '2022-05-08 07:31:04', '2022-05-08 07:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-06-07 03:39:59', 1, NULL, '2022-05-15 05:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('rDPjrUVs6smGl0o4exi9jKiJSZ2heeLdqn7bxNYs', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVmxwdU9MM0FoRDZKZjB3Y2hRaHBySkk5SVFQQlRnbDJKcEFVcVlvYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo5OiJ1c2VyX3R5cGUiO3M6NToiYWRtaW4iO3M6NDoiY2FydCI7YToyOntzOjQ6ImNhcnQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjJjNTA5M2VkODViMWRjZWMwNWI3MjA1YmVhMGU1ZWM2IjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6OTp7czo1OiJyb3dJZCI7czozMjoiMmM1MDkzZWQ4NWIxZGNlYzA1YjcyMDViZWEwZTVlYzYiO3M6MjoiaWQiO2k6MzE7czozOiJxdHkiO2k6MTtzOjQ6Im5hbWUiO3M6MTk6IlRlc3QgRGVsZXRlIFByb2R1Y3QiO3M6NToicHJpY2UiO2Q6MTQyMztzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjExO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1652625089);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `instagram`, `linkedin`, `github`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'chris.richard.halim@gmail.com', '123 1234 1234', '123 1234 1234', 'おすし', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d103801.1567688253!2d139.69330949404315!3d35.608341373911585!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188afb30700001%3A0xc59814627801a875!2sSushiro!5e0!3m2!1sen!2sid!4v1652059284888!5m2!1sen!2sid', 'https://twitter.com/kurokikurisu', '#', 'https://www.linkedin.com/in/haneure', 'https://github.com/haneure', 'https://www.youtube.com/channel/UCatpnFjN8n5lbAQbFWnpOJA', '2022-05-08 10:08:58', '2022-05-15 07:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(3, 11, 'Christian', 'Halim', '12341234', 'chris.richard.halim@gmail.com', 'banana', 'bananana', 'Tangerang', 'Banten', 'Japan', '15810', '2022-05-10 10:06:46', '2022-05-10 10:06:46'),
(4, 12, 'Banana', 'Bananana', '124123', 'chris.richard.halim@gmail.com', 'awefawpa Dua', 'awdfwadwf', 'Tangerang', 'Banten', 'Japan', '15810', '2022-05-10 10:07:54', '2022-05-10 10:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@admin.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";s:2:\"id\";i:31;s:3:\"qty\";i:1;s:4:\"name\";s:19:\"Test Delete Product\";s:5:\"price\";d:1423;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-15 06:22:43', NULL),
('admin@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-15 06:22:43', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";s:2:\"id\";i:31;s:3:\"qty\";i:1;s:4:\"name\";s:19:\"Test Delete Product\";s:5:\"price\";d:1423;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"efd03aa5a47152330a89eadb9b09fe52\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"efd03aa5a47152330a89eadb9b09fe52\";s:2:\"id\";i:29;s:3:\"qty\";i:1;s:4:\"name\";s:18:\"Logitech G502 HERO\";s:5:\"price\";d:79.99;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-12 02:10:11', NULL),
('user@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"eef12573176125ce53e333e13d747a17\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"eef12573176125ce53e333e13d747a17\";s:2:\"id\";i:12;s:3:\"qty\";i:1;s:4:\"name\";s:24:\"et accusamus aliquid qui\";s:5:\"price\";d:383;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"18d6934483b994fb9943b43b7d7646bf\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"18d6934483b994fb9943b43b7d7646bf\";s:2:\"id\";i:8;s:3:\"qty\";i:1;s:4:\"name\";s:24:\"accusamus fuga aut animi\";s:5:\"price\";d:458;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-12 02:10:11', NULL),
('user2@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-15 03:51:23', NULL),
('user2@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:3:{s:32:\"1d3bf986c109d443f161bb3962491282\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"1d3bf986c109d443f161bb3962491282\";s:2:\"id\";i:34;s:3:\"qty\";i:1;s:4:\"name\";s:83:\"Keychron K2 RGB Backlight Plastic Frame Wireless Mechanical Keyboard - Brown Switch\";s:5:\"price\";d:59.99;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:17:\"qui est aut porro\";s:5:\"price\";d:460;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:20:\"et ut debitis libero\";s:5:\"price\";d:455;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:11;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-15 03:51:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 'Mechanical Keyboard', 'mechanicalkeyboard', 11, '2022-05-12 02:54:38', '2022-05-15 05:19:05'),
(8, 'Kamera DSLR', 'kamera-dslr', 2, '2022-05-15 04:43:10', '2022-05-15 04:43:10'),
(9, 'Monitor', 'monitor', 11, '2022-05-15 04:49:57', '2022-05-15 04:49:57'),
(10, 'Kamera Mirrorless', 'kamera-mirrorless', 2, '2022-05-15 04:51:50', '2022-05-15 04:51:50'),
(11, 'Kamera VR', 'kamera-vr', 2, '2022-05-15 04:51:55', '2022-05-15 04:51:55'),
(12, 'Smartphone', 'smartphone', 5, '2022-05-15 04:57:03', '2022-05-15 04:57:03'),
(13, 'Tablet', 'tablet', 5, '2022-05-15 04:57:08', '2022-05-15 04:57:08'),
(14, 'Laptop', 'laptop', 11, '2022-05-15 04:59:06', '2022-05-15 04:59:06'),
(15, 'Audio', 'audio', 1, '2022-05-15 05:08:24', '2022-05-15 05:08:24'),
(16, 'Kamera Security', 'kamera-security', 2, '2022-05-15 05:11:32', '2022-05-15 05:11:32'),
(17, 'TV', 'tv', 1, '2022-05-15 05:12:38', '2022-05-15 05:12:38'),
(18, 'Aksesoris Gaming', 'aksesoris-gaming', 11, '2022-05-15 05:14:01', '2022-05-15 05:14:01'),
(19, 'Kamera 360', 'kamera-360', 2, '2022-05-15 05:15:50', '2022-05-15 05:15:50'),
(20, 'Gaming Mouse', 'gaming-mouse', 11, '2022-05-15 05:18:30', '2022-05-15 05:19:17'),
(21, 'Wearable Device', 'wearable-device', 5, '2022-05-15 05:21:13', '2022-05-15 05:21:13'),
(22, 'Laptop Gaming', 'laptop-gaming', 11, '2022-05-15 05:57:51', '2022-05-15 05:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 6, 'card', 'approved', '2022-05-08 01:48:23', '2022-05-08 01:48:23'),
(4, 3, 7, 'cod', 'pending', '2022-05-08 02:57:27', '2022-05-08 02:57:27'),
(5, 2, 8, 'cod', 'pending', '2022-05-08 03:18:10', '2022-05-08 03:18:10'),
(6, 2, 9, 'cod', 'pending', '2022-05-08 04:06:54', '2022-05-08 04:06:54'),
(7, 2, 10, 'cod', 'pending', '2022-05-10 09:50:27', '2022-05-10 09:50:27'),
(8, 2, 11, 'cod', 'pending', '2022-05-10 10:06:46', '2022-05-10 10:06:46'),
(9, 2, 12, 'cod', 'pending', '2022-05-10 10:07:54', '2022-05-10 10:07:54'),
(10, 2, 13, 'cod', 'pending', '2022-05-10 10:09:03', '2022-05-10 10:09:03'),
(11, 2, 14, 'cod', 'pending', '2022-05-10 10:10:43', '2022-05-10 10:10:43'),
(12, 3, 15, 'cod', 'pending', '2022-05-12 01:57:49', '2022-05-12 01:57:49'),
(13, 3, 16, 'cod', 'pending', '2022-05-15 03:37:26', '2022-05-15 03:37:26'),
(14, 3, 17, 'cod', 'pending', '2022-05-15 03:39:30', '2022-05-15 03:39:30');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT 'user, admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$MtVKPqUmAfO4C.Vnvlb13O3Myk.LhkxWffoFNeJh.Y2c/YRbtQAhy', NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2022-05-05 21:24:17', '2022-05-05 21:24:17'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$EzkAJyMoKZVE3SSWyXh3LunR2kdeZHTcvB3yPLxtcuhvKi7YeRv9q', NULL, NULL, NULL, NULL, NULL, NULL, 'user', '2022-05-07 23:41:14', '2022-05-08 08:34:41'),
(3, 'user 2', 'user2@gmail.com', NULL, '$2y$10$uGS/YlzUJuXTinU/femanOt1vthndDsYhsRudBcFC8GTDyrZcP68K', NULL, NULL, NULL, NULL, NULL, NULL, 'user', '2022-05-08 02:56:20', '2022-05-08 02:56:20'),
(4, 'Christian Richard Halim', 'chris.richard.halim@gmail.com', NULL, '$2y$10$1Dg.fnktYsP8rWCuMg9oY.kfVLU9CfRcqJjGag4F3HCUA2MJMgnmy', NULL, NULL, NULL, 'hhpoWcQkbmxoOk8Tk9KPFOBXnc4n2QnGWwDHKJ5v8ZSBHq0P0kiDB1p885tV', NULL, NULL, 'user', '2022-05-09 08:08:06', '2022-05-09 08:32:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
