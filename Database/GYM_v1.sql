-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 28, 2023 at 03:30 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GYM_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `body_record`
--

CREATE TABLE `body_record` (
  `sid` bigint(20) NOT NULL COMMENT 'body_data_ID',
  `member_ID` bigint(20) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `bodyfat` float NOT NULL,
  `record-date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `diet_record`
--

CREATE TABLE `diet_record` (
  `sid` bigint(20) NOT NULL,
  `member_ID` bigint(20) NOT NULL,
  `food_ID` smallint(6) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `diet_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exercise_record`
--

CREATE TABLE `exercise_record` (
  `sid` bigint(20) NOT NULL,
  `member_ID` bigint(20) NOT NULL,
  `exe_type_ID` smallint(6) NOT NULL COMMENT 'type of exercise',
  `weight` int(11) NOT NULL,
  `sets` int(11) NOT NULL,
  `reps` int(11) NOT NULL,
  `exe_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exercise_type`
--

CREATE TABLE `exercise_type` (
  `sid` smallint(6) NOT NULL,
  `exercise_type` smallint(6) NOT NULL,
  `exercise_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `food_type`
--

CREATE TABLE `food_type` (
  `sid` smallint(6) NOT NULL COMMENT 'food type ID',
  `food_type` varchar(255) NOT NULL COMMENT 'name of food',
  `calories` float NOT NULL,
  `protein` float NOT NULL,
  `unit` smallint(6) NOT NULL,
  `food_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body_record`
--
ALTER TABLE `body_record`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `diet_record`
--
ALTER TABLE `diet_record`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `food_tpye_to_ID` (`food_ID`);

--
-- Indexes for table `exercise_record`
--
ALTER TABLE `exercise_record`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `exe_type_to_ID` (`exe_type_ID`);

--
-- Indexes for table `exercise_type`
--
ALTER TABLE `exercise_type`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body_record`
--
ALTER TABLE `body_record`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'body_data_ID';

--
-- AUTO_INCREMENT for table `diet_record`
--
ALTER TABLE `diet_record`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercise_record`
--
ALTER TABLE `exercise_record`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exercise_type`
--
ALTER TABLE `exercise_type`
  MODIFY `sid` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_type`
--
ALTER TABLE `food_type`
  MODIFY `sid` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'food type ID';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diet_record`
--
ALTER TABLE `diet_record`
  ADD CONSTRAINT `food_tpye_to_ID` FOREIGN KEY (`food_ID`) REFERENCES `food_type` (`sid`);

--
-- Constraints for table `exercise_record`
--
ALTER TABLE `exercise_record`
  ADD CONSTRAINT `exe_type_to_ID` FOREIGN KEY (`exe_type_ID`) REFERENCES `exercise_type` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
