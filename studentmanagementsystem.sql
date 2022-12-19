-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 05:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `id`, `email`, `phone_no`) VALUES
('admin2', 'admin201', 'admin2@gmail.com', '01329616852');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('admin2', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `faculty`) VALUES
('BCS', 'Software Engineering', 'FKOM'),
('EG', 'Electrical Engineering', 'FE'),
('EH', 'Electrical Home', 'FE'),
('MG', 'Multimedia Graphic', 'FKOM'),
('TS', 'Teknologi Sekarang', 'FTEK');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `short_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`short_name`, `name`) VALUES
('FE', 'Fakulti Elektrik'),
('FKOM', 'Fakulti Komputer'),
('FTEK', 'Fakulti Teknologi');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(50) NOT NULL,
  `ic_no` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `block` varchar(255) NOT NULL,
  `fee` double NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `ic_no`, `name`, `email`, `phone_no`, `address`, `block`, `fee`, `faculty`, `course`) VALUES
('cb20100', '000505105456', 'Amirah Nadiah', 'amirahnadiah@gmail.com', '0165239658', 'KK3', 'Block C', 0, 'FE', 'MG'),
('cb20102', '9910100845698', 'Amirah Wahidah', 'amirahwahidah@gmail.com', '0163258965', 'KK4', 'Block F', 0, 'FE', 'MG'),
('cb20147', '992202105649', 'Mohsin2', 'mohsin2@yahoo.com', '01256896583', 'Kelantan2', 'mana ade block2', 0, 'FKOM', 'BCS'),
('cb20149', '000909101007', 'Izzat', 'cb20149@gmail.com', '0132961685', 'KK5, Universiti Malaysia Pahang', 'Block D', 133, 'FKOM', 'BCS'),
('cb20150', '000123105468', 'Ijat', 'ijat@gmail.com', '0132961685', 'KK5', 'Block D', 115.3, 'FKOM', 'BCS'),
('cb20189', '000223105647', 'Hisyam23', 'hisyam@gmail.com2', '01156874582', 'melaka', 'melaka2', 90, '', 'BCS'),
('EG20159', '', 'Adam', 'adam@gmail.com', '0123456789', '', '', 56, 'FE', 'EG');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `id` int(11) NOT NULL,
  `matricId` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`id`, `matricId`, `password`) VALUES
(1, 'cb20147', '12345'),
(2, 'cb20100', '12345'),
(3, 'cb20149', '654321'),
(4, 'cb20150', '12345'),
(5, 'cb20101', '12345'),
(6, 'cb20189', '12345'),
(7, 'cb20102', '12345'),
(12, 'eg20159', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `credit_hrs` int(11) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`code`, `name`, `credit_hrs`, `course`) VALUES
('BCS2143', 'OOP', 3, 'BCS'),
('BCS3233', 'Software Testing', 3, 'BCS'),
('TS65489', 'Discrete Math', 3, 'TS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`short_name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matricId` (`matricId`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_login`
--
ALTER TABLE `student_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
