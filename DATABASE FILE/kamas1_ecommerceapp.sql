-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2022 at 12:28 PM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamas1_ecommerceapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(5, 'Bruno', 'brunoadmin@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(8, 'Harry Den', 'harryden@gmail.com', '$2y$10$YKSDtra7v2wH6ORYfry8Ue9t49pk1AvQvdJGuq4lDvFLEcx.kP6Mq', '0'),
(9, 'sai', 'saivarshithkama.99@gmail.com', '$2y$10$CZO/1q7dvv/6tT.0NDJYHetxsYBJ3P8uWyBRDu/irTiS7c2E8Qk6O', '0'),
(10, 'admin', 'admin@gmail.com', '$2y$10$FpiVxkGjTCtHghC2xuSLmO2Ra.CT38Fk/kozVDGdAwXWAD2sKRbSi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(10, 'Hot Toys');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 4, '::1', 4, 1),
(3, 1, '::1', 1, 1),
(5, 23, '73.198.178.149', 12, 1),
(6, 20, '73.198.178.149', 12, 1),
(7, 20, '73.198.178.149', 13, 1),
(8, 20, '74.105.101.124', 15, 1),
(9, 50, '74.105.101.124', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(14, 'Toys'),
(15, 'zsfgsghddf'),
(16, 'cad');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(20, 14, 10, 'Thanos Hot Toys', 8150, 19, 'Thanos sixth scale collectible figure.', '1616506942_thanos-hottoys.jpg', 'thanos, marvel, toys, hot toys'),
(23, 14, 10, 'pr1', 100, 4, 'pr1', '1670776136_1.jpeg', 'qw'),
(24, 14, 10, 'pr2', 111, 12, 'wer', '1670776188_2.jpeg', 'ww'),
(25, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776233_3.jpeg', 'ddd'),
(26, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776240_4.jpeg', 'ddd'),
(27, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776245_5.jpeg', 'ddd'),
(28, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776252_6.jpeg', 'ddd'),
(29, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776259_7.jpeg', 'ddd'),
(30, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776265_8.jpeg', 'ddd'),
(31, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776272_9.jpeg', 'ddd'),
(32, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776278_10.jpeg', 'ddd'),
(33, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776286_11.jpeg', 'ddd'),
(34, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776291_12.jpeg', 'ddd'),
(35, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776298_13.jpeg', 'ddd'),
(36, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776304_14.jpeg', 'ddd'),
(37, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776311_15.jpeg', 'ddd'),
(38, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776319_16.jpeg', 'ddd'),
(39, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776325_17.jpeg', 'ddd'),
(40, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776331_18.jpeg', 'ddd'),
(41, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776340_19.jpeg', 'ddd'),
(42, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776347_20.jpeg', 'ddd'),
(43, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776355_21.jpeg', 'ddd'),
(44, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776361_22.jpeg', 'ddd'),
(45, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776369_23.jpeg', 'ddd'),
(46, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776377_24.jpeg', 'ddd'),
(47, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776384_25.jpeg', 'ddd'),
(48, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776392_26.jpeg', 'ddd'),
(49, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776398_27.jpeg', 'ddd'),
(50, 14, 10, 'pr1', 222, 22, 'sdfdsd', '1670776406_28.jpeg', 'ddd');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `user_role`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'customer', 'Christine', 'Randolph', 'randolphc@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '2133  Hill Haven Drive', 'Terra Stree'),
(2, 'customer', 'Will', 'Willams', 'willainswill@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', '4567  Orphan Road', 'WI'),
(3, '', 'Demo', 'Name', 'demo@gmail.com', 'password', '9876543210', 'demo ad1', 'ademo ad2'),
(5, 'customer', 'Steeve', 'Rogers', 'steeve1@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '9876547770', '573  Pinewood Avenue', 'MN'),
(6, 'customer', 'Melissa', 'Gilbert', 'gilbert@gmail.com', '305e4f55ce823e111a46a9d500bcb86c', '7845554582', '1711  McKinley Avenue', 'MA'),
(7, 'customer', 'aa', 'aaa', 'aa@aa.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234567890', 'hjgjhg', 'hjhg'),
(8, 'customer', 'aa', 'aaa', 'aa@aaf.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234567890', 'dfgf', 'fgfgd'),
(9, 'vendor', 'test', 'test', 'test@vendor.com', '81dc9bdb52d04dc20036dbd8313ed055', '1234567890', 'fdgfg', 'fgfg'),
(10, 'customer', 'ss', 'ss', 'harryden@gmail.com', '4476dac0b4669aeb53b9ae0af38e2942', '2134567890', 'xcdf', 'fghf'),
(11, 'customer', 'kama', 'sai', 'saivarshithkama.99@gmail.com', 'd9f2ac76c1b0a6dd70b8315a7c8f3613', '7868974567', 'rt iuytg 78', '678 gtr'),
(12, 'customer', 'Ashwin', 'Upadhyaya', 'aezwins@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f', '6046902616', '5525 Presidents Row', 'aa'),
(13, 'vendor', 'Ashwin', 'Upadhyaya', 'ab@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f', '1000000000', '1 appple', 'ball'),
(14, 'vendor', 'vendor', 'one', 'vendor@gmail.com', 'e2fc714c4727ee9395f324cd2e7f331f', '1234567890', '1 montclair', 'street'),
(15, 'vendor', 'sad', 'sad', 'sad@gmail.com', '852fbd08c187f4c237c4243bf3de494b', '1234567898', '123 ert', 'st'),
(16, 'customer', 'zack', 'zack', 'user@gmail.com', '68a0099b3f45357798639a30c5fe3154', '5465677897', 'er34', 'xyz'),
(17, 'vendor', 'vendor', 'vendor', 'ven@gmail.com', '68a0099b3f45357798639a30c5fe3154', '1234567890', 'st', 'vs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
