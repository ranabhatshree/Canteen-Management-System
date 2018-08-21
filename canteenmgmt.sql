-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2018 at 05:16 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `canteenmgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_siteadmin` tinyint(1) DEFAULT '0',
  `is_verified` tinyint(1) DEFAULT '0',
  `created_at` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `phone`, `address`, `password`, `is_siteadmin`, `is_verified`, `created_at`) VALUES
(12, 'Shree', '9808903852', 'lamachaur', 'a3e477de6d99a79b1472069f0911f203', 1, 1, '2018-08-01 09:10:03'),
(13, 'Mama Maiju', '9876543210', 'mama ko ghar', 'eeafbf4d9b3957b139da7b7f2e7f2d4a', 0, 1, '2018-08-01 15:12:56'),
(14, 'Chimeki ko ramri xori', '1234567890', 'chimeki ko ghar', 'f6e43b5453405699a226d78dbd55e0e6', 0, 1, '2018-08-01 15:14:24'),
(15, 'Handsome Baba ko ramri xori', '9801234567', 'nai malai taha xaina', 'afa0511c134699ac9d6ac98bbf956225', 0, 1, '2018-08-01 15:15:59'),
(16, 'Demo', '1111111111', 'lamachaur', 'fe01ce2a7fbac8fafaed7c982a04e229', 0, 1, '2018-08-01 15:57:25'),
(17, 'Xora Xori', '9805866548', 'asd', 'a3e477de6d99a79b1472069f0911f203', 0, 0, '2018-08-03 06:18:04'),
(18, 'Mama', '9826193973', 'mahendrapool', 'eeafbf4d9b3957b139da7b7f2e7f2d4a', 0, 0, '2018-08-03 11:54:21'),
(19, 'nishal grg', '9871234560', 'pkhr', '53cf9f419b0897b64b32528bdfc3f8eb', 0, 0, '2018-08-03 16:24:36'),
(20, 'Nepal Predicts', '9846092307', 'Singapore', '8ddd8f668aee42cd1178909e4a6611c9', 0, 1, '2018-08-08 08:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `food_name` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `food_name`, `price`, `picture`, `created_at`) VALUES
(1, 'Chicken Momo', 100, 'food menu/chicken momo.png', '2018-08-01 13:54:01'),
(2, 'Veg Chowmin ', 70, 'food menu/veg chowmin.png', '2018-08-01 13:55:24'),
(3, 'Chicken Sausage', 50, 'food menu/Chicken Sausage.png', '2018-08-01 13:57:51'),
(4, 'Fried Rice', 80, 'food menu/Fried Rice.png', '2018-08-01 13:58:24'),
(5, 'Bajeko Sekuwa', 150, 'food menu/Bajeko Sekuwa.jpg', '2018-08-01 14:00:15'),
(6, 'Buff Momo', 80, 'food menu/Buff Momo.png', '2018-08-01 14:02:42'),
(7, 'Veg Momo', 70, 'food menu/Veg Momo.png', '2018-08-01 14:02:56'),
(8, 'Nepali Rice', 120, 'food menu/Nepali Rice.jpg', '2018-08-01 14:03:05'),
(9, 'Egg Omlette', 25, 'food menu/Egg Omlette.jpg', '2018-08-01 14:03:17'),
(10, 'Thukpa', 80, 'food menu/Thukpa.jpg', '2018-08-01 14:27:30'),
(11, 'Dhindo and gundhruk', 300, 'food menu/Dhindo and gundhruk.jpg', '2018-08-01 14:27:39'),
(12, 'Dry Mix', 100, 'food menu/Dry Mix.jpg', '2018-08-01 16:00:36'),
(14, 'Italian Pasta', 100, 'food menu/b4-1_zps0b44aa86.png', '2018-08-03 11:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ordered_by` int(11) NOT NULL,
  `given_by` int(11) NOT NULL,
  `ordered_item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `has_paid` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ordered_by`, `given_by`, `ordered_item`, `quantity`, `has_paid`, `created_at`) VALUES
(1, 1, 12, 11, 1, 1, '2018-08-01 15:42:52'),
(2, 1, 12, 5, 1, 1, '2018-08-01 15:43:03'),
(3, 2, 12, 1, 1, 0, '2018-08-01 15:44:20'),
(4, 1, 12, 4, 10, 1, '2018-08-01 15:59:14'),
(5, 1, 13, 10, 50, 1, '2018-08-01 16:07:57'),
(6, 1, 12, 5, 2, 1, '2018-08-02 10:13:09'),
(7, 1, 12, 1, 78, 0, '2018-08-02 10:13:44'),
(8, 1, 12, 5, 1, 0, '2018-08-02 10:42:09'),
(9, 1, 12, 1, 1, 0, '2018-08-02 11:14:05'),
(10, 2, 12, 5, 2, 0, '2018-08-02 11:28:27'),
(11, 1, 12, 10, 34, 0, '2018-08-03 10:35:11'),
(12, 3, 18, 2, 2, 0, '2018-08-03 11:55:59'),
(13, 1, 18, 14, 10, 0, '2018-08-03 11:59:03'),
(14, 5, 12, 1, 1, 0, '2018-08-03 17:18:21'),
(15, 1, 0, 8, 1, 0, '2018-08-08 08:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reg_no` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `reg_no`, `phone`, `address`, `created_at`) VALUES
(1, 'Shree K. Ranabhat', '2016SE513', '9808903852', 'Lamachaur', '2018-08-01 15:00:37'),
(2, 'Saugat Aryal', '2016SE511', '9876543210', 'prithvi chowk', '2018-08-01 15:00:57'),
(3, 'Nirmal A.C', '2016SE501', '9807654321', 'mahendrapool', '2018-08-01 15:01:40'),
(4, 'Nam xaina', 'taha xaina', '1111122222', 'hell', '2018-08-03 17:16:37'),
(5, 'Kripa Ranabhat', '2016SE17', '9826151350', 'Damauli, Tanahun', '2018-08-03 17:17:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
