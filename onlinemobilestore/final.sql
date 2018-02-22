-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Feb 07, 2018 at 10:31 PM
-- Server version: 5.5.49-log
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--
CREATE DATABASE IF NOT EXISTS `final` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `final`;

-- --------------------------------------------------------

--
-- Table structure for table `customercart`
--

CREATE TABLE IF NOT EXISTS `customercart` (
  `customer_id` int(3) NOT NULL,
  `item_id` int(3) NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE IF NOT EXISTS `customerorder` (
  `order_id` int(3) NOT NULL,
  `customer_id` int(3) NOT NULL,
  `item_id` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `ship_date` date NOT NULL,
  `arrival_date` date NOT NULL,
  `quantity` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`order_id`, `customer_id`, `item_id`, `order_date`, `ship_date`, `arrival_date`, `quantity`) VALUES
(19, 51, 1, '2018-02-07', '2018-02-09', '2018-02-12', 1),
(20, 51, 2, '2018-02-07', '2018-02-09', '2018-02-12', 1),
(21, 51, 1, '2018-02-07', '2018-02-09', '2018-02-12', 1),
(22, 51, 2, '2018-02-07', '2018-02-09', '2018-02-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `maker`
--

CREATE TABLE IF NOT EXISTS `maker` (
  `id` int(3) NOT NULL,
  `name` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `region` varchar(40) NOT NULL,
  `country` varchar(40) NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maker`
--

INSERT INTO `maker` (`id`, `name`, `city`, `region`, `country`, `website`) VALUES
(1, 'Google', 'Mountain View', 'California', 'United States', 'https://www.google.com'),
(2, 'Samsung', 'Seocho District', 'Seoul', 'South Korea', 'http://www.samsung.com/us/'),
(3, 'Apple', 'Cupertino', 'California', 'United States', 'https://www.apple.com'),
(4, 'Sony', 'Minato', 'Tokyo', 'Japan', 'http://www.sonymobile.com/us/'),
(5, 'HTC', 'Taoyuan', 'Northern Taiwan', 'Taiwan', 'http://www.htc.com/us/'),
(6, 'Huawei', 'Shenzhen', 'Guangdong Province', 'China', 'http://consumer.huawei.com/en/index.htm');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE IF NOT EXISTS `phone` (
  `item_id` int(3) NOT NULL,
  `maker_id` int(3) NOT NULL,
  `img` varchar(40) NOT NULL,
  `model` varchar(40) NOT NULL,
  `display_in` float(2,1) NOT NULL,
  `color` varchar(40) NOT NULL,
  `price` float(10,2) NOT NULL,
  `storage_GB` int(4) NOT NULL,
  `os` varchar(40) NOT NULL,
  `stock_quantity` varchar(5) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`item_id`, `maker_id`, `img`, `model`, `display_in`, `color`, `price`, `storage_GB`, `os`, `stock_quantity`, `link`) VALUES
(1, 3, 'iphone.png', 'iPhone 7', 4.7, 'Rose Gold', 749.00, 128, 'iOS', '3', 'http://www.apple.com/shop/buy-iphone/iphone-7#00,10'),
(2, 2, 's8_1.jpg', 'Galaxy S8', 5.8, 'Midnight Black', 720.00, 64, 'Android', '4', 'http://www.samsung.com/us/explore/galaxy-s8/'),
(3, 6, 'mates.png', 'Mate S', 5.5, 'Champagne', 642.00, 128, 'Android', '2', 'http://consumer.huawei.com/en/mobile-phones/mateS/index.htm'),
(4, 1, 'pixel_2.png', 'Pixel', 5.0, 'Really Blue', 749.00, 128, 'Android', '1', 'https://madeby.google.com/phone/'),
(5, 4, 'xperia.png', 'Xperia XZ', 5.2, 'Platinum', 649.00, 32, 'Android', '4', 'https://www.sonymobile.com/us/products/phones/xperia-xz/'),
(6, 5, 'bolt.png', 'Bolt', 5.5, 'Gunmetal', 600.00, 32, 'Android', '3', 'http://www.htc.com/us/smartphones/htc-bolt/buy/');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `zip` int(5) NOT NULL,
  `city` varchar(40) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(3) NOT NULL,
  `user_type` int(3) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `street` varchar(100) NOT NULL,
  `zip` int(5) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_type`, `first_name`, `last_name`, `dob`, `street`, `zip`, `phone`, `email`) VALUES
(51, 1, 'Angie', 'Wu', '0000-00-00', 'asa', 75013, '4695002109', 'ghj@gmail.com'),
(60, 0, 'Lingyan', 'Wu', '0000-00-00', 'ssa', 751000, '565666', 'dsd@dfd.com');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `user_id` int(3) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `date_joined` date NOT NULL,
  `last_login` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`user_id`, `username`, `password`, `date_joined`, `last_login`) VALUES
(51, 'wly123', '$2y$10$JFlrjGSvSngJPSknOPt.oe8Bifjg1Tdrk', '2018-02-07', '2018-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `id` int(3) NOT NULL,
  `type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`id`, `type`) VALUES
(0, 'admin'),
(1, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customercart`
--
ALTER TABLE `customercart`
  ADD PRIMARY KEY (`customer_id`,`item_id`),
  ADD KEY `fk7` (`item_id`);

--
-- Indexes for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk2` (`customer_id`),
  ADD KEY `fk3` (`item_id`);

--
-- Indexes for table `maker`
--
ALTER TABLE `maker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk1` (`maker_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`zip`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk4` (`user_type`),
  ADD KEY `fk8` (`zip`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerorder`
--
ALTER TABLE `customerorder`
  MODIFY `order_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `maker`
--
ALTER TABLE `maker`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `item_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customercart`
--
ALTER TABLE `customercart`
  ADD CONSTRAINT `fk6` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk7` FOREIGN KEY (`item_id`) REFERENCES `phone` (`item_id`);

--
-- Constraints for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`customer_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk3` FOREIGN KEY (`item_id`) REFERENCES `phone` (`item_id`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`maker_id`) REFERENCES `maker` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`user_type`) REFERENCES `usertype` (`id`);

--
-- Constraints for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD CONSTRAINT `fk5` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
