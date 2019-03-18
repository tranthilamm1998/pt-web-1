-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 09:38 AM
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

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`id`, `name`, `code`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Airline Tài', 'AT', 1, NULL, NULL),
(2, 'Airline Lam', 'AL', 2, NULL, NULL),
(3, 'VietNam airline', 'VNAR', 9, NULL, NULL),
(4, 'Japan Airline', 'JPAR', 13, NULL, NULL);

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

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`id`, `name`, `code`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Tan Son Nhat', 'TSN', 21, NULL, NULL),
(2, 'Sakura', 'Sa', 22, NULL, NULL);

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
(1, 'Kautzerbury', 'MY', 3, '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(2, 'Edythland', 'NP', 4, '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(3, 'Fridashire', 'GR', 2, '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(4, 'Haneburgh', 'JO', 4, '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(5, 'Moisesmouth', 'SJ', 1, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(6, 'Vonview', 'BR', 4, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(7, 'South Orval', 'CO', 1, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(8, 'Maxwellchester', 'UG', 3, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(9, 'East Nadiaville', 'CZ', 3, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(10, 'Israelland', 'EE', 1, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(11, 'East Mona', 'SI', 4, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(12, 'Lake Bernieceburgh', 'PR', 1, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(13, 'Port Cristian', 'NC', 1, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(14, 'Dibbertchester', 'FJ', 3, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(15, 'West Serena', 'MZ', 4, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(16, 'West Christianaville', 'NF', 2, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(17, 'Bauchburgh', 'ER', 2, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(18, 'North Leastad', 'HM', 1, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(19, 'North Einarshire', 'RU', 3, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(20, 'Sipesborough', 'TT', 4, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(21, 'Ho Chi Minh', 'HCM', 9, NULL, NULL),
(22, 'Tokio', 'KTO', 13, NULL, NULL);

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
(1, 'Guinea-Bissau', 'BD', '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(2, 'Kuwait', 'CN', '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(3, 'Namibia', 'UZ', '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(4, 'Russian Federation', 'LC', '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(5, 'Saint Barthelemy', 'LS', '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(6, 'wrwer', 'w', NULL, NULL),
(9, 'VietNam', 'VN', NULL, NULL),
(12, 'China', 'CN1', NULL, NULL),
(13, 'Japan', 'JP', NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `distances`
--

CREATE TABLE `distances` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_id` int(10) UNSIGNED NOT NULL,
  `to_id` int(10) UNSIGNED NOT NULL,
  `total_distance` int(11) NOT NULL,
  `total_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distances`
--

INSERT INTO `distances` (`id`, `from_id`, `to_id`, `total_distance`, `total_time`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5000, 10000, NULL, NULL),
(2, 21, 22, 200, 1000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flightdetails`
--

CREATE TABLE `flightdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `airline_id` int(10) UNSIGNED NOT NULL,
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

INSERT INTO `flightdetails` (`id`, `airline_id`, `code`, `from_id`, `to_id`, `time_s`, `time_e`, `price`, `created_at`, `updated_at`) VALUES
(2, 1, '123123', 1, 2, '2019-07-18 01:01:00', '2019-07-24 23:41:00', 20000000, NULL, NULL),
(3, 3, '1234r54', 21, 22, '2019-07-19 03:03:00', '2019-07-19 19:43:00', 1000000, NULL, NULL);

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
(344, '2019_03_06_153549_create_airlines_table', 4),
(401, '2019_03_05_011201_create_airline_table', 5),
(419, '2014_10_12_000000_create_users_table', 6),
(420, '2014_10_12_100000_create_password_resets_table', 6),
(421, '2019_02_23_064120_create_countries_table', 6),
(422, '2019_02_23_085344_create_cities_table', 6),
(423, '2019_02_25_011201_create_airline_table', 6),
(424, '2019_02_26_013338_create_seatypes_table', 6),
(425, '2019_02_26_124456_create_flightdetails_table', 6),
(426, '2019_03_04_225404_create_customers_table', 6),
(427, '2019_03_04_232738_create_payments_table', 6),
(428, '2019_03_04_235211_create_flightseat_table', 6),
(429, '2019_03_05_001424_create_book_table', 6),
(430, '2019_03_05_004745_create_bookdetail_table', 6),
(431, '2019_03_05_010537_create_airport_table', 6),
(432, '2019_03_09_115412_create_distances_table', 6),
(433, '2019_03_09_124256_create_rela_countries_table', 6);

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

-- --------------------------------------------------------

--
-- Table structure for table `rela_countries`
--

CREATE TABLE `rela_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_country_id` int(10) UNSIGNED NOT NULL,
  `to_country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rela_countries`
--

INSERT INTO `rela_countries` (`id`, `from_country_id`, `to_country_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(4, 2, 3, NULL, NULL),
(5, 9, 13, NULL, NULL);

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
(1, 'Esteban Cartwright', 20, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(2, 'Albertha Lang PhD', 34, '2019-03-13 07:04:59', '2019-03-13 07:04:59'),
(3, 'Marilie Lubowitz MD', 10, '2019-03-13 07:04:59', '2019-03-13 07:04:59');

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
(1, 'Freeman Murphy', 'lkilback@example.org', '$2y$10$hNmrYVndr3/KIHmIsaBgnuu8J4WlnvhPHWBTuL4LIjQFpM7OJjF3i', 'aUw9HWP5Bi', 'Z4XvN9eVAA', 0, NULL, NULL, '2019-03-13 07:04:57', '2019-03-13 07:04:57'),
(2, 'Dr. Abby Schroeder', 'jaskolski.fermin@example.net', '$2y$10$hNmrYVndr3/KIHmIsaBgnuu8J4WlnvhPHWBTuL4LIjQFpM7OJjF3i', '6IvKDqhHYz', 'Fi0LXwoSWN', 0, NULL, NULL, '2019-03-13 07:04:57', '2019-03-13 07:04:57'),
(3, 'Olen Hane I', 'hchristiansen@example.org', '$2y$10$hNmrYVndr3/KIHmIsaBgnuu8J4WlnvhPHWBTuL4LIjQFpM7OJjF3i', 'HFM34A0hEu', '73lDSAuZSx', 0, NULL, NULL, '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(4, 'Prof. Leann Hoeger', 'ftoy@example.net', '$2y$10$hNmrYVndr3/KIHmIsaBgnuu8J4WlnvhPHWBTuL4LIjQFpM7OJjF3i', 'baZkqbbzSL', '55tmNJLmxI', 0, NULL, NULL, '2019-03-13 07:04:58', '2019-03-13 07:04:58'),
(5, 'Jane Goyette', 'ofranecki@example.org', '$2y$10$hNmrYVndr3/KIHmIsaBgnuu8J4WlnvhPHWBTuL4LIjQFpM7OJjF3i', 'a3kz7KRfPo', '8H4WujjTJm', 0, NULL, NULL, '2019-03-13 07:04:58', '2019-03-13 07:04:58');

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
-- Indexes for table `distances`
--
ALTER TABLE `distances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distances_from_id_foreign` (`from_id`),
  ADD KEY `distances_to_id_foreign` (`to_id`);

--
-- Indexes for table `flightdetails`
--
ALTER TABLE `flightdetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `flightdetails_code_unique` (`code`),
  ADD KEY `flightdetails_airline_id_foreign` (`airline_id`),
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
-- Indexes for table `rela_countries`
--
ALTER TABLE `rela_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rela_countries_from_country_id_foreign` (`from_country_id`),
  ADD KEY `rela_countries_to_country_id_foreign` (`to_country_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookdetail`
--
ALTER TABLE `bookdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `distances`
--
ALTER TABLE `distances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flightdetails`
--
ALTER TABLE `flightdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flightseat`
--
ALTER TABLE `flightseat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rela_countries`
--
ALTER TABLE `rela_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- Constraints for table `distances`
--
ALTER TABLE `distances`
  ADD CONSTRAINT `distances_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `distances_to_id_foreign` FOREIGN KEY (`to_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flightdetails`
--
ALTER TABLE `flightdetails`
  ADD CONSTRAINT `flightdetails_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airline` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flightdetails_from_id_foreign` FOREIGN KEY (`from_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flightdetails_to_id_foreign` FOREIGN KEY (`to_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flightseat`
--
ALTER TABLE `flightseat`
  ADD CONSTRAINT `flightseat_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flightdetails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flightseat_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `seattype` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rela_countries`
--
ALTER TABLE `rela_countries`
  ADD CONSTRAINT `rela_countries_from_country_id_foreign` FOREIGN KEY (`from_country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rela_countries_to_country_id_foreign` FOREIGN KEY (`to_country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
