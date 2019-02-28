-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 10:43 AM
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
(1, 'East Mikel', 'GL', 2, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(2, 'West Wellington', 'EG', 4, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(3, 'East Maddisonberg', 'TM', 3, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(4, 'Langworthhaven', 'GF', 1, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(5, 'New Janet', 'ME', 1, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(6, 'North Jettie', 'UY', 1, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(7, 'Ratkebury', 'AI', 5, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(8, 'North Monserrate', 'DM', 2, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(9, 'South Mustafafort', 'AE', 2, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(10, 'Mauricioberg', 'PH', 5, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(11, 'Garryhaven', 'MH', 4, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(12, 'Port Tyriquefurt', 'NF', 4, '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(13, 'Lake Bettybury', 'NI', 4, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(14, 'New Clinthaven', 'SM', 2, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(15, 'Port Chanelfurt', 'TR', 1, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(16, 'Johnsmouth', 'ER', 5, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(17, 'South Mathias', 'EE', 1, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(18, 'West Andresberg', 'AZ', 3, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(19, 'West Nannie', 'NO', 1, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(20, 'Randiberg', 'HU', 2, '2019-02-28 04:23:23', '2019-02-28 04:23:23');

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
(1, 'Antarctica (the territory South of 60 deg S)', 'DZ', '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(2, 'Israel', 'NZ', '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(3, 'Montenegro', 'IO', '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(4, 'Faroe Islands', 'PG', '2019-02-28 04:23:22', '2019-02-28 04:23:22'),
(5, 'Saint Pierre and Miquelon', 'PW', '2019-02-28 04:23:22', '2019-02-28 04:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `flightdetails`
--

CREATE TABLE `flightdetails` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_23_064120_create_countries_table', 1),
(4, '2019_02_23_085344_create_cities_table', 1),
(5, '2019_02_26_010600_create_searches_table', 1),
(6, '2019_02_26_013338_create_seatypes_table', 1),
(7, '2019_02_26_124456_create_flightdetails_table', 1),
(8, '2019_02_28_060314_create_registers_table', 1);

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
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Amely Torphy', 77, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(2, 'Ryan Ernser', 64, '2019-02-28 04:23:23', '2019-02-28 04:23:23'),
(3, 'Ned Beier', 92, '2019-02-28 04:23:23', '2019-02-28 04:23:23');

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
(1, 'Damon O\'Hara', 'winston90@example.com', '$2y$10$Cc7R4k6OaBdoLBU89ok9puYKc9Q66MJfLLpLye4VxhUAYZsEUxIKe', '0BkjgoeNVL', 'egevK87QPQ', 0, NULL, NULL, '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(2, 'Felipe Jaskolski', 'walter.mikayla@example.net', '$2y$10$Cc7R4k6OaBdoLBU89ok9puYKc9Q66MJfLLpLye4VxhUAYZsEUxIKe', 'nB1SUhuBrl', 'pvfNIaOKZe', 0, NULL, NULL, '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(3, 'Ms. Stacey Rau I', 'rosenbaum.jewel@example.org', '$2y$10$Cc7R4k6OaBdoLBU89ok9puYKc9Q66MJfLLpLye4VxhUAYZsEUxIKe', 'K0edjoxH4i', 'YhIi8H32pA', 0, NULL, NULL, '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(4, 'Jacques Wisozk Jr.', 'nigel52@example.com', '$2y$10$Cc7R4k6OaBdoLBU89ok9puYKc9Q66MJfLLpLye4VxhUAYZsEUxIKe', '5SPfBGQ1t3', 'GoAJ87vhVB', 0, NULL, NULL, '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(5, 'Miss Lina Bartoletti', 'emmerich.lorna@example.net', '$2y$10$Cc7R4k6OaBdoLBU89ok9puYKc9Q66MJfLLpLye4VxhUAYZsEUxIKe', 'faHydsSoVg', '5tYpkRPTCP', 0, NULL, NULL, '2019-02-28 04:23:21', '2019-02-28 04:23:21'),
(6, 'lam', 'tranthilamm1998@gmail.com', '$2y$10$fXXS0/f/4/XZNYGexBcZo.D61lQC/oKZmSQGol/Hm6FJavSS6JNpq', '1234567891', '2Uh9S2byaOPXe1cA8tqpssCbMOL2xUq0sYpAN0GBGf8T0DlPYsCjJAYdTgOo', 1, '2019-02-28 07:13:38', NULL, '2019-02-28 06:03:24', '2019-02-28 07:13:38'),
(7, '@1!asa', 'tranthilamm11998@gmail.com', '$2y$10$LRyes58twIL.zVZV6GVh0uAzkR9MsY/I78QMMaEn.5avGsF4lA9cG', '1234567891', NULL, 0, NULL, NULL, '2019-02-28 06:08:13', '2019-02-28 06:08:13'),
(8, 'lam', 'tranthilamsm1998@gmail.com', '$2y$10$0MzJL056Nc87MqorWwUbzeGQ7pNOd0r2m6woCzb88LMCpen01lqHu', '1234567891', NULL, 0, NULL, NULL, '2019-02-28 06:11:41', '2019-02-28 06:11:41'),
(9, 'lam', 'tranthilamsmk1998@gmail.com', '$2y$10$IXP1NkHQuyt9lwrSGMrTfebFZxFPSZu8LkC5R4jib5no02OwkBzWe', '1234567891', NULL, 0, NULL, NULL, '2019-02-28 07:39:50', '2019-02-28 07:39:58');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `flightdetails`
--
ALTER TABLE `flightdetails`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
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
-- AUTO_INCREMENT for table `flightdetails`
--
ALTER TABLE `flightdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seattype`
--
ALTER TABLE `seattype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
