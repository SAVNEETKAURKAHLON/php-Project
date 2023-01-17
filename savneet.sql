-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2022 at 02:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `savneet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `status`, `created_at`) VALUES
(1, 'savneet', 'savneet@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'active', '2022-12-05 04:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `quantity` int(5) NOT NULL,
  `total_amount` bigint(9) NOT NULL,
  `status` text NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`, `total_amount`, `status`, `created_at`) VALUES
(25, 2, 4, 4, 4800, 'active', '2022-12-21 05:24:10');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(5) NOT NULL,
  `user_id` bigint(15) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `user_id`, `name`, `email`, `comment`, `status`, `created_at`) VALUES
(1, 2, 'savneet', 'savneetkaur@gmail.com', ' helo', 'active', '2022-12-22 13:08:13'),
(2, 2, 'savneet', 'savneetkaur@gmail.com', ' helo', 'active', '2022-12-22 13:08:23'),
(3, 2, 'savneet', 'savneet@gmail.com', ' done', 'active', '2022-12-22 13:20:46'),
(4, 8, 'sargun kahlon', 'sargun@gmail.com', ' see', 'active', '2022-12-22 13:38:37'),
(5, 8, 'sargun kahlon', 'sargun@gmail.com', ' hello user', 'active', '2022-12-22 13:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(5) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `user_id` bigint(15) NOT NULL,
  `name` varchar(123) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(9) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `name`, `contact`, `address`, `status`, `created_at`) VALUES
(33, 'OD1350424572', 2, 'sav', 1234567898, 'jal', 'shipped', '2022-12-19 06:37:11'),
(34, 'OD666843681', 2, 'sav', 1234567898, 'jal', 'shipped', '2022-12-19 06:39:53'),
(35, 'OD1855617139', 2, 'sav', 1234567898, 'jal', 'shipped', '2022-12-20 04:44:49'),
(36, 'OD15485665', 7, 'sargun kahlon', 1234567896, 'jalandhar2', 'shipped', '2022-12-21 15:37:46'),
(37, 'OD593147460', 8, 'sharanjit', 1234567898, 'jalandhar', 'shipped', '2022-12-22 02:55:32'),
(38, 'OD688927437', 8, 'sargun kahlon', 1234567896, 'jalandhar2', 'rejected', '2022-12-22 13:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(5) NOT NULL,
  `order_id` varchar(150) NOT NULL,
  `product_id` bigint(15) NOT NULL,
  `quantity` bigint(9) NOT NULL,
  `total_price` bigint(9) NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `total_price`, `status`, `created_at`) VALUES
(8, 'OD1350424572', 4, 5, 6000, 'active', '2022-12-19 06:37:11'),
(10, 'OD666843681', 4, 5, 6000, 'active', '2022-12-19 06:39:53'),
(11, 'OD1855617139', 4, 3, 3600, 'active', '2022-12-20 04:44:49'),
(12, 'OD1855617139', 4, 1, 1200, 'active', '2022-12-20 04:44:50'),
(13, 'OD15485665', 2, 3, 1200, 'active', '2022-12-21 15:37:46'),
(14, 'OD15485665', 3, 1, 1000, 'active', '2022-12-21 15:37:46'),
(15, 'OD593147460', 11, 2, 8000, 'active', '2022-12-22 02:55:32'),
(16, 'OD593147460', 4, 1, 1200, 'active', '2022-12-22 02:55:32'),
(17, 'OD593147460', 2, 1, 400, 'active', '2022-12-22 02:55:32'),
(18, 'OD688927437', 4, 3, 3600, 'active', '2022-12-22 13:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` int(9) NOT NULL,
  `stock` bigint(9) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(19) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `stock`, `description`, `image`, `status`, `created_at`) VALUES
(4, 'trouser', 1200, 4, 'labc', '620080709_intro-pic (2).jpg', 'active', '2022-12-12 05:46:46'),
(11, 'suit', 4000, 3, 'suit', '2029369445_me.png', 'active', '2022-12-21 15:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `registors`
--

CREATE TABLE `registors` (
  `id` int(9) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `status` varchar(9) NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registors`
--

INSERT INTO `registors` (`id`, `name`, `email`, `password`, `contact`, `address`, `status`, `created_at`) VALUES
(2, 'sav', 'savneetkaur@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1234567898, '', 'active', '2022-12-05 06:02:43'),
(6, 'arash', 'arashdeep@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2345678931, 'jalandhar', 'active', '2022-12-21 06:19:23'),
(7, 'sargun kahlon', 'sargun@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1234567896, 'jalandhar2', 'active', '2022-12-21 15:33:11'),
(8, 'sharanjit', 'sharanjit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1234567898, 'jalandhar', 'active', '2022-12-22 02:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registors`
--
ALTER TABLE `registors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registors`
--
ALTER TABLE `registors`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
