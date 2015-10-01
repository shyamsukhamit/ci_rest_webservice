-- phpMyAdmin SQL Dump
-- version 4.2.3deb1.trusty~ppa.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 01, 2015 at 05:15 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.6.13-1+deb.sury.org~trusty+3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `api_rest_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE IF NOT EXISTS `access` (
`id` int(11) unsigned NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `key`, `controller`, `date_created`, `date_modified`) VALUES
(1, '8hu8fWMCIhCXyq0U4TP0CMJ9waHkCGNcsrqok8zS', '/api', NULL, '2015-03-21 08:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE IF NOT EXISTS `keys` (
`id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, '8hu8fWMCIhCXyq0U4TP0CMJ9waHkCGNcsrqok8zS', 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE IF NOT EXISTS `limits` (
`id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
`id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `messages_api`
--

CREATE TABLE IF NOT EXISTS `messages_api` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_message` varchar(200) NOT NULL,
  `date_message` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `messages_api`
--

INSERT INTO `messages_api` (`id`, `user_id`, `content_message`, `date_message`) VALUES
(1, 1, 'Nuevo mensaje escrito por Israel', '2013-07-05 12:54:11'),
(2, 5, 'Nuevo mensaje de Sonia', '2013-07-05 12:54:11'),
(3, 2, 'Mensaje de Pepe', '2013-07-05 12:54:43'),
(4, 4, 'Mensaje de Manuel', '2013-07-05 12:54:43'),
(5, 3, 'Otro mensaje, esta vez de Juan', '2013-07-05 12:55:34'),
(6, 1, 'Mi nuevo mensaje.', '2013-07-05 12:55:34');

-- --------------------------------------------------------

--
-- Table structure for table `users_api`
--

CREATE TABLE IF NOT EXISTS `users_api` (
`id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users_api`
--

INSERT INTO `users_api` (`id`, `username`, `password`, `register_date`) VALUES
(1, 'Sanjay Mohit', 'aaabbbbccc', '2013-07-05 12:53:42'),
(2, 'Pepe', '123456', '2013-07-05 12:53:42'),
(3, 'Juan', '123456', '2013-07-05 12:53:42'),
(4, 'Manuel', '123456', '2013-07-05 12:53:42'),
(5, 'Sonia', '123456', '2013-07-05 12:53:42'),
(6, 'isra', 'ie0rieopw', '2013-07-05 19:13:01'),
(7, 'isra', 'ie0rieopw', '2013-07-05 19:13:19'),
(8, 'juanan', 'okpjkn', '2013-07-05 19:14:16'),
(9, 'carla', '123456', '2013-07-05 21:24:21'),
(10, 'carla', '123456', '2013-07-05 21:42:03'),
(11, 'Sanjay Mohit', 'aaabbbbccc', '2015-10-01 10:46:27'),
(12, 'Sanjay Mohit', 'aaabbbbccc', '2015-10-01 10:55:55'),
(13, 'Sanjay Mohit', 'aaabbbbccc', '2015-10-01 10:56:02'),
(14, 'Sanjay Mohit', 'aaabbbbccc', '2015-10-01 11:40:33'),
(15, 'Sanjay Mohit', 'aaabbbbccc', '2015-10-01 11:44:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_api`
--
ALTER TABLE `messages_api`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_api`
--
ALTER TABLE `users_api`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_api`
--
ALTER TABLE `messages_api`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users_api`
--
ALTER TABLE `users_api`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
