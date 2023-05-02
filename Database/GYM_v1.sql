-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 02, 2023 at 01:54 AM
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
-- Table structure for table `clothing_detail`
--

CREATE TABLE `clothing_detail` (
  `sid` int(11) NOT NULL,
  `cloth_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stocks` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `clothing_detail`
--

INSERT INTO `clothing_detail` (`sid`, `cloth_id`, `price`, `stocks`, `picture`, `added_date`, `color_id`, `size_id`, `category_id`) VALUES
(2, 1, 500, 40, 't-shirt-1 red s', '2023-05-01 11:14:39', 1, 1, 1),
(3, 2, 500, 20, 't shirt 2 blue M', '2023-05-01 11:16:33', 2, 2, 1),
(4, 2, 500, 12, 't-shirt 2 black s', '2023-05-01 11:17:53', 3, 1, 1),
(5, 5, 500, 3, 'jacket2 black s', '2023-05-01 11:19:11', 3, 1, 2),
(6, 6, 1200, 15, 'jacket3 ', '2023-05-01 11:20:00', 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cloth_color`
--

CREATE TABLE `cloth_color` (
  `sid` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `cloth_color`
--

INSERT INTO `cloth_color` (`sid`, `color_name`) VALUES
(1, 'Red'),
(2, 'Blue'),
(3, 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `cloth_name`
--

CREATE TABLE `cloth_name` (
  `sid` int(11) NOT NULL,
  `cloth_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `cloth_name`
--

INSERT INTO `cloth_name` (`sid`, `cloth_name`, `description`, `category_id`) VALUES
(1, 't-shirt_1', 't-shirt number 1', 1),
(2, 't-shirt_2', 't-shirt number 2', 1),
(3, 't-shirt_3', 't-shirt number 3', 1),
(4, 'jacket_1', 'jacket 1', 2),
(5, 'jacket_2', 'jacket 2', 2),
(6, 'jacket_3', 'jacket 3', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cloth_size`
--

CREATE TABLE `cloth_size` (
  `sid` int(11) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `cloth_size`
--

INSERT INTO `cloth_size` (`sid`, `size`) VALUES
(3, 'L'),
(2, 'M'),
(1, 'S');

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
-- Table structure for table `equipment_color`
--

CREATE TABLE `equipment_color` (
  `sid` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `equipment_color`
--

INSERT INTO `equipment_color` (`sid`, `color_name`) VALUES
(3, 'blue'),
(2, 'orange'),
(1, 'yellow');

-- --------------------------------------------------------

--
-- Table structure for table `equipment_detail`
--

CREATE TABLE `equipment_detail` (
  `sid` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stocks` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `added_time` datetime NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `equipment_detail`
--

INSERT INTO `equipment_detail` (`sid`, `equipment_id`, `price`, `stocks`, `picture`, `added_time`, `color_id`, `size_id`, `category_id`) VALUES
(1, 8, 1234, 123, '', '2023-05-01 12:35:34', 3, 1, 1),
(4, 8, 1234, 123, '', '2023-05-01 12:35:34', 3, 2, 1),
(5, 8, 1234, 123, '', '2023-05-01 12:35:34', 2, 3, 1),
(7, 7, 5000, 200, '', '2023-05-01 13:42:30', 1, 2, 2),
(8, 7, 5000, 200, '', '2023-05-01 13:42:30', 1, 1, 2),
(9, 7, 5000, 200, '', '2023-05-01 13:42:30', 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_name`
--

CREATE TABLE `equipment_name` (
  `sid` int(11) NOT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `equipment_name`
--

INSERT INTO `equipment_name` (`sid`, `equipment_name`, `description`, `category_id`) VALUES
(7, 'dumbell', 'dumbell', 1),
(8, 'barbell', 'barbell', 2);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_size`
--

CREATE TABLE `equipment_size` (
  `sid` int(11) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `equipment_size`
--

INSERT INTO `equipment_size` (`sid`, `size`) VALUES
(1, '15kg'),
(2, '20kg'),
(3, '25kg');

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

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `sid` bigint(20) NOT NULL,
  `member_id` int(20) NOT NULL,
  `merchant_id` int(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `merchant_type` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`sid`, `member_id`, `merchant_id`, `quantity`, `merchant_type`, `added_date`) VALUES
(4, 1, 2, 1, '0', '2023-05-01 13:44:05'),
(6, 1, 3, 1, '0', '2023-05-01 13:44:05'),
(7, 2, 5, 1, '0', '2023-05-01 13:44:05'),
(8, 2, 4, 1, '1', '2023-05-01 13:44:05'),
(9, 1, 7, 1, '1', '2023-05-01 13:44:05'),
(10, 1, 9, 1, '1', '2023-05-01 13:44:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body_record`
--
ALTER TABLE `body_record`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `clothing_detail`
--
ALTER TABLE `clothing_detail`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `cloth_color_size_unique` (`sid`,`cloth_id`,`price`),
  ADD KEY `cloth_color` (`color_id`),
  ADD KEY `cloth_name` (`cloth_id`),
  ADD KEY `cloth_size` (`size_id`);

--
-- Indexes for table `cloth_color`
--
ALTER TABLE `cloth_color`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `cloth_name`
--
ALTER TABLE `cloth_name`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `unique_name` (`cloth_name`);

--
-- Indexes for table `cloth_size`
--
ALTER TABLE `cloth_size`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `unique_size` (`size`);

--
-- Indexes for table `diet_record`
--
ALTER TABLE `diet_record`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `food_tpye_to_ID` (`food_ID`);

--
-- Indexes for table `equipment_color`
--
ALTER TABLE `equipment_color`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `equipt_color` (`color_name`);

--
-- Indexes for table `equipment_detail`
--
ALTER TABLE `equipment_detail`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `unique_equip` (`equipment_id`,`color_id`,`size_id`),
  ADD KEY `equip_size` (`size_id`),
  ADD KEY `equip_color` (`color_id`);

--
-- Indexes for table `equipment_name`
--
ALTER TABLE `equipment_name`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `unique_equip_name` (`equipment_name`);

--
-- Indexes for table `equipment_size`
--
ALTER TABLE `equipment_size`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `equip_unique_size` (`size`);

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
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `exercise_type` (`exercise_type`),
  ADD UNIQUE KEY `exercise_img` (`exercise_img`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `food_type` (`food_type`),
  ADD UNIQUE KEY `food_img` (`food_img`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `merchant_unique` (`member_id`,`merchant_id`,`merchant_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body_record`
--
ALTER TABLE `body_record`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'body_data_ID';

--
-- AUTO_INCREMENT for table `clothing_detail`
--
ALTER TABLE `clothing_detail`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cloth_color`
--
ALTER TABLE `cloth_color`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cloth_name`
--
ALTER TABLE `cloth_name`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cloth_size`
--
ALTER TABLE `cloth_size`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `diet_record`
--
ALTER TABLE `diet_record`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `equipment_color`
--
ALTER TABLE `equipment_color`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equipment_detail`
--
ALTER TABLE `equipment_detail`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `equipment_name`
--
ALTER TABLE `equipment_name`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `equipment_size`
--
ALTER TABLE `equipment_size`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `sid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clothing_detail`
--
ALTER TABLE `clothing_detail`
  ADD CONSTRAINT `cloth_color` FOREIGN KEY (`color_id`) REFERENCES `cloth_color` (`sid`),
  ADD CONSTRAINT `cloth_name` FOREIGN KEY (`cloth_id`) REFERENCES `cloth_name` (`sid`),
  ADD CONSTRAINT `cloth_size` FOREIGN KEY (`size_id`) REFERENCES `cloth_size` (`sid`);

--
-- Constraints for table `diet_record`
--
ALTER TABLE `diet_record`
  ADD CONSTRAINT `food_tpye_to_ID` FOREIGN KEY (`food_ID`) REFERENCES `food_type` (`sid`);

--
-- Constraints for table `equipment_detail`
--
ALTER TABLE `equipment_detail`
  ADD CONSTRAINT `equip_color` FOREIGN KEY (`color_id`) REFERENCES `equipment_color` (`sid`),
  ADD CONSTRAINT `equip_name` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_name` (`sid`),
  ADD CONSTRAINT `equip_size` FOREIGN KEY (`size_id`) REFERENCES `equipment_size` (`sid`);

--
-- Constraints for table `exercise_record`
--
ALTER TABLE `exercise_record`
  ADD CONSTRAINT `exe_type_to_ID` FOREIGN KEY (`exe_type_ID`) REFERENCES `exercise_type` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
