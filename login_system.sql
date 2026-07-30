-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2026 at 12:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_masterlist`
--

CREATE TABLE `archive_masterlist` (
  `id` int(5) NOT NULL,
  `lrn` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `mi` varchar(3) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bdate` varchar(50) NOT NULL,
  `strand` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `gradelvl` int(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `generated_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `lrn` varchar(50) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `section` varchar(50) NOT NULL,
  `gradelvl` varchar(3) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `date_logged` date DEFAULT NULL,
  `time_logged` time DEFAULT NULL,
  `is_notif` varchar(1) NOT NULL DEFAULT 'N',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `lrn`, `fullname`, `gender`, `section`, `gradelvl`, `contact`, `date_logged`, `time_logged`, `is_notif`, `created_at`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `masterlist`
--

CREATE TABLE `masterlist` (
  `id` int(5) NOT NULL,
  `lrn` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `mi` varchar(3) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bdate` varchar(50) NOT NULL,
  `strand` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `gradelvl` int(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `generated_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masterlist`
--

INSERT INTO `masterlist` (`id`, `lrn`, `firstname`, `lastname`, `mi`, `gender`, `bdate`, `strand`, `section`, `gradelvl`, `address`, `contact`, `generated_code`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_masterlist`
--
ALTER TABLE `archive_masterlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterlist`
--
ALTER TABLE `masterlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lrn` (`lrn`),
  ADD UNIQUE KEY `lrn_2` (`lrn`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_masterlist`
--
ALTER TABLE `archive_masterlist`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `masterlist`
--
ALTER TABLE `masterlist`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
