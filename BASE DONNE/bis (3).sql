-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 23 mars 2025 à 00:42
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bis`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `s_no` int(20) NOT NULL,
  `id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(40) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`s_no`, `id`, `fname`, `lname`, `dob`, `image`, `phone`, `gender`, `address`) VALUES
(2, 'A9876543210', 'Admin', 'Kumar', '12/11/2024', 'A98765432101718792069.png', '1234567890', 'male', 'no where');

-- --------------------------------------------------------

--
-- Structure de la table `attendence`
--

CREATE TABLE `attendence` (
  `s_no` int(20) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `attendence` varchar(10) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(5) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `attendence`
--

INSERT INTO `attendence` (`s_no`, `student_id`, `attendence`, `class`, `section`, `date`) VALUES
(1, 'S1718791292', '1', '12c', 'A', '2024-06-19 15:32:37');

-- --------------------------------------------------------

--
-- Structure de la table `buses`
--

CREATE TABLE `buses` (
  `s_no` int(11) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `bus_title` varchar(100) NOT NULL,
  `bus_number` varchar(20) NOT NULL,
  `request` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `buses`
--

INSERT INTO `buses` (`s_no`, `bus_id`, `bus_title`, `bus_number`, `request`) VALUES
(10, '1718791847', 'Bus 1', 'XXXXXX', ''),
(11, '1718791949', 'Bus 2', '999999', ''),
(12, '1718791984', 'Another bus', 'OOOOOOOO', '');

-- --------------------------------------------------------

--
-- Structure de la table `bus_root`
--

CREATE TABLE `bus_root` (
  `s_no` int(11) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `arrival_time` varchar(20) NOT NULL,
  `serial` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bus_root`
--

INSERT INTO `bus_root` (`s_no`, `bus_id`, `location`, `arrival_time`, `serial`) VALUES
(7, '1718791847', 'Stop 1', '06:50 AM', 1),
(8, '1718791847', 'Stop 2', '07:00 AM', 2),
(9, '1718791847', 'Stop 3', '07:10 AM', 3),
(10, '1718791847', 'SCHOOL', '10:00 AM', 4),
(13, '1718791949', 'Stop z', '06:35 AM', 1),
(14, '1718791949', 'SCHOOL', '10:00 AM', 2),
(15, '1718791984', 'Stop x', '06:45 AM', 1),
(16, '1718791984', 'SCHOOL', '10:00 AM', 2);

-- --------------------------------------------------------

--
-- Structure de la table `bus_staff`
--

CREATE TABLE `bus_staff` (
  `s_no` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `bus_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bus_staff`
--

INSERT INTO `bus_staff` (`s_no`, `id`, `bus_id`, `name`, `contact`, `role`) VALUES
(1, 'B1718791847', '1718791847', 'driver ', '8080808080', 'driver'),
(2, 'B1718791847', '1718791847', 'helper ', '0000000000', 'helper'),
(3, 'B1718791949', '1718791949', 'driver 2', '7897898988', 'driver'),
(4, 'B1718791949', '1718791949', 'helper', '7897898988', 'helper'),
(5, 'B1718791984', '1718791984', 'another driver', '7897897898', 'driver'),
(6, 'B1718791984', '1718791984', 'another helper', '7894568796', 'helper');

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `s_no` int(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(1) NOT NULL,
  `fees` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exams`
--

CREATE TABLE `exams` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `exam_title` varchar(512) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `total_marks` varchar(10) NOT NULL,
  `passing_marks` varchar(10) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `exams`
--

INSERT INTO `exams` (`s_no`, `exam_id`, `exam_title`, `subject`, `class`, `section`, `total_marks`, `passing_marks`, `timestamp`) VALUES
(3, 'E17187917486672ae442b976', 'Monthly test ', 'ALL', '12c', 'A', '100', '33', '2024-06-19 15:39:08'),
(4, 'E17187928006672b26095672', 'Hindi exam result', 'Hindi', '12c', 'A', '100', '33', '2024-06-19 15:56:40'),
(5, 'E17187929656672b305cbb25', 'sldfj', 'ALL', '12c', 'A', '100', '33', '2024-06-19 15:59:25');

-- --------------------------------------------------------

--
-- Structure de la table `feedback`
--

CREATE TABLE `feedback` (
  `s_no` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `feedback`
--

INSERT INTO `feedback` (`s_no`, `sender_id`, `receiver_id`, `msg`, `timestamp`) VALUES
(7, 'T1718791191', 'S1718791292', 'Hello student', '2024-06-19 15:46:58'),
(8, 'T1718791191', 'S1718791292', 'You are so naughty\n', '2024-06-19 15:47:11');

-- --------------------------------------------------------

--
-- Structure de la table `fee_record`
--

CREATE TABLE `fee_record` (
  `s_no` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `other_collection` int(5) NOT NULL,
  `total` int(5) NOT NULL,
  `paid` int(5) NOT NULL,
  `balance` int(5) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `leaves`
--

CREATE TABLE `leaves` (
  `s_no` int(10) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `send_date` datetime NOT NULL DEFAULT current_timestamp(),
  `leave_type` varchar(100) NOT NULL,
  `leave_desc` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `leaves`
--

INSERT INTO `leaves` (`s_no`, `sender_id`, `send_date`, `leave_type`, `leave_desc`, `start_date`, `end_date`, `status`) VALUES
(12, 'T1718791191', '2024-06-19 15:48:43', 'Medical Leave', 'accept my leave otherwise ....... ', '2024-06-20 00:00:00', '2024-06-27 00:00:00', 'pending'),
(13, 'T1718791191', '2024-06-19 15:49:23', 'Casual Leave', 'I want some rest please give me leave', '2024-06-29 00:00:00', '2024-07-03 00:00:00', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `marks`
--

CREATE TABLE `marks` (
  `s_no` int(20) NOT NULL,
  `exam_id` varchar(40) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `student_id` varchar(40) NOT NULL,
  `marks` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marks`
--

INSERT INTO `marks` (`s_no`, `exam_id`, `subject`, `student_id`, `marks`) VALUES
(1, 'E17187917486672ae442b976', 'Hindi', 'S1718791292', '86'),
(2, 'E17187917486672ae442b976', 'Commerce', 'S1718791292', '62'),
(3, 'E17187917486672ae442b976', 'English', 'S1718791292', '59'),
(4, 'E17187928006672b26095672', 'Hindi', 'S1718791292', '33'),
(5, 'E17187929656672b305cbb25', 'Hindi', 'S1718791292', '55'),
(6, 'E17187929656672b305cbb25', 'Commerce', 'S1718791292', '55'),
(7, 'E17187929656672b305cbb25', 'English', 'S1718791292', '21');

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`s_no`, `sender_id`, `editor_id`, `class`, `subject`, `title`, `comment`, `file`, `timestamp`) VALUES
(1, 'A9876543210', 'A9876543210', '12c', 'Hindi', 'Hindi Homework ', 'do this on time', 'A98765432101718791715.png', '2024-06-19 15:38:35');

-- --------------------------------------------------------

--
-- Structure de la table `notice`
--

CREATE TABLE `notice` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `file` varchar(100) NOT NULL,
  `importance` varchar(5) NOT NULL DEFAULT '1',
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `role` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notice`
--

INSERT INTO `notice` (`s_no`, `sender_id`, `editor_id`, `title`, `body`, `file`, `importance`, `timestamp`, `role`, `class`) VALUES
(51, 'A9876543210', 'A9876543210', 'Notice title', 'body', 'A98765432101718791385.png', '2', '2024-06-19 15:33:05', '', ''),
(52, 'A9876543210', 'A9876543210', 'Title 2', 'body 2', 'A98765432101718791411.png', '3', '2024-06-19 15:33:31', '', ''),
(53, 'A9876543210', 'A9876543210', 'Holiday notice', 'enjoy your holidays', 'A98765432101718791447.png', '1', '2024-06-19 15:34:07', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `s_no` int(20) NOT NULL,
  `sender_id` varchar(40) NOT NULL,
  `class` varchar(30) NOT NULL,
  `section` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `file` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payroll`
--

CREATE TABLE `payroll` (
  `s_no` int(11) NOT NULL,
  `id` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_no` varchar(40) NOT NULL,
  `ifsc_code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reminders`
--

CREATE TABLE `reminders` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `reminders`
--

INSERT INTO `reminders` (`s_no`, `id`, `message`, `status`) VALUES
(68, 'T1718791191', 'Post a homework daily', 'completed'),
(69, 'T1718791191', 'principal meeting', 'pending'),
(70, 'A9876543210', 'Reminder for myself : have a good day', 'pending'),
(71, 'A9876543210', '\nBest of luck', 'completed');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE `students` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(50) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `image` varchar(50) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `request_date` varchar(30) NOT NULL,
  `request_time` varchar(30) NOT NULL,
  `request` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `students`
--

INSERT INTO `students` (`s_no`, `id`, `fname`, `lname`, `father`, `gender`, `class`, `section`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `request_date`, `request_time`, `request`) VALUES
(1, 'S1718791292', 'Student', 'kumar', 'father G', 'Male', '12c', 'A', '19-06-2024', 'S17187912921718791292.png', '7894561230', 'student@gmail.com', 'near teachers house', 'home town', '789654', 'FES', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `student_guardian`
--

CREATE TABLE `student_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(200) NOT NULL,
  `gcity` varchar(100) NOT NULL,
  `gzip` varchar(50) NOT NULL,
  `relation` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `student_guardian`
--

INSERT INTO `student_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(1, 'S1718791292', 'Regan Clemons', '4567894562', 'Eum sit et laboriosa', 'Abbot', 'Hunter', 'Culpa odio laboriosa');

-- --------------------------------------------------------

--
-- Structure de la table `subjects`
--

CREATE TABLE `subjects` (
  `s_no` int(20) NOT NULL,
  `subject_id` varchar(40) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subjects`
--

INSERT INTO `subjects` (`s_no`, `subject_id`, `subject_name`, `class`) VALUES
(1, '12c6672ac911a253', 'Hindi', '12c'),
(2, '12c6672ac9c45d68', 'Commerce', '12c'),
(3, '12c6672aca78c3c7', 'English', '12c');

-- --------------------------------------------------------

--
-- Structure de la table `syllabus`
--

CREATE TABLE `syllabus` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `syllabus`
--

INSERT INTO `syllabus` (`s_no`, `class`, `subject`, `file`) VALUES
(12, '12c', 'Hindi', 'T17187911911718792274.png'),
(13, '12c', 'English', 'T17187911911718792285.png');

-- --------------------------------------------------------

--
-- Structure de la table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL,
  `complainant` varchar(100) DEFAULT NULL,
  `respondent` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `complainant`, `respondent`, `age`, `type`, `location`, `date`, `time`, `details`, `status`) VALUES
(34, 'Girl Topak', 'Boy Topak', '12', 'Check up', 'Resident house', '2023-01-24', '12:46:00', 'wwwwww', 'Scheduled');

-- --------------------------------------------------------

--
-- Structure de la table `tblbrgy_info`
--

CREATE TABLE `tblbrgy_info` (
  `id` int(11) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tblbrgy_info`
--

INSERT INTO `tblbrgy_info` (`id`, `province`, `town`, `brgy_name`, `number`, `text`, `image`, `city_logo`, `brgy_logo`) VALUES
(1, 'Laguna', 'Calamba City', 'Canlubang', '0919-1234567', 'This is the official Healthcare Center website of Barangay Canlubang, Calamba City Laguna. Visit us in our official facebook page at https://www.facebook.com/itsmearviegrajo', '16012023121621HDwallpaper_memes,_3d.jpg', '18012023154802Barangay_Canlubang_Seal.jpg', '18012023154802Calamba,_Laguna_Seal.svg.png');

-- --------------------------------------------------------

--
-- Structure de la table `tblchairmanship`
--

CREATE TABLE `tblchairmanship` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tblchairmanship`
--

INSERT INTO `tblchairmanship` (`id`, `title`) VALUES
(2, 'Presiding Officer'),
(3, 'Committee on Appropriation'),
(4, 'Committee on Peace & Order'),
(5, 'Committee on Health'),
(6, 'Committee on Education'),
(7, 'Committee on Rules'),
(8, 'Committee on Infra'),
(9, 'Committee on Solid Waste'),
(10, 'Committee on Sports'),
(11, 'No Chairmanship');

-- --------------------------------------------------------

--
-- Structure de la table `tblofficials`
--

CREATE TABLE `tblofficials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tblofficials`
--

INSERT INTO `tblofficials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES
(1, 'Peter Guevarra	', '2', '4', '2021-04-29', '2021-05-01', 'Active'),
(4, 'Marlon A. Lorio', '3', '7', '2021-04-03', '2021-04-24', 'Active'),
(5, 'GARRY A. RAFEL', '4', '8', '2021-04-03', '2021-04-03', 'Active'),
(6, 'TRILLION LOWRY	', '5', '9', '2021-04-03', '2021-04-03', 'Active'),
(7, 'MELANIE M. ELBOR	', '6', '10', '2021-04-03', '2021-04-03', 'Active'),
(8, 'ERLINDA V. VITUS	', '7', '11', '2021-04-03', '2021-04-03', 'Active'),
(9, 'JOEDAVINCE', '8', '12', '2021-04-03', '2021-04-03', 'Active'),
(10, 'ALEJANDRO A. CAGAMPANG	', '9', '13', '2021-04-03', '2021-04-03', 'Active'),
(11, 'JOSEPH P. PARDOS	', '10', '14', '2021-04-03', '2021-04-03', 'Active'),
(12, 'RUTH A. BACAG	', '11', '15', '2021-04-03', '2021-04-03', 'Active'),
(13, 'DIANNE A. CURRY	', '11', '16', '2021-04-03', '2021-04-03', 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `tblpayments`
--

CREATE TABLE `tblpayments` (
  `id` int(11) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tblpayments`
--

INSERT INTO `tblpayments` (`id`, `details`, `amounts`, `date`, `user`, `name`) VALUES
(5, 'Business Permit Payment', 7000.00, '2021-05-19', 'admin', ' Atrium Salon & Studio'),
(6, 'Certificate of Indigency Payment', 3500.00, '2021-05-19', 'admin', ' Ronil Gonzales Cajan'),
(7, 'Barangay Clearance Payment', 2500.00, '2021-05-19', 'admin', ' Ronil Poe Cajan'),
(8, 'Business Permit Payment', 3500.00, '2021-05-18', 'admin', ' Atrium Salon & Studio'),
(9, 'Business Permit Payment', 7000.00, '2021-05-18', 'admin', ' Atrium Salon & Studio'),
(10, 'Business Permit Payment', 7500.00, '2021-05-18', 'admin', ' Atrium Salon & Studio');

-- --------------------------------------------------------

--
-- Structure de la table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `owner1` varchar(200) DEFAULT NULL,
  `owner2` varchar(80) DEFAULT NULL,
  `nature` varchar(220) DEFAULT NULL,
  `applied` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `name`, `owner1`, `owner2`, `nature`, `applied`) VALUES
(4, 'SH Food Group 1', 'SH Food Group 1', 'SH Food Group 2', 'SH Food Group 1', '2021-04-30'),
(5, 'Atrium Salon & Studio', 'SH Food Group 213', '', 'Atrium Salon & Studio', '2021-04-30');

-- --------------------------------------------------------

--
-- Structure de la table `tblposition`
--

CREATE TABLE `tblposition` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tblposition`
--

INSERT INTO `tblposition` (`id`, `position`, `order`) VALUES
(4, 'Captain', 1),
(7, 'Councilor 1', 2),
(8, 'Councilor 2', 3),
(9, 'Councilor 3', 4),
(10, 'Councilor 4', 5),
(11, 'Councilor 5', 6),
(12, 'Councilor 6', 7),
(13, 'Councilor 7', 8),
(14, 'SK Chairman', 9),
(15, 'Secretary', 10),
(16, 'Treasurer', 11);

-- --------------------------------------------------------

--
-- Structure de la table `tblprecinct`
--

CREATE TABLE `tblprecinct` (
  `id` int(11) NOT NULL,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tblpurok`
--

CREATE TABLE `tblpurok` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tblpurok`
--

INSERT INTO `tblpurok` (`id`, `name`, `details`) VALUES
(13, 'Purok 2', 'Asia 2'),
(14, 'Purok 9', 'Asia 1'),
(15, 'Purok 1', 'Asia 1'),
(16, 'Purok 3', '');

-- --------------------------------------------------------

--
-- Structure de la table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `middlename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `civilstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `purok` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `voterstatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthplace` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `identified_as` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `national_id` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `resident_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `tblresident`
--

INSERT INTO `tblresident` (`id`, `firstname`, `middlename`, `lastname`, `age`, `birthdate`, `civilstatus`, `gender`, `purok`, `voterstatus`, `citizenship`, `picture`, `alias`, `birthplace`, `identified_as`, `phone`, `email`, `national_id`, `occupation`, `address`, `resident_type`, `remarks`) VALUES
(171, 'DR BOUCHRA', ' ', 'KABI', 50, '1949-10-10', 'SINGLE', 'FEMALE', 'PUROK 2', 'YES', 'Filipino', '18052021113447Screenshot2021-05-06183815.png', 'FPJ', 'Metro  Manila', 'Unidentified', '19512659595', 'cajanr02rtrt22@gmail.com', '321321321', 'IT', '310 W Las Colinas Blvd', 1, 'dasds'),
(169, 'DR MOHAMED', ' ', 'HANI', 40, '1980-12-23', 'SINGLE', 'MALE', 'PUROK 2', '', 'filipino', '24012023042459HDwallpaper_Anime,SoloLeveling,SungJin-Woo.jpg', 'Royal Blood', 'aklan', '', '19512659595', 'cajanr02rtrt22@gmail.com', '', '', '310 W Las Colinas Blvd', 1, ''),
(181, 'jayward', 'jed', 'dej', 2, '2023-01-28', 'Single', 'Female', 'Purok 9', 'No', 'filipino', '24012023043051ANIME_KUBO-SANWAMOBWOYURUSANAIEP1.jfif', '', 'aklan', '', '19512659595', '', '22222222222', '', 'qweqwe', 1, ''),
(174, 'Ronil', 'M', 'Cajan', 33, '2021-04-01', 'Married', 'Female', 'Purok 2', 'Yes', '', 'data:image/jpeg;base64,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', 'ron', 'Plaridel', 'Positive', '19512659595', 'cajanr02@gmail.com', '', '', '310 W Las Colinas Blvd', 1, ''),
(180, 'Aaron', 'Deez', 'Nuts', 33, '2021-04-28', 'Widow', 'Male', 'Purok 2', 'No', 'Pinoy', '17012023040124person.png', 'Candice', '321321', '', '19512659595', 'cajanr0222@gmail.com', '1212321321', 'IT', '310 W Las Colinas Blvd', 1, 're'),
(182, 'Aaron', 'Deez', 'Nuts', 33, '2021-04-28', 'Widow', 'Male', 'Purok 2', 'No', 'Pinoy', '17012023040124person.png', 'Candice', '321321', '', '19512659595', 'cajanr0222@gmail.com', '1212321321', 'IT', '310 W Las Colinas Blvd', 1, 're'),
(183, 'DR ASHRAF', ' ', 'JIHAD', 23, '2023-03-10', 'MARRIED', 'MALE', '', 'YES', '', '', '', '', '', '', '', '', '', '', 1, ''),
(184, 'FIRST ', 'MIDDLE ', 'LAST ', 56, '2023-03-03', 'SINGLE', 'MALE', 'PUROK 2', 'YES', '', '', '', '', '', '', '', '', '', '', 1, ''),
(185, 'AMIN', 'KA', 'KOL', 19, '2000-10-19', 'CÉLIBATAIRE', 'MÂLE', 'PUROK 2', 'NON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(186, 'OK', 'OK', 'OK', 99, '2000-10-10', 'MARIÉ', 'MÂLE', 'PUROK 8', 'OUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(187, 'DR OSAMA ', ' ', 'ALAWI', 40, '0010-10-10', 'SINGLE', 'MALE', '', 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(188, 'DR OSAMA', 'ELIDRISSI', ' ', 50, '1988-10-10', 'SINGLE', 'MALE', '', 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(189, 'ALI', 'OMAR', 'FASI', 20, '1999-10-10', 'MARIÉ', 'MÂLE', 'PUROK 2', 'OUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(190, 'DR MOUSA', 'HATIM', ' ', 29, '1998-10-10', 'VEUF', 'MÂLE', 'PUROK 1', 'OUI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(191, 'DR MARMUSH', ' ', 'HAQIMA', 50, '1950-10-10', 'CÉLIBATAIRE', 'FEMELLE', 'PUROK 2', 'NON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_announcement`
--

CREATE TABLE `tbl_announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `create_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_announcement`
--

INSERT INTO `tbl_announcement` (`id`, `title`, `description`, `category`, `image`, `status`, `create_date`) VALUES
(1, '4th Semester Barangay Assembly ', 'demo test 3', 'REMINDER', '', '0', '2023-03-08'),
(2, 'Release of National ID', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Et ipsa nesciunt mollitia natus cupiditate amet porro deleniti nisi iusto, dolor autem odio, maxime, Lorem ipsum dolor sit amet consectetur adipisicing elit. Et ipsa nesciunt mollitia natus cupiditate amet porro deleniti nisi iusto, dolor autem odio, maxime, iste nam modi repellatcLorem ipsum dolor sit amet consectetur adipisicing elit. Et ipsa nesciunt mollitia natus cupiditate amet porro deleniti nisi iusto, dolor autem odio, maxime, iste nam modi repellat dolores s Lorem ipsum dolor sit amet consectetur adipisicing elit. Et ipsa nesciunt mollitia natus cupiditate amet porro deleniti nisi iusto, dolor autem odio, maxime, iste nam modi repellat dolores sapiente? Natus!apiente? Natus! dolores sapiente? Natus! iste nam modi repellat dolores sapiente? Natus!', 'ANNOUNCEMENT', '', '0', '2023-03-08'),
(3, 'Controle', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Et ipsa nesciunt mollitia natus cupiditate amet porro deleniti nisi iusto, dolor autem odio, maxime, iste nam modi repellat dolores sapiente? Natus!', 'ANNOUNCEMENT', 'xkk.jpg', '1', '2024-12-12'),
(4, 'test', 'asdasd', 'ANNOUNCEMENT', '', '0', '2023-03-08'),
(5, 'Don du Song', 'Action Humanitaire', 'REMINDER', 'Screenshot 2023-03-05 204047.png', '1', '2024-12-12'),
(6, 'Consultation', 'Urgent', 'ANNOUNCEMENT', 'sq.png', '1', '2024-12-12'),
(7, 'Contre le VIH', '', 'ANNOUNCEMENT', 'Screenshot 2023-03-05 204626.png', '1', '2024-12-12'),
(8, 'Congré Deramotologie', 'Pour les intéresés', 'REMINDER', 'ko.jpg', '1', '2024-12-12');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `id` int(11) NOT NULL,
  `resident_name` varchar(50) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `staff_in_charge` varchar(25) DEFAULT NULL,
  `request_date` date DEFAULT NULL,
  `concern` varchar(500) DEFAULT NULL,
  `appointment_type` varchar(25) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `mobile_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`id`, `resident_name`, `age`, `staff_in_charge`, `request_date`, `concern`, `appointment_type`, `status`, `appointment_date`, `remarks`, `mobile_no`) VALUES
(23, 'OMAR', 28, 'EVELINA CATAPANG', '2023-03-07', 'headache', 'CHECK-UP', 'scheduled', '2023-03-09', 'No Remarks', 2147483647),
(25, 'NAWAL', 23, 'LISA MANALO', '2023-03-08', 'continuous headache for 2 days, vomitting', 'CHECK-UP', 'completed', '2023-03-13', 'fully booked on march 9, 10, 11', 2147483647),
(26, 'HANAN', 60, 'PRECY BORDEOS', '2023-03-08', 'backpain', 'CHECK-UP', 'completed', '2023-03-08', 'No Remarks', 46565465),
(27, 'MORAD', 30, 'unassigned', '2024-12-07', 'OK', 'VACCINATION', 'active', NULL, NULL, 989),
(28, 'SAFAE', 30, 'unassigned', '2024-12-07', 'OK', 'CONTRÔLE', 'active', NULL, NULL, 661),
(29, 'MARWANE', 90, 'unassigned', '2024-12-12', 'LE DOS', 'VACCINATION', 'active', NULL, NULL, 661737373),
(99, 'MINA', 90, 'HIM', '2010-10-10', 'ACHE', 'OK', 'OK', '2024-12-17', 'OK', NULL),
(102, 'LAMINE', 20, 'Cardiology - Dr. Jemmy wa', '2023-01-01', 'heart', 'heart', 'active', '2023-01-01', 'heart', 661),
(108, 'JAMAL', 90, 'Optometrists - Dr. Shoko ', '2023-01-01', 'RHUME', 'RHUME', 'active', '2023-01-01', 'RHUME', 0),
(129, 'ISSA HAYATU', 19, 'Cardiology - Dr. Jemmy wa', '2023-01-01', 'MAL', 'MAL', 'active', '2023-01-01', 'MAL', 0),
(138, 'IMRANE', 14, 'Pediatrician - Dr. Bryan ', '2023-01-01', 'YES', 'YES', 'active', '2023-01-01', 'YES', 6789),
(139, 'YAHAYA', 20, 'Cardiology - Dr. Jemmy wa', '2023-01-01', 'DOS', 'DOS', 'active', '2023-01-01', 'DOS', 6615426),
(141, 'MARWANE', 20, 'Cardiology - Dr. Jemmy wa', '2023-01-01', 'OK', 'OK', 'active', '2023-01-01', 'OK', 999),
(142, 'KAMAL', 20, 'Pediatrician - Dr. Bryan ', '2023-01-01', 'MAL', 'MAL', 'active', '2023-01-01', 'MAL', 999),
(143, 'SANAE', 30, 'Pediatrician - Dr. Bryan ', '2023-01-01', 'OK', 'OK', 'active', '2023-01-01', 'OK', 909),
(144, '7ASAN', 10, 'Neurology - Dr. Jeremy du', '2023-01-01', 'RHUME', 'RHUME', 'active', '2023-01-01', 'RHUME', 64542),
(148, 'ABAS', 20, 'Pediatrician - Dr. Bryan ', '2023-01-01', 'oui', 'oui', 'active', '2023-01-01', 'oui', 9),
(149, 'ABAS', 20, 'Pediatrician - Dr. Bryan ', '2023-01-01', 'oui', 'oui', 'active', '2023-01-01', 'oui', 9),
(150, 'NAWAL', 90, 'Neurology - Dr. Jeremy du', '2023-01-01', 'si', 'si', 'active', '2023-01-01', 'si', 9837),
(151, 'HASNAE', 30, 'unassigned', '2025-01-09', 'RHUME', 'CONTRÔLE', 'active', NULL, NULL, 661435343),
(152, 'FRANSISCO', 40, 'unassigned', '2025-01-09', 'DOS', 'CONTRÔLE', 'active', NULL, NULL, 732127),
(153, 'JOHN', 90, 'Cardiology - Dr. Jemmy wa', '2025-01-01', 'HEADCHE', 'HEADCHE', 'active', '2025-01-01', 'HEADCHE', 661738392);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_appointment_staff`
--

CREATE TABLE `tbl_appointment_staff` (
  `id` int(11) NOT NULL,
  `staff` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_appointment_staff`
--

INSERT INTO `tbl_appointment_staff` (`id`, `staff`) VALUES
(1, 'MARIA CAPACIA'),
(2, 'EVELINA CATAPANG'),
(3, 'LISA MANALO'),
(4, 'PRECY BORDEOS');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_chairmanship`
--

CREATE TABLE `tbl_chairmanship` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_chairmanship`
--

INSERT INTO `tbl_chairmanship` (`id`, `title`) VALUES
(2, 'CARDIOLOGY'),
(3, 'NEUROLOGY'),
(4, 'GYNECOLOGY'),
(5, 'DENTIST'),
(6, 'PEDIATRY'),
(7, 'UROLOGY'),
(8, 'NEUFROLOGY'),
(9, 'ANATOMY'),
(10, 'LABORATORY'),
(11, 'CARDIOLOGY');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_medical_supply`
--

CREATE TABLE `tbl_medical_supply` (
  `id` int(11) NOT NULL,
  `supply_name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_medical_supply`
--

INSERT INTO `tbl_medical_supply` (`id`, `supply_name`, `description`, `category`, `quantity`) VALUES
(18, 'ASD', 'asd', 'FIRST AID', 32),
(20, 'SCANER', 'RADIO', 'PROTECTIVE GEAR', 900),
(21, 'MEDICATION TROLLLY', 'EMERGENCY TROLLY', 'PROTECTIVE GEAR', 900),
(22, 'RADIO', 'DETECTION DES  FRACTURES', 'FIRST AID', 39),
(23, 'PLATRE', 'PLATIR FRACTURE', 'PROTECTIVE GEAR', 40),
(24, 'STHETOSCOPE', 'DIAGNOSTIC', 'FIRST AID', 50),
(25, 'GLUCOMèTRES', 'Diagnostic', 'DIGITAL', 90),
(26, ' DéFIBRILLATEURS', 'Tool', 'FIRST AID', 10);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_medicine`
--

CREATE TABLE `tbl_medicine` (
  `id` int(11) NOT NULL,
  `generic_name` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `dosage` int(5) DEFAULT NULL,
  `unit` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_medicine`
--

INSERT INTO `tbl_medicine` (`id`, `generic_name`, `description`, `category`, `quantity`, `dosage`, `unit`) VALUES
(20, 'WRWER', 'werw', 'ANTIBIOTIC', 5, 800, 'ML'),
(23, 'ASPRO', 'TETE', 'ANALGESIC', 200, 200, 'G'),
(24, 'FLURAZéPAM', 'Sleeping', 'ANALGESIC', 20, 30, 'L'),
(25, 'LORAZéPAM', 'Headache', 'ANTIBIOTIC', 10, 10, 'L'),
(31, 'SOLAKOM', 'descr', 'ANTIBIOTIC', 100, 20, '');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_med_category`
--

CREATE TABLE `tbl_med_category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_med_category`
--

INSERT INTO `tbl_med_category` (`id`, `category`) VALUES
(1, 'ANALGESIC'),
(2, 'ANTIBIOTIC'),
(3, 'VITAMINS'),
(4, 'INSULIN');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_med_supply_category`
--

CREATE TABLE `tbl_med_supply_category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_med_supply_category`
--

INSERT INTO `tbl_med_supply_category` (`id`, `category`) VALUES
(1, 'PROTECTIVE GEAR'),
(2, 'FIRST AID'),
(3, 'DIGITAL');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_med_unit`
--

CREATE TABLE `tbl_med_unit` (
  `id` int(11) NOT NULL,
  `unit` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_med_unit`
--

INSERT INTO `tbl_med_unit` (`id`, `unit`) VALUES
(1, 'MG'),
(2, 'ML'),
(3, 'G'),
(4, 'L');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_officials`
--

CREATE TABLE `tbl_officials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_officials`
--

INSERT INTO `tbl_officials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES
(5, 'Jilali', '4', '8', '2021-04-03', '2021-04-03', 'Active'),
(6, 'Abdelkader', '5', '9', '2021-04-03', '2021-04-03', 'retraité'),
(7, 'Morad', '6', '10', '2021-04-03', '2021-04-03', 'congé'),
(8, 'Mustapha', '7', '11', '2021-04-03', '2021-04-03', 'Inactive'),
(9, 'BRAHIM', '8', '12', '2021-04-03', '2021-04-03', 'Active'),
(11, 'Amine', '10', '14', '2021-04-03', '2021-04-03', 'Active'),
(12, 'Zineb', '11', '15', '2021-04-03', '2021-04-03', 'Active'),
(13, 'AHLAM', '11', '16', '2021-04-03', '2021-04-03', 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_position`
--

CREATE TABLE `tbl_position` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_position`
--

INSERT INTO `tbl_position` (`id`, `position`, `order`) VALUES
(4, 'Captain', 1),
(7, 'Councilor 1', 2),
(8, 'Councilor 2', 3),
(9, 'Councilor 3', 4),
(10, 'Councilor 4', 5),
(11, 'Councilor 5', 6),
(12, 'Councilor 6', 7),
(13, 'Councilor 7', 8),
(14, 'SK Chairman', 9),
(15, 'Secretary', 10),
(16, 'Treasurer', 11);

-- --------------------------------------------------------

--
-- Structure de la table `tbl_support`
--

CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_support`
--

INSERT INTO `tbl_support` (`id`, `name`, `email`, `number`, `subject`, `message`, `date`) VALUES
(10, 'test', 'asdasd@sdf', '165516', 'asda', 'asdas', '2023-03-04 08:50:39');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT '',
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `display_name` varchar(50) DEFAULT NULL,
  `status` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `user_type`, `avatar`, `created_at`, `display_name`, `status`) VALUES
(24, 'sys-admin', '10', 'system-maintenance', 'user-placeholder.png', '2023-01-21 19:47:52', 'System Admin', 1),
(55, 'resident', '10', 'resident', 'user-placeholder.png', '2023-01-22 00:06:05', 'Resident', 1),
(63, 'admin', '10', 'second admin', '', '2023-03-08 20:46:27', 'second admin', 1),
(65, 'omar', '30', 'system-maintenance', NULL, '2024-12-13 19:34:24', 'OMAR', 0);

-- --------------------------------------------------------

--
-- Structure de la table `teachers`
--

CREATE TABLE `teachers` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `father` varchar(150) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `image` varchar(30) NOT NULL DEFAULT '1701517055user.png',
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(512) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `class` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `teachers`
--

INSERT INTO `teachers` (`s_no`, `id`, `fname`, `lname`, `father`, `subject`, `gender`, `dob`, `image`, `phone`, `email`, `address`, `city`, `zip`, `state`, `class`, `section`) VALUES
(1, 'T1718791191', 'teacher', 'kumar', '', 'Hindi', 'Male', '19-06-2024', 'T17187911911718792416.png', '7896541230', 'teacher@gmail.com', 'near admins house', 'home town', '478548', 'Delhi', '12c', 'A');

-- --------------------------------------------------------

--
-- Structure de la table `teacher_guardian`
--

CREATE TABLE `teacher_guardian` (
  `s_no` int(20) NOT NULL,
  `id` varchar(40) NOT NULL,
  `gname` varchar(256) NOT NULL,
  `gphone` varchar(20) NOT NULL,
  `gaddress` varchar(256) NOT NULL,
  `gcity` varchar(50) NOT NULL,
  `gzip` varchar(20) NOT NULL,
  `relation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `teacher_guardian`
--

INSERT INTO `teacher_guardian` (`s_no`, `id`, `gname`, `gphone`, `gaddress`, `gcity`, `gzip`, `relation`) VALUES
(1, 'T1718791191', 'Velma Walker', '1234567895', 'Sit voluptas nisi v', 'Maggie', 'Mckee', 'Consequatur Volupta');

-- --------------------------------------------------------

--
-- Structure de la table `time_table`
--

CREATE TABLE `time_table` (
  `s_no` int(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `section` varchar(10) NOT NULL,
  `start_time` varchar(20) NOT NULL,
  `end_time` varchar(20) NOT NULL,
  `mon` varchar(30) NOT NULL,
  `tue` varchar(30) NOT NULL,
  `wed` varchar(30) NOT NULL,
  `thu` varchar(30) NOT NULL,
  `fri` varchar(30) NOT NULL,
  `sat` varchar(30) NOT NULL,
  `editor_id` varchar(40) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `time_table`
--

INSERT INTO `time_table` (`s_no`, `class`, `section`, `start_time`, `end_time`, `mon`, `tue`, `wed`, `thu`, `fri`, `sat`, `editor_id`, `timestamp`) VALUES
(1, '12c', 'A', '07:00', '08:00', 'Hindi', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(2, '12c', 'A', '08:00', '09:00', 'English', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(3, '12c', 'A', '09:00', '10:00', 'Math', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(4, '12c', 'A', '10:00', '11:00', 'Hindi', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(5, '12c', 'A', '11:00', '12:00', 'English', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(6, '12c', 'A', '12:00', '01:00', 'Commerce', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(7, '12c', 'A', '01:00', '02:00', 'Commerce', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37'),
(8, '12c', 'A', '02:00', '03:00', 'Hindi', '', '', '', '', '', 'A9876543210', '2024-06-19 15:37:37');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `s_no` int(15) NOT NULL,
  `id` varchar(40) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password_hash` varchar(700) NOT NULL,
  `role` varchar(20) NOT NULL,
  `theme` varchar(20) NOT NULL DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`s_no`, `id`, `email`, `password_hash`, `role`, `theme`) VALUES
(1, 'A9876543210', 'admin@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'admin', 'light'),
(2, 'T1718791191', 'teacher@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'teacher', 'light'),
(3, 'S1718791292', 'student@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'student', 'light'),
(4, 'O7898987845', 'owner@gmail.com', '$2y$10$2MrhbQa30mll8mKG6LPyjuI7CQPC4abCvqrSvczxXVRu4RVueRfoe', 'owner', 'light');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `bus_root`
--
ALTER TABLE `bus_root`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `bus_staff`
--
ALTER TABLE `bus_staff`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `fee_record`
--
ALTER TABLE `fee_record`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `student_guardian`
--
ALTER TABLE `student_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblbrgy_info`
--
ALTER TABLE `tblbrgy_info`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblchairmanship`
--
ALTER TABLE `tblchairmanship`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblofficials`
--
ALTER TABLE `tblofficials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblpayments`
--
ALTER TABLE `tblpayments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblposition`
--
ALTER TABLE `tblposition`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblprecinct`
--
ALTER TABLE `tblprecinct`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblpurok`
--
ALTER TABLE `tblpurok`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_appointment_staff`
--
ALTER TABLE `tbl_appointment_staff`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_chairmanship`
--
ALTER TABLE `tbl_chairmanship`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_medical_supply`
--
ALTER TABLE `tbl_medical_supply`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_medicine`
--
ALTER TABLE `tbl_medicine`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_med_category`
--
ALTER TABLE `tbl_med_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_med_supply_category`
--
ALTER TABLE `tbl_med_supply_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_med_unit`
--
ALTER TABLE `tbl_med_unit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_officials`
--
ALTER TABLE `tbl_officials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_position`
--
ALTER TABLE `tbl_position`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_support`
--
ALTER TABLE `tbl_support`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `buses`
--
ALTER TABLE `buses`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `bus_root`
--
ALTER TABLE `bus_root`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `bus_staff`
--
ALTER TABLE `bus_staff`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exams`
--
ALTER TABLE `exams`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `fee_record`
--
ALTER TABLE `fee_record`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `s_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `marks`
--
ALTER TABLE `marks`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `notice`
--
ALTER TABLE `notice`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `students`
--
ALTER TABLE `students`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `student_guardian`
--
ALTER TABLE `student_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `tblbrgy_info`
--
ALTER TABLE `tblbrgy_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblchairmanship`
--
ALTER TABLE `tblchairmanship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tblofficials`
--
ALTER TABLE `tblofficials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tblpayments`
--
ALTER TABLE `tblpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `tblposition`
--
ALTER TABLE `tblposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `tblprecinct`
--
ALTER TABLE `tblprecinct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tblpurok`
--
ALTER TABLE `tblpurok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT pour la table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT pour la table `tbl_appointment_staff`
--
ALTER TABLE `tbl_appointment_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tbl_chairmanship`
--
ALTER TABLE `tbl_chairmanship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tbl_medical_supply`
--
ALTER TABLE `tbl_medical_supply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `tbl_medicine`
--
ALTER TABLE `tbl_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `tbl_med_category`
--
ALTER TABLE `tbl_med_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tbl_med_supply_category`
--
ALTER TABLE `tbl_med_supply_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tbl_med_unit`
--
ALTER TABLE `tbl_med_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tbl_officials`
--
ALTER TABLE `tbl_officials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tbl_position`
--
ALTER TABLE `tbl_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `teacher_guardian`
--
ALTER TABLE `teacher_guardian`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `s_no` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
