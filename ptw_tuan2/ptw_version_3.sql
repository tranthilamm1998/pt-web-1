-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 07:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptw`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `customer_id`, `payment_id`, `total`) VALUES
(1, 1, 2, 550000),
(2, 2, 3, 600000);

-- --------------------------------------------------------

--
-- Table structure for table `bookdetail`
--

CREATE TABLE `bookdetail` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `flight_id` int(10) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL,
  `seattype_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `code`, `country_id`, `created_at`, `updated_at`) VALUES
(3, 'Lillamouth', 'PW', 1, '2019-03-04 18:17:48', '2019-03-04 18:17:48'),
(4, 'Ritchieland', 'DM', 2, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(5, 'West Alba', 'HU', 3, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(6, 'Kovacekport', 'GI', 3, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(7, 'Kuphalfurt', 'BW', 1, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(8, 'Saraiside', 'DJ', 2, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(9, 'Armstrongburgh', 'AQ', 2, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(10, 'Port Oswald', 'BA', 3, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(11, 'Rogahnfort', 'RE', 1, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(12, 'New Jesse', 'NE', 5, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(13, 'West Mariahshire', 'CI', 5, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(14, 'Torphymouth', 'ZW', 3, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(15, 'Parkermouth', 'NO', 4, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(16, 'South Charleneport', 'FR', 1, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(17, 'New Kieran', 'LC', 2, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(18, 'North Malachi', 'TM', 4, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(19, 'North Saulhaven', 'IT', 1, '2019-03-04 18:17:49', '2019-03-04 18:17:49'),
(20, 'Kuhnville', 'CR', 1, '2019-03-04 18:17:50', '2019-03-04 18:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'HungaryTestTESTSET', 'UZCS', '2019-03-04 18:17:48', '2019-03-06 05:44:42'),
(2, 'Central African Republic', 'MPCC', '2019-03-04 18:17:48', '2019-03-06 00:35:03'),
(3, 'Bosnia and Herzegovina', 'MS', '2019-03-04 18:17:48', '2019-03-04 18:17:48'),
(4, 'Somalia', 'NI', '2019-03-04 18:17:48', '2019-03-04 18:17:48'),
(5, 'Viet Nam', 'VN', '2019-03-04 18:17:48', '2019-03-04 18:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen van ', 'A', '0123456789', NULL, NULL),
(2, 'Nguyen Van ', 'B', '9876543210', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flightdetails`
--

CREATE TABLE `flightdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `time_s` datetime NOT NULL,
  `time_e` datetime NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flightdetails`
--

INSERT INTO `flightdetails` (`id`, `name`, `code`, `from_id`, `to_id`, `time_s`, `time_e`, `price`, `created_at`, `updated_at`) VALUES
(1, 'asdasda', 'AAA', 6, 20, '2019-03-06 09:00:00', '2019-03-13 14:00:00', 15000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flightseat`
--

CREATE TABLE `flightseat` (
  `id` int(10) UNSIGNED NOT NULL,
  `flight_id` int(10) UNSIGNED NOT NULL,
  `seat_id` int(10) UNSIGNED NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(43, '2019_02_26_022557_reset', 1),
(197, '2019_02_26_010600_create_searches_table', 2),
(200, '2019_02_28_060314_create_registers_table', 2),
(331, '2014_10_12_000000_create_users_table', 3),
(332, '2014_10_12_100000_create_password_resets_table', 3),
(333, '2019_02_23_064120_create_countries_table', 3),
(334, '2019_02_23_085344_create_cities_table', 3),
(335, '2019_02_26_013338_create_seatypes_table', 3),
(336, '2019_02_26_124456_create_flightdetails_table', 3),
(337, '2019_03_04_225404_create_customers_table', 3),
(338, '2019_03_04_232738_create_payments_table', 3),
(339, '2019_03_04_235211_create_flightseat_table', 3),
(340, '2019_03_05_001424_create_book_table', 3),
(341, '2019_03_05_004745_create_bookdetail_table', 3),
(342, '2019_03_05_010537_create_airport_table', 3),
(343, '2019_03_05_011201_create_airline_table', 3);

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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Transfer', NULL, NULL),
(2, 'Credit Card', NULL, NULL),
(3, 'Paypal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seattype`
--

CREATE TABLE `seattype` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seattype`
--

INSERT INTO `seattype` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Economy', 19, '2019-03-04 18:17:50', '2019-03-04 18:17:50'),
(2, 'Business', 100, '2019-03-04 18:17:50', '2019-03-04 18:17:50'),
(3, 'Premium Economy', 32, '2019-03-04 18:17:50', '2019-03-04 18:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt` tinyint(4) NOT NULL DEFAULT '0',
  `last_access` timestamp NULL DEFAULT NULL,
  `expired` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `remember_token`, `attempt`, `last_access`, `expired`, `created_at`, `updated_at`) VALUES
(1, 'Jordon Thiel', 'amara96@example.net', '$2y$10$UhiaMUbrFzyaprOh1C487uU/.uDvQA3wiW.HApwtJeECa3kPo52aW', 'sFXFiJzWtm', 'YWPKwc1qTF', 0, NULL, NULL, '2019-03-04 18:17:47', '2019-03-05 03:36:59'),
(2, 'Lorine Gutmann', 'junius58@example.net', '$2y$10$UhiaMUbrFzyaprOh1C487uU/.uDvQA3wiW.HApwtJeECa3kPo52aW', 'pZXLwNuvUd', 'xlbfSAMakP', 0, NULL, NULL, '2019-03-04 18:17:48', '2019-03-04 18:17:48'),
(3, 'Dr. Maryjane Reynolds DVM', 'francesca45@example.net', '$2y$10$UhiaMUbrFzyaprOh1C487uU/.uDvQA3wiW.HApwtJeECa3kPo52aW', 'U2yC5DO7eZ', 'wRGSzo2onz', 0, NULL, NULL, '2019-03-04 18:17:48', '2019-03-04 18:17:48'),
(4, 'Dr. Dannie Howell', 'tmante@example.com', '$2y$10$UhiaMUbrFzyaprOh1C487uU/.uDvQA3wiW.HApwtJeECa3kPo52aW', 't4dwQvgmaJ', '424uZ473a2', 0, NULL, NULL, '2019-03-04 18:17:48', '2019-03-04 18:17:48'),
(5, 'Mrs. Gina Runte', 'larissa68@example.org', '$2y$10$UhiaMUbrFzyaprOh1C487uU/.uDvQA3wiW.HApwtJeECa3kPo52aW', 'EnB3UYNNVc', 'GL38DXlmxY', 0, NULL, NULL, '2019-03-04 18:17:48', '2019-03-04 18:17:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `airline_code_unique` (`code`),
  ADD KEY `airline_country_id_foreign` (`country_id`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `airport_code_unique` (`code`),
  ADD KEY `airport_city_id_foreign` (`city_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_customer_id_foreign` (`customer_id`),
  ADD KEY `book_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `bookdetail`
--
ALTER TABLE `bookdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookdetail_book_id_foreign` (`book_id`),
  ADD KEY `bookdetail_flight_id_foreign` (`flight_id`),
  ADD KEY `bookdetail_seattype_id_foreign` (`seattype_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_code_unique` (`code`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightdetails`
--
ALTER TABLE `flightdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flightdetails_code_unique` (`code`),
  ADD KEY `flightdetails_from_id_foreign` (`from_id`),
  ADD KEY `flightdetails_to_id_foreign` (`to_id`);

--
-- Indexes for table `flightseat`
--
ALTER TABLE `flightseat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flightseat_flight_id_foreign` (`flight_id`),
  ADD KEY `flightseat_seat_id_foreign` (`seat_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `seattype`
--
ALTER TABLE `seattype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seattype_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookdetail`
--
ALTER TABLE `bookdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flightdetails`
--
ALTER TABLE `flightdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flightseat`
--
ALTER TABLE `flightseat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seattype`
--
ALTER TABLE `seattype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airline`
--
ALTER TABLE `airline`
  ADD CONSTRAINT `airline_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `airport`
--
ALTER TABLE `airport`
  ADD CONSTRAINT `airport_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookdetail`
--
ALTER TABLE `bookdetail`
  ADD CONSTRAINT `bookdetail_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookdetail_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flightdetails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookdetail_seattype_id_foreign` FOREIGN KEY (`seattype_id`) REFERENCES `seattype` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flightdetails`
--
ALTER TABLE `flightdetails`
  ADD CONSTRAINT `flightdetails_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flightdetails_to_id_foreign` FOREIGN KEY (`to_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flightseat`
--
ALTER TABLE `flightseat`
  ADD CONSTRAINT `flightseat_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flightdetails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flightseat_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `seattype` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
