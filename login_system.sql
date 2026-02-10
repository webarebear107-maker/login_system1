-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2026 at 01:03 AM
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
  `section` varchar(50) NOT NULL,
  `gradelvl` varchar(3) NOT NULL,
  `date_logged` date DEFAULT NULL,
  `time_logged` time DEFAULT NULL,
  `is_notif` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `lrn`, `fullname`, `section`, `gradelvl`, `date_logged`, `time_logged`, `is_notif`) VALUES
(4, '194501130339', 'John Philip D. Cero', 'Galilie', '12', '2026-01-12', '10:49:37', 'N'),
(5, '194501130333', 'Gian M. Lalap', 'Ruby', '12', '2026-01-12', '10:50:11', 'N'),
(7, '194501130339', 'John Philip D. Cero', 'Galilie', '12', '2026-01-17', '19:03:06', 'N'),
(8, '194501130338', 'Juphet James l. Macol', 'Galilie', '12', '2026-01-17', '19:07:10', 'N'),
(9, '194501130334', 'Maria S. Cruz', 'Ruby', '12', '2026-01-17', '19:08:23', 'N'),
(10, '194501130334', 'Maria S. Cruz', 'Ruby', '12', '2026-01-18', '16:11:42', 'N'),
(11, '194501130338', 'Juphet James l. Macol', 'Galilie', '12', '2026-01-18', '16:11:48', 'N'),
(12, '194501130339', 'John Philip D. Cero', 'Galilie', '12', '2026-01-18', '16:12:03', 'N'),
(13, '124212130055', 'ROSELYN T. MAASIN', 'Ruby', '12', '2026-01-26', '08:44:27', 'N'),
(14, '121730140003', 'RONNEL GINO G. MOPON', 'Ruby', '12', '2026-01-26', '08:44:32', 'N'),
(15, '124143130026', 'ROEY C. JABALLA', 'Ruby', '12', '2026-01-26', '08:44:35', 'N'),
(16, '194501140434', 'PHILIP JAMES D. INONG', 'Ruby', '12', '2026-01-26', '08:44:39', 'N'),
(17, '194501140434', 'PHILIP JAMES D. INONG', 'Ruby', '12', '2026-02-04', '12:01:29', 'N'),
(18, '404514150141', 'FERDINAND CHRISTIAN O. LAPINIG', 'Ruby', '12', '2026-02-04', '12:19:08', 'N');

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
(288, 194501140434, 'PHILIP JAMES', 'INONG', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-194501140434-89038E'),
(289, 124212150011, 'JEDRICK', 'ISRAEL', '_', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212150011-FB174D'),
(290, 124143130026, 'ROEY', 'JABALLA', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124143130026-E784D4'),
(291, 124150130009, 'EINSTINE', 'JUMAMIL', 'M', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124150130009-A59CA4'),
(292, 404786150289, 'KEAN JAY', 'LABORTE', 'S', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-404786150289-AECD16'),
(293, 404514150141, 'FERDINAND CHRISTIAN', 'LAPINIG', 'O', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-404514150141-E55D91'),
(294, 194501130333, 'GIAN', 'LALAP', 'M', 'Male', '1/23/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-194501130333-15C484'),
(295, 124101130049, 'MAC BRIAN', 'LAURENTE', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124101130049-90FAA6'),
(296, 194501130334, 'JUPHET JAMES', 'MACOL', 'L', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-194501130334-8B8234'),
(297, 121730140003, 'RONNEL GINO', 'MOPON', 'G', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-121730140003-EE7962'),
(298, 124212130043, 'GILBERT', 'OMEGA', 'B', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212130043-2B9C7D'),
(299, 121965130019, 'VINCE', 'ORBISO', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-121965130019-C67873'),
(300, 124195130225, 'CHESED', 'PANGILINAN', 'F', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124195130225-1F2050'),
(301, 124198130044, 'TRESIAN ED', 'PAREJA', '_', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124198130044-0FA7F2'),
(302, 121732130046, 'ALFALFA ZACK', 'PAYOD', 'V', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-121732130046-1DAA66'),
(303, 121538130171, 'MICHAEL BREYNAN', 'PINTOY', 'P', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-121538130171-FB8AB7'),
(304, 124212130016, 'MJ MC DAVE', 'RAMISO', 'M', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212130016-93433D'),
(305, 194501120283, 'JOHN PAUL', 'RUFIN', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-194501120283-6182EB'),
(306, 124143130033, 'JEAMS', 'SINOY', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124143130033-B37EE2'),
(307, 124203130100, 'JERALD', 'TANDOK', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124203130100-A5188E'),
(308, 124194140035, 'JAMES', 'TARRANZA', 'U', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124194140035-D63CF7'),
(309, 124212130046, 'DON KING', 'TRASMONTE', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212130046-589056'),
(310, 194501120022, 'JOHN PAUL', 'VILLAMOR', '_', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-194501120022-012F8F'),
(311, 124218130049, 'JUSPER JAMES', 'VILLANUEVA', 'L', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124218130049-E42D9B'),
(312, 404791151865, 'VINCENT', 'YAP', 'S', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-404791151865-49EDEC'),
(313, 124211130024, 'MICO', 'YURAG', 'S', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124211130024-83D9D4'),
(314, 124201140033, 'MARIAN', 'KEMPIS', 'L', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124201140033-EC41BD'),
(315, 121721130031, 'MAJESTY', 'LAMOSTE', 'S', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-121721130031-B99766'),
(316, 124212130055, 'ROSELYN', 'MAASIN', 'T', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212130055-0C12DB'),
(317, 119107140249, 'JASMINE', 'MAPULA', 'L', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-119107140249-EC0A95'),
(318, 124199130127, 'MARIAH LOU', 'MORON', 'D', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124199130127-3C4512'),
(319, 124203120074, 'PRINCESS VYDA', 'OMEGA', 'T', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124203120074-456F2E'),
(320, 124212130059, 'EUNICE SHERRY', 'PARCON', 'T', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212130059-26DC72'),
(321, 124198130072, 'JELLA MAY', 'POGOY', 'C', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124198130072-C228AC'),
(322, 107946130171, 'RAIN', 'RUBIA', '_', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-107946130171-9D1019'),
(323, 124212130061, 'AIDA JEAN', 'SANCHEZ', 'A', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212130061-F3E065'),
(324, 124207130039, 'COLYN ALINA', 'SANCHO', 'C', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124207130039-A902D4'),
(325, 194501130208, 'JULIA', 'TOMAQUIN', 'C', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-194501130208-2649AA'),
(326, 124212130064, 'FATIMA', 'VILLANUEVA', '_', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-124212130064-4A8E4A'),
(327, 404789150113, 'CHRISTINA AVAH', 'YAP', 'J', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', 'STU-404789150113-D86118');

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
(1, '12345', '$2y$10$OudzcnMR8xhBkxkTYlydFekhihIKHpzn4y/WE42Fppi0NTrVLsveS', '2025-12-19 06:18:12'),
(4, '1234', '$2y$10$zIoR.8Jp2EheDNh3lVXAPubnrqm9K6re05Mz9gmahCtOm/e4DTyIa', '2026-01-05 13:39:30');

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `masterlist`
--
ALTER TABLE `masterlist`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
