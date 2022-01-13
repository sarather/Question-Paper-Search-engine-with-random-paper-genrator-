-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 01:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `random`
--

-- --------------------------------------------------------

--
-- Table structure for table `c`
--

CREATE TABLE `c` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c`
--

INSERT INTO `c` (`serial`, `question`, `year`, `teacher`) VALUES
(1, 'Who Created C ?', 1990, 'Parag Nirwan'),
(2, 'Who is the father of the nation ?', 1990, 'Parag'),
(3, 'WHo is not the father of the nation', 1990, 'Parag'),
(4, 'What is the relationship of Nobita and Doraemon ?', 1990, 'Parag'),
(8, 'What is OOPS ?', 1996, 'Parag Nirwan');

-- --------------------------------------------------------

--
-- Table structure for table `cplusplus`
--

CREATE TABLE `cplusplus` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cplusplus`
--

INSERT INTO `cplusplus` (`serial`, `question`, `year`, `teacher`) VALUES
(1, 'what is the difference between C and C++ ?', 2009, 'Parag Nirwan');

-- --------------------------------------------------------

--
-- Table structure for table `java`
--

CREATE TABLE `java` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `java`
--

INSERT INTO `java` (`serial`, `question`, `year`, `teacher`) VALUES
(1, 'Who is known as father of Java Language ?', 1990, 'Parag Nirwan');

-- --------------------------------------------------------

--
-- Table structure for table `python`
--

CREATE TABLE `python` (
  `serial` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `teacher` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `python`
--

INSERT INTO `python` (`serial`, `question`, `year`, `teacher`) VALUES
(1, 'What is the difference between Java and Python?', 2006, 'Parag Nirwan');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `serial` int(11) NOT NULL,
  `subjects` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`serial`, `subjects`) VALUES
(1, 'C'),
(2, 'C++'),
(3, 'Java'),
(4, 'Python');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c`
--
ALTER TABLE `c`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `cplusplus`
--
ALTER TABLE `cplusplus`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `java`
--
ALTER TABLE `java`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `python`
--
ALTER TABLE `python`
  ADD UNIQUE KEY `serial` (`serial`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c`
--
ALTER TABLE `c`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cplusplus`
--
ALTER TABLE `cplusplus`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `java`
--
ALTER TABLE `java`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `python`
--
ALTER TABLE `python`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
