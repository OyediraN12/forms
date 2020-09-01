-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2020 at 07:47 PM
-- Server version: 8.0.20
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `august14`
--

-- --------------------------------------------------------

--
-- Table structure for table `error_login_log`
--

CREATE TABLE `error_login_log` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `error_login_log`
--

INSERT INTO `error_login_log` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(6, 'admint@gmail.com', '$2y$10$AC1aI8Gms/W.eeTrMufFoe3ON.hDBhV34owlEu8jyNmB5OHvgCw3a', '2020-09-01 19:45:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'info@codewithawa.com', '$2y$10$BLv.yrVPmSjsfWhwwm0e4uSqpayhbMHQGj8DbZUj9WIYjVtc/b7F2', '2018-01-08 11:52:58', '2018-01-08 11:52:58'),
(2, 'admin@admin.com', '$2y$10$BLv.yrVPmSjsfWhwwm0e4uSqpayhbMHQGj8DbZUj9WIYjVtc/b7F2', '2020-08-24 17:23:39', '2020-08-24 17:23:39'),
(3, 'test@test.com', '$2y$10$nLFdybYa8/0/7kQm4a47pO8hJjG4/aqOB72dDDwMIsft6fDbddWom', '2020-09-01 18:26:24', NULL),
(4, 'admint@gmail.com', '$2y$10$KXI/F7HyLGTCHZaVD25ZvOV4071ov9QQEWJwUFgsjtZgd/jPS8aEC', '2020-09-01 19:45:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `error_login_log`
--
ALTER TABLE `error_login_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `error_login_log`
--
ALTER TABLE `error_login_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
