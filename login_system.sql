-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2026 at 07:22 AM
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

--
-- Dumping data for table `archive_masterlist`
--

INSERT INTO `archive_masterlist` (`id`, `lrn`, `firstname`, `lastname`, `mi`, `gender`, `bdate`, `strand`, `section`, `gradelvl`, `address`, `contact`, `generated_code`) VALUES
(409, 194501140434, 'PHILIP JAMES', 'INONG', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '194501140434'),
(410, 124212150011, 'JEDRICK', 'ISRAEL', '_', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212150011'),
(411, 124143130026, 'ROEY', 'JABALLA', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124143130026'),
(412, 124150130009, 'EINSTINE', 'JUMAMIL', 'M', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124150130009'),
(413, 404786150289, 'KEAN JAY', 'LABORTE', 'S', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '404786150289'),
(414, 404514150141, 'FERDINAND CHRISTIAN', 'LAPINIG', 'O', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '404514150141'),
(415, 194501130333, 'GIAN', 'LALAP', 'M', 'Male', '1/23/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '194501130333'),
(416, 124101130049, 'MAC BRIAN', 'LAURENTE', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124101130049'),
(417, 194501130334, 'JUPHET JAMES', 'MACOL', 'L', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '194501130334'),
(418, 121730140003, 'RONNEL GINO', 'MOPON', 'G', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '121730140003'),
(419, 124212130043, 'GILBERT', 'OMEGA', 'B', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212130043'),
(420, 121965130019, 'VINCE', 'ORBISO', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '121965130019'),
(421, 124195130225, 'CHESED', 'PANGILINAN', 'F', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124195130225'),
(422, 124198130044, 'TRESIAN ED', 'PAREJA', '_', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124198130044'),
(423, 121732130046, 'ALFALFA ZACK', 'PAYOD', 'V', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '121732130046'),
(424, 121538130171, 'MICHAEL BREYNAN', 'PINTOY', 'P', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '121538130171'),
(425, 124212130016, 'MJ MC DAVE', 'RAMISO', 'M', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212130016'),
(426, 194501120283, 'JOHN PAUL', 'RUFIN', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '194501120283'),
(427, 124143130033, 'JEAMS', 'SINOY', 'C', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124143130033'),
(428, 124203130100, 'JERALD', 'TANDOK', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124203130100'),
(429, 124194140035, 'JAMES', 'TARRANZA', 'U', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124194140035'),
(430, 124212130046, 'DON KING', 'TRASMONTE', 'D', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212130046'),
(431, 194501120022, 'JOHN PAUL', 'VILLAMOR', '_', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '194501120022'),
(432, 124218130049, 'JUSPER JAMES', 'VILLANUEVA', 'L', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124218130049'),
(433, 404791151865, 'VINCENT', 'YAP', 'S', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '404791151865'),
(434, 124211130024, 'MICO', 'YURAG', 'S', 'Male', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124211130024'),
(435, 124201140033, 'MARIAN', 'KEMPIS', 'L', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124201140033'),
(436, 121721130031, 'MAJESTY', 'LAMOSTE', 'S', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '121721130031'),
(437, 124212130055, 'ROSELYN', 'MAASIN', 'T', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212130055'),
(438, 119107140249, 'JASMINE', 'MAPULA', 'L', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '119107140249'),
(439, 124199130127, 'MARIAH LOU', 'MORON', 'D', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124199130127'),
(440, 124203120074, 'PRINCESS VYDA', 'OMEGA', 'T', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124203120074'),
(441, 124212130059, 'EUNICE SHERRY', 'PARCON', 'T', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212130059'),
(442, 124198130072, 'JELLA MAY', 'POGOY', 'C', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124198130072'),
(443, 107946130171, 'RAIN', 'RUBIA', '_', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '107946130171'),
(444, 124212130061, 'AIDA JEAN', 'SANCHEZ', 'A', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212130061'),
(445, 124207130039, 'COLYN ALINA', 'SANCHO', 'C', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124207130039'),
(446, 194501130208, 'JULIA', 'TOMAQUIN', 'C', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '194501130208'),
(447, 124212130064, 'FATIMA', 'VILLANUEVA', '_', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '124212130064'),
(448, 404789150113, 'CHRISTINA AVAH', 'YAP', 'J', 'Female', '3/25/2004', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Don Felipe Larrazabal', '09308842406', '404789150113'),
(449, 194501140434, 'Philip James', 'Inong', 'Del', 'Male', '8/31/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Donfelipe Larrazabal', '9673289351', '194501140434'),
(450, 12412150011, 'Jedrick', 'Israel', 'Tar', 'Male', '8/15/2006', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Libertad', '9533503728', '12412150011'),
(451, 12414313002, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA, PUROK 2', '9632664090', '12414313002'),
(452, 404786150289, 'Kean Jay', 'Laborte', 'Sie', 'Male', '2/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Purok Jasmin Cogon Highway, Ormoc City Leyte', '9091290296', '404786150289'),
(453, 404514150141, 'Ferdinand Christian', 'Lapinig', 'O', 'Male', '10/10/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Juaton', '9563655278', '404514150141'),
(454, 121730140003, 'Ronnell', 'Mopon', 'Gin', 'Male', '7/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Siapon district merida leyte', '9306943728', '121730140003'),
(455, 124212130043, 'Gilbert', 'Omega', 'Bos', 'Male', '4/10/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Airport Ormoc City', '9356194478', '124212130043'),
(456, 124195130225, 'Chesed', 'Pangilinan', 'Feg', 'Male', '12/7/2007', 'TVL-ICT Programming', 'ruby', 12, 'purok green field barangay san isdro ormoc city', '9152347108', '124195130225'),
(457, 124198130044, 'Tresian Ed', 'Pareja', 'N/A', 'Male', '1/7/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Brgy.Tambulilid', '9702515044', '124198130044'),
(458, 121538130171, 'Michael Breynan', 'Pintoy', 'Pet', 'Male', '3/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Rizal St. Maraag', '9357182843', '121538130171'),
(459, 124212130016, 'Mj mc Dave', 'Ramiso', 'Mon', 'Male', '5/22/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy libertad ormoc city', '9940034077', '124212130016'),
(460, 124143130033, 'Jeams', 'Sinoy', 'Cat', 'Male', '11/4/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Alta Vista', '9207373555', '124143130033'),
(461, 124218130049, 'JusperJames', 'Villanueva', 'Lat', 'Male', '8/12/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City, Leyte, brgy salvacion sitio bay-ang', '9672162995', '124218130049'),
(462, 404791151865, 'Vincent', 'Yap', 'Seb', 'Male', '12/31/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City leyte Philippines', '9082736965', '404791151865'),
(463, 124143130026, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA PUROK 2', '9503260123', '124143130026'),
(464, 124201140033, 'Marian', 'Kempis', 'L', 'Female', '3/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Bagong Buhay', '9536487988', '124201140033'),
(465, 121721130031, 'Majesty', 'Lamoste', 'Sab', 'Female', '3/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Casilda, Merida leyte', '9317362619', '121721130031'),
(466, 124212130055, 'ROSELYN', 'MAASIN', 'TUB', 'Female', '4/5/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '9464779415', '124212130055'),
(467, 124203120074, 'PRINCESS', 'OMEGA', 'VYD', 'Female', '9/6/2006', 'TVL-ICT Programming', 'RUBY', 12, 'BRYG,NASUNOGAN,ORMOC CITY', '9451485269', '124203120074'),
(468, 124212130061, 'AIDA JEAN', 'SANCHEZ', 'ABA', 'Female', '8/30/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '9300515974', '124212130061'),
(469, 119107140249, 'Jasmine', 'Mapula', 'Los', 'Female', '7/28/2006', 'TVL-ICT Programming', 'Ruby', 12, 'SanPablo (Simangan)', '9509338689', '119107140249'),
(470, 194501140434, 'Philip James', 'Inong', 'Del', 'Male', '8/31/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Donfelipe Larrazabal', '9673289351', '194501140434'),
(471, 12412150011, 'Jedrick', 'Israel', 'Tar', 'Male', '8/15/2006', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Libertad', '9533503728', '12412150011'),
(472, 12414313002, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA, PUROK 2', '9632664090', '12414313002'),
(473, 404786150289, 'Kean Jay', 'Laborte', 'Sie', 'Male', '2/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Purok Jasmin Cogon Highway, Ormoc City Leyte', '9091290296', '404786150289'),
(474, 404514150141, 'Ferdinand Christian', 'Lapinig', 'O', 'Male', '10/10/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Juaton', '9563655278', '404514150141'),
(475, 121730140003, 'Ronnell', 'Mopon', 'Gin', 'Male', '7/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Siapon district merida leyte', '9306943728', '121730140003'),
(476, 124212130043, 'Gilbert', 'Omega', 'Bos', 'Male', '4/10/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Airport Ormoc City', '9356194478', '124212130043'),
(477, 124195130225, 'Chesed', 'Pangilinan', 'Feg', 'Male', '12/7/2007', 'TVL-ICT Programming', 'ruby', 12, 'purok green field barangay san isdro ormoc city', '9152347108', '124195130225'),
(478, 124198130044, 'Tresian Ed', 'Pareja', 'N/A', 'Male', '1/7/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Brgy.Tambulilid', '9702515044', '124198130044'),
(479, 121538130171, 'Michael Breynan', 'Pintoy', 'Pet', 'Male', '3/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Rizal St. Maraag', '9357182843', '121538130171'),
(480, 124212130016, 'Mj mc Dave', 'Ramiso', 'Mon', 'Male', '5/22/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy libertad ormoc city', '9940034077', '124212130016'),
(481, 124143130033, 'Jeams', 'Sinoy', 'Cat', 'Male', '11/4/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Alta Vista', '9207373555', '124143130033'),
(482, 124218130049, 'JusperJames', 'Villanueva', 'Lat', 'Male', '8/12/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City, Leyte, brgy salvacion sitio bay-ang', '9672162995', '124218130049'),
(483, 404791151865, 'Vincent', 'Yap', 'Seb', 'Male', '12/31/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City leyte Philippines', '9082736965', '404791151865'),
(484, 124143130026, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA PUROK 2', '9503260123', '124143130026'),
(485, 124201140033, 'Marian', 'Kempis', 'L', 'Female', '3/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Bagong Buhay', '9536487988', '124201140033'),
(486, 121721130031, 'Majesty', 'Lamoste', 'Sab', 'Female', '3/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Casilda, Merida leyte', '9317362619', '121721130031'),
(487, 124212130055, 'ROSELYN', 'MAASIN', 'TUB', 'Female', '4/5/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '9464779415', '124212130055'),
(488, 124203120074, 'PRINCESS', 'OMEGA', 'VYD', 'Female', '9/6/2006', 'TVL-ICT Programming', 'RUBY', 12, 'BRYG,NASUNOGAN,ORMOC CITY', '9451485269', '124203120074'),
(489, 124212130061, 'AIDA JEAN', 'SANCHEZ', 'ABA', 'Female', '8/30/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '9300515974', '124212130061'),
(490, 119107140249, 'Jasmine', 'Mapula', 'Los', 'Female', '7/28/2006', 'TVL-ICT Programming', 'Ruby', 12, 'SanPablo (Simangan)', '9509338689', '119107140249'),
(491, 119803130192, 'Shanaia', 'Dela Cruz', 'Man', 'Female', '7/6/2008', 'STEM', '11 - EUCLID', 11, 'BRGY. CURVA ORMOC CITY', '09709937129', '119803130192'),
(492, 124195140023, 'Marc Ehron', 'Caoctoy', 'Cod', 'Male', '7/27/2009', 'STEM', '11-EUCLID', 11, 'Linao Purok 17 kanipaan Ormoc City Leyte', '09383386625', '124195140023'),
(493, 124198140046, 'Sabrina Faith', 'Caga-anan', 'D.', 'Female', '4/27/2009', 'STEM', '11-EUCLID', 11, 'Purok Rose, Brgy Punta Ormoc City Leyte', '09619561055', '124198140046'),
(494, 124147130036, 'Charmel', 'Rosales', 'Del', 'Female', '10/10/2008', 'TVL-CSS', '12 Berners Lee', 12, 'Barangay West District 26', '09398850730', '124147130036'),
(495, 7320183, 'Erika Jean', 'Palacio', 'D.', 'Female', '9/29/2009', 'TVL-CSS', '12-BERNERSLEE', 12, 'Brgy West Islaverde', '09709265102', '7320183'),
(496, 454503150031, 'Louie', 'Bornasal', 'B', 'Male', '11/21/2007', 'TVL-CSS', 'Berneerslee', 12, 'Brgy.sto niño Ormoc city', '09468622044', '454503150031'),
(497, 124221130029, 'Johnnoah', 'Emfimo', 'Lau', 'Male', '5/3/2008', 'TVL-CSS', 'Berner’s Lee', 12, 'Brgy. San Pablo, Purok 1, J.S Tan Village, Ormoc City, Leyte', '09309423679', '124221130029'),
(498, 124197130074, 'Darren', 'Adlawan', '', 'Male', '12/5/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Isidro, Ormoc City', '09923357131', '124197130074'),
(499, 124199130079, 'Ernesto', 'Balatong', 'Bor', 'Male', '6/29/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy tambulilid BLK 6 Raffi lot 188', '09485925821', '124199130079'),
(500, 124198140069, 'Zaire Vince', 'Isaac', 'Pul', 'Male', '8/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Punta, Purok Waling Waling', '09515106393', '124198140069'),
(501, 194501140439, 'Marian', 'Talatayod', 'C.', 'Female', '3/19/2007', 'TVL-CSS', 'Berners Lee', 12, 'Bgry.Altavista purok 8 Zone 4B', '09932455822', '194501140439'),
(502, 12403130047, 'Rona Mae', 'Temosa', 'M.', 'Female', '4/12/2008', 'TVL-CSS', 'BERNERS LEE', 12, 'Cantalib Dist 29 Ormoc City', '09950289715', '12403130047'),
(503, 194501140509, 'John Phillip', 'FOLLERO', 'B.', 'Male', '1/16/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.North Purok Sampaguita', '09921492987', '194501140509'),
(504, 124221130034, 'Antonio', 'Leopardas', 'M', 'Male', '8/17/2008', 'TVL-CSS', 'BERNERS LEE', 12, 'Brgy.San Pablo Ormoc City', '09630512232', '124221130034'),
(505, 124201130085, 'Trixie Monette', 'Roble', 'D.', 'Female', '11/9/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Bagong Buhay, Ormoc City', '0962 956 9089', '124201130085'),
(506, 124223140069, 'Reymark', 'Marce', 'Faj', 'Male', '11/15/2022', 'TVL-CSS', 'Bernerslee', 12, 'Brgy sto niño ormoc city leyte', '09949651142', '124223140069'),
(507, 124204130038, 'Bianca Camille', 'Polvera', 'Pel', 'Female', '6/2/2008', 'TVL-CSS', 'Bernes lee', 12, 'Sitio bugo , brgy. Curva ormoc city', '0966 009 9372', '124204130038'),
(508, 404790150538, 'Raemus Klyde', 'Cabuños', 'Cal', 'Male', '7/28/2008', 'STEM', 'Euclid', 11, 'Poblacion Kananga Leyte', '0960 895 4483', '404790150538'),
(509, 451546150083, 'Leoarn', 'Cadiente', 'Bal', 'Male', '4/8/2009', 'STEM', 'Euclid', 11, 'Kananga Leyte', '09307335365', '451546150083'),
(510, 121721140044, 'Bryan', 'Calaycay', 'Ban', 'Male', '5/2/2009', 'STEM', 'Euclid', 11, 'Brgy. Casilda Merida Leyte', '09100403160', '121721140044'),
(511, 194501140342, 'John Clifford', 'Camantes', 'E', 'Male', '2/27/2009', 'STEM', 'Euclid', 11, 'F. Ablen St. Cogon Combado Ormoc City', '09709244280', '194501140342'),
(512, 124196140015, 'Mythan', 'Cambaya', 'Non', 'Male', '6/28/2009', 'STEM', 'Euclid', 11, 'Naungan purok 2 ormoc city leyte', 'None', '124196140015'),
(513, 194501140263, 'Kenneth Bryle', 'Canlas', 'S.', 'Male', '4/3/2009', 'STEM', 'Euclid', 11, 'Hermosilla Drive, Ormoc City', '09096749333', '194501140263'),
(514, 109280150006, 'Jannah Mae', 'Canque', 'Asi', 'Female', '8/28/2009', 'STEM', 'Euclid', 11, 'Brgy. Sto Niño Ormoc City', '09300412143', '109280150006'),
(515, 124195140161, 'Blesing', 'Caoctoy', 'C.', 'Female', '10/10/2009', 'STEM', 'EUCLID', 11, 'Purok 9, Brgy. Linao Ormoc City, Leyte', '09267163389', '124195140161'),
(516, 194801140109, 'Jian Carlo', 'Casimpan', 'Y.', 'Male', '12/13/2008', 'STEM', 'EUCLID', 11, 'Brgy. Juaton, Ormoc City, Leyte', '09773363401', '194801140109'),
(517, 124195140164, 'Kristyl Jay', 'Casuco', 'C.', 'Female', '3/27/2026', 'STEM', 'Euclid', 11, 'Bantigue Ormoc City,Leyte', '09660279116', '124195140164'),
(518, 194501140264, 'Denzel Chad', 'Catipay', 'Cab', 'Male', '11/10/2008', 'STEM', 'EUCLID', 11, 'Blk. 6, Lot 11, Brgy. San Isidro, Purok Tent City', '09945467259', '194501140264'),
(519, 124218140027, 'Dashiel Crunch', 'Claros', 'P.', 'Male', '11/7/2008', 'STEM', 'Euclid', 11, 'Brgy. Salvacion', '09189348364', '124218140027'),
(520, 121536150001, 'Alexander', 'Colaba', 'P.', 'Male', '7/4/2009', 'STEM', 'Euclid', 11, 'Brgy. Poblacion, Kananga, Leyte', '09081114111', '121536150001'),
(521, 194501140483, 'Princess Mae', 'Colasito', 'M', 'Female', '3/6/2009', 'STEM', 'Euclid', 11, 'Brgy. Margen O.C', '09977226385', '194501140483'),
(522, 124200140014, 'Kaye Marie', 'Cormanes', 'L.', 'Female', '3/21/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Airport Ormoc City', '09267916799', '124200140014'),
(523, 194501190315, 'Rhean Joy', 'Cuesta', 'M', 'Female', '4/15/2009', 'STEM', 'Euclid', 11, 'Sitio Ipil, Brgy. Curva, Ormoc City', '09302521897', '194501190315'),
(524, 194501140316, 'Angela Christine', 'Dasigan', 'O.', 'Female', '1/27/2009', 'STEM', 'EUCLID', 11, 'Purok 1 Brgy. San Pablo Ormoc City', '09302439608', '194501140316'),
(525, 194501140265, 'Rex Amdre', 'DE LA CRUZ', 'Fer', 'Male', '5/28/2009', 'STEM', 'euclid', 11, 'brgy dona fekiza mejia ormoc city', '09662604740', '194501140265'),
(526, 124197140023, 'Justine', 'Dejillo', 'T', 'Male', '9/7/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Alta Vista, Ormoc City, Leyte', '0927 302 4493', '124197140023'),
(527, 127215140055, 'John Rafael', 'Dela Torre', 'Asa', 'Male', '6/6/2009', 'STEM', 'Euclid', 11, 'Margen, Ormoc City, Leyte', '09158894041', '127215140055'),
(528, 124217140003, 'Ronald', 'Diano', 'Mac', 'Male', '5/14/2009', 'STEM', 'EUCLID', 11, 'purok 7, brgy.nasunogan, ormoc city', '09515120296', '124217140003'),
(529, 124190170087, 'Khyle Aundrie', 'Dimpas', 'R.', 'Male', '8/14/2009', 'STEM', 'Euclid', 11, 'Brgy. San Jose, Ormoc City, Leyte', '09693831579', '124190170087'),
(530, 404790150712, 'Marc Aidan', 'Doria', 'L.', 'Male', '9/28/2009', 'STEM', 'Euclid', 11, 'Buena Vida Heights Subd. Brgy San Pablo, Ormoc city, Leyte', '09985446916', '404790150712'),
(531, 124203140012, 'Dexter Sam', 'Dosdos', 'Car', 'Male', '1/12/2009', 'STEM', 'Euclid', 11, 'Cogon combado', '09632664308', '124203140012'),
(532, 124198150067, 'Adrianne Bryce', 'Duallo', 'N.', 'Male', '5/19/2009', 'STEM', 'Euclid', 11, 'Purok Waling-Waling, Brgy. Punta, O.C.', '09630922128', '124198150067'),
(533, 454505150024, 'Edrey Anthony', 'Elegio', 'Gon', 'Male', '12/9/2008', 'STEM', 'Euclid', 11, 'Brgy. Macabug', '09127845113', '454505150024'),
(534, 124210150035, 'Jamiela', 'Misterio', 'B.', 'Female', '1/11/2009', 'STEM', 'Euclid', 11, 'Lao kanangkaan purok 2', '09105151355', '124210150035'),
(535, 124159140007, 'Danica Irish', 'Cañedo', 'De ', 'Female', '10/12/2009', 'STEM', 'Euclid', 11, 'Brgy.Luna, Purok 2.A, Ormoc City', '09517135129', '124159140007'),
(536, 121548140030, 'Claire Jarrell', 'Corciega', 'T.', 'Female', '12/9/2008', 'STEM', 'EUCLID', 11, 'Naghalin, Kananga, Leyte', '09128638126', '121548140030'),
(537, 124221140081, 'Lianne Joy', 'Dacanay', 'E', 'Female', '12/13/2008', 'STEM', 'Euclid', 11, 'Barangay San Pablo, Ormoc City Leyte 6541', '+63 994 667 0675', '124221140081'),
(538, 124156140027, 'Audrey Marie', 'Dawaton', 'C.', 'Female', '9/26/2009', 'STEM', 'Euclid', 11, 'Sitio Greenfield Brgy. San Isidro Ormoc City', '09487228048', '124156140027'),
(539, 124205140011, 'Matt', 'Dawis', 'Cas', 'Male', '4/1/2009', 'STEM', 'EUCLID', 11, 'Brgy. Juaton O.C', '0991 753 1128', '124205140011'),
(540, 454502150031, 'Juls Noah', 'Ortiz', 'D.', 'Male', '8/8/2008', 'HUMSS', 'Gaia', 11, 'Brgy. San Pablo, Simangan, Ormoc City', '09369323361', '454502150031'),
(541, 1241520140014, 'JELLIAN EVE', 'Payod', 'Dem', 'Female', '1/10/2009', 'HUMSS', 'Gaia', 11, 'BRGY biliboy', '09631183251', '1241520140014'),
(542, 124147140015, 'Kimberly', 'Pelayo', 'P.', 'Female', '9/4/2009', 'HUMSS', 'Gaia', 11, 'Camp Downes Purok Lumboy Ormoc City', '09603276265', '124147140015'),
(543, 121715140018, 'Mary Margrette', 'Regulacion', 'Car', 'Female', '9/2/2009', 'HUMSS', 'GAIA', 11, 'Brgy. West, Ormoc City', '09368421282', '121715140018'),
(544, 404784150008, 'Marian', 'Rodriguez', 'Pad', 'Female', '10/16/2025', 'HUMSS', 'GAIA', 11, 'Brgy. Liloan Tzuchi village', '09811295413', '404784150008'),
(545, 129773140033, 'Julie Ann', 'Sorima', 'San', 'Female', '3/12/2026', 'HUMSS', 'Gaia', 11, 'Brgy. San Isidro Owak Ormoc City, Leyte', '09090126513', '129773140033'),
(546, 124199140031, 'DENVER', 'Tabornal', '( N', 'Male', '10/2/2008', 'HUMSS', 'GAIA', 11, 'Tambulilid, Gk rotary', '09204340811', '124199140031'),
(547, 194501140157, 'Clingky Hyzel', 'Tampos', 'NA', 'Female', '7/6/2009', 'HUMSS', 'GAIA', 11, 'Brg. Don Felipe Larrazabal Purok 4, Mariveles', '09462872714', '194501140157'),
(548, 124204140066, 'Xyrene Jane', 'Villa', 'R.', 'Female', '11/26/2008', 'HUMSS', 'GAIA', 11, 'BRGY.NASUNOGAN, ORMOC CITY LEYTE', '+639533503149', '124204140066'),
(549, 124155140032, 'Alyssa', 'Villoria', 'B.', 'Female', '6/13/2009', 'HUMSS', 'Gaia', 11, 'Brgy.Ipil, Ormoc City', '09485931841', '124155140032'),
(550, 194501140434, 'Philip James', 'Inong', 'Del', 'Male', '8/31/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Donfelipe Larrazabal', '09673289351', '194501140434'),
(551, 12412150011, 'Jedrick', 'Israel', 'Tar', 'Male', '8/15/2006', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Libertad', '09533503728', '12412150011'),
(552, 12414313002, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA, PUROK 2', '09632664090', '12414313002'),
(553, 124201140033, 'Marian', 'Kempis', 'L', 'Female', '3/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Bagong Buhay', '09536487988', '124201140033'),
(554, 404786150289, 'Kean Jay', 'Laborte', 'Sie', 'Male', '2/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Purok Jasmin Cogon Highway, Ormoc City Leyte', '09091290296', '404786150289'),
(555, 121721130031, 'Majesty', 'Lamoste', 'Sab', 'Female', '3/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Casilda, Merida leyte', '09317362619', '121721130031'),
(556, 404514150141, 'Ferdinand Christian', 'Lapinig', 'O', 'Male', '10/10/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Juaton', '09563655278', '404514150141'),
(557, 124212130055, 'ROSELYN', 'MAASIN', 'TUB', 'Female', '4/5/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '09464779415', '124212130055'),
(558, 53839293733, 'Peter', 'Montalban', 'Gua', 'Male', '7/24/2008', 'TVL-ICT Programming', 'ruby', 12, 'brgy lake danao ormoc city', '09544857366', '53839293733'),
(559, 121730140003, 'Ronnell', 'Mopon', 'Gin', 'Male', '7/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Siapon district merida leyte', '09306943728', '121730140003'),
(560, 124212130043, 'Gilbert', 'Omega', 'Bos', 'Male', '4/10/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Airport Ormoc City', '09356194478', '124212130043'),
(561, 124203120074, 'PRINCESS', 'OMEGA', 'VYD', 'Female', '9/6/2006', 'TVL-ICT Programming', 'RUBY', 12, 'BRYG,NASUNOGAN,ORMOC CITY', '945 148 5269', '124203120074'),
(562, 124195130225, 'Chesed', 'Pangilinan', 'Feg', 'Male', '12/7/2007', 'TVL-ICT Programming', 'ruby', 12, 'purok green field barangay san isdro ormoc city', '09152347108', '124195130225'),
(563, 124198130044, 'Tresian Ed', 'Pareja', 'N/A', 'Male', '1/7/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Brgy.Tambulilid', '09702515044', '124198130044'),
(564, 121538130171, 'Michael Breynan', 'Pintoy', 'Pet', 'Male', '3/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Rizal St. Maraag', '09357182843', '121538130171'),
(565, 124212130016, 'Mj mc Dave', 'Ramiso', 'Mon', 'Male', '5/22/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy libertad ormoc city', '09940034077', '124212130016'),
(566, 124212130061, 'AIDA JEAN', 'SANCHEZ', 'ABA', 'Female', '8/30/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '09300515974', '124212130061'),
(567, 124143130033, 'Jeams', 'Sinoy', 'Cat', 'Male', '11/4/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Alta Vista', '09207373555', '124143130033'),
(568, 124218130049, 'JusperJames', 'Villanueva', 'Lat', 'Male', '8/12/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City, Leyte, brgy salvacion sitio bay-ang', '09672162995', '124218130049'),
(569, 404791151865, 'Vincent', 'Yap', 'Seb', 'Male', '12/31/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City leyte Philippines', '09082736965', '404791151865'),
(570, 124143130026, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA PUROK 2', '09503260123', '124143130026'),
(571, 119107140249, 'Jasmine', 'Mapula', 'Los', 'Female', '7/28/2006', 'TVL-ICT Programming', 'Ruby', 12, 'SanPablo (Simangan)', '09509338689', '119107140249'),
(572, 119803130192, 'Shanaia', 'Dela Cruz', 'Man', 'Female', '7/6/2008', 'STEM', '11 - EUCLID', 11, 'BRGY. CURVA ORMOC CITY', '09709937129', '119803130192'),
(573, 124195140023, 'Marc Ehron', 'Caoctoy', 'Cod', 'Male', '7/27/2009', 'STEM', '11-EUCLID', 11, 'Linao Purok 17 kanipaan Ormoc City Leyte', '09383386625', '124195140023'),
(574, 124198140046, 'Sabrina Faith', 'Caga-anan', 'D.', 'Female', '4/27/2009', 'STEM', '11-EUCLID', 11, 'Purok Rose, Brgy Punta Ormoc City Leyte', '09619561055', '124198140046'),
(575, 124147130036, 'Charmel', 'Rosales', 'Del', 'Female', '10/10/2008', 'TVL-CSS', '12 Berners Lee', 12, 'Barangay West District 26', '09398850730', '124147130036'),
(576, 7320183, 'Erika Jean', 'Palacio', 'D.', 'Female', '9/29/2009', 'TVL-CSS', '12-BERNERSLEE', 12, 'Brgy West Islaverde', '09709265102', '7320183'),
(577, 454503150031, 'Louie', 'Bornasal', 'B', 'Male', '11/21/2007', 'TVL-CSS', 'Berneerslee', 12, 'Brgy.sto niño Ormoc city', '09468622044', '454503150031'),
(578, 124221130029, 'Johnnoah', 'Emfimo', 'Lau', 'Male', '5/3/2008', 'TVL-CSS', 'Berner’s Lee', 12, 'Brgy. San Pablo, Purok 1, J.S Tan Village, Ormoc City, Leyte', '09309423679', '124221130029'),
(579, 124197130074, 'Darren', 'Adlawan', '', 'Male', '12/5/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Isidro, Ormoc City', '09923357131', '124197130074'),
(580, 124199130079, 'Ernesto', 'Balatong', 'Bor', 'Male', '6/29/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy tambulilid BLK 6 Raffi lot 188', '09485925821', '124199130079'),
(581, 124198140069, 'Zaire Vince', 'Isaac', 'Pul', 'Male', '8/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Punta, Purok Waling Waling', '09515106393', '124198140069'),
(582, 194501140439, 'Marian', 'Talatayod', 'C.', 'Female', '3/19/2007', 'TVL-CSS', 'Berners Lee', 12, 'Bgry.Altavista purok 8 Zone 4B', '09932455822', '194501140439'),
(583, 12403130047, 'Rona Mae', 'Temosa', 'M.', 'Female', '4/12/2008', 'TVL-CSS', 'BERNERS LEE', 12, 'Cantalib Dist 29 Ormoc City', '09950289715', '12403130047'),
(584, 194501140509, 'John Phillip', 'FOLLERO', 'B.', 'Male', '1/16/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.North Purok Sampaguita', '09921492987', '194501140509'),
(585, 124221130034, 'Antonio', 'Leopardas', 'M', 'Male', '8/17/2008', 'TVL-CSS', 'BERNERS LEE', 12, 'Brgy.San Pablo Ormoc City', '09630512232', '124221130034'),
(586, 124201130085, 'Trixie Monette', 'Roble', 'D.', 'Female', '11/9/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Bagong Buhay, Ormoc City', '0962 956 9089', '124201130085'),
(587, 124223140069, 'Reymark', 'Marce', 'Faj', 'Male', '11/15/2022', 'TVL-CSS', 'Bernerslee', 12, 'Brgy sto niño ormoc city leyte', '09949651142', '124223140069'),
(588, 124204130038, 'Bianca Camille', 'Polvera', 'Pel', 'Female', '6/2/2008', 'TVL-CSS', 'Bernes lee', 12, 'Sitio bugo , brgy. Curva ormoc city', '0966 009 9372', '124204130038'),
(589, 404790150538, 'Raemus Klyde', 'Cabuños', 'Cal', 'Male', '7/28/2008', 'STEM', 'Euclid', 11, 'Poblacion Kananga Leyte', '0960 895 4483', '404790150538'),
(590, 451546150083, 'Leoarn', 'Cadiente', 'Bal', 'Male', '4/8/2009', 'STEM', 'Euclid', 11, 'Kananga Leyte', '09307335365', '451546150083'),
(591, 121721140044, 'Bryan', 'Calaycay', 'Ban', 'Male', '5/2/2009', 'STEM', 'Euclid', 11, 'Brgy. Casilda Merida Leyte', '09100403160', '121721140044'),
(592, 194501140342, 'John Clifford', 'Camantes', 'E', 'Male', '2/27/2009', 'STEM', 'Euclid', 11, 'F. Ablen St. Cogon Combado Ormoc City', '09709244280', '194501140342'),
(593, 124196140015, 'Mythan', 'Cambaya', 'Non', 'Male', '6/28/2009', 'STEM', 'Euclid', 11, 'Naungan purok 2 ormoc city leyte', 'None', '124196140015'),
(594, 194501140263, 'Kenneth Bryle', 'Canlas', 'S.', 'Male', '4/3/2009', 'STEM', 'Euclid', 11, 'Hermosilla Drive, Ormoc City', '09096749333', '194501140263'),
(595, 109280150006, 'Jannah Mae', 'Canque', 'Asi', 'Female', '8/28/2009', 'STEM', 'Euclid', 11, 'Brgy. Sto Niño Ormoc City', '09300412143', '109280150006'),
(596, 124195140161, 'Blesing', 'Caoctoy', 'C.', 'Female', '10/10/2009', 'STEM', 'EUCLID', 11, 'Purok 9, Brgy. Linao Ormoc City, Leyte', '09267163389', '124195140161'),
(597, 194801140109, 'Jian Carlo', 'Casimpan', 'Y.', 'Male', '12/13/2008', 'STEM', 'EUCLID', 11, 'Brgy. Juaton, Ormoc City, Leyte', '09773363401', '194801140109'),
(598, 124195140164, 'Kristyl Jay', 'Casuco', 'C.', 'Female', '3/27/2026', 'STEM', 'Euclid', 11, 'Bantigue Ormoc City,Leyte', '09660279116', '124195140164'),
(599, 194501140264, 'Denzel Chad', 'Catipay', 'Cab', 'Male', '11/10/2008', 'STEM', 'EUCLID', 11, 'Blk. 6, Lot 11, Brgy. San Isidro, Purok Tent City', '09945467259/09947121753', '194501140264'),
(600, 124218140027, 'Dashiel Crunch', 'Claros', 'P.', 'Male', '11/7/2008', 'STEM', 'Euclid', 11, 'Brgy. Salvacion', '09189348364', '124218140027'),
(601, 121536150001, 'Alexander', 'Colaba', 'P.', 'Male', '7/4/2009', 'STEM', 'Euclid', 11, 'Brgy. Poblacion, Kananga, Leyte', '09081114111', '121536150001'),
(602, 194501140483, 'Princess Mae', 'Colasito', 'M', 'Female', '3/6/2009', 'STEM', 'Euclid', 11, 'Brgy. Margen O.C', '09977226385', '194501140483'),
(603, 124200140014, 'Kaye Marie', 'Cormanes', 'L.', 'Female', '3/21/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Airport Ormoc City', '09267916799', '124200140014'),
(604, 194501190315, 'Rhean Joy', 'Cuesta', 'M', 'Female', '4/15/2009', 'STEM', 'Euclid', 11, 'Sitio Ipil, Brgy. Curva, Ormoc City', '09302521897', '194501190315'),
(605, 194501140316, 'Angela Christine', 'Dasigan', 'O.', 'Female', '1/27/2009', 'STEM', 'EUCLID', 11, 'Purok 1 Brgy. San Pablo Ormoc City', '09302439608', '194501140316'),
(606, 194501140265, 'Rex Amdre', 'DE LA CRUZ', 'Fer', 'Male', '5/28/2009', 'STEM', 'euclid', 11, 'brgy dona fekiza mejia ormoc city', '09662604740', '194501140265'),
(607, 124197140023, 'Justine', 'Dejillo', 'T', 'Male', '9/7/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Alta Vista, Ormoc City, Leyte', '0927 302 4493', '124197140023'),
(608, 127215140055, 'John Rafael', 'Dela Torre', 'Asa', 'Male', '6/6/2009', 'STEM', 'Euclid', 11, 'Margen, Ormoc City, Leyte', '09158894041', '127215140055'),
(609, 124217140003, 'Ronald', 'Diano', 'Mac', 'Male', '5/14/2009', 'STEM', 'EUCLID', 11, 'purok 7, brgy.nasunogan, ormoc city', '09515120296', '124217140003'),
(610, 124190170087, 'Khyle Aundrie', 'Dimpas', 'R.', 'Male', '8/14/2009', 'STEM', 'Euclid', 11, 'Brgy. San Jose, Ormoc City, Leyte', '09693831579', '124190170087'),
(611, 404790150712, 'Marc Aidan', 'Doria', 'L.', 'Male', '9/28/2009', 'STEM', 'Euclid', 11, 'Buena Vida Heights Subd. Brgy San Pablo, Ormoc city, Leyte', '09985446916', '404790150712'),
(612, 124203140012, 'Dexter Sam', 'Dosdos', 'Car', 'Male', '1/12/2009', 'STEM', 'Euclid', 11, 'Cogon combado', '09632664308', '124203140012'),
(613, 124198150067, 'Adrianne Bryce', 'Duallo', 'N.', 'Male', '5/19/2009', 'STEM', 'Euclid', 11, 'Purok Waling-Waling, Brgy. Punta, O.C.', '09630922128', '124198150067'),
(614, 454505150024, 'Edrey Anthony', 'Elegio', 'Gon', 'Male', '12/9/2008', 'STEM', 'Euclid', 11, 'Brgy. Macabug', '09127845113', '454505150024'),
(615, 124210150035, 'Jamiela', 'Misterio', 'B.', 'Female', '1/11/2009', 'STEM', 'Euclid', 11, 'Lao kanangkaan purok 2', '09105151355', '124210150035'),
(616, 124159140007, 'Danica Irish', 'Cañedo', 'De ', 'Female', '10/12/2009', 'STEM', 'Euclid', 11, 'Brgy.Luna, Purok 2.A, Ormoc City', '09517135129', '124159140007'),
(617, 121548140030, 'Claire Jarrell', 'Corciega', 'T.', 'Female', '12/9/2008', 'STEM', 'EUCLID', 11, 'Naghalin, Kananga, Leyte', '09128638126', '121548140030'),
(618, 124221140081, 'Lianne Joy', 'Dacanay', 'E', 'Female', '12/13/2008', 'STEM', 'Euclid', 11, 'Barangay San Pablo, Ormoc City Leyte 6541', '+63 994 667 0675', '124221140081'),
(619, 124156140027, 'Audrey Marie', 'Dawaton', 'C.', 'Female', '9/26/2009', 'STEM', 'Euclid', 11, 'Sitio Greenfield Brgy. San Isidro Ormoc City', '09487228048', '124156140027'),
(620, 124205140011, 'Matt', 'Dawis', 'Cas', 'Male', '4/1/2009', 'STEM', 'EUCLID', 11, 'Brgy. Juaton O.C', '0991 753 1128', '124205140011'),
(621, 454502150031, 'Juls Noah', 'Ortiz', 'D.', 'Male', '8/8/2008', 'HUMSS', 'Gaia', 11, 'Brgy. San Pablo, Simangan, Ormoc City', '09369323361', '454502150031'),
(622, 1241520140014, 'JELLIAN EVE', 'Payod', 'Dem', 'Female', '1/10/2009', 'HUMSS', 'Gaia', 11, 'BRGY biliboy', '09631183251', '1241520140014'),
(623, 124147140015, 'Kimberly', 'Pelayo', 'P.', 'Female', '9/4/2009', 'HUMSS', 'Gaia', 11, 'Camp Downes Purok Lumboy Ormoc City', '09603276265', '124147140015'),
(624, 121715140018, 'Mary Margrette', 'Regulacion', 'Car', 'Female', '9/2/2009', 'HUMSS', 'GAIA', 11, 'Brgy. West, Ormoc City', '09368421282', '121715140018'),
(625, 404784150008, 'Marian', 'Rodriguez', 'Pad', 'Female', '10/16/2025', 'HUMSS', 'GAIA', 11, 'Brgy. Liloan Tzuchi village', '09811295413', '404784150008'),
(626, 129773140033, 'Julie Ann', 'Sorima', 'San', 'Female', '3/12/2026', 'HUMSS', 'Gaia', 11, 'Brgy. San Isidro Owak Ormoc City, Leyte', '09090126513', '129773140033'),
(627, 124199140031, 'DENVER', 'Tabornal', '( N', 'Male', '10/2/2008', 'HUMSS', 'GAIA', 11, 'Tambulilid, Gk rotary', '09204340811', '124199140031'),
(628, 194501140157, 'Clingky Hyzel', 'Tampos', 'NA', 'Female', '7/6/2009', 'HUMSS', 'GAIA', 11, 'Brg. Don Felipe Larrazabal Purok 4, Mariveles', '09462872714', '194501140157'),
(629, 124204140066, 'Xyrene Jane', 'Villa', 'R.', 'Female', '11/26/2008', 'HUMSS', 'GAIA', 11, 'BRGY.NASUNOGAN, ORMOC CITY LEYTE', '+639533503149', '124204140066'),
(630, 124155140032, 'Alyssa', 'Villoria', 'B.', 'Female', '6/13/2009', 'HUMSS', 'Gaia', 11, 'Brgy.Ipil, Ormoc City', '09485931841', '124155140032'),
(631, 194501140434, 'Philip James', 'Inong', 'Del', 'Male', '8/31/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Donfelipe Larrazabal', '09673289351', '194501140434'),
(632, 12412150011, 'Jedrick', 'Israel', 'Tar', 'Male', '8/15/2006', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Libertad', '09533503728', '12412150011'),
(633, 12414313002, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA, PUROK 2', '09632664090', '12414313002'),
(634, 124201140033, 'Marian', 'Kempis', 'L', 'Female', '3/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Bagong Buhay', '09536487988/09615863195', '124201140033'),
(635, 404786150289, 'Kean Jay', 'Laborte', 'Sie', 'Male', '2/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Purok Jasmin Cogon Highway, Ormoc City Leyte', '09091290296', '404786150289'),
(636, 121721130031, 'Majesty', 'Lamoste', 'Sab', 'Female', '3/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Casilda, Merida leyte', '09317362619', '121721130031'),
(637, 404514150141, 'Ferdinand Christian', 'Lapinig', 'O', 'Male', '10/10/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Juaton', '09563655278', '404514150141'),
(638, 124212130055, 'ROSELYN', 'MAASIN', 'TUB', 'Female', '4/5/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '09464779415', '124212130055'),
(639, 53839293733, 'Peter', 'Montalban', 'Gua', 'Male', '7/24/2008', 'TVL-ICT Programming', 'ruby', 12, 'brgy lake danao ormoc city', '09544857366', '53839293733'),
(640, 121730140003, 'Ronnell', 'Mopon', 'Gin', 'Male', '7/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Siapon district merida leyte', '09306943728', '121730140003'),
(641, 124212130043, 'Gilbert', 'Omega', 'Bos', 'Male', '4/10/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Airport Ormoc City', '09356194478', '124212130043'),
(642, 124203120074, 'PRINCESS', 'OMEGA', 'VYD', 'Female', '9/6/2006', 'TVL-ICT Programming', 'RUBY', 12, 'BRYG,NASUNOGAN,ORMOC CITY', '945 148 5269', '124203120074'),
(643, 124195130225, 'Chesed', 'Pangilinan', 'Feg', 'Male', '12/7/2007', 'TVL-ICT Programming', 'ruby', 12, 'purok green field barangay san isdro ormoc city', '09152347108', '124195130225'),
(644, 124198130044, 'Tresian Ed', 'Pareja', 'N/A', 'Male', '1/7/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Brgy.Tambulilid', '09702515044', '124198130044'),
(645, 121538130171, 'Michael Breynan', 'Pintoy', 'Pet', 'Male', '3/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Rizal St. Maraag', '09357182843', '121538130171'),
(646, 124212130016, 'Mj mc Dave', 'Ramiso', 'Mon', 'Male', '5/22/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy libertad ormoc city', '09940034077', '124212130016'),
(647, 124212130061, 'AIDA JEAN', 'SANCHEZ', 'ABA', 'Female', '8/30/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '09300515974', '124212130061'),
(648, 124143130033, 'Jeams', 'Sinoy', 'Cat', 'Male', '11/4/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Alta Vista', '09207373555', '124143130033'),
(649, 124218130049, 'JusperJames', 'Villanueva', 'Lat', 'Male', '8/12/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City, Leyte, brgy salvacion sitio bay-ang', '09672162995', '124218130049'),
(650, 404791151865, 'Vincent', 'Yap', 'Seb', 'Male', '12/31/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City leyte Philippines', '09082736965', '404791151865'),
(651, 124143130026, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA PUROK 2', '09503260123', '124143130026'),
(652, 119107140249, 'Jasmine', 'Mapula', 'Los', 'Female', '7/28/2006', 'TVL-ICT Programming', 'Ruby', 12, 'SanPablo (Simangan)', '09509338689', '119107140249'),
(653, 194501120283, 'Johnpaul', 'Rufin', 'C', 'Male', '6/24/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Rizal  extension', '0948 123 0446', '194501120283'),
(654, 124219120003, 'John Paul', 'Giva', 'Pil', 'Male', '9/21/2026', 'TVL-CSS', 'Berners Lee', 12, 'Brgy, San isidro', '09639192430', '124219120003'),
(655, 119803130192, 'Shanaia', 'Dela Cruz', 'Man', 'Female', '7/6/2008', 'STEM', 'EUCLID', 11, 'BRGY. CURVA ORMOC CITY', '09709937129', '119803130192'),
(656, 124195140023, 'Marc Ehron', 'Caoctoy', 'Cod', 'Male', '7/27/2009', 'STEM', 'EUCLID', 11, 'Linao Purok 17 kanipaan Ormoc City Leyte', '09383386625', '124195140023'),
(657, 124198140046, 'Sabrina Faith', 'Caga-anan', 'D.', 'Female', '4/27/2009', 'STEM', 'EUCLID', 11, 'Purok Rose, Brgy Punta Ormoc City Leyte', '09619561055', '124198140046'),
(658, 124147130036, 'Charmel', 'Rosales', 'Del', 'Female', '10/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Barangay West District 26', '09398850730', '124147130036'),
(659, 7320183, 'Erika Jean', 'Palacio', 'D.', 'Female', '9/29/2009', 'TVL-CSS', 'BERNERS LEE', 12, 'Brgy West Islaverde', '09709265102', '7320183'),
(660, 454503150031, 'Louie', 'Bornasal', 'B', 'Male', '11/21/2007', 'TVL-CSS', 'Berneers lee', 12, 'Brgy.sto niño Ormoc city', '09468622044', '454503150031'),
(661, 124221130029, 'Johnnoah', 'Emfimo', 'Lau', 'Male', '5/3/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Pablo, Purok 1, J.S Tan Village, Ormoc City, Leyte', '09309423679', '124221130029'),
(662, 124197130074, 'Darren', 'Adlawan', '', 'Male', '12/5/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Isidro, Ormoc City', '09923357131', '124197130074'),
(663, 124199130079, 'Ernesto', 'Balatong', 'Bor', 'Male', '6/29/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy tambulilid BLK 6 Raffi lot 188', '09485925821', '124199130079'),
(664, 124198140069, 'Zaire Vince', 'Isaac', 'Pul', 'Male', '8/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Punta, Purok Waling Waling', '09515106393', '124198140069'),
(665, 194501140439, 'Marian', 'Talatayod', 'C.', 'Female', '3/19/2007', 'TVL-CSS', 'Berners Lee', 12, 'Bgry.Altavista purok 8 Zone 4B', '09932455822', '194501140439'),
(666, 12403130047, 'Rona Mae', 'Temosa', 'M.', 'Female', '4/12/2008', 'TVL-CSS', 'BERNERS LEE', 12, 'Cantalib Dist 29 Ormoc City', '09950289715', '12403130047'),
(667, 194501140509, 'John Phillip', 'FOLLERO', 'B.', 'Male', '1/16/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.North Purok Sampaguita', '09921492987', '194501140509'),
(668, 124221130034, 'Antonio', 'Leopardas', 'M', 'Male', '8/17/2008', 'TVL-CSS', 'BERNERS LEE', 12, 'Brgy.San Pablo Ormoc City', '09630512232', '124221130034'),
(669, 124201130085, 'Trixie Monette', 'Roble', 'D.', 'Female', '11/9/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Bagong Buhay, Ormoc City', '0962 956 9089', '124201130085'),
(670, 124223140069, 'Reymark', 'Marce', 'Faj', 'Male', '11/15/2022', 'TVL-CSS', 'Berners lee', 12, 'Brgy sto niño ormoc city leyte', '09949651142', '124223140069'),
(671, 124204130038, 'Bianca Camille', 'Polvera', 'Pel', 'Female', '6/2/2008', 'TVL-CSS', 'Berners lee', 12, 'Sitio bugo , brgy. Curva ormoc city', '0966 009 9372', '124204130038'),
(672, 404790150538, 'Raemus Klyde', 'Cabuños', 'Cal', 'Male', '7/28/2008', 'STEM', 'Euclid', 11, 'Poblacion Kananga Leyte', '0960 895 4483', '404790150538'),
(673, 451546150083, 'Leoarn', 'Cadiente', 'Bal', 'Male', '4/8/2009', 'STEM', 'Euclid', 11, 'Kananga Leyte', '09307335365', '451546150083'),
(674, 121721140044, 'Bryan', 'Calaycay', 'Ban', 'Male', '5/2/2009', 'STEM', 'Euclid', 11, 'Brgy. Casilda Merida Leyte', '09100403160', '121721140044'),
(675, 194501140342, 'John Clifford', 'Camantes', 'E', 'Male', '2/27/2009', 'STEM', 'Euclid', 11, 'F. Ablen St. Cogon Combado Ormoc City', '09709244280', '194501140342'),
(676, 124196140015, 'Mythan', 'Cambaya', 'Non', 'Male', '6/28/2009', 'STEM', 'Euclid', 11, 'Naungan purok 2 ormoc city leyte', 'None', '124196140015'),
(677, 194501140263, 'Kenneth Bryle', 'Canlas', 'S.', 'Male', '4/3/2009', 'STEM', 'Euclid', 11, 'Hermosilla Drive, Ormoc City', '09096749333', '194501140263'),
(678, 109280150006, 'Jannah Mae', 'Canque', 'Asi', 'Female', '8/28/2009', 'STEM', 'Euclid', 11, 'Brgy. Sto Niño Ormoc City', '09300412143', '109280150006'),
(679, 124195140161, 'Blesing', 'Caoctoy', 'C.', 'Female', '10/10/2009', 'STEM', 'EUCLID', 11, 'Purok 9, Brgy. Linao Ormoc City, Leyte', '09267163389', '124195140161'),
(680, 194801140109, 'Jian Carlo', 'Casimpan', 'Y.', 'Male', '12/13/2008', 'STEM', 'EUCLID', 11, 'Brgy. Juaton, Ormoc City, Leyte', '09773363401', '194801140109'),
(681, 124195140164, 'Kristyl Jay', 'Casuco', 'C.', 'Female', '3/27/2026', 'STEM', 'Euclid', 11, 'Bantigue Ormoc City,Leyte', '09660279116', '124195140164'),
(682, 194501140264, 'Denzel Chad', 'Catipay', 'Cab', 'Male', '11/10/2008', 'STEM', 'EUCLID', 11, 'Blk. 6, Lot 11, Brgy. San Isidro, Purok Tent City', '09945467259/09947121753', '194501140264'),
(683, 124218140027, 'Dashiel Crunch', 'Claros', 'P.', 'Male', '11/7/2008', 'STEM', 'Euclid', 11, 'Brgy. Salvacion', '09189348364', '124218140027'),
(684, 121536150001, 'Alexander', 'Colaba', 'P.', 'Male', '7/4/2009', 'STEM', 'Euclid', 11, 'Brgy. Poblacion, Kananga, Leyte', '09081114111', '121536150001'),
(685, 194501140483, 'Princess Mae', 'Colasito', 'M', 'Female', '3/6/2009', 'STEM', 'Euclid', 11, 'Brgy. Margen O.C', '09977226385', '194501140483'),
(686, 124200140014, 'Kaye Marie', 'Cormanes', 'L.', 'Female', '3/21/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Airport Ormoc City', '09267916799', '124200140014'),
(687, 194501190315, 'Rhean Joy', 'Cuesta', 'M', 'Female', '4/15/2009', 'STEM', 'Euclid', 11, 'Sitio Ipil, Brgy. Curva, Ormoc City', '09302521897', '194501190315'),
(688, 194501140316, 'Angela Christine', 'Dasigan', 'O.', 'Female', '1/27/2009', 'STEM', 'EUCLID', 11, 'Purok 1 Brgy. San Pablo Ormoc City', '09302439608', '194501140316'),
(689, 194501140265, 'Rex Amdre', 'DE LA CRUZ', 'Fer', 'Male', '5/28/2009', 'STEM', 'euclid', 11, 'brgy dona fekiza mejia ormoc city', '09662604740', '194501140265'),
(690, 124197140023, 'Justine', 'Dejillo', 'T', 'Male', '9/7/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Alta Vista, Ormoc City, Leyte', '0927 302 4493', '124197140023'),
(691, 127215140055, 'John Rafael', 'Dela Torre', 'Asa', 'Male', '6/6/2009', 'STEM', 'Euclid', 11, 'Margen, Ormoc City, Leyte', '09158894041', '127215140055'),
(692, 124217140003, 'Ronald', 'Diano', 'Mac', 'Male', '5/14/2009', 'STEM', 'EUCLID', 11, 'purok 7, brgy.nasunogan, ormoc city', '09515120296', '124217140003'),
(693, 124190170087, 'Khyle Aundrie', 'Dimpas', 'R.', 'Male', '8/14/2009', 'STEM', 'Euclid', 11, 'Brgy. San Jose, Ormoc City, Leyte', '09693831579', '124190170087'),
(694, 404790150712, 'Marc Aidan', 'Doria', 'L.', 'Male', '9/28/2009', 'STEM', 'Euclid', 11, 'Buena Vida Heights Subd. Brgy San Pablo, Ormoc city, Leyte', '09985446916', '404790150712'),
(695, 124203140012, 'Dexter Sam', 'Dosdos', 'Car', 'Male', '1/12/2009', 'STEM', 'Euclid', 11, 'Cogon combado', '09632664308', '124203140012'),
(696, 124198150067, 'Adrianne Bryce', 'Duallo', 'N.', 'Male', '5/19/2009', 'STEM', 'Euclid', 11, 'Purok Waling-Waling, Brgy. Punta, O.C.', '09630922128', '124198150067'),
(697, 454505150024, 'Edrey Anthony', 'Elegio', 'Gon', 'Male', '12/9/2008', 'STEM', 'Euclid', 11, 'Brgy. Macabug', '09127845113', '454505150024'),
(698, 124210150035, 'Jamiela', 'Misterio', 'B.', 'Female', '1/11/2009', 'STEM', 'Euclid', 11, 'Lao kanangkaan purok 2', '09105151355', '124210150035'),
(699, 124159140007, 'Danica Irish', 'Cañedo', 'De ', 'Female', '10/12/2009', 'STEM', 'Euclid', 11, 'Brgy.Luna, Purok 2.A, Ormoc City', '09517135129', '124159140007'),
(700, 121548140030, 'Claire Jarrell', 'Corciega', 'T.', 'Female', '12/9/2008', 'STEM', 'EUCLID', 11, 'Naghalin, Kananga, Leyte', '09128638126', '121548140030'),
(701, 124221140081, 'Lianne Joy', 'Dacanay', 'E', 'Female', '12/13/2008', 'STEM', 'Euclid', 11, 'Barangay San Pablo, Ormoc City Leyte 6541', '+63 994 667 0675', '124221140081'),
(702, 124156140027, 'Audrey Marie', 'Dawaton', 'C.', 'Female', '9/26/2009', 'STEM', 'Euclid', 11, 'Sitio Greenfield Brgy. San Isidro Ormoc City', '09487228048', '124156140027'),
(703, 124205140011, 'Matt', 'Dawis', 'Cas', 'Male', '4/1/2009', 'STEM', 'EUCLID', 11, 'Brgy. Juaton O.C', '0991 753 1128', '124205140011'),
(704, 454502150031, 'Juls Noah', 'Ortiz', 'D.', 'Male', '8/8/2008', 'HUMSS', 'Gaia', 11, 'Brgy. San Pablo, Simangan, Ormoc City', '09369323361', '454502150031'),
(705, 1241520140014, 'JELLIAN EVE', 'Payod', 'Dem', 'Female', '1/10/2009', 'HUMSS', 'Gaia', 11, 'BRGY biliboy', '09631183251', '1241520140014'),
(706, 124147140015, 'Kimberly', 'Pelayo', 'P.', 'Female', '9/4/2009', 'HUMSS', 'Gaia', 11, 'Camp Downes Purok Lumboy Ormoc City', '09603276265', '124147140015'),
(707, 121715140018, 'Mary Margrette', 'Regulacion', 'Car', 'Female', '9/2/2009', 'HUMSS', 'GAIA', 11, 'Brgy. West, Ormoc City', '09368421282', '121715140018'),
(708, 404784150008, 'Marian', 'Rodriguez', 'Pad', 'Female', '10/16/2025', 'HUMSS', 'GAIA', 11, 'Brgy. Liloan Tzuchi village', '09811295413', '404784150008'),
(709, 129773140033, 'Julie Ann', 'Sorima', 'San', 'Female', '3/12/2026', 'HUMSS', 'Gaia', 11, 'Brgy. San Isidro Owak Ormoc City, Leyte', '09090126513', '129773140033'),
(710, 124199140031, 'DENVER', 'Tabornal', '( N', 'Male', '10/2/2008', 'HUMSS', 'GAIA', 11, 'Tambulilid, Gk rotary', '09204340811', '124199140031'),
(711, 194501140157, 'Clingky Hyzel', 'Tampos', 'NA', 'Female', '7/6/2009', 'HUMSS', 'GAIA', 11, 'Brg. Don Felipe Larrazabal Purok 4, Mariveles', '09462872714', '194501140157'),
(712, 124204140066, 'Xyrene Jane', 'Villa', 'R.', 'Female', '11/26/2008', 'HUMSS', 'GAIA', 11, 'BRGY.NASUNOGAN, ORMOC CITY LEYTE', '+639533503149', '124204140066'),
(713, 124155140032, 'Alyssa', 'Villoria', 'B.', 'Female', '6/13/2009', 'HUMSS', 'Gaia', 11, 'Brgy.Ipil, Ormoc City', '09485931841', '124155140032'),
(714, 194501140434, 'Philip James', 'Inong', 'Del', 'Male', '8/31/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Donfelipe Larrazabal', '09673289351', '194501140434'),
(715, 12412150011, 'Jedrick', 'Israel', 'Tar', 'Male', '8/15/2006', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Libertad', '09533503728', '12412150011');
INSERT INTO `archive_masterlist` (`id`, `lrn`, `firstname`, `lastname`, `mi`, `gender`, `bdate`, `strand`, `section`, `gradelvl`, `address`, `contact`, `generated_code`) VALUES
(716, 12414313002, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA, PUROK 2', '09632664090', '12414313002'),
(717, 124201140033, 'Marian', 'Kempis', 'L', 'Female', '3/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Bagong Buhay', '09536487988/09615863195', '124201140033'),
(718, 404786150289, 'Kean Jay', 'Laborte', 'Sie', 'Male', '2/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Purok Jasmin Cogon Highway, Ormoc City Leyte', '09091290296', '404786150289'),
(719, 121721130031, 'Majesty', 'Lamoste', 'Sab', 'Female', '3/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Casilda, Merida leyte', '09317362619', '121721130031'),
(720, 404514150141, 'Ferdinand Christian', 'Lapinig', 'O', 'Male', '10/10/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Juaton', '09563655278', '404514150141'),
(721, 124212130055, 'ROSELYN', 'MAASIN', 'TUB', 'Female', '4/5/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '09464779415', '124212130055'),
(722, 53839293733, 'Peter', 'Montalban', 'Gua', 'Male', '7/24/2008', 'TVL-ICT Programming', 'ruby', 12, 'brgy lake danao ormoc city', '09544857366', '53839293733'),
(723, 121730140003, 'Ronnell', 'Mopon', 'Gin', 'Male', '7/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Siapon district merida leyte', '09306943728', '121730140003'),
(724, 124212130043, 'Gilbert', 'Omega', 'Bos', 'Male', '4/10/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Airport Ormoc City', '09356194478', '124212130043'),
(725, 124203120074, 'PRINCESS', 'OMEGA', 'VYD', 'Female', '9/6/2006', 'TVL-ICT Programming', 'RUBY', 12, 'BRYG,NASUNOGAN,ORMOC CITY', '945 148 5269', '124203120074'),
(726, 124195130225, 'Chesed', 'Pangilinan', 'Feg', 'Male', '12/7/2007', 'TVL-ICT Programming', 'ruby', 12, 'purok green field barangay san isdro ormoc city', '09152347108', '124195130225'),
(727, 124198130044, 'Tresian Ed', 'Pareja', 'N/A', 'Male', '1/7/2008', 'TVL-ICT Programming', 'RUBY', 12, 'Brgy.Tambulilid', '09702515044', '124198130044'),
(728, 121538130171, 'Michael Breynan', 'Pintoy', 'Pet', 'Male', '3/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Rizal St. Maraag', '09357182843', '121538130171'),
(729, 124212130016, 'Mj mc Dave', 'Ramiso', 'Mon', 'Male', '5/22/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy libertad ormoc city', '09940034077', '124212130016'),
(730, 124212130061, 'AIDA JEAN', 'SANCHEZ', 'ABA', 'Female', '8/30/2008', 'TVL-ICT Programming', 'RUBY', 12, 'BRGY. LIBERTAD', '09300515974', '124212130061'),
(731, 124143130033, 'Jeams', 'Sinoy', 'Cat', 'Male', '11/4/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Alta Vista', '09207373555', '124143130033'),
(732, 124218130049, 'JusperJames', 'Villanueva', 'Lat', 'Male', '8/12/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City, Leyte, brgy salvacion sitio bay-ang', '09672162995', '124218130049'),
(733, 404791151865, 'Vincent', 'Yap', 'Seb', 'Male', '12/31/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City leyte Philippines', '09082736965', '404791151865'),
(734, 124143130026, 'ROEY', 'JABALLA', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'RUBY', 12, 'ALTA VISTA PUROK 2', '09503260123', '124143130026'),
(735, 119107140249, 'Jasmine', 'Mapula', 'Los', 'Female', '7/28/2006', 'TVL-ICT Programming', 'Ruby', 12, 'SanPablo (Simangan)', '09509338689', '119107140249'),
(736, 194501120283, 'Johnpaul', 'Rufin', 'C', 'Male', '6/24/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Rizal  extension', '0948 123 0446', '194501120283'),
(737, 124219120003, 'John Paul', 'Giva', 'Pil', 'Male', '9/21/2026', 'TVL-CSS', 'Berners Lee', 12, 'Brgy, San isidro', '09639192430', '124219120003');

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
(22, '124143130026', 'ROEY C. JABALLA', '', 'Ruby', '12', '09308842406', '2026-03-09', '12:38:04', 'N', '2026-03-09 04:38:04'),
(23, '124195130225', 'Chesed Feg. Pangilinan', '', 'ruby', '12', '09152347108', '2026-03-18', '13:53:54', 'N', '2026-03-18 05:53:54'),
(24, '124143130026', 'Roey C.. Jaballa', '', 'Ruby', '12', '09503260123', '2026-03-19', '02:55:34', 'N', '2026-03-18 18:55:34'),
(25, '121730140003', 'Ronnell G. Mopon', '', 'Ruby', '12', '09306943728', '2026-03-19', '02:55:43', 'N', '2026-03-18 18:55:43');

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
(738, 124197130074, 'Darren', 'Adlawan', '_', 'Male', '12/5/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Isidro, Ormoc City', '09923357131', '124197130074'),
(739, 124199130079, 'Ernesto', 'Balatong', 'B', 'Male', '6/29/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy tambulilid BLK 6 Raffi lot 188', '09485925821', '124199130079'),
(740, 454503150031, 'Louie', 'Bornasal', 'B', 'Male', '11/21/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.sto niño Ormoc city', '09468622044', '454503150031'),
(741, 124221130029, 'Johnnoah', 'Emfimo', 'L', 'Male', '5/3/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Pablo, Purok 1, J.S Tan Village, Ormoc City, Leyte', '09309423679', '124221130029'),
(742, 124219120003, 'John Paul', 'Giva', 'P', 'Male', '9/21/2026', 'TVL-CSS', 'Berners Lee', 12, 'Brgy, San isidro', '09639192430', '124219120003'),
(743, 124198140069, 'Zaire Vince', 'Isaac', 'P', 'Male', '8/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Punta, Purok Waling Waling', '09515106393', '124198140069'),
(744, 124221130034, 'Antonio', 'Leopardas', 'M', 'Male', '8/17/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.San Pablo Ormoc City', '09630512232', '124221130034'),
(745, 124223140069, 'Reymark', 'Marce', 'F', 'Male', '11/15/2022', 'TVL-CSS', 'Berners Lee', 12, 'Brgy sto niño ormoc city leyte', '09949651142', '124223140069'),
(746, 194501140439, 'Marian', 'Talatayod', 'C.', 'Female', '3/19/2007', 'TVL-CSS', 'Berners Lee', 12, 'Bgry.Altavista purok 8 Zone 4B', '09932455822', '194501140439'),
(747, 12403130047, 'Rona Mae', 'Temosa', 'M.', 'Female', '4/12/2008', 'TVL-CSS', 'Berners Lee', 12, 'Cantalib Dist 29 Ormoc City', '09950289715', '12403130047'),
(748, 194501140509, 'John Phillip', 'Follero', 'B.', 'Male', '1/16/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.North Purok Sampaguita', '09921492987', '194501140509'),
(749, 7320183, 'Erika Jean', 'Palacio', 'D.', 'Female', '9/29/2009', 'TVL-CSS', 'Berners Lee', 12, 'Brgy West Islaverde', '09709265102', '7320183'),
(750, 124204130038, 'Bianca Camille', 'Polvera', 'P', 'Female', '6/2/2008', 'TVL-CSS', 'Berners Lee', 12, 'Sitio bugo , brgy. Curva ormoc city', '09660099372', '124204130038'),
(751, 124201130085, 'Trixie Monette', 'Roble', 'D.', 'Female', '11/9/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Bagong Buhay, Ormoc City', '09629569089', '124201130085'),
(752, 124147130036, 'Charmel', 'Rosales', 'Del', 'Female', '10/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Barangay West District 26', '09398850730', '124147130036'),
(753, 404790150538, 'Raemus Klyde', 'Cabuños', 'C', 'Male', '7/28/2008', 'STEM', 'Euclid', 11, 'Poblacion Kananga Leyte', '09608954483', '404790150538'),
(754, 451546150083, 'Leoarn', 'Cadiente', 'B', 'Male', '4/8/2009', 'STEM', 'Euclid', 11, 'Kananga Leyte', '09307335365', '451546150083'),
(755, 124198140046, 'Sabrina Faith', 'Caga-anan', 'D.', 'Female', '4/27/2009', 'STEM', 'Euclid', 11, 'Purok Rose, Brgy Punta Ormoc City Leyte', '09619561055', '124198140046'),
(756, 121721140044, 'Bryan', 'Calaycay', 'B', 'Male', '5/2/2009', 'STEM', 'Euclid', 11, 'Brgy. Casilda Merida Leyte', '09100403160', '121721140044'),
(757, 194501140342, 'John Clifford', 'Camantes', 'E', 'Male', '2/27/2009', 'STEM', 'Euclid', 11, 'F. Ablen St. Cogon Combado Ormoc City', '09709244280', '194501140342'),
(758, 124196140015, 'Mythan', 'Cambaya', '_', 'Male', '6/28/2009', 'STEM', 'Euclid', 11, 'Naungan purok 2 ormoc city leyte', 'None', '124196140015'),
(759, 194501140263, 'Kenneth Bryle', 'Canlas', 'S.', 'Male', '4/3/2009', 'STEM', 'Euclid', 11, 'Hermosilla Drive, Ormoc City', '09096749333', '194501140263'),
(760, 109280150006, 'Jannah Mae', 'Canque', 'A', 'Female', '8/28/2009', 'STEM', 'Euclid', 11, 'Brgy. Sto Niño Ormoc City', '09300412143', '109280150006'),
(761, 124195140023, 'Marc Ehron', 'Caoctoy', 'C', 'Male', '7/27/2009', 'STEM', 'Euclid', 11, 'Linao Purok 17 kanipaan Ormoc City Leyte', '09383386625', '124195140023'),
(762, 124195140161, 'Blesing', 'Caoctoy', 'C.', 'Female', '10/10/2009', 'STEM', 'Euclid', 11, 'Purok 9, Brgy. Linao Ormoc City, Leyte', '09267163389', '124195140161'),
(763, 194801140109, 'Jian Carlo', 'Casimpan', 'Y.', 'Male', '12/13/2008', 'STEM', 'Euclid', 11, 'Brgy. Juaton, Ormoc City, Leyte', '09773363401', '194801140109'),
(764, 124195140164, 'Kristyl Jay', 'Casuco', 'C.', 'Female', '3/27/2026', 'STEM', 'Euclid', 11, 'Bantigue Ormoc City,Leyte', '09660279116', '124195140164'),
(765, 194501140264, 'Denzel Chad', 'Catipay', 'C', 'Male', '11/10/2008', 'STEM', 'Euclid', 11, 'Blk. 6, Lot 11, Brgy. San Isidro, Purok Tent City', '09945467259', '194501140264'),
(766, 124218140027, 'Dashiel Crunch', 'Claros', 'P.', 'Male', '11/7/2008', 'STEM', 'Euclid', 11, 'Brgy. Salvacion', '09189348364', '124218140027'),
(767, 121536150001, 'Alexander', 'Colaba', 'P.', 'Male', '7/4/2009', 'STEM', 'Euclid', 11, 'Brgy. Poblacion, Kananga, Leyte', '09081114111', '121536150001'),
(768, 194501140483, 'Princess Mae', 'Colasito', 'M', 'Female', '3/6/2009', 'STEM', 'Euclid', 11, 'Brgy. Margen O.C', '09977226385', '194501140483'),
(769, 121548140030, 'Claire Jarrell', 'Corciega', 'T.', 'Female', '12/9/2008', 'STEM', 'Euclid', 11, 'Naghalin, Kananga, Leyte', '09128638126', '121548140030'),
(770, 124200140014, 'Kaye Marie', 'Cormanes', 'L.', 'Female', '3/21/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Airport Ormoc City', '09267916799', '124200140014'),
(771, 194501190315, 'Rhean Joy', 'Cuesta', 'M', 'Female', '4/15/2009', 'STEM', 'Euclid', 11, 'Sitio Ipil, Brgy. Curva, Ormoc City', '09302521897', '194501190315'),
(772, 194501140316, 'Angela Christine', 'Dasigan', 'O.', 'Female', '1/27/2009', 'STEM', 'Euclid', 11, 'Purok 1 Brgy. San Pablo Ormoc City', '09302439608', '194501140316'),
(773, 124205140011, 'Matt', 'Dawis', 'C', 'Male', '4/1/2009', 'STEM', 'Euclid', 11, 'Brgy. Juaton O.C', '09917531128', '124205140011'),
(774, 194501140265, 'Rex Amdre', 'De La Cruz', 'F', 'Male', '5/28/2009', 'STEM', 'Euclid', 11, 'brgy dona fekiza mejia ormoc city', '09662604740', '194501140265'),
(775, 124197140023, 'Justine', 'Dejillo', 'T', 'Male', '9/7/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Alta Vista, Ormoc City, Leyte', '09273024493', '124197140023'),
(776, 119803130192, 'Shanaia', 'Dela Cruz', 'M', 'Female', '7/6/2008', 'STEM', 'Euclid', 11, 'BRGY. CURVA ORMOC CITY', '09709937129', '119803130192'),
(777, 127215140055, 'John Rafael', 'Dela Torre', 'A', 'Male', '6/6/2009', 'STEM', 'Euclid', 11, 'Margen, Ormoc City, Leyte', '09158894041', '127215140055'),
(778, 124217140003, 'Ronald', 'Diano', 'M', 'Male', '5/14/2009', 'STEM', 'Euclid', 11, 'purok 7, brgy.nasunogan, ormoc city', '09515120296', '124217140003'),
(779, 124190170087, 'Khyle Aundrie', 'Dimpas', 'R.', 'Male', '8/14/2009', 'STEM', 'Euclid', 11, 'Brgy. San Jose, Ormoc City, Leyte', '09693831579', '124190170087'),
(780, 404790150712, 'Marc Aidan', 'Doria', 'L.', 'Male', '9/28/2009', 'STEM', 'Euclid', 11, 'Buena Vida Heights Subd. Brgy San Pablo, Ormoc city, Leyte', '09985446916', '404790150712'),
(781, 124203140012, 'Dexter Sam', 'Dosdos', 'C', 'Male', '1/12/2009', 'STEM', 'Euclid', 11, 'Cogon combado', '09632664308', '124203140012'),
(782, 124198150067, 'Adrianne Bryce', 'Duallo', 'N.', 'Male', '5/19/2009', 'STEM', 'Euclid', 11, 'Purok Waling-Waling, Brgy. Punta, O.C.', '09630922128', '124198150067'),
(783, 454505150024, 'Edrey Anthony', 'Elegio', 'G', 'Male', '12/9/2008', 'STEM', 'Euclid', 11, 'Brgy. Macabug', '09127845113', '454505150024'),
(784, 124210150035, 'Jamiela', 'Misterio', 'B.', 'Female', '1/11/2009', 'STEM', 'Euclid', 11, 'Lao kanangkaan purok 2', '09105151355', '124210150035'),
(785, 124159140007, 'Danica Irish', 'Cañedo', 'De ', 'Female', '10/12/2009', 'STEM', 'Euclid', 11, 'Brgy.Luna, Purok 2.A, Ormoc City', '09517135129', '124159140007'),
(786, 124221140081, 'Lianne Joy', 'Dacanay', 'E', 'Female', '12/13/2008', 'STEM', 'Euclid', 11, 'Barangay San Pablo, Ormoc City Leyte 6541', '09946670675', '124221140081'),
(787, 124156140027, 'Audrey Marie', 'Dawaton', 'C.', 'Female', '9/26/2009', 'STEM', 'Euclid', 11, 'Sitio Greenfield Brgy. San Isidro Ormoc City', '09487228048', '124156140027'),
(788, 454502150031, 'Juls Noah', 'Ortiz', 'D.', 'Male', '8/8/2008', 'HUMSS', 'Gaia', 11, 'Brgy. San Pablo, Simangan, Ormoc City', '09369323361', '454502150031'),
(789, 1241520140014, 'Jellian Eve', 'Payod', 'D', 'Female', '1/10/2009', 'HUMSS', 'Gaia', 11, 'BRGY biliboy', '09631183251', '1241520140014'),
(790, 124147140015, 'Kimberly', 'Pelayo', 'P.', 'Female', '9/4/2009', 'HUMSS', 'Gaia', 11, 'Camp Downes Purok Lumboy Ormoc City', '09603276265', '124147140015'),
(791, 121715140018, 'Mary Margrette', 'Regulacion', 'C', 'Female', '9/2/2009', 'HUMSS', 'Gaia', 11, 'Brgy. West, Ormoc City', '09368421282', '121715140018'),
(792, 404784150008, 'Marian', 'Rodriguez', 'P', 'Female', '10/16/2025', 'HUMSS', 'Gaia', 11, 'Brgy. Liloan Tzuchi village', '09811295413', '404784150008'),
(793, 129773140033, 'Julie Ann', 'Sorima', 'S', 'Female', '3/12/2026', 'HUMSS', 'Gaia', 11, 'Brgy. San Isidro Owak Ormoc City, Leyte', '09090126513', '129773140033'),
(794, 124199140031, 'Denver', 'Tabornal', '_', 'Male', '10/2/2008', 'HUMSS', 'Gaia', 11, 'Tambulilid, Gk rotary', '09204340811', '124199140031'),
(795, 194501140157, 'Clingky Hyzel', 'Tampos', '_', 'Female', '7/6/2009', 'HUMSS', 'Gaia', 11, 'Brg. Don Felipe Larrazabal Purok 4, Mariveles', '09462872714', '194501140157'),
(796, 124204140066, 'Xyrene Jane', 'Villa', 'R.', 'Female', '11/26/2008', 'HUMSS', 'Gaia', 11, 'BRGY.NASUNOGAN, ORMOC CITY LEYTE', '09533503149', '124204140066'),
(797, 124155140032, 'Alyssa', 'Villoria', 'B.', 'Female', '6/13/2009', 'HUMSS', 'Gaia', 11, 'Brgy.Ipil, Ormoc City', '09485931841', '124155140032'),
(798, 194501140434, 'Philip James', 'Inong', 'D', 'Male', '8/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Donfelipe Larrazabal', '09673289351', '194501140434'),
(799, 12412150011, 'Jedrick', 'Israel', 'T', 'Male', '8/15/2006', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Libertad', '09533503728', '12412150011'),
(800, 124143130026, 'Roey', 'Jaballa', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'Ruby', 12, 'ALTA VISTA PUROK 2', '09503260123', '124143130026'),
(801, 124201140033, 'Marian', 'Kempis', 'L', 'Female', '3/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Bagong Buhay', '09536487988', '124201140033'),
(802, 404786150289, 'Kean Jay', 'Laborte', 'S', 'Male', '2/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Purok Jasmin Cogon Highway, Ormoc City Leyte', '09091290296', '404786150289'),
(803, 194501130333, 'Gian', 'Lalap', 'M', 'Male', '8/13/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Don Felipe Larrazabal', '09308842406', '194501130333'),
(804, 121721130031, 'Majesty', 'Lamoste', 'S', 'Female', '3/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Casilda, Merida leyte', '09317362619', '121721130031'),
(805, 404514150141, 'Ferdinand Christian', 'Lapinig', 'O', 'Male', '10/10/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Juaton', '09563655278', '404514150141'),
(806, 124212130055, 'Roselyn', 'Maasin', 'T', 'Female', '4/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'BRGY. LIBERTAD', '09464779415', '124212130055'),
(807, 53839293733, 'Peter', 'Montalban', 'G', 'Male', '7/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'brgy lake danao ormoc city', '09544857366', '53839293733'),
(808, 121730140003, 'Ronnell', 'Mopon', 'G', 'Male', '7/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Siapon district merida leyte', '09306943728', '121730140003'),
(809, 124212130043, 'Gilbert', 'Omega', 'B', 'Male', '4/10/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Airport Ormoc City', '09356194478', '124212130043'),
(810, 124203120074, 'Princess', 'Omega', 'V', 'Female', '9/6/2006', 'TVL-ICT Programming', 'Ruby', 12, 'BRYG,NASUNOGAN,ORMOC CITY', '09451485269', '124203120074'),
(811, 124195130225, 'Chesed', 'Pangilinan', 'F', 'Male', '12/7/2007', 'TVL-ICT Programming', 'Ruby', 12, 'purok green field barangay san isdro ormoc city', '09152347108', '124195130225'),
(812, 124198130044, 'Tresian Ed', 'Pareja', '_', 'Male', '1/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Tambulilid', '09702515044', '124198130044'),
(813, 121538130171, 'Micheal Breynan', 'Pintoy', 'P', 'Male', '3/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Rizal St. Maraag', '09357182843', '121538130171'),
(814, 124212130016, 'Mj mc Dave', 'Ramiso', 'M', 'Male', '5/22/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy libertad ormoc city', '09940034077', '124212130016'),
(815, 194501120283, 'Johnpaul', 'Rufin', 'C', 'Male', '6/24/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Rizal  extension', '09481230446', '194501120283'),
(816, 124212130061, 'Aida Jean', 'Sanchez', 'A', 'Female', '8/30/2008', 'TVL-ICT Programming', 'Ruby', 12, 'BRGY. LIBERTAD', '09300515974', '124212130061'),
(817, 124143130033, 'Jeams', 'Sinoy', 'C', 'Male', '11/4/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Alta Vista', '09207373555', '124143130033'),
(818, 124203130100, 'Jerald', 'Tandok', 'DLC', 'Male', '8/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Sitio Cantalib, Brgy. North, Nadongholan', '09704532985', '124203130100'),
(819, 124218130049, 'JusperJames', 'Villanueva', 'L', 'Male', '8/12/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City, Leyte, brgy salvacion sitio bay-ang', '09672162995', '124218130049'),
(820, 404791151865, 'Vincent', 'Yap', 'S', 'Male', '12/31/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City leyte Philippines', '09082736965', '404791151865'),
(821, 119107140249, 'Jasmine', 'Mapula', 'L', 'Female', '7/28/2006', 'TVL-ICT Programming', 'Ruby', 12, 'SanPablo (Simangan)', '09509338689', '119107140249');

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `masterlist`
--
ALTER TABLE `masterlist`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
