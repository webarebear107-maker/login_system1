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
(1, '194501140434', 'Philip James D. Inong', '', 'Ruby', '12', '09673289351', '2026-03-23', '11:48:46', 'N', '2026-03-23 03:48:46'),
(2, '124143130026', 'Roey C.. Jaballa', '', 'Ruby', '12', '09503260123', '2026-03-23', '11:48:52', 'N', '2026-03-23 03:48:52'),
(3, '404786150289', 'Kean Jay S. Laborte', '', 'Ruby', '12', '09091290296', '2026-03-23', '11:49:03', 'N', '2026-03-23 03:49:03'),
(4, '12412150011', 'Jedrick T. Israel', '', 'Ruby', '12', '09533503728', '2026-03-23', '11:49:09', 'N', '2026-03-23 03:49:09'),
(5, '194501130333', 'Gian M. Lalap', '', 'Ruby', '12', '09308842406', '2026-03-23', '11:49:24', 'N', '2026-03-23 03:49:24'),
(6, '124198130044', 'Tresian Ed _. Pareja', '', 'Ruby', '12', '09702515044', '2026-03-23', '11:49:29', 'N', '2026-03-23 03:49:29'),
(7, '404514150141', 'Ferdinand Christian O. Lapinig', '', 'Ruby', '12', '09563655278', '2026-03-23', '11:49:34', 'N', '2026-03-23 03:49:34'),
(8, '121730140003', 'Ronnell G. Mopon', '', 'Ruby', '12', '09306943728', '2026-03-23', '11:49:39', 'N', '2026-03-23 03:49:39'),
(9, '124212130043', 'Gilbert B. Omega', '', 'Ruby', '12', '09356194478', '2026-03-23', '11:49:44', 'N', '2026-03-23 03:49:44'),
(10, '124195130225', 'Chesed F. Pangilinan', '', 'Ruby', '12', '09152347108', '2026-03-23', '11:49:53', 'N', '2026-03-23 03:49:53'),
(11, '121538130171', 'Micheal Breynan P. Pintoy', '', 'Ruby', '12', '09357182843', '2026-03-23', '11:50:09', 'N', '2026-03-23 03:50:09'),
(12, '124212130016', 'Mj mc Dave M. Ramiso', '', 'Ruby', '12', '09940034077', '2026-03-23', '11:50:14', 'N', '2026-03-23 03:50:14'),
(13, '194501120283', 'Johnpaul C. Rufin', '', 'Ruby', '12', '09481230446', '2026-03-23', '11:50:19', 'N', '2026-03-23 03:50:19'),
(14, '124203130100', 'Jerald DLC. Tandok', '', 'Ruby', '12', '09704532985', '2026-03-23', '11:50:24', 'N', '2026-03-23 03:50:24'),
(15, '124218130049', 'JusperJames L. Villanueva', '', 'Ruby', '12', '09672162995', '2026-03-23', '11:50:36', 'N', '2026-03-23 03:50:36'),
(16, '404791151865', 'Vincent S. Yap', '', 'Ruby', '12', '09082736965', '2026-03-23', '11:50:42', 'N', '2026-03-23 03:50:42'),
(17, '124201140033', 'Marian L. Kempis', '', 'Ruby', '12', '09536487988', '2026-03-23', '11:50:45', 'N', '2026-03-23 03:50:45'),
(18, '121721130031', 'Majesty S. Lamoste', '', 'Ruby', '12', '09317362619', '2026-03-23', '11:50:49', 'N', '2026-03-23 03:50:49'),
(19, '124212130055', 'Roselyn T. Maasin', '', 'Ruby', '12', '09464779415', '2026-03-23', '11:50:53', 'N', '2026-03-23 03:50:53');

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
(1, 124197130074, 'Darren', 'Adlawan', '_', 'Male', '12/5/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Isidro, Ormoc City', '09923357131', '124197130074'),
(2, 124199130079, 'Ernesto', 'Balatong', 'B', 'Male', '6/29/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy tambulilid BLK 6 Raffi lot 188', '09485925821', '124199130079'),
(3, 454503150031, 'Louie', 'Bornasal', 'B', 'Male', '11/21/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.sto niño Ormoc city', '09468622044', '454503150031'),
(4, 124221130029, 'Johnnoah', 'Emfimo', 'L', 'Male', '5/3/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy. San Pablo, Purok 1, J.S Tan Village, Ormoc City, Leyte', '09309423679', '124221130029'),
(5, 124219120003, 'John Paul', 'Giva', 'P', 'Male', '9/21/2026', 'TVL-CSS', 'Berners Lee', 12, 'Brgy, San isidro', '09639192430', '124219120003'),
(6, 124198140069, 'Zaire Vince', 'Isaac', 'P', 'Male', '8/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Punta, Purok Waling Waling', '09515106393', '124198140069'),
(7, 124221130034, 'Antonio', 'Leopardas', 'M', 'Male', '8/17/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.San Pablo Ormoc City', '09630512232', '124221130034'),
(8, 124223140069, 'Reymark', 'Marce', 'F', 'Male', '11/15/2022', 'TVL-CSS', 'Berners Lee', 12, 'Brgy sto niño ormoc city leyte', '09949651142', '124223140069'),
(9, 194501140439, 'Marian', 'Talatayod', 'C.', 'Female', '3/19/2007', 'TVL-CSS', 'Berners Lee', 12, 'Bgry.Altavista purok 8 Zone 4B', '09932455822', '194501140439'),
(10, 12403130047, 'Rona Mae', 'Temosa', 'M.', 'Female', '4/12/2008', 'TVL-CSS', 'Berners Lee', 12, 'Cantalib Dist 29 Ormoc City', '09950289715', '12403130047'),
(11, 194501140509, 'John Phillip', 'Follero', 'B.', 'Male', '1/16/2008', 'TVL-CSS', 'Berners Lee', 12, 'Brgy.North Purok Sampaguita', '09921492987', '194501140509'),
(12, 7320183, 'Erika Jean', 'Palacio', 'D.', 'Female', '9/29/2009', 'TVL-CSS', 'Berners Lee', 12, 'Brgy West Islaverde', '09709265102', '7320183'),
(13, 124204130038, 'Bianca Camille', 'Polvera', 'P', 'Female', '6/2/2008', 'TVL-CSS', 'Berners Lee', 12, 'Sitio bugo , brgy. Curva ormoc city', '09660099372', '124204130038'),
(14, 124201130085, 'Trixie Monette', 'Roble', 'D.', 'Female', '11/9/2007', 'TVL-CSS', 'Berners Lee', 12, 'Brgy Bagong Buhay, Ormoc City', '09629569089', '124201130085'),
(15, 124147130036, 'Charmel', 'Rosales', 'Del', 'Female', '10/10/2008', 'TVL-CSS', 'Berners Lee', 12, 'Barangay West District 26', '09398850730', '124147130036'),
(16, 404790150538, 'Raemus Klyde', 'Cabuños', 'C', 'Male', '7/28/2008', 'STEM', 'Euclid', 11, 'Poblacion Kananga Leyte', '09608954483', '404790150538'),
(17, 451546150083, 'Leoarn', 'Cadiente', 'B', 'Male', '4/8/2009', 'STEM', 'Euclid', 11, 'Kananga Leyte', '09307335365', '451546150083'),
(18, 124198140046, 'Sabrina Faith', 'Caga-anan', 'D.', 'Female', '4/27/2009', 'STEM', 'Euclid', 11, 'Purok Rose, Brgy Punta Ormoc City Leyte', '09619561055', '124198140046'),
(19, 121721140044, 'Bryan', 'Calaycay', 'B', 'Male', '5/2/2009', 'STEM', 'Euclid', 11, 'Brgy. Casilda Merida Leyte', '09100403160', '121721140044'),
(20, 194501140342, 'John Clifford', 'Camantes', 'E', 'Male', '2/27/2009', 'STEM', 'Euclid', 11, 'F. Ablen St. Cogon Combado Ormoc City', '09709244280', '194501140342'),
(21, 124196140015, 'Mythan', 'Cambaya', '_', 'Male', '6/28/2009', 'STEM', 'Euclid', 11, 'Naungan purok 2 ormoc city leyte', 'None', '124196140015'),
(22, 194501140263, 'Kenneth Bryle', 'Canlas', 'S.', 'Male', '4/3/2009', 'STEM', 'Euclid', 11, 'Hermosilla Drive, Ormoc City', '09096749333', '194501140263'),
(23, 109280150006, 'Jannah Mae', 'Canque', 'A', 'Female', '8/28/2009', 'STEM', 'Euclid', 11, 'Brgy. Sto Niño Ormoc City', '09300412143', '109280150006'),
(24, 124195140023, 'Marc Ehron', 'Caoctoy', 'C', 'Male', '7/27/2009', 'STEM', 'Euclid', 11, 'Linao Purok 17 kanipaan Ormoc City Leyte', '09383386625', '124195140023'),
(25, 124195140161, 'Blesing', 'Caoctoy', 'C.', 'Female', '10/10/2009', 'STEM', 'Euclid', 11, 'Purok 9, Brgy. Linao Ormoc City, Leyte', '09267163389', '124195140161'),
(26, 194801140109, 'Jian Carlo', 'Casimpan', 'Y.', 'Male', '12/13/2008', 'STEM', 'Euclid', 11, 'Brgy. Juaton, Ormoc City, Leyte', '09773363401', '194801140109'),
(27, 124195140164, 'Kristyl Jay', 'Casuco', 'C.', 'Female', '3/27/2026', 'STEM', 'Euclid', 11, 'Bantigue Ormoc City,Leyte', '09660279116', '124195140164'),
(28, 194501140264, 'Denzel Chad', 'Catipay', 'C', 'Male', '11/10/2008', 'STEM', 'Euclid', 11, 'Blk. 6, Lot 11, Brgy. San Isidro, Purok Tent City', '09945467259', '194501140264'),
(29, 124218140027, 'Dashiel Crunch', 'Claros', 'P.', 'Male', '11/7/2008', 'STEM', 'Euclid', 11, 'Brgy. Salvacion', '09189348364', '124218140027'),
(30, 121536150001, 'Alexander', 'Colaba', 'P.', 'Male', '7/4/2009', 'STEM', 'Euclid', 11, 'Brgy. Poblacion, Kananga, Leyte', '09081114111', '121536150001'),
(31, 194501140483, 'Princess Mae', 'Colasito', 'M', 'Female', '3/6/2009', 'STEM', 'Euclid', 11, 'Brgy. Margen O.C', '09977226385', '194501140483'),
(32, 121548140030, 'Claire Jarrell', 'Corciega', 'T.', 'Female', '12/9/2008', 'STEM', 'Euclid', 11, 'Naghalin, Kananga, Leyte', '09128638126', '121548140030'),
(33, 124200140014, 'Kaye Marie', 'Cormanes', 'L.', 'Female', '3/21/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Airport Ormoc City', '09267916799', '124200140014'),
(34, 194501190315, 'Rhean Joy', 'Cuesta', 'M', 'Female', '4/15/2009', 'STEM', 'Euclid', 11, 'Sitio Ipil, Brgy. Curva, Ormoc City', '09302521897', '194501190315'),
(35, 194501140316, 'Angela Christine', 'Dasigan', 'O.', 'Female', '1/27/2009', 'STEM', 'Euclid', 11, 'Purok 1 Brgy. San Pablo Ormoc City', '09302439608', '194501140316'),
(36, 124205140011, 'Matt', 'Dawis', 'C', 'Male', '4/1/2009', 'STEM', 'Euclid', 11, 'Brgy. Juaton O.C', '09917531128', '124205140011'),
(37, 194501140265, 'Rex Amdre', 'De La Cruz', 'F', 'Male', '5/28/2009', 'STEM', 'Euclid', 11, 'brgy dona fekiza mejia ormoc city', '09662604740', '194501140265'),
(38, 124197140023, 'Justine', 'Dejillo', 'T', 'Male', '9/7/2009', 'STEM', 'Euclid', 11, 'Purok 4, Brgy. Alta Vista, Ormoc City, Leyte', '09273024493', '124197140023'),
(39, 119803130192, 'Shanaia', 'Dela Cruz', 'M', 'Female', '7/6/2008', 'STEM', 'Euclid', 11, 'BRGY. CURVA ORMOC CITY', '09709937129', '119803130192'),
(40, 127215140055, 'John Rafael', 'Dela Torre', 'A', 'Male', '6/6/2009', 'STEM', 'Euclid', 11, 'Margen, Ormoc City, Leyte', '09158894041', '127215140055'),
(41, 124217140003, 'Ronald', 'Diano', 'M', 'Male', '5/14/2009', 'STEM', 'Euclid', 11, 'purok 7, brgy.nasunogan, ormoc city', '09515120296', '124217140003'),
(42, 124190170087, 'Khyle Aundrie', 'Dimpas', 'R.', 'Male', '8/14/2009', 'STEM', 'Euclid', 11, 'Brgy. San Jose, Ormoc City, Leyte', '09693831579', '124190170087'),
(43, 404790150712, 'Marc Aidan', 'Doria', 'L.', 'Male', '9/28/2009', 'STEM', 'Euclid', 11, 'Buena Vida Heights Subd. Brgy San Pablo, Ormoc city, Leyte', '09985446916', '404790150712'),
(44, 124203140012, 'Dexter Sam', 'Dosdos', 'C', 'Male', '1/12/2009', 'STEM', 'Euclid', 11, 'Cogon combado', '09632664308', '124203140012'),
(45, 124198150067, 'Adrianne Bryce', 'Duallo', 'N.', 'Male', '5/19/2009', 'STEM', 'Euclid', 11, 'Purok Waling-Waling, Brgy. Punta, O.C.', '09630922128', '124198150067'),
(46, 454505150024, 'Edrey Anthony', 'Elegio', 'G', 'Male', '12/9/2008', 'STEM', 'Euclid', 11, 'Brgy. Macabug', '09127845113', '454505150024'),
(47, 124210150035, 'Jamiela', 'Misterio', 'B.', 'Female', '1/11/2009', 'STEM', 'Euclid', 11, 'Lao kanangkaan purok 2', '09105151355', '124210150035'),
(48, 124159140007, 'Danica Irish', 'Cañedo', 'De ', 'Female', '10/12/2009', 'STEM', 'Euclid', 11, 'Brgy.Luna, Purok 2.A, Ormoc City', '09517135129', '124159140007'),
(49, 124221140081, 'Lianne Joy', 'Dacanay', 'E', 'Female', '12/13/2008', 'STEM', 'Euclid', 11, 'Barangay San Pablo, Ormoc City Leyte 6541', '09946670675', '124221140081'),
(50, 124156140027, 'Audrey Marie', 'Dawaton', 'C.', 'Female', '9/26/2009', 'STEM', 'Euclid', 11, 'Sitio Greenfield Brgy. San Isidro Ormoc City', '09487228048', '124156140027'),
(51, 454502150031, 'Juls Noah', 'Ortiz', 'D.', 'Male', '8/8/2008', 'HUMSS', 'Gaia', 11, 'Brgy. San Pablo, Simangan, Ormoc City', '09369323361', '454502150031'),
(52, 1241520140014, 'Jellian Eve', 'Payod', 'D', 'Female', '1/10/2009', 'HUMSS', 'Gaia', 11, 'BRGY biliboy', '09631183251', '1241520140014'),
(53, 124147140015, 'Kimberly', 'Pelayo', 'P.', 'Female', '9/4/2009', 'HUMSS', 'Gaia', 11, 'Camp Downes Purok Lumboy Ormoc City', '09603276265', '124147140015'),
(54, 121715140018, 'Mary Margrette', 'Regulacion', 'C', 'Female', '9/2/2009', 'HUMSS', 'Gaia', 11, 'Brgy. West, Ormoc City', '09368421282', '121715140018'),
(55, 404784150008, 'Marian', 'Rodriguez', 'P', 'Female', '10/16/2025', 'HUMSS', 'Gaia', 11, 'Brgy. Liloan Tzuchi village', '09811295413', '404784150008'),
(56, 129773140033, 'Julie Ann', 'Sorima', 'S', 'Female', '3/12/2026', 'HUMSS', 'Gaia', 11, 'Brgy. San Isidro Owak Ormoc City, Leyte', '09090126513', '129773140033'),
(57, 124199140031, 'Denver', 'Tabornal', '_', 'Male', '10/2/2008', 'HUMSS', 'Gaia', 11, 'Tambulilid, Gk rotary', '09204340811', '124199140031'),
(58, 194501140157, 'Clingky Hyzel', 'Tampos', '_', 'Female', '7/6/2009', 'HUMSS', 'Gaia', 11, 'Brg. Don Felipe Larrazabal Purok 4, Mariveles', '09462872714', '194501140157'),
(59, 124204140066, 'Xyrene Jane', 'Villa', 'R.', 'Female', '11/26/2008', 'HUMSS', 'Gaia', 11, 'BRGY.NASUNOGAN, ORMOC CITY LEYTE', '09533503149', '124204140066'),
(60, 124155140032, 'Alyssa', 'Villoria', 'B.', 'Female', '6/13/2009', 'HUMSS', 'Gaia', 11, 'Brgy.Ipil, Ormoc City', '09485931841', '124155140032'),
(61, 194501140434, 'Philip James', 'Inong', 'D', 'Male', '8/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Donfelipe Larrazabal', '09673289351', '194501140434'),
(62, 12412150011, 'Jedrick', 'Israel', 'T', 'Male', '8/15/2006', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Libertad', '09533503728', '12412150011'),
(63, 124143130026, 'Roey', 'Jaballa', 'C.', 'Male', '9/2/2008', 'TVL-ICT Programming', 'Ruby', 12, 'ALTA VISTA PUROK 2', '09503260123', '124143130026'),
(64, 124201140033, 'Marian', 'Kempis', 'L', 'Female', '3/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Bagong Buhay', '09536487988', '124201140033'),
(65, 404786150289, 'Kean Jay', 'Laborte', 'S', 'Male', '2/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Purok Jasmin Cogon Highway, Ormoc City Leyte', '09091290296', '404786150289'),
(66, 194501130333, 'Gian', 'Lalap', 'M', 'Male', '8/13/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy, Don Felipe Larrazabal', '09308842406', '194501130333'),
(67, 121721130031, 'Majesty', 'Lamoste', 'S', 'Female', '3/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Casilda, Merida leyte', '09317362619', '121721130031'),
(68, 404514150141, 'Ferdinand Christian', 'Lapinig', 'O', 'Male', '10/10/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Juaton', '09563655278', '404514150141'),
(69, 124212130055, 'Roselyn', 'Maasin', 'T', 'Female', '4/5/2008', 'TVL-ICT Programming', 'Ruby', 12, 'BRGY. LIBERTAD', '09464779415', '124212130055'),
(70, 53839293733, 'Peter', 'Montalban', 'G', 'Male', '7/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'brgy lake danao ormoc city', '09544857366', '53839293733'),
(71, 121730140003, 'Ronnell', 'Mopon', 'G', 'Male', '7/31/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Siapon district merida leyte', '09306943728', '121730140003'),
(72, 124212130043, 'Gilbert', 'Omega', 'B', 'Male', '4/10/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Airport Ormoc City', '09356194478', '124212130043'),
(73, 124203120074, 'Princess', 'Omega', 'V', 'Female', '9/6/2006', 'TVL-ICT Programming', 'Ruby', 12, 'BRYG,NASUNOGAN,ORMOC CITY', '09451485269', '124203120074'),
(74, 124195130225, 'Chesed', 'Pangilinan', 'F', 'Male', '12/7/2007', 'TVL-ICT Programming', 'Ruby', 12, 'purok green field barangay san isdro ormoc city', '09152347108', '124195130225'),
(75, 124198130044, 'Tresian Ed', 'Pareja', '_', 'Male', '1/7/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy.Tambulilid', '09702515044', '124198130044'),
(76, 121538130171, 'Micheal Breynan', 'Pintoy', 'P', 'Male', '3/24/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy. Rizal St. Maraag', '09357182843', '121538130171'),
(77, 124212130016, 'Mj mc Dave', 'Ramiso', 'M', 'Male', '5/22/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Brgy libertad ormoc city', '09940034077', '124212130016'),
(78, 194501120283, 'Johnpaul', 'Rufin', 'C', 'Male', '6/24/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Rizal  extension', '09481230446', '194501120283'),
(79, 124212130061, 'Aida Jean', 'Sanchez', 'A', 'Female', '8/30/2008', 'TVL-ICT Programming', 'Ruby', 12, 'BRGY. LIBERTAD', '09300515974', '124212130061'),
(80, 124143130033, 'Jeams', 'Sinoy', 'C', 'Male', '11/4/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Alta Vista', '09207373555', '124143130033'),
(81, 124203130100, 'Jerald', 'Tandok', 'DLC', 'Male', '8/29/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Sitio Cantalib, Brgy. North, Nadongholan', '09704532985', '124203130100'),
(82, 124218130049, 'JusperJames', 'Villanueva', 'L', 'Male', '8/12/2008', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City, Leyte, brgy salvacion sitio bay-ang', '09672162995', '124218130049'),
(83, 404791151865, 'Vincent', 'Yap', 'S', 'Male', '12/31/2007', 'TVL-ICT Programming', 'Ruby', 12, 'Ormoc City leyte Philippines', '09082736965', '404791151865'),
(84, 119107140249, 'Jasmine', 'Mapula', 'L', 'Female', '7/28/2006', 'TVL-ICT Programming', 'Ruby', 12, 'SanPablo (Simangan)', '09509338689', '119107140249');

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
