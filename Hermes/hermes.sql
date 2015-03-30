-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2015 at 03:24 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hermes`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(160) NOT NULL,
  `description` text NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `allDay` varchar(5) NOT NULL,
  `color` varchar(7) NOT NULL,
  `url` varchar(255) NOT NULL,
  `category` varchar(200) NOT NULL,
  `repeat_type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `repeat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fkey` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `description`, `start`, `end`, `allDay`, `color`, `url`, `category`, `repeat_type`, `user_id`, `repeat_id`) VALUES
(1, 'test', 'this is a test to see if it saves to my calendar', '2014-12-12 13:00:00', '2014-12-12 14:00:00', 'true', '', '?page=', '', 'no', 1, 1),
(3, 'test', 'test test', '2014-12-13 06:00:00', '2014-12-13 12:00:00', 'true', '', '?page=', '', 'no', 0, 3),
(5, 'hey', 'whats up', '2015-03-12 08:00:00', '2015-03-13 10:00:00', 'true', '', '?page=', '', 'no', 0, 5),
(6, 'test ', 'hey hey hey', '2015-03-10 00:00:00', '2015-03-10 00:00:00', 'true', '', '?page=', '', 'no', 0, 6),
(7, 'sup', 'test test test', '2015-03-19 11:00:00', '2015-03-20 10:00:00', 'true', '#ff0000', '?page=', '', 'no', 0, 7),
(8, 'meeting', 'meeting reminder', '2014-12-16 09:00:00', '2014-12-17 10:00:00', 'true', '#e23838', '?page=', '', 'no', 0, 8),
(9, 'test ', 'attention please', '2015-03-26 14:00:00', '2015-03-26 11:00:00', 'true', '', '?page=', '', 'no', 0, 9),
(10, 'ring the barber', 'get hair cut at 3:00', '2014-12-30 15:00:00', '2014-12-31 15:00:00', 'true', '#ff0000', '?page=', '', 'no', 0, 10),
(11, 'hey whats up', 'reminder to email john about life', '2014-12-03 00:00:00', '2014-12-06 00:00:00', 'true', '#587ca3', 'false', '', 'no', 0, 11),
(12, 'hey', 'test', '2015-03-06 00:00:00', '2015-03-06 00:00:00', 'true', '#587ca3', 'false', '', 'no', 0, 12),
(13, 'hey', '', '2015-03-04 00:00:00', '2015-03-04 00:00:00', 'false', '#587ca3', 'false', '', 'no', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `user_id`) VALUES
(6, '1st Class', 0),
(7, '2nd Class', 0),
(8, '3rd Class', 0),
(9, '4th class', 0);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `from_viewed` tinyint(1) NOT NULL DEFAULT '0',
  `to_viewed` tinyint(1) NOT NULL DEFAULT '0',
  `from_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `to_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `from_vdate` datetime DEFAULT NULL,
  `to_vdate` datetime DEFAULT NULL,
  `from_ddate` datetime DEFAULT NULL,
  `to_ddate` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `from` (`from`),
  KEY `to` (`to`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `message`, `from`, `to`, `from_viewed`, `to_viewed`, `from_deleted`, `to_deleted`, `from_vdate`, `to_vdate`, `from_ddate`, `to_ddate`, `created`) VALUES
(1, 'hey', 'wanna do lunch?', 1, 9, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2015-03-18 17:50:44'),
(2, 'hey', 'goin in?', 1, 1, 0, 1, 0, 1, NULL, '2015-03-18 17:53:48', NULL, '2015-03-18 17:59:33', '2015-03-18 17:53:34'),
(4, 'hey', 'LUNCH?', 1, 9, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2015-03-18 18:05:53'),
(7, 'hey', 'test', 1, 9, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2015-03-18 18:14:15'),
(9, 'hey', 'wanna do lunch again', 1, 9, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2015-03-18 23:34:09'),
(10, 'hello', 'wanna do lunch', 1, 1, 0, 1, 0, 0, NULL, '2015-03-25 04:27:08', NULL, NULL, '2015-03-25 04:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(64) COLLATE utf8_unicode_ci NOT NULL,
  `salt` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `email`) VALUES
(1, 'gwolfe', '0b1a792c9eea6f0541ec88b16933208cd069e9899632bcd7d60f786597f7e4ff', '310c69fc19778958', 'graywolfe13@hotmail.com'),
(2, 'rickBuckley', 'eb595f1682127ebfdfb8923a30be408a3cc19c08d4dc16b398b12b30d652e5ba', '10c43040743aaeee', 'rickBuckley@compton.ie'),
(3, 'eoin', 'c0b8ab8309a7f51501e02772e8956f10381119296fc4e31fca8ce9cb5255d99a', '3234fc0e79815119', 'emcmack@mack.ie'),
(4, 'toniaj', 'bd6147d2df1300e7af2d07e2c03dd4f2f2786467b1c557e88e1fda1e05ff2601', '3ae80a46631dbac2', 'toniaj@hotmail.com'),
(5, 'gwolfe3', 'd37b33f29697650418280de3b434c75595b709735afe83f7d45545f41e3f127f', '27ad49af129ec1ca', 'gwolfe12@hotmail.com'),
(6, 'oraclelinux2k13', '307c83641348d0b3b5ecf8d38f77d85cee71b1de7cb1ce60de2f4c2c89054054', '4ff9296fc3dcef', 'ol2k13@oracle.ie'),
(8, 'gwolfetest', 'df35810531266f7600ac904c56099c40d217689685c17a4c191c37c20c240fb7', '5378c55018a781dc', 'gwolfe93@gmail.com'),
(9, 'gwolfe2', '07b43ed470e231006a27fbf098930ea654067bfa6d2701cefdefab1d0eb172c7', '2d061233b88fa96', 'gwolfe92@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
