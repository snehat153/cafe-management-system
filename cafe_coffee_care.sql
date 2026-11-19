-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2026 at 06:50 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cafe_coffee_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `item_id`, `quantity`) VALUES
(3, 0, 4, 1),
(4, 0, 6, 1),
(12, 3, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Coffee'),
(2, 'Cold Coffee'),
(3, 'Sandwiches'),
(4, 'Desserts'),
(6, 'Tea');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `item_name`, `price`, `image`, `category_id`) VALUES
(1, 'Espresso', 90, 'es.jpg', 1),
(2, 'Cappuccino', 120, 'ca.jpg', 1),
(4, 'Mocha', 150, 'mo.jpg', 1),
(5, 'Cold Coffee', 160, 'coc.jpg', 2),
(6, 'Iced Latte', 170, 'il.jpg', 2),
(7, 'Veg Sandwich', 80, 'vs.jpg', 3),
(9, 'Grilled Sandwich', 120, 'gr.jpg', 3),
(10, 'Brownie', 110, 'br.jpg', 4),
(11, 'Chocolate Cake', 140, 'cc.jpg', 4),
(12, 'Cheesecake', 180, 'ch.jpg', 4),
(14, 'Americano', 225, 'tyu.jpg', 2),
(15, 'Macha', 450, '1794652247_6af83857b6f53.jpg', 6),
(16, 'Green Tea', 50, '1794652134_6af837e6ab5e9.jpg', 6),
(17, 'Cartado', 350, '1794652627_6af839d3db843.jpg', 1),
(18, 'Affogato', 600, '1794652859_6af83abbca00c.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_time` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_name`, `mobile`, `order_date`, `order_time`, `status`, `total`) VALUES
(1, 1, 'sneha', '8457934783', '2026-03-05', '16:30:00', 'Pending', NULL),
(2, 1, 'ava', '4538475834', '2026-03-12', '16:38:00', 'Pending', 0),
(3, 1, 'haha', '4538475834', '2026-04-02', '16:58:00', 'Pending', 90),
(4, 0, 'sneha', '4538475834', '2026-03-18', '12:03:00', 'Pending', 300),
(5, 2, 'haha', '8457934783', '2026-03-25', '14:02:00', 'Ready', 460),
(6, 2, 'sneha', '8457934783', '2026-03-20', '16:07:00', 'Ready', 280),
(7, 2, 'haha', '4538475834', '2026-03-27', '14:08:00', 'Pending', 90),
(8, 3, 'Alex', '4538475834', '2026-03-21', '17:31:00', 'Pending', 150),
(9, 2, 'ava', '4538475834', '2026-03-25', '16:09:00', 'Pending', 120),
(10, 2, 'sneha', '4538475834', '2026-03-25', '16:53:00', 'Pending', 960),
(11, 2, 'sneha', '4538475834', '2026-03-25', '17:08:00', 'Completed', 430),
(12, 1, 'ava', '4538475834', '2026-03-26', '12:59:00', 'Pending', 140),
(13, 1, 'sneha', '2837478234', '2026-03-27', '11:22:00', 'Completed', 780),
(14, 1, 'Christaino Harper', '4538475834', '2026-07-13', '12:03:00', 'Completed', 540),
(15, 3, 'haha', '2837478234', '2026-10-24', '13:27:00', 'Pending', 420),
(16, 7, 'Ryan', '2837478234', '2026-11-14', '14:47:00', 'Pending', 500),
(17, 7, 'Alex', '4538475834', '2026-11-14', '14:50:00', 'Completed', 150),
(18, 1, 'ava', '8457934457', '2026-11-14', '15:09:00', 'Completed', 150);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_name`, `price`, `quantity`) VALUES
(1, 1, 'Espresso', 90, 1),
(2, 1, 'Cappuccino', 120, 1),
(3, 2, 'Espresso', 90, 1),
(4, 2, 'Mocha', 150, 1),
(5, 3, 'Espresso', 90, 1),
(6, 4, 'Espresso', 90, 2),
(7, 4, 'Cappuccino', 120, 1),
(8, 5, 'Espresso', 90, 2),
(9, 5, 'Latte', 140, 2),
(10, 6, 'Cold Coffee', 160, 1),
(11, 6, 'Cappuccino', 120, 1),
(12, 7, 'Espresso', 90, 1),
(13, 8, 'Mocha', 150, 1),
(14, 9, 'Cappuccino', 120, 1),
(15, 10, 'Chocolate Cake', 140, 2),
(16, 10, 'Iced Latte', 170, 4),
(17, 11, 'Cappuccino', 120, 1),
(18, 11, 'Iced Latte', 170, 1),
(19, 11, 'Chocolate Cake', 140, 1),
(20, 12, 'Latte', 140, 1),
(21, 13, 'Mocha', 150, 2),
(22, 13, 'Iced Latte', 170, 2),
(23, 13, 'Chocolate Cake', 140, 1),
(24, 14, 'Cappuccino', 120, 1),
(25, 14, 'Iced Latte', 170, 1),
(26, 14, 'Chocolate Cake', 140, 1),
(27, 14, 'Brownie', 110, 1),
(28, 15, 'Cappuccino', 120, 1),
(29, 15, 'Mocha', 150, 2),
(30, 16, 'Iced Latte', 170, 1),
(31, 16, 'Cheesecake', 180, 1),
(32, 16, 'Mocha', 150, 1),
(33, 17, 'Mocha', 150, 1),
(34, 18, 'Mocha', 150, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'customer',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$TgfhwguRVOtMLz8Zlkds8Ow43f/q46794R6UGjm0oA/GlpulhTIZK', 'admin'),
(2, 'sneha', 'sneha62351@gmail.com', '$2y$10$zLR322/HkGh3OIEbjuKEOuM.NsY5y6ehkZ8XoG//tO/qFscTGRUNC', 'customer'),
(3, 'Alex', 'alexvolkov@gmail.com', '$2y$10$yijoYCfpf6HGbltBUCBxcOHzyGUxCfe8YtITjiL0UMV7qOUulNY9m', 'customer'),
(4, 'Max', 'max56@gmail.com', '$2y$10$DB.v7ZreeERFxkVv5gzVaeYsIUVcnWNKENe80.rPtHl.RWxC5Uix6', 'customer'),
(5, 'Lily', 'lily856@gmail.com', '$2y$10$MI9Ts6TD4169QcALocnzUuLSnp4xwMDhWqujFoNBplLrFZPb7D7Bu', 'customer'),
(6, 'Radhika', 'radhika10@gmail.com', '$2y$10$a/5yUajJjVpokET.rJbA2e9V8kz20p2HS.Q2v86w6yWTy4LDehbUy', 'customer'),
(7, 'Ryan', 'ryan28@gmail.com', '$2y$10$WMP7YTKWPoZdK2tq5u1O9.mvAmM7TuFmo/QyzCknKiiH3Gwhz7AAu', 'customer');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
