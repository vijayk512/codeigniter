-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2017 at 11:38 PM
-- Server version: 5.7.11
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `create_date`) VALUES
(1, 'Business', '2017-01-20 18:31:23'),
(2, 'Technology', '2017-01-20 18:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(100) NOT NULL,
  `category_id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `image`, `created_at`) VALUES
(1, 1, 'Post One', 'post-one', 'Install and maintain a firewall configuration to protect cardholder data. Companies must create their own firewall configuration policy and develop a configuration test procedure designed to protect cardholder data. Your hosting provider should have firewalls in place to protect and create a secure, private network.', 'noimage.jpg', '2017-01-18 00:05:18'),
(2, 1, 'Post Two', 'Post-Two', 'This has been edited Install and maintain a firewall configuration to protect cardholder data. Companies must create their own firewall configuration policy and develop a configuration test procedure designed to protect cardholder data. Your hosting provider should have firewalls in place to protect and create a secure, private network.', 'noimage.jpg', '2017-01-18 00:05:18'),
(4, 2, 'CK Editor Test', 'CK-Editor-Test', '<p><strong>This is CK editor post.</strong><br /><br />Lets check how it work</p>', 'noimage.jpg', '2017-01-19 20:38:34'),
(5, 1, 'Post Four', 'Post-Four', '<p>This is cateogry post</p>', 'noimage.jpg', '2017-01-20 18:38:18'),
(6, 1, 'Test Image Post', 'Test-Image-Post', '<p>test</p>', 'Verizon.PNG', '2017-01-20 20:01:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
