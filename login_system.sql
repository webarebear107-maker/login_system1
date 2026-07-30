-- phpMyAdmin SQL Dump
-- version 5.2.1
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2026 at 12:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `login_system`;
USE `login_system`;

-- Table: archive_masterlist
CREATE TABLE `archive_masterlist` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `lrn` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `mi` varchar(3) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bdate` date NOT NULL,
  `strand` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `gradelvl` int(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `generated_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Table: attendance
CREATE TABLE `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lrn` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `section` varchar(50) NOT NULL,
  `gradelvl` int(5) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `date_logged` date DEFAULT NULL,
  `time_logged` time DEFAULT NULL,
  `is_notif` varchar(1) NOT NULL DEFAULT 'N',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `attendance` (`id`, `lrn`, `fullname`, `gender`, `section`, `gradelvl`, `contact`, `date_logged`, `time_logged`, `is_notif`, `created_at`) VALUES
(1, 194501140434, 'Philip James D. Inong', 'Male', 'Ruby', 12, '09673289351', '2026-03-23', '11:48:46', 'N', '2026-03-23 03:48:46');

-- Table: masterlist
CREATE TABLE `masterlist` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `lrn` bigint(20) UNSIGNED NOT NULL UNIQUE,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `mi` varchar(3) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `bdate` date NOT NULL,
  `strand` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `gradelvl` int(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `generated_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `masterlist` (`id`, `lrn`, `firstname`, `lastname`, `mi`, `gender`, `bdate`, `strand`, `section`, `gradelvl`, `address`, `contact`, `generated_code`) VALUES
(1, 194501140434, 'Philip James', 'Inong', 'D', 'Male', '2008-08-31', 'TVL-ICT Programming', 'Ruby', 12, 'Donfelipe Larrazabal', '09673289351', '194501140434');

-- Table: users
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL UNIQUE,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, '12345', '$2y$10$OudzcnMR8xhBkxkTYlydFekhihIKHpzn4y/WE42Fppi0NTrVLsveS', '2025-12-19 06:18:12'),
(4, '1234', '$2y$10$zIoR.8Jp2EheDNh3lVXAPubnrqm9K6re05Mz9gmahCtOm/e4DTyIa', '2026-01-05 13:39:30');

COMMIT;
